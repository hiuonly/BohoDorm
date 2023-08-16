
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Boho Dorm</title>
        <link href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="view/client/css/forgetPass.css">
        <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
        <script src="https://kit.fontawesome.com/95e3053da6.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="container padding-bottom-3x mb-2 mt-5">
            <div class="row justify-content-center">
                <div class="col-lg-8 col-md-10">
                    <div class="forgot">
                        <p class="text-center"><a class="backhomeForget" href="login"><i class="fa fa-arrow-left"></i> Back to log in</a></p>
                    </div>
                    <form class="card mt-4" action="forgotPassword" method="POST" id="form-forgotPass">
                        <div class="card-body">
                            <div class="form-group">
                                <h4>Forgot your password?</h4>
                                <small class="form-text text-muted">Just type in your email. Then we'll send you a code to reset your password.</small>
                                <label for="email-for-pass">Enter your email address</label> 
                                <input class="form-control" type="text" name="email" id="email-for-pass" placeholder="join@gmail.com">       
                                <span class="form-mess"></span>
                            </div>
                        </div>
                        <div class="card-footer text-center">
                            <button class="btn" type="submit">Send Code</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script src="view/client/js/forgotPassjs.js"></script>
                <script>
            Validator({
                form: '#form-forgotPass',
                errorSelector: '.form-mess',
                rules: [                   
                    Validator.isRequired('#email-for-pass', 'Email cannot be blank'),
                    Validator.isEmail('#email-for-pass'),                   
                ],
            });
        </script>
    </body>
</html>
