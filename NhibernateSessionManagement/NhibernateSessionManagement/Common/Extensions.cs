using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NhibernateSessionManagement.Common
{
    public static class Extensions
    {
        // Depth-first traversal, recursive
        public static IEnumerable<T> Flatten<T>(
                this IEnumerable<T> source,
                Func<T, IEnumerable<T>> childrenSelector)
        {
            foreach (T item in source)
            {
                yield return item;
                if (childrenSelector(item) != null)
                {
                    foreach (T child in childrenSelector(item).Flatten(childrenSelector))
                    {
                        yield return child;
                    }
                }
            }
        }
    }
}
