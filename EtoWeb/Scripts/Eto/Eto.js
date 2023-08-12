var kendoEditorToolsArray = ["bold", "italic", "underline", "strikethrough", "justifyLeft", "justifyCenter", "justifyRight", "justifyFull", "insertUnorderedList", "insertOrderedList", "indent", "outdent", "createLink", "unlink", "subscript", "superscript", "createTable", "addRowAbove", "addRowBelow", "addColumnLeft", "addColumnRight", "deleteRow", "deleteColumn", "viewHtml", "formatting", "cleanFormatting", "fontName", "fontSize", "foreColor", "backColor"];

var currentLoggedInUserId;

function resizeGrid() {
    var WorkItemGridView = $("#WorkItemGridView").data("kendoGrid");
    if (WorkItemGridView !== undefined) {
        WorkItemGridView.resize();
    }
    var ColumnConfigurationGridView = $("#ColumnConfigurationGridView").data("kendoGrid");
    if (ColumnConfigurationGridView !== undefined) {
        ColumnConfigurationGridView.resize();
    }
}

function refreshToken() {
    var loginData = {
        client_id: localStorage["client_id"],
        grant_type: 'refresh_token',
        refresh_token: localStorage["refresh_token"]
    };
    if (loginData.client_id !== null && loginData.refresh_token !== null) {

        $.ajax({
            async: false,
            type: 'POST',
            url: '/token',
            data: loginData
        }).done(function (data) {

            // Cache the access token in session storage.
            localStorage["accessToken"] = data.access_token;
            localStorage["client_id"] = data["as:client_id"];
            localStorage["refresh_token"] = data.refresh_token;

        }).fail(function (error) {
            goToLoginPage();
        });
    }
    else {
        goToLoginPage();
    }
}

function ajaxServerInteraction(ajaxType, url, data) {

    //refreshToken();
    //var token = localStorage["accessToken"];
    //var headers = {};
    //if (token) {
    //    headers.Authorization = 'Bearer ' + token;
    //}

    var returnResult = null;
    $.ajaxSetup({ "async": false });
    var request = $.ajax({
        type: ajaxType,
        traditional: true,
        url: url,
        //headers: headers,
        data: data

    });

    request.done(function (result) {
        if (result !== null) {
            returnResult = result;
            //if (result.IsSuccess = true) {
            //    returnResult = result;
            //} else {
            //    alert(result.ResponseMessage);
            //}

        }
        else {
            alert("Could not load data properly. \n Reload the page.");
        }
    });

    request.error(function (ex) {
        debugger;
        alert("Error in retrieving data from " + url);
    });

    return returnResult;
}

function generateGridColumns(commandLevel, gridClass) {

    var dataArray = ajaxServerInteraction("GET", "/api/GridConfiguration/GetGridColumns", { "GridClass": gridClass }).Object;
    var columnArray = new Array();
    if (dataArray !== null) {
        for (var i = 0; i < dataArray.length; i++) {

            var jsonString = "{\"field\":\"" + dataArray[i].Field + "\",\"title\":\"" + dataArray[i].Title + "\"}";

            var obj = JSON.parse(jsonString);

            obj.template = "<span id='" + dataArray[i].Field + "#: Id #'>#: " + dataArray[i].Field + " # </span>";

            var isRequired = false;
            if (dataArray[i].Template !== null && dataArray[i].Template !== "") {

                obj.template = dataArray[i].Template;
            }

            if (dataArray[i].Format !== null && dataArray[i].Format !== "") {
                obj.format = dataArray[i].Format;
                if (dataArray[i].Format.toLowerCase() === "datetime") {
                    obj.format = "{0:dd-MM-yyyy HH.mm.ss}";
                }
            }

            if (dataArray[i].EditTemplateType === "dropdown") {
                isRequired = dataArray[i].Required;
                obj.editor = function (container, options) {
                    columnDropDownEditor(container, options, isRequired);
                };
            }

            if (dataArray[i].EditTemplateType === "date") {
                isRequired = dataArray[i].Required;
                obj.editor = function (container, options) {
                    columnDatePicker(container, options, isRequired);
                };
            }

            if (dataArray[i].EditTemplateType === "datetime") {
                isRequired = dataArray[i].Required;
                obj.editor = function (container, options) {
                    columnDateTimePicker(container, options, isRequired);
                };
            }

            if (dataArray[i].EditTemplateType === "numeric") {
                isRequired = dataArray[i].Required;
                obj.editor = function (container, options) {
                    columnNumericTextbox(container, options, isRequired);
                };
            }

            if (dataArray[i].EditTemplateType === "textarea") {
                isRequired = dataArray[i].Required;
                obj.editor = function (container, options) {
                    columnTextAreaEditor(container, options, isRequired);
                };
            }

            if (dataArray[i].EditTemplateType === "checkbox") {
                isRequired = dataArray[i].Required;
                obj.editor = function (container, options) {
                    columnCheckBoxEditor(container, options, isRequired);
                };
            }

            if (dataArray[i].EditTemplateType === "time") {
                isRequired = dataArray[i].Required;
                obj.editor = function (container, options) {
                    columnTimePicker(container, options, isRequired);
                };
            }

            if (dataArray[i].Visible !== null) {
                obj.hidden = !dataArray[i].Visible;
            }

            if (dataArray[i].Width !== null) {
                obj.width = dataArray[i].Width + "px";
            }

            if (dataArray[i].HtmlAttributes !== null && dataArray[i].HtmlAttributes !== "") {
                obj.attributes = JSON.parse(dataArray[i].HtmlAttributes);
            }

            if (dataArray[i].Coloured === true) {

                if (dataArray[i].HtmlAttributes !== null && dataArray[i].HtmlAttributes !== "") {
                    obj.attributes.class = obj.attributes.class + " color ";
                }
                else {
                    obj.attributes = { "class": " color " };
                };
            }

            obj.filterable = dataArray[i].Filterable;
            if (dataArray[i].Filterable) {
                obj.filterable = {
                    extra: false,
                    field: dataArray[i].FilterField === null ? dataArray[i].Field : dataArray[i].Field + "." + dataArray[i].FilterField,
                    operators: {
                        string: {
                            startswith: "Starts with",
                            eq: "Is equal to",
                            neq: "Is not equal to",
                            contains: "Contains"
                        }
                    }
                };
                if (dataArray[i].EditTemplateType === 'checkbox' || dataArray[i].Format === 'boolean') {
                    //obj.filterable.multi = true;
                    obj.filterable.messages = { isTrue: "Yes", isFalse: "No" };
                }
                else if (dataArray[i].EditTemplateType === 'dropdown' || dataArray[i].Format === 'object') {
                    obj.filterable.multi = true;
                }
                else if (dataArray[i].EditTemplateType === 'datetime' || dataArray[i].Format === 'datetime') {
                    obj.filterable.operators = {
                        date: {
                            gt: "After",
                            lt: "Before"
                        }
                    };
                    obj.filterable.ui = "datetimepicker";
                }
                else if (dataArray[i].EditTemplateType === 'date' || dataArray[i].Format === 'date') {
                    obj.filterable.operators = {
                        date: {
                            gt: "After",
                            lt: "Before"
                        }
                    };
                    obj.filterable.ui = "datepicker";
                }
                else if (dataArray[i].EditTemplateType === 'numeric' || dataArray[i].Format === 'number') {
                    obj.filterable.operators = {
                        number: {
                            gte: "Greater or =",
                            lte: "Less or ="
                        }
                    };
                    obj.filterable.ui = "numerictextbox";
                }
            }
            columnArray.push(obj);
        }
    }

    var commandsArray = generateGridCommands(commandLevel, gridClass);

    if (commandsArray !== null) {
        for (var j = 0; j < commandsArray.length; j++) {
            columnArray.push(commandsArray[j]);
        }
    }

    return columnArray;
}

function generateGridCommands(commandLevel, gridClass) {
    var dataArray = ajaxServerInteraction("GET", "/api/GridConfiguration/GetGridCommands", { "CommandLevel": commandLevel, "GridClass": gridClass }).Object;

    var toolbarArray = new Array();;

    if (dataArray !== null) {

        for (var i = 0; i < dataArray.length; i++) {
            if (dataArray[i].CommandLevel !== commandLevel) {
                continue;
            }
            var obj;
            var jsonString;
            if (dataArray[i].CommandTemplate === undefined ||
                dataArray[i].CommandTemplate === null ||
                dataArray[i].CommandTemplate === "") {
                jsonString = "{\"name\":\"" + dataArray[i].Name + "\"}";
                obj = JSON.parse(jsonString);

                if (dataArray[i].Text !== null) {
                    obj.text = dataArray[i].Text;
                }

                if (dataArray[i].ToolTipText !== null) {
                    obj.title = dataArray[i].ToolTipText;
                }
                if (dataArray[i].ClickHandler !== null
                    && dataArray[i].ClickHandler !== "") {
                    obj.template = '<button Id = "' + dataArray[i].Name
                        + '" class="' + dataArray[i].Class
                        + '" onclick="' + dataArray[i].ClickHandler
                        + '" title ="' + dataArray[i].ToolTip
                        + '" style ="' + dataArray[i].Style
                        + ' " >'
                        + dataArray[i].Text
                        + '</button>';
                }
            }
            else {
                jsonString = "{\"template\":\"" + dataArray[i].CommandTemplate + "\"}";
                obj = JSON.parse(jsonString);
            }

            if (dataArray[i].Width !== undefined &&
                dataArray[i].Width !== null &&
                dataArray[i].Width !== "") {
                obj.width = dataArray[i].Width;
            }
            toolbarArray.push(obj);
        }
    }

    return toolbarArray;
}

function notifyMe(title, body, icon, data, tag, sticky, noscreen) {
    if (!("Notification" in window)) {
        alert("This browser does not support desktop notification");
    }
    else if (Notification.permission === "granted") {
        createNotification(title, body, icon, data, tag, sticky, noscreen);
    }
    else if (Notification.permission !== 'denied') {
        Notification.requestPermission(function (permission) {
            if (permission === "granted") {
                createNotification(title, body, icon, data, tag, sticky, noscreen);
            }
        });
    }
}

function createNotification(title, body, icon, data, tag, sticky, noscreen) {
    return new Notification(title, {
        body: body,
        icon: icon,
        data: data,
        tag: tag,
        sound: "",
        vibrate: true,
        sticky: sticky,
        noscreen: noscreen
    });
}

///Get grid model fields for grid
function getGridModelFields(gridClass) {

    var dataArray = ajaxServerInteraction("GET", "/api/GridConfiguration/GetGridColumns", { "GridClass": gridClass }).Object;

    var fieldArray = {};

    if (dataArray !== null) {
        for (var i = 0; i < dataArray.length; i++) {

            //if (dataArray[i].Field === "Id" || dataArray[i].Field === null) {
            //    continue;
            //}

            var field = {};

            field.editable = dataArray[i].Editable;

            if (dataArray[i].DefaultValue !== undefined) {//&& dataArray[i].DefaultValue !== null
                if (dataArray[i].EditTemplateType === "dropdown") {
                    if (dataArray[i].DefaultValue !== null) {
                        field.defaultValue = JSON.parse(dataArray[i].DefaultValue);
                    }
                    else { field.defaultValue = JSON.parse('{"Id": 0,"Name":"--Select--"}'); }
                }
                else {
                    if (dataArray[i].DefaultValue !== null) {
                        field.defaultValue = dataArray[i].DefaultValue;
                    }
                }
            }

            if (dataArray[i].Format !== null) {
                field.type = dataArray[i].Format;
            }
            if (dataArray[i].Format === "datetime" || dataArray[i].EditTemplateType === "date" || dataArray[i].EditTemplateType === "time" || dataArray[i].EditTemplateType === "datetime") {
                field.type = "date";
            }

            else if (dataArray[i].EditTemplateType === "checkbox") {
                field.type = "boolean";
            }

            else if (dataArray[i].EditTemplateType === "numeric") {
                field.type = "number";
            }

            if (dataArray[i].FieldDataType !== undefined && dataArray[i].FieldDataType !== null && dataArray[i].FieldDataType.toLowerCase().indexOf('date') >= 0) {
                field.type = "date";
            }

            if (dataArray[i].Required) {
                field.validation = {
                    required: true
                };
                field.validation[dataArray[i].Field + "RequriedValidator"] =
                    function (input) {

                        var fieldName = input.attr("name");

                        if (input.is("[name=" + fieldName + "]")) {
                            return input.val().length >= 1;
                        }
                        return true;

                    };
            }

            field.title = dataArray[i].Title;

            fieldArray[dataArray[i].Field] = field;
        }
    }
    return fieldArray;
}

///Get grid column template for datePicker type in edit mode
function columnDatePicker(container, options, isRequired) {
    var required = "";
    if (isRequired === true) {
        required = "required";
    }

    var id;
    if (options.id && options.id > 0) {
        id = options.id;
    } else {
        id = (new Date()).getTime();
    }

    $('<input' + required + ' data-bind="value:' + options.field + '" />')
        .appendTo(container)
        .kendoDatePicker({
            //culture: "en-IN",
            format: "dd/MM/yyyy"
        });
}

///Get grid column template for dateTimePicker type in edit mode
function columnDateTimePicker(container, options, isRequired) {
    var required = "";
    if (isRequired === true) {
        required = "required";
    }
    var id;
    if (options.id && options.id > 0) {
        id = options.id;
    } else {
        id = (new Date()).getTime();
    }

    $('<input ' + required + ' data-bind="value:' + options.field + '" />')
        .appendTo(container)
        .kendoDateTimePicker({
            //culture: "en-IN",
            format: "dd/MM/yyyy HH:mm",
            interval: 30
        });
}

///Get grid column template for NumericTextbox type in edit mode
function columnNumericTextbox(container, options, isRequired) {
    var required = "";
    if (isRequired === true) {
        required = "required";
    }
    var id;

    if (options.id && options.id > 0) {
        id = options.id;
    } else {
        id = (new Date()).getTime();
    }

    $('<input ' + required + ' id="' + id + '" data-bind="value:' + options.field + '" />')
        .appendTo(container)
        .kendoNumericTextBox();
}

///Get grid column template for Dropdown type in edit mode
function columnDropDownEditor(container, options, isRequired) {
    var required = "";

    if (isRequired === true) {
        required = "required";
    }

    if (options.model.id > 0) {
        id = options.model.id;
    } else {
        id = (new Date()).getTime();
    }

    var ddlOptions = {
        modelId: options.model.id,
        optionLabel: "--Select--",
        suggest: true,
        placeholder: "Start typing ...",
        filter: "contains",
        autoBind: false,
        dataSource: {
            data: ajaxServerInteraction("GET", "/api/GridConfiguration/GetDropdownData", { "Field": options.field, "Model": options.model }).Object
        }
    };

    //var columnArray = ajaxServerInteraction("GET", "/api/GridConfiguration/GetGridColumns", {"GridClass": gridClass}).Object;

    //if (columnArray.length > 0) {
    //    dataArray = columnArray;
    //    col = dataArray.filter(function (item) { return item.Field == options.field; });


    //    if (col[0].EventHandler != undefined && col[0].EventHandler != null && col[0].EventHandler != "") {
    //        var colObject = JSON.parse(col[0].EventHandler);

    //        if (colObject.onchange) {

    //            ddlOptions.change = function (e) {
    //                var id = $(this)[0].options.modelId;
    //                eval(colObject.onchange);
    //            };
    //        }
    //    }
    //}

    $('<input ' + required + ' name=' + options.field + ' id="dropDown' + options.field + id + '" data-text-field="Name" data-value-field="Id" data-bind="value:' + options.field + '"/>')
        .appendTo(container)
        .kendoDropDownList(ddlOptions);
    $('<span class="k-invalid-msg" data-for="' + options.field + '"></span>').appendTo(container);
}

///Get grid column template for Textarea type in edit mode
function columnTextAreaEditor(container, options, isRequired) {
    var required = "";
    if (isRequired === true) {
        required = "required";
    }
    var id;

    if (options.id && options.id > 0) {
        id = options.id;
    } else {
        id = (new Date()).getTime();
    }

    $('<textarea ' + required + ' name=' + options.field + ' id="' + id + '"  row="1" cols="3" style="width: 170px; height: 25px;" data-bind="value:' + options.field + '"></textarea>')
        .appendTo(container);
}

///Get grid column template for Checkbox type in edit mode
function columnCheckBoxEditor(container, options, isRequired) {
    var required = "";
    if (isRequired === true) {
        required = "required";
    }

    $('<input ' + required + ' type="checkbox" name = "' + options.field + '" id = "' + options.field + '" data-bind="checked:' + options.field + '"/>')
        .appendTo(container);
}

function columnTimePicker(container, options, isRequired) {
    var required = "";
    if (isRequired === true) {
        required = "required";
    }
    var id;
    if (options.id && options.id > 0) {
        id = options.id;
    } else {
        id = (new Date()).getTime();
    }

    $('<input ' + required + ' data-bind="value:' + options.field + '" />')
        .appendTo(container)
        .kendoTimePicker({
            //culture: "en-IN",
            format: "HH:mm",
            interval: 30
        });
}

function syncMailNotification(responseMessage, isSuccess, isWarning, isError) {
    var notification = $("#notification").data("kendoNotification");

    if (isSuccess === "True") {
        notification.success(responseMessage);
    }
    else if (isWarning === "True") {
        notification.warning(responseMessage);
    }
    else if (isError === "True") {
        notification.error(responseMessage);
    }
    else {
        notification.success(responseMessage);
    }
}

function toDate(value) {
    if (value !== undefined && value !== null && value !== "") {
        var dateRegExp = /^\/Date\((.*?)\)\/$/;
        var date = dateRegExp.exec(value);
        if (date !== null) {
            return new Date(parseInt(date[1]));
        }
        else { return value }
    }
    return value;
}

function dynamicEditorWindow(rowId, gridClass, editorFor, subject) {

    var currentLoggedInUserIdParameter = currentLoggedInUserId;

    if (currentLoggedInUserIdParameter === undefined || currentLoggedInUserIdParameter === null) {
        currentLoggedInUserIdParameter = 0;
    }

    var response = ajaxServerInteraction("GET", "/api/ReadOrUpdate/ReadValueForDynamicEditor", { "CurrentLoggedInUserId": currentLoggedInUserIdParameter, "RowId": rowId, "GridClass": gridClass, "EditorFor": editorFor });

    if (response.IsSuccess) {
        value = response.Object;
    }
    else {
        alert(response.ResponseMessage);
    }

    var windowElementId = "DynamicEditorWindow" + gridClass + editorFor + rowId;
    var editorElementId = "DynamicEditor" + gridClass + editorFor + rowId;
    var updateButtonElementId = "DynamicUpdateButton" + gridClass + editorFor + rowId;

    var htmlString = "<div id='" + windowElementId + "'><textarea id='" + editorElementId + "'>" + value + "</textarea><button class='k-button' id='" + updateButtonElementId + "' onclick='updateDynamicEditor(" + rowId + ", \"" + gridClass + "\", \"" + editorFor + "\", \"" + editorElementId + "\");'>Update</button></div>"

    $("body").append(htmlString);

    $("#" + windowElementId).kendoWindow({
        width: "50%",
        height: "80%",
        title: subject,
        actions: [
                "Minimize",
                "Maximize",
                "Close"
        ],
        close: function () { destroyDynamicEditorWindow(windowElementId) }
    });

    $("#" + editorElementId).kendoEditor({
        // Empty tools so do not display toolbar
        tools: kendoEditorToolsArray
    });

    var DynamicEditorWindow = $("#" + windowElementId).data("kendoWindow");
    DynamicEditorWindow.wrapper.addClass("zIndexEnforce");
    DynamicEditorWindow.center().open();
}

function destroyDynamicEditorWindow(elementId) {
    $("#" + elementId).remove();
}

function updateDynamicEditor(rowId, gridClass, editorFor, editorElementId) {
    var valueOfEditor = $("#" + editorElementId).data("kendoEditor").value();

    var currentLoggedInUserIdParameter = currentLoggedInUserId;

    if (currentLoggedInUserIdParameter === undefined || currentLoggedInUserIdParameter === null) {
        currentLoggedInUserIdParameter = 0;
    }
    var response = ajaxServerInteraction("GET", "/api/ReadOrUpdate/UpdateDynamicEditor", { "CurrentLoggedInUserId": currentLoggedInUserIdParameter, "RowId": rowId, "GridClass": gridClass, "EditorFor": editorFor, "EditorValue": valueOfEditor });

    var notification = $("#notification").data("kendoNotification");

    if (response.IsSuccess) {
        notification.success(response.ResponseMessage);
    }
    else if (response.IsWarning) {
        notification.error(response.ResponseMessage);
    }
    else if (response.IsError) {
        alert(response.ResponseMessage);
    }
}

function dynamicHistoryWindow(rowId, gridClass, subject) {

    var currentLoggedInUserIdParameter = currentLoggedInUserId;

    if (currentLoggedInUserIdParameter === undefined || currentLoggedInUserIdParameter === null) {
        currentLoggedInUserIdParameter = 0;
    }

    var response = ajaxServerInteraction("GET", "/api/ReadOrUpdate/ReadHistory", { "CurrentLoggedInUserId": currentLoggedInUserIdParameter, "RowId": rowId, "GridClass": gridClass });
    debugger;
    if (response.IsSuccess) {
        value = response.Object;
    }
    else {
        alert(response.ResponseMessage);
    }

    var windowElementId = "DynamicEditorWindow" + gridClass + editorFor + rowId;
    var editorElementId = "DynamicEditor" + gridClass + editorFor + rowId;
    var updateButtonElementId = "DynamicUpdateButton" + gridClass + editorFor + rowId;

    var htmlString = "<div id='" + windowElementId + "'><textarea id='" + editorElementId + "'>" + value + "</textarea><button class='k-button' id='" + updateButtonElementId + "' onclick='updateDynamicEditor(" + rowId + ", \"" + gridClass + "\", \"" + editorFor + "\", \"" + editorElementId + "\");'>Update</button></div>"

    $("body").append(htmlString);

    $("#" + windowElementId).kendoWindow({
        width: "50%",
        height: "80%",
        title: subject,
        actions: [
                "Minimize",
                "Maximize",
                "Close"
        ],
        close: function () { destroyDynamicEditorWindow(windowElementId) }
    });

    $("#" + editorElementId).kendoEditor({
        // Empty tools so do not display toolbar
        tools: kendoEditorToolsArray
    });

    var DynamicEditorWindow = $("#" + windowElementId).data("kendoWindow");
    DynamicEditorWindow.wrapper.addClass("zIndexEnforce");
    DynamicEditorWindow.center().open();
}

function destroyDynamicHistoryWindow(elementId) {
    $("#" + elementId).remove();
}

function checkedNodeIds(nodes, checkedNodes) {
    for (var i = 0; i < nodes.length; i++) {
        if (nodes[i].checked) {
            checkedNodes.push(nodes[i].id);
        }

        if (nodes[i].hasChildren) {
            checkedNodeIds(nodes[i].children.view(), checkedNodes);
        }
    }
}