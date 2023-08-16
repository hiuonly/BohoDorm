
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Boho Dorm</title>
        <link href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="view/client/css/forgetPass.css">
        <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css' rel='stylesheet'>
        <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
        <style>
            body{
                background-image: url('view/client/image/banner/viewsea1.jpg');
            }
        </style>
    </head>
    <body>
        <!-- Container containing all contents -->
        <div class="container">
            <div class="forgot-Pass">
                <p class="text-center"><a class="backhomeP" href="login"><i class="fa fa-arrow-left"></i> Back to log in</a></p>
            </div>
            <div class="row justify-content-center">

                <div class="col-12 col-md-9 col-lg-7 col-xl-6 mt-5">
                    <!-- White Container -->
                    <div class="container bg-white rounded mt-2 mb-2 px-0">
                        <!-- Main Heading -->
                        <div class="row justify-content-center align-items-center pt-3">
                            <h1>
                                <strong>Reset Password</strong>
                            </h1>
                        </div>
                        <div class="pt-3 pb-3">
                            <form class="form-horizontal" action="NewPassword" method="POST" id="form-newPass">
                                <!-- Email -->
                                <div class="form-group row justify-content-center px-3">
                                    <div class="col-9 px-0">
                                        <label for="email-for-pass">Your email address</label>                                           
                                        <input value=" ${sessionScope.email}" class="form-control border-info placeicon" readonly>
                                        
                                    </div>
                                </div>                                   
                                <!-- new pass Input -->
                                <div class="form-group row justify-content-center px-3">
                                    <div class="col-9 px-0">
                                        <label for="email-for-pass">Your New Password</label> 
                                        <input type="password" id="pass" name="password" placeholder="&#xf084; &nbsp; New Password" class="form-control border-info placeicon">
                                        <span class="form-mess"></span>
                                    </div>
                                </div>
                                <!-- confirm Password Input -->
                                <div class="form-group row justify-content-center px-3">
                                    <div class="col-9 px-0">
                                        <label for="email-for-pass">Confirm New Password</label> 
                                        <input type="password" id="repass" name="confPassword" placeholder="&#xf084; &nbsp; Confirm New Password" class="form-control border-info placeicon">
                                        <span class="form-mess"></span>
                                    </div>
                                </div>

                                <div class="form-group row justify-content-left  d-flex justify-content-around">
                                    <div class="col-9 px-3">
                                        <label for="email-for-pass">Show Password</label> 
                                        <input type="checkbox" onclick="showPass()">
                                    </div>
                                </div>
                                <!-- change pass Button -->
                                <div class="form-group row justify-content-center">
                                    <div class="col-3 px-3 mt-3">
                                        <input type="submit" value="Reset" class="btn btn-block">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js'></script>
        <script src="view/client/js/forgotPassjs.js"></script>
        <script>
                                            Validator({
                                                form: '#form-newPass',
                                                errorSelector: '.form-mess',
                                                rules: [
                                                    Validator.isRequired('#pass', 'Passwords cannot be blank'),
                                                    Validator.isPass('#pass', 8),
                                                    Validator.isRequired('#repass', 'Re-passwords cannot be blank'),
                                                    Validator.isConfirmedPass('#repass', function () {
                                                        return document.querySelector('#form-newPass #pass').value;
                                                    })
                                                ],
                                            });
        </script>
        <script>
            function showPass() {
                var show = document.getElementById('pass');
                var showRe = document.getElementById('repass');
                if (show.type == 'password' && showRe.type == 'password') {
                    show.type = 'text';
                    showRe.type = 'text'
                } else {
                    show.type = 'password';
                    showRe.type = 'password'
                }
            }
        </script>
    </body>
</html>
