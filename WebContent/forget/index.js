function validEmail() {
    var email = document.getElementById('email');

    var email_regx = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/g;

    if(email.value.length == 0 && email.value.match(email_regx) == null)
    {
        alert("The email address seems to be invalid!");
        return false;
    }

    return true;

}