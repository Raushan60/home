function validateApplyWithoutRequirement() {
    var ctrlID = "ctl00_BodyContent_";
    var msg = "";
    /*First Name*/
    if (ValidateEmptyTextBox(ctrlID + "txtfName") == false) {
        msg += "- Please enter First Name<br />";
    }
    else if (ValidateName(ctrlID + "txtfName") == false) {
        msg += "- Please enter valid First Name<br />";
    }
    /* Middle Name*/
    if (document.getElementById(ctrlID + "txtMName").value != "") {
        if (ValidateName(ctrlID + "txtMName") == false) {
            msg += "- Please enter valid Middle Name<br />";
        }
    }
    /* Last Name*/
    if (ValidateEmptyTextBox(ctrlID + "txtLName") == false) {
        msg += "- Please enter Last Name<br />";
    }
    else if (ValidateName(ctrlID + "txtLName") == false) {
        msg += "- Please enter valid Last Name<br />";
    }
    /* Date of Birth */
    if (ValidateEmptyTextBox(ctrlID + "txtDOB") == false) {
        msg += "- Please select Date of Birth<br />";
    }
    else if (ValidateDOB(ctrlID + "txtDOB", true) == false) {
        msg += "- Please select valid Date of Birth<br />";
    }
    /* Mobile Number*/
    if (ValidateEmptyTextBox(ctrlID + "txtmobile") == false) {
        msg += "- Please enter Mobile Number<br />";
    }
    else if (ValidateMobile(ctrlID + "txtmobile") == false) {
        msg += "- Please enter valid Mobile Number<br />";
    }
    /* E-mail ID*/
    if (ValidateEmptyTextBox(ctrlID + "TxtEmaiID") == false) {
        msg += "- Please enter E-mail ID<br />";
    }
    else if (ValidateEmail(ctrlID + "TxtEmaiID") == false) {
        msg += "- Please enter valid E-mail ID<br />";
    }
    /* E-mail ID*/
    if (CheckDefaultDropdown(ctrlID + "ddlPreflocation", "0") == false) {
        msg += "- Please select Preferred Job Location<br />";
    }
    /* Captcha*/
    if (ValidateEmptyTextBox(ctrlID + "txtCaptcha") == false) {
        msg += "- Please enter captcha<br />";
    }
    /* Upload Resume*/
    var t = validateFile(ctrlID + "fUFileUpload");
    if (t == 0) {
        msg += "- Please select Resume<br />";
    }
    else if (t == -1) {
        msg += "- Please select valid Resume<br />";
    }

    if (msg != "") {
        showPopup(msg);
        return false;
    }
    return true;
}

function validateResume(frmID) {
    try {
        var ctrlID = frmID.replace("frmResume", "");
        var msg = "";

        /* E-mail ID*/
        if (ValidateEmptyTextBox(ctrlID + "TxtEmaiID") == false) {
            msg += "- Please enter E-mail ID<br />";
        }
        else if (ValidateEmail(ctrlID + "TxtEmaiID") == false) {
            msg += "- Please enter valid E-mail ID<br />";
        }

        /* Password */
        if (ValidateEmptyTextBox(ctrlID + "TxtPassword") == false) {
            msg += "- Please enter Password<br />";
        }
        /* Password */
        if (ValidateEmptyTextBox(ctrlID + "TxtConform") == false) {
            msg += "- Please enter Confirm Password<br />";
        }

        if (document.getElementById(ctrlID + "TxtPassword").value != document.getElementById(ctrlID + "TxtPassword").value) {
            msg += "- Confirm password should same as Password<br />";
        }

        /*First Name*/
        if (ValidateEmptyTextBox(ctrlID + "txtfName") == false) {
            msg += "- Please enter First Name<br />";
        }
        else if (ValidateName(ctrlID + "txtfName") == false) {
            msg += "- Please enter valid First Name<br />";
        }
        /* Middle Name*/
        if (document.getElementById(ctrlID + "txtMName").value != "") {
            if (ValidateName(ctrlID + "txtMName") == false) {
                msg += "- Please enter valid Middle Name<br />";
            }
        }
        /* Last Name*/
        if (ValidateEmptyTextBox(ctrlID + "txtLName") == false) {
            msg += "- Please enter Last Name<br />";
        }
        else if (ValidateName(ctrlID + "txtLName") == false) {
            msg += "- Please enter valid Last Name<br />";
        }
        /* Date of Birth */
        if (ValidateEmptyTextBox(ctrlID + "txtDOB") == false) {
            msg += "- Please select Date of Birth<br />";
        }
        else if (ValidateDOB(ctrlID + "txtDOB", true) == false) {
            msg += "- Please select valid Date of Birth<br />";
        }
        /* Mobile Number*/
        if (ValidateEmptyTextBox(ctrlID + "txtmobile") == false) {
            msg += "- Please enter Mobile Number<br />";
        }
        else if (ValidateMobile(ctrlID + "txtmobile") == false) {
            msg += "- Please enter valid Mobile Number<br />";
        }
        /* Perf. Location*/
        if (CheckDefaultDropdown(ctrlID + "ddlPreflocation", "0") == false) {
            msg += "- Please select Preferred Job Location<br />";
        }
        /* Upload Resume*/
        var t = validateFile(ctrlID + "fUFileUpload");
        if (t == 0) {
            msg += "- Please select Resume<br />";
        }
        else if (t == -1) {
            msg += "- Please select valid Resume<br />";
        }

        if (msg != "") {
            showPopup(msg);
            return false;
        }
        return true;
    }
    catch (e) {
        showPopup(e.message);
        return false;
    }
}