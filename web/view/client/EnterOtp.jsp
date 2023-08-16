
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Boho Dorm</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link rel="stylesheet" href="view/client/css/forgetPass.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    </head>
    <style>
        body{
            background-image: url('view/client/image/banner/viewsea3.jpg');
        }
    </style>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="forgot">
                        <p class="text-center"><a class="backhomeP" href="login"><i class="fa fa-arrow-left"></i> Back to log in</a></p>
                    </div>
                    <div class="panel panel-default">

                        <div class="panel-body">
                            <div class="text-center">
                                <div>
                                    <img width="150" src="img/${listcustomer.urlimage}" class="img-rounded" alt="Cinque Terre">
                                    <h5 style="font-weight: bold;">${listcustomer.cname}</h5>
                                    <small>Better to be safe than sorry</small>
                                </div>

                                <p class="errorMessage">${requestScope.message}</p>

                                <div class="panel-body">

                                    <form id="form-Code" action="ValidateOtp" class="form" method="post">

                                        <div class="form-group">
                                            <label class="font-italic text-label" for="email-for-pass">Enter your code</label> 
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-lock"></i></span> 
                                                <input id="codeConfirm" name="otp" placeholder="Ex: 12345" class="form-control" type="text" required="required">                                              
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <input name="recover-submit" class="btn btn-block" value="Recover Password" type="submit">
                                        </div>
                                    </form>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
