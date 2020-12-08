// Get the current year for the copyright
//$('#year').text(new Date().getFullYear());

function disableSubmit() {
document.getElementById("submit").disabled = true;
}

function activateButton(element) {
    
    if(element.checked) {
    document.getElementById("submit").disabled = false;
    }
    else  {
    document.getElementById("submit").disabled = true;
    }

}

function validForm() {
    var username = document.getElementById('username');
    var email = document.getElementById('email');
    var password = document.getElementById('password');
    var cpassword = document.getElementById('cpassword');

    var email_regx = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/g;
    var check_user = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/g;

    alert(password.value.match(check_user));

    if (username.value.length < 5) {
        alert("Name must be filled atleast 5 characters length");
        return false;
    }

    if(email.value.length == 0 && email.value.match(email_regx) == null)
    {
        alert("The email address seems to be invalid!");
        return false;
    }

    if(password.value.match(check_user) == null )
    {
        alert("Please use minimum eight characters, at least one uppercase letter, one lowercase letter and one number");
        return false;
    }

    if(password.value != cpassword.value)
    {
        alert("Password and confirm password doesn't match");
        return false;
    }

    if(!document.getElementById("submit").disabled) {
        alert('Check the Terms & Conditions Check box');
        return false;
    }

    return true;

}