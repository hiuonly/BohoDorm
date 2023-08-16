
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>WELCOME LOGIN</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="view/client/css/logincss.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>

    <body>
        <div class="cont">
            <div class="form sign-in">
                <form action="login" method="post" id="form-signin">
                    <h2>Sign In</h2>       
                    <h3>${requestScope.messError}</h3>
                    <label class="form-group">

                        <input name="user" type="text" id="username" placeholder="UserName"><br>
                        <span class="form-mess"></span>
                    </label>
                    <label class="form-group">

                        <input name="pass" type="password" id="passwords" placeholder="Password"><br>
                        <span class="form-mess"></span>
                    </label>
                    <button class="submit sb1">Sign In</button>
                    
                    <p class="forgot-pass"><a href="forgotPassword">Forgot Password ?</a></p>

                    <div class="social-media">
                        <ul>
                            <li> <a href="https://www.facebook.com/">  <img src="https://www.facebook.com/images/fb_icon_325x325.png"> </a></li>
                            <li> <a href="https://www.instagram.com//"> <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/800px-Instagram-Icon.png"> </a></li>
                            <li> <a href="https://mail.google.com/"> <img src="https://i.pinimg.com/originals/74/65/f3/7465f30319191e2729668875e7a557f2.png"> </a></li>
                            <li> <a href="https://www.icloud.com/"> <img src="https://i.pinimg.com/originals/1e/c1/1a/1ec11a869384bc5e59625bac39b6a099.png"> </a></li>
                        </ul>
                    </div>
                </form>
            </div>


            <div class="sub-cont">
                <div class="img">
                    <div class="img-text m-up">
                        <h2>New here?</h2>
                        <p>Sign up and discover great amount of new opportunities!</p>
                    </div>
                    <div class="img-text m-in">
                        <h2>One of us?</h2>
                        <p>If you already has an account, just sign in. We've missed you!</p>
                    </div>
                    <div class="img-btn">
                        <span class="m-up">Sign Up</span>
                        <span class="m-in">Sign In</span>
                    </div>
                </div>
                <div class="form sign-up">
                    <form action="signup" method="post" id="form-signup">
                        <h2>Sign Up</h2>
                        <h3>${requestScope.messSUerror}</h3>
                        <label class="form-group">

                            <input name="user" type="text" value="" id="name" placeholder="UserName"> 
                            <span class="form-mess"></span>
                        </label>
                        <label class="form-group">
                            <input type="email" name="email" id="email" placeholder="Email">
                            <span class="form-mess"></span>
                        </label>
                        <label class="form-group">
                            <input type="password" name="pass" id="pass" placeholder="Password">
                            <span class="form-mess"></span>
                        </label>
                        <label class="form-group">
                            <input type="password" name="repass"  id="repass" placeholder="Confirm Password">
                            <span class="form-mess"></span>
                        </label>

                        <button class="submit sb2" >Sign Up Now</button>

                    </form>
                </div>
            </div>
        </div>
        
        <script src="view/client/js/jsthu5.js"></script>
        <script>
            Validator({
                formLogin: '#form-signin',
                errorSelector: '.form-mess',
                rules: [
                    Validator.isRequired('#username', 'Username cannot be blank'),
                    Validator.isRequired('#passwords', 'Passwords cannot be blank'),
                    Validator.isPass('#passwords', 8),
                ]
            })
        </script>
        <script>
            Validator({
                form: '#form-signup',
                errorSelector: '.form-mess',
                rules: [
                    Validator.isRequired('#name', 'Username cannot be blank'),
                    Validator.isRequired('#email', 'Email cannot be blank'),
                    Validator.isEmail('#email'),
                    Validator.isRequired('#pass', 'Passwords cannot be blank'),
                    Validator.isPass('#pass', 8),
                    Validator.isRequired('#repass', 'Re-passwords cannot be blank'),
                    Validator.isConfirmedPass('#repass', function (){
                        return document.querySelector('#form-signup #pass').value;
                    })
                ],
            });
        </script>
    </body>
</html>
