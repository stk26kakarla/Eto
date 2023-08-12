
using System.Linq;
using Glav.CacheAdapter.Core;
using Glav.CacheAdapter.Core.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Globalization;

namespace Utility.Cache
{
    /// <summary>
    /// Helper class for caching
    /// </summary>
    public class CacheHelper
    {
        #region Constants
        private const string ExpirationTimeInSec = "ExpirationTimeInSec";
        private const string ExpirationType = "ExpirationType";
        private const string Absolute = "absolute";
        #endregion

        #region "Private Fields"
        private readonly ICacheProvider cacheProvider = AppServices.Cache;
        private static CacheHelper cacheHelper;
        private static readonly object SyncRoot = new object();
        private static readonly Dictionary<string, string> CacheKeys = new Dictionary<string, string>();
        #endregion
        #region "Private Methods"
        /// <summary>
        /// Prevents a default instance of the <see cref="CacheHelper"/> class from being created. 
        /// Make class singleton
        /// </summary>
        private CacheHelper()
        {
        }

        private static void AddCachekey(string key)
        {
            if (!CacheKeys.ContainsKey(key))
            {
                CacheKeys.Add(key, key);
            }
        }

        private static void RemoveCachekey(string key)
        {
            if (!CacheKeys.ContainsKey(key))
            {
                CacheKeys.Remove(key);
            }
        }

        #endregion

        #region "Private Properties"
        private ICacheProvider CacheProvider
        {
            get
            {
                return cacheProvider;
            }
        }

        /// <summary>
        /// Get expiration values from configuration file
        /// </summary>
        /// <param name="key">Tag name in configuration file</param>
        /// <returns>Key value pair</returns>
        private Dictionary<string, string> GetConfigurationValue(string key)
        {
            Dictionary<string, string> config = new Dictionary<string, string>();

            config[ExpirationTimeInSec] = (60 * 20 ).ToString(); //20 mins of caching time
            config[ExpirationType] = "slidding";
            return config;
        }

        /// <summary>
        /// Get value for absolute expiration
        /// </summary>
        /// <param name="cacheType">Tag name in configuration file</param>
        /// <returns>Date time object for absolute expiration</returns>
        private DateTime GetAbsoluteExpirationTime(string cacheType)
        {
            return DateTime.Now.AddSeconds(GetConfigurationValue(cacheType).ContainsKey(ExpirationTimeInSec) ?
            double.Parse(GetConfigurationValue(cacheType)[ExpirationTimeInSec], CultureInfo.InvariantCulture) : 20);
        }

        /// <summary>
        /// Get value for sliding expiration
        /// </summary>
        /// <param name="cacheType">Tag name in configuration file</param>
        /// <returns>Time span object for sliding expiration</returns>
        private TimeSpan GetSlidingExpirationTime(string cacheType)
        {
            return TimeSpan.FromSeconds(GetConfigurationValue(cacheType).ContainsKey(ExpirationTimeInSec) ?
            double.Parse(GetConfigurationValue(cacheType)[ExpirationTimeInSec], CultureInfo.InvariantCulture) : 20);
        }

        #endregion

        #region "Public Methods"
        /// <summary>
        /// Get instance of cache helper
        /// </summary>
        /// <returns> Cache helper object</returns>
        public static CacheHelper GetCacheHelper()
        {
            if (cacheHelper == null)
            {
                lock (SyncRoot)
                {
                    cacheHelper = new CacheHelper();
                }
            }

            return cacheHelper;
        }

        /// <summary>
        /// Set and get cached object from cache if available else execute getData method and cached the value and return
        /// </summary>
        /// <typeparam name="T">Type of return value</typeparam>
        /// <param name="cacheType">Cache configuration key to be used for caching configuration i.e. ExpirationType="sliding" ExpirationTimeInSec="200" </param>
        /// <param name="getData">Function to execute if data is not available in cache</param>
        /// <returns>Return required data</returns>
        public T Get<T>(string cacheType, Func<T> getData) where T : class
        {
            var cacheKey = GetCacheKeyFromFuncName(getData);
            AddCachekey(cacheKey);
            return GetConfigurationValue(cacheType)[ExpirationType] == Absolute ?
            CacheProvider.Get(cacheKey, GetAbsoluteExpirationTime(cacheType), getData) : CacheProvider.Get(cacheKey, GetSlidingExpirationTime(cacheType), getData);
        }

        /// <summary>
        /// Set and get cached object from cache if available else execute getData method and cached the value and return
        /// </summary>
        /// <typeparam name="T">Type of return value</typeparam>
        /// <param name="cacheType">Cache configuration key to be used for caching configuration i.e. ExpirationType="sliding" ExpirationTimeInSec="200" </param>
        /// <param name="cacheKey">Cache key for caching</param>
        /// <param name="getData">Function to execute if data is not available in cache</param>
        /// <returns>Return required data</returns>
        public T Get<T>(string cacheType, string cacheKey, Func<T> getData) where T : class
        {
            AddCachekey(cacheKey);
            return GetConfigurationValue(cacheType)[ExpirationType] == Absolute ?
            CacheProvider.Get(cacheKey, GetAbsoluteExpirationTime(cacheType), getData) : CacheProvider.Get(cacheKey, GetSlidingExpirationTime(cacheType), getData);
        }

        /// <summary>
        /// Get cache key
        /// </summary>
        /// <typeparam name="T">Type of return value</typeparam>
        /// <param name="getData">Function for which cache key to be generated</param>
        /// <returns>Auto generated cache key</returns>
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Performance", "CA1822:MarkMembersAsStatic", Justification = "Suppression is OK here")]
        public string GetCacheKeyFromFuncName<T>(Func<T> getData) where T : class
        {
            if (getData != null && getData.Method.DeclaringType != null)
            {
                return getData.Method.DeclaringType.FullName + "-" + getData.Method.Name;
            }

            return string.Empty;
        }

        /// <summary>
        /// Mark cached object as invalid
        /// </summary>
        /// <param name="cacheKey">Cache key to invalidate the cached object</param>
        public void InvalidateCacheItem(string cacheKey)
        {
            RemoveCachekey(cacheKey);
            CacheProvider.InvalidateCacheItem(cacheKey);
        }

        /// <summary>
        /// Mark cached object as invalid
        /// </summary>
        /// <typeparam name="T">Type of return value</typeparam>
        /// <param name="getData">Function whose cache data to in validate </param>
        public void InvalidateCacheItem<T>(Func<T> getData) where T : class
        {
            var cacheKey = GetCacheKeyFromFuncName(getData);
            RemoveCachekey(cacheKey);
            CacheProvider.InvalidateCacheItem(cacheKey);
        }

        /// <summary>
        /// Mark all cached objects as invalid that have key name starts with <see cref="partialKey"/> parameter. 
        /// This comparison is not case sensitive for example Name is equal to name.
        /// </summary>
        /// <param name="partialKey">Cache key to invalidate the cached object</param>
        public void InvalidateCacheItemByPartialKey(string partialKey)
        {
            if (CacheKeys == null)
            {
                return;
            }

            var keys = CacheKeys.Where(t => t.Key.StartsWith(partialKey, StringComparison.OrdinalIgnoreCase)).Select(s => s.Key).ToArray();

            foreach (var key in keys)
            {
                InvalidateCacheItem(key);
            }
        }
        #endregion
    }
}
