/**
 * 
 */
const btnRegister = document.getElementById("submit");

var name = document.getElementById("idHoVaTen");
var date = document.getElementById("idDate");
var phone = document.getElementById("idPhone");
var email = document.getElementById("idEmail");
var username = document.getElementById("idUsername");
var password = document.getElementById("idPassword");
var password2 = document.getElementById("idRepass");

btnRegister.addEventListener('click', function (e) {
    let isValid = checkValidate();

    if (isValid) {
        alert('Gửi đăng ký thành công');
    }
    else {
        alert('Gửi đăng kí thất bại');
        e.preventDefault();
    }
});

function checkValidate() {
    let isCheck = true;

    //check password 
    if (password) {
        var passwordValue = password.value.trim();
        var errPasswordValue = document.querySelector(".errPassword");
        if (passwordValue.length < 4) {         
            errPasswordValue.style.display = "contents";
            isCheck = false;
        } else {
            errPasswordValue.style.display = "none";
        }   
    } else {
        errPasswordValue.style.display = "contents";
        isCheck = false;
    }

    //check password2
    if (password2) {
        var password2Value = password2.value.trim();
        var errPassword2Value = document.querySelector(".errPassword2");
        if (passwordValue !== password2Value || password2Value.length < 4) {         
            errPassword2Value.style.display = "contents";
            isCheck = false;
        } else {
            errPassword2Value.style.display = "none";
        }   
    } else {
        errPassword2Value.style.display = "contents";
        isCheck = false;
    }
    
    return isCheck;
}