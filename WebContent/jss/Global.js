function ErrorControl(ctrlID) {
    $("#" + ctrlID).addClass("error-control");
}
function NormalControl(ctrlID) {
    $("#" + ctrlID).removeClass("error-control");
}
function CheckDefaultDropdown(ctrlID, DefaultVal) {
    if (document.getElementById(ctrlID).value == DefaultVal) {
        ErrorControl(ctrlID);
        return false;
    }
    else {
        NormalControl(ctrlID);
        return true;
    }
}
function ValidateEmptyTextBox(ctrl) {
    if (document.getElementById(ctrl).value.trim() == "") {
        ErrorControl(ctrl);
        return false;
    }
    else {
        NormalControl(ctrl);
        return true;
    }
}
function validateFile(ctrlID) {
    try {
        var ctrl = document.getElementById(ctrlID);
        var _AllowedFileTypes = "doc,docx,pdf";
        var FileName = ctrl.value;
        if (FileName == "") {
            ErrorControl(ctrlID);
            return 0;
        }
        var extn = FileName.split('.').pop();
        var a = _AllowedFileTypes.split(',');
        var _Valid = false;
        for (var i = 0; i < a.length; i++) {
            if (a[i].toLowerCase() == extn.toLowerCase()) {
                _Valid = true;
                break;
            }
        }
        if (_Valid) {
            return 1;
            NormalControl(ctrl.id);
        }
        else {
            ErrorControl(ctrl.id);
            ctrl.value = "";
            return -1;
        }
    }
    catch (Ex) {
        alert(Ex.message);
    }
}

function ValidateName(ctrl) {
    if (document.getElementById(ctrl).value == "") {
        ErrorControl(ctrl);
        return false;
    }
    else if (document.getElementById(ctrl).value.toString().indexOf("  ") != -1) {
        ErrorControl(ctrl);
        return false;
    }
    var patt = /^[a-zA-z '\s]{3,55}$/;
    var _res = patt.test(document.getElementById(ctrl).value);
    if (_res) NormalControl(ctrl);
    else ErrorControl(ctrl);
    return _res;
}
function ValidateDOB(ctrl, IsCandDOB) {
    try {
        if (document.getElementById(ctrl).value == "") {
            ErrorControl(ctrl);
            return false;
        }
        if (document.getElementById(ctrl).value != "") {
            var _Year = GetYear(document.getElementById(ctrl).value);
            if (_Year < 0) {
                ErrorControl(ctrl);
                return false;
            }
            else if (IsCandDOB) {
                if (_Year < 16) {
                    ErrorControl(ctrl);
                    return false;
                }
                else {
                    NormalControl(ctrl);
                    return true;
                }
            }
            else {
                NormalControl(ctrl);
                return true;
            }
        }
    }
    catch (Ex) {
    }
}
function GetYear(strDate) {
    try {
        if (strDate != "") {
            separator = '-';
            var smallDate = strDate.toString();
            var dateNow = new Date();
            var dateString = dateNow.toString();
            var dateArray = dateString.split(" ");
            var currentDate = dateArray[2] + "-" + dateArray[1] + "-" + dateNow.getFullYear();
            var largeDate = currentDate;
            var age = 0;
            var smallDateArr = Array();
            var largeDateArr = Array();

            smallDateArr = smallDate.split(separator);
            largeDateArr = largeDate.split(separator);

            var months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
            var smallMonth = 0;
            var largeMonth = 0;

            for (var i = 0; i < months.length; i++) {
                if (months[i] == smallDateArr[1]) {
                    smallMonth = i + 1;
                }
                if (months[i] == largeDateArr[1]) {
                    largeMonth = i + 1;
                }
            }

            var smallDt = smallDateArr[0];
            var smallMt = smallMonth;
            var smallYr = smallDateArr[2];

            var largeDt = largeDateArr[0];
            var largeMt = largeMonth;
            var largeYr = largeDateArr[2];


            if ((largeMt > smallMt) || (largeMt == smallMt & largeDt >= smallDt)) {
                age = parseInt(smallYr);
            }
            else {
                age = parseInt(smallYr) + 1;
            }
            age = largeYr - age;

            if (dateNow.getMonth() > largeMt) { age--; }
            if (dateNow.getMonth() == largeMt) {
                if (dateNow.getDate() > largeDt) {
                    age--;
                }
            }
            //  alert(age);

            return age;
        }
    }
    catch (Ex) {
        return 0;
    }
}
function ValidateMobile(ctrl) {
    try {
        var mobileNo = document.getElementById(ctrl).value;
        if (mobileNo == "") {
            ErrorControl(ctrl);
            return false;
        }
        else if (mobileNo == "0000000000") {
            ErrorControl(ctrl);
            return false;
        }
        var patt = /^[0-9]{10}$/;
        var _res = patt.test(mobileNo);
        if (_res) NormalControl(ctrl);
        else ErrorControl(ctrl);
        return _res;
    }
    catch (Ex) {
    }
}
function ValidateEmail(ctrl) {
    if (document.getElementById(ctrl) == null) return true;
    if (document.getElementById(ctrl).disabled == true) return true;
    var EmailString = document.getElementById(ctrl).value;
    var pattern = /^(([\w-]+\.)+[\w-]+|([a-zA-Z]{1}|[\w-]{2,}))@((([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])){1}|([a-zA-Z]+[\w-]+\.)+[a-zA-Z]{2,3})$/
    if (pattern.test(EmailString) == true) {
        var _res = ValidSingleEmailID(EmailString)
        if (_res == false) ErrorControl(ctrl);
        else NormalControl(ctrl);
        return _res;
    }
    else {
        ErrorControl(ctrl);
        return false;
    }
}
function ValidSingleEmailID(emailString) {
    emailString = emailString.split("@");
    emailString = emailString[1].split(".");
    var lent = emailString.length - 1;
    if (lent > 2) {
        return false;
    }
    return true;
}
function EnableKeys(keyType, e) {
    var keyCode;
    if (window.event) //IE
        keyCode = event.keyCode;
    else if (e.which) //Netscape/Firefox/Opera
        keyCode = e.which;

    //Enable only alphabets and spaces
    if (keyType == 0) {
        if (!((keyCode >= 65 && keyCode <= 90) || (keyCode >= 97 && keyCode <= 122) || (keyCode == 32) || (keyCode == 8) || (String(keyCode) == 'undefined')))
            return false;
    }

    //Enable only alphabets
    if (keyType == 10) {

        if (!((keyCode >= 65 && keyCode <= 90) || (keyCode >= 97 && keyCode <= 122) || (keyCode == 8) || (String(keyCode) == 'undefined')))
            return false;
    }

    //Enable only alpha numeric values
    if (keyType == 14) {
        if ((keyCode == 38)) {
            if (window.event) // IE
                event.returnValue = false;
            else if (e.which) // Netscape/Firefox/Opera
                e.returnValue = false;
            return false;
        }
    }
    if (keyType == 1) {
        if (!((keyCode >= 65 && keyCode <= 90) || (keyCode >= 97 && keyCode <= 122) || (keyCode >= 48 && keyCode <= 57) || (keyCode == 32) || (keyCode == 8) || (keyCode == 95) || (String(keyCode) == 'undefined'))) {
            if (window.event) // IE
                event.returnValue = false;
            else if (e.which) // Netscape/Firefox/Opera
                e.returnValue = false;
            return false;
        }
    }
    //Enable only integer values
    if (keyType == 2) {
        if (!((keyCode >= 48 && keyCode <= 57) || (keyCode == 8) || (String(keyCode) == 'undefined'))) {
            if (window.event) // IE
                event.returnValue = false;
            else if (e.which) // Netscape/Firefox/Opera
                e.returnValue = false;
            return false;
        }
    }
    //Enable only float values
    if (keyType == 3) {
        if (!((keyCode >= 48 && keyCode <= 57) || (keyCode == 46) || (keyCode == 8) || (String(keyCode) == 'undefined'))) {
            if (window.event) // IE
                event.returnValue = false;
            else if (e.which) // Netscape/Firefox/Opera
                e.returnValue = false;
            return false;
        }
    }

    //BloodGroup A,B,O,a,b,o,+,-
    if (keyType == 8) {
        if (!((keyCode == 65) || (keyCode == 66) || (keyCode == 97) || (keyCode == 98) || (keyCode == 43) || (keyCode == 45) || (keyCode == 98) || (keyCode == 79) || (keyCode == 111) || (String(keyCode) == 'undefined'))) {
            if (window.event) // IE
                event.returnValue = false;
            else if (e.which) // Netscape/Firefox/Opera
                e.returnValue = false;
            return false;
        }
    }

    //All keyboard entries disallowed
    if (keyType == 9) {
        if (window.event) // IE
            event.returnValue = false;
        else if (e.which) // Netscape/Firefox/Opera
            e.returnValue = false;
        return false;
    }

    //Enable only integer values, comma allowed
    if (keyType == 7) {
        if (!((keyCode >= 48 && keyCode <= 57) || (keyCode == 8) || (keyCode == 44) || (String(keyCode) == 'undefined'))) {
            if (window.event) // IE
                event.returnValue = false;
            else if (e.which) // Netscape/Firefox/Opera
                e.returnValue = false;
            return false;
        }
    }

    if (keyType == 11) {
        if (!((keyCode >= 65 && keyCode <= 90) || (keyCode >= 97 && keyCode <= 122) || (keyCode >= 48 && keyCode <= 57) || (keyCode == 8) || (keyCode == 32) || (keyCode == 44) || (keyCode == 45) || (keyCode == 95) || (keyCode == 40) || (keyCode == 41) || (keyCode == 46) || (keyCode == 123) || (keyCode == 125) || (keyCode == 91) || (keyCode == 93) || (keyCode == 92) || (keyCode == 47) || (keyCode == 37) || (String(keyCode) == 'undefined')))
            return false;
    }
    //Enable only alpha numaric space and - /
    if (keyType == 12) {
        if (!((keyCode >= 65 && keyCode <= 90) || (keyCode >= 97 && keyCode <= 122) || (keyCode >= 48 && keyCode <= 57) || (keyCode == 8) || (keyCode == 95) || (keyCode == 32) || (keyCode == 45) || (keyCode == 47) || (String(keyCode) == 'undefined')))
            return false;
    }

}