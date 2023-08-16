<%-- 
    Document   : room
    Created on : Jun 5, 2022, 4:01:15 PM
    Author     : Nathenial
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Boho Dorm</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="view/client/css/bootstrap.css">
        <link rel="stylesheet" href="view/client/vendors/linericon/style.css">
        <link rel="stylesheet" href="view/client/vendors/owl-carousel/owl.carousel.min.css">
        <link rel="stylesheet" href="view/client/vendors/nice-select/css/nice-select.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
        <!-- main css -->
        <link rel="stylesheet" href="view/client/css/roomstyle1.css">
        <link rel="stylesheet" href="view/client/css/stylethu3.1.css">
        <link rel="stylesheet" href="view/client/css/responsive.css">
    </head>
    <body>
        <!--================Header Area =================-->
        <jsp:include page="header.jsp"></jsp:include>
            <!--================Header Area =================-->     

            <!--================Breadcrumb Area =================-->
            <section class="breadcrumb_area">
                <div class="overlay bg-parallax" data-stellar-ratio="0.8" data-stellar-vertical-offset="0" data-background=""></div>
                <div class="container">
                    <div class="page-cover text-center">
                        <h2 class="page-cover-tittle">Service</h2>
                        <ol class="breadcrumb">
                            <li><a href="homeP">Home</a></li>
                            <li class="active">Service</li>
                        </ol>
                    </div>
                </div>
            </section>
            <!--================Breadcrumb Area =================-->

            <!--================Room Area =================-->
            <section class="section-padding">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                        <c:forEach items="${listS1}" var="r">
                            <div class="rooms2 mb-90 left animate-box" data-animate-effect="fadeInUp">
                                <figure><img style="height: 500px; width: 100%" src="img/${r.urlimage}" alt="" class="img-fluid"></figure>
                                <div class="caption">
                                    <h3>${r.price}$</h3>
                                    <h4><a href="roomdetail?rid=${r.stid}">${r.sname}</a></h4>
                                    <p>${r.describle}</p>
                                    <div class="row room-facilities">
                                        <div class="col-md-4">
                                            <ul>
                                                <li><i class="fas fa-wifi"></i> Free Wifi</li>
                                            </ul>
                                        </div>
                                        <div class="col-md-4">
                                            <ul>
                                                <li><i class="fas fa-tv"></i> TV LCD</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <hr class="border-2">
                                    <div class="info-wrapper">
                                        <div class="butn-dark"> <a href="Buy?id=${r.srid}" data-scroll-nav="1"><span>Book Now</span></a> </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>    

                    </div>
                </div>
            </div>
        </section>
        <!--================Room Area =================-->
        <!--================ Start footer Area  =================-->
        <jsp:include page="footer.jsp"></jsp:include>
        <!--================ End footer Area  =================-->

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <!--        <script src="js/jquery-3.2.1.min.js"></script>-->
        <script src="view/client/js/jquery-3.6.0.min.js"></script>
        <script src="view/client/js/popper.js"></script>
        <script src="view/client/js/bootstrap.min.js"></script>
        <script src="view/client/vendors/owl-carousel/owl.carousel.min.js"></script>
        <script src="view/client/js/jquery.ajaxchimp.min.js"></script>
        <!--        <script src="js/mail-script.js"></script>-->
        <script src="view/client/vendors/nice-select/js/jquery.nice-select.js"></script>
        <!--        <script src="js/mail-script.js"></script>-->
        <script src="view/client/js/stellar.js"></script>   
        <script src="view/client/vendors/lightbox/simpleLightbox.min.js"></script>
        <script src="view/client/js/scrollIt.min.js"></script>
        <script src="view/client/js/owl.carousel.min.js"></script>
        <script src="view/client/js/YouTubePopUp.js"></script>
        <script src="view/client/js/smooth-scroll.min.js"></script>
        <!--        <script src="js/home.js"></script>-->
    </body>
</html>
