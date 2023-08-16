
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Boho Dorm</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
        <link rel="stylesheet" href="view/client/css/myprofile2.css">
    </head>
    <body>
        <div class="container bootstrap snippet">
            <header class="header">

            </header>
            <div class="row">
                <form class="form" action="AddCustomer" method="post" id="form-addCustomer">
                    <div class="col-sm-3">
                        <!--left col-->


                        <div class="text-center">
                            <div class="box_img">
                                <img width="200px" height="200px" src="view/client/image/icon/avt.png" id="myImg" class="avatar img-circle img-thumbnail" alt="avatar">
                                <div class="round">
                                    <input type="file" name="imageC" id="image-input" accept="image/*">
                                    <i class="fa fa-camera"></i>
                                </div>
                            </div>
                        </div>


                    </div>
                    <!--/col-3-->
                    <div class="col-sm-9">


                        <div class="tab-content">
                            <div class="tab-pane active" id="home">
                                <hr>                           
                                <div class="form-group">
                                    <div class="col-xs-6">
                                        <label for="first_name">
                                            <h4>Full Name</h4>
                                        </label>
                                        <input hidden name="usid" value="${sessionScope.acc.usid}">
                                        <input type="text" class="form-control" name="name" id="full_name"
                                               placeholder="Full Name">
                                        <span class="form-mess"></span>
                                    </div>
                                </div>
                                <div class="form-group">

                                    <div class="col-xs-6">
                                        <label for="cccd">
                                            <h4>CCCD</h4>
                                        </label>
                                        <input type="text" class="form-control" name="cccd" id="cccd"
                                               placeholder="Citizen identity card" >
                                        <span class="form-mess"></span>
                                    </div>

                                </div>
                                <div class="form-group">

                                    <div class="col-xs-6">
                                        <label for="birthofday">
                                            <h4>Birth of Day</h4>
                                        </label>
                                        <input type="date" class="form-control" name="birthofday" id="birthofday"
                                               placeholder="Birth of Day">
                                        <span class="form-mess"></span>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-xs-6">
                                        <label for="address">
                                            <h4>Address</h4>
                                        </label>
                                        <input type="text" class="form-control" name="address" id="address"
                                               placeholder="Address">
                                        <span class="form-mess"></span>
                                    </div>

                                </div>

                                <div class="form-group">
                                    <div class="col-xs-6">
                                        <label for="phone">
                                            <h4>Phone Number</h4>
                                        </label>
                                        <input type="text" class="form-control" name="phone" id="phone"
                                               placeholder="Phone Number">
                                        <span class="form-mess"></span>
                                    </div>
                                </div>
                                <div class="form-group">

                                    <div class="col-xs-6">
                                        <label for="gender">
                                            <h4>Gender</h4>
                                        </label>
                                        <select name="gender" class="form-control" id="gender">
                                            <option value="Male">Male</option>
                                            <option value="Female">Female</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">

                                    <div class="col-xs-6">
                                        <label for="country">
                                            <h4>Country</h4>
                                        </label>
                                        <input type="text" class="form-control" name="country" id="country"
                                               placeholder="Country">
                                        <span class="form-mess"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-xs-12">
                                        <br>
                                        <button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                                    </div>
                                </div>

                                <hr>

                            </div>

                        </div>
                    </div>
                </form>
            </div>
        </div>

        <script src="view/client/js/myprofilejs.js"></script>
        <script src="view/client/js/customerjs.js"></script>

        <script>
            Validator({
                form: '#form-addCustomer',
                erorrSelector: '.form-mess',
                rules: [
                    Validator.isRequired('#full_name', 'Please fill in your full name'),
                    Validator.minLength('#cccd', 12, 'Please enter a minimum of 12'),
                    Validator.isRequired('#address', 'Please enter your full address'),
                    Validator.minLength('#phone', 10, 'Please enter a minimum of 10'),
                    Validator.isRequired('#country', 'Please enter your full country')
                ]
            });
        </script>
    </body>
</html>
