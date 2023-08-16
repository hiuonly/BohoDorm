/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//var nameError = document.getElementById('name-error');
//var emailError = document.getElementById('email-error');
//var passError = document.getElementById('pass-error');
//var cpassError = document.getElementById('cpass-error');
//var submitError = document.getElementById('submit-error');
//
//fuction validateName(){
//    var name = document.getElementById('contact-name').value;
//    var required = 8;
//    var left = required - name.length;
//    
//    if(left > 0){
//        nameError.innerHTML = left + 'more chracters required';
//        return false;
//    }
//    
//    nameError.innerHTML = '<i class="fas fa-check-circle"></i>';
//    return true;
//}
//
//function validateEmail(){
//    var email = document.getElementById('contact-email').value;
//    
//    if(email.length == 0){
//        emailError.innerHTML = 'Email is required'
//        return false;
//    }
//    if(!email.match(/^[A-Za-z]\._\-[0-9]*[@][A-Za-z]*[\.][a-z]{2,4}$/)){
//        emailError.innerHTML = 'Email Invalid'
//        return false;
//    }
//    
//    emailError.innerHTML = '<i class="fas fa-check-circle"></i>';
//    return true;
//}
//
//fuction validatePass(){
//    var pass = document.getElementById('contact-pass').value;
//    var required = 12;
//    var left = required - pass.length;
//    
//    if(left > 0){
//        passError.innerHTML = left + 'more chracters required';
//        return false;
//    }
//    
//    passError.innerHTML = '<i class="fas fa-check-circle"></i>';
//    return true;
//}
//
//function validateForm(){
//    if(!validateName() || !validateEmail() || !validatePass()){
//        submitError.style.display = 'block';
//        submitError.innerHTML = 'please fix error to submit';
//        setTimeout(function(){submitError.style.display = 'none';}, 3000);
//        return false;
//    }
//}


const form = document.getElementById('form');
const username = document.getElementById('username');
const email = document.getElementById('email');
const password = document.getElementById('password');
const password2 = document.getElementById('password2');

form.addEventListener('submit', e => {
	e.preventDefault();
	
	checkInputs();
});

function checkInputs() {
	// trim to remove the whitespaces
	const usernameValue = username.value.trim();
	const emailValue = email.value.trim();
	const passwordValue = password.value.trim();
	const password2Value = password2.value.trim();
	
	if(usernameValue === '') {
		setErrorFor(username, 'Username cannot be blank');
	} else {
		setSuccessFor(username);
	}
	
	if(emailValue === '') {
		setErrorFor(email, 'Email cannot be blank');
	} else if (!isEmail(emailValue)) {
		setErrorFor(email, 'Not a valid email');
	} else {
		setSuccessFor(email);
	}
	
	if(passwordValue === '') {
		setErrorFor(password, 'Password cannot be blank');
	} else {
		setSuccessFor(password);
	}
	
	if(password2Value === '') {
		setErrorFor(password2, 'Password2 cannot be blank');
	} else if(passwordValue !== password2Value) {
		setErrorFor(password2, 'Passwords does not match');
	} else{
		setSuccessFor(password2);
	}
}

function setErrorFor(input, message) {
	const formControl = input.parentElement;
	const small = formControl.querySelector('small');
	formControl.className = 'form-control error';
	small.innerText = message;
}

function setSuccessFor(input) {
	const formControl = input.parentElement;
	formControl.className = 'form-control success';
}
	
function isEmail(email) {
	return /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(email);
}