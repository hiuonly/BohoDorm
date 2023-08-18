
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
                <a href="homeP"><i class="fa fa-angle-left" aria-hidden="true"></i> Home</a>
            </header>
            <div class="row">
                <form class="form" action="myprofile" method="post">
                    <div class="col-sm-3">
                        <!--left col-->


                        <div class="text-center">
                            <div class="box_img">
                                <img width="200px" height="250px" src="img/${listC.urlimage}" id="myImg" class="avatar img-circle img-thumbnail" alt="avatar">
                                <div class="round">
                                    <input type="file" name="imageC" id="image-input" accept="image/*">
                                    <i class="fa fa-camera"></i>
                                </div>
                            </div>
                            <div class="username">
                                <p>${listAcc.username}</p>
                            </div>
                            <div class="position">
                                <p>${listC.country}</p>
                            </div>
                            <ul class="mediasocial">
                                <li> <a href="https://www.facebook.com/">  <img src="https://www.facebook.com/images/fb_icon_325x325.png"> </a></li>
                                <li> <a href="https://www.instagram.com//"> <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/800px-Instagram-Icon.png"> </a></li>
                            </ul>
                        </div>


                        <div class="">
                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.</p>
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
                                        <input hidden="" name="cid" value="${listC.cid}">
                                        <input type="text" class="form-control" value="${listC.cname}" name="full_name" id="full_name"
                                               placeholder="Full Name">
                                    </div>
                                </div>
                                <div class="form-group">

                                    <div class="col-xs-6">
                                        <label for="cccd">
                                            <h4>CCCD</h4>
                                        </label>
                                        <input type="text" class="form-control" value="${listC.cccd}" name="cccd" id="cccd"
                                               placeholder="Citizen identity card" >
                                    </div>

                                </div>
                                <div class="form-group">

                                    <div class="col-xs-6">
                                        <label for="birthofday">
                                            <h4>Birth of Day</h4>
                                        </label>
                                        <input type="date" class="form-control" value="${listC.birthofday}" name="birthofday" id="birthofday"
                                               placeholder="Birth of Day">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-xs-6">
                                        <label for="address">
                                            <h4>Address</h4>
                                        </label>
                                        <input type="text" class="form-control" value="${listC.caddress}" name="address" id="address"
                                               placeholder="Address">
                                    </div>

                                </div>

                                <div class="form-group">
                                    <div class="col-xs-6">
                                        <label for="phone">
                                            <h4>Phone Number</h4>
                                        </label>
                                        <input type="text" class="form-control" value="${listC.sdt}" name="phone" id="phone"
                                               placeholder="Phone Number">
                                    </div>
                                </div>
                                <div class="form-group">

                                    <div class="col-xs-6">
                                        <label for="email">
                                            <h4>Email</h4>
                                        </label>
                                        <input type="email" class="form-control" value="${listAcc.email}" name="email" id="email"
                                               placeholder="you@email.com">
                                    </div>
                                </div>
                                <div class="form-group">

                                    <div class="col-xs-6">
                                        <label for="gender">
                                            <h4>Gender</h4>
                                        </label>
                                        <input type="text" class="form-control" value="${listC.gender}" name="gender" placeholder="Gender">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-xs-6">
                                        <label for="username">
                                            <h4>UserName</h4>
                                        </label>
                                        <input hidden="" name="id" value="${listAcc.usid}">
                                        <input type="text" class="form-control" value="${listAcc.username}" name="username" id="username"
                                               placeholder="UserName">
                                    </div>

                                </div>
                                <div class="form-group">

                                    <div class="col-xs-6">
                                        <label for="country">
                                            <h4>Country</h4>
                                        </label>
                                        <input type="text" class="form-control" value="${listC.country}" name="country" id="country"
                                               placeholder="Country">
                                    </div>
                                </div>
                                <div class="form-group">

                                    <div class="col-xs-6">
                                        <label for="password">
                                            <h4>Password</h4>
                                        </label>
                                        <input type="password" class="form-control" value="${listAcc.passwork}" name="password" id="password" placeholder="password">
                                        <span><i class="fa fa-eye" id="eye" onclick="toggle()" aria-hidden="true"></i></span>
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
    </body>
</html>
