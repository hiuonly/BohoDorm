
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
        <!--        <link rel="stylesheet" href="css/font-awesome.min.css">-->
        <link rel="stylesheet" href="view/client/vendors/owl-carousel/owl.carousel.min.css">
        <link rel="stylesheet" href="view/client/vendors/nice-select/css/nice-select.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
        <!-- main css -->
        <link rel="stylesheet" href="view/client/css/roomdetail.css">
        <link rel="stylesheet" href="view/client/css/stylethu3.1.css">
        <link rel="stylesheet" href="view/client/css/responsive.css">
    </head>
    <body>
        <!-- Preloader -->
        <div class="preloader-bg"></div>
        <div id="preloader">
            <div id="preloader-status">
                <div class="preloader-position loader"> <span></span> </div>
            </div>
        </div>
        <!-- Progress scroll totop -->
        <div class="progress-wrap cursor-pointer">
            <svg class="progress-circle svg-content" width="100%" height="100%" viewBox="-1 -1 102 102">
            <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" />
            </svg>
        </div>
        <!--================Header Area =================-->
        <jsp:include page="header.jsp"></jsp:include>
        <!--================Header Area =================-->   
        <!-- Room Page Slider -->
        <header class="header slider">

            <div class="owl-carousel owl-theme">
                <!-- The opacity on the image is made with "data-overlay-dark="number". You can change it using the numbers 0-9. -->
                <div class="text-center item bg-img" data-overlay-dark="3" data-background="img/${listrd.urlimage1}"></div>
                <div class="text-center item bg-img" data-overlay-dark="3" data-background="img/${listrd.urlimage2}"></div>
                <div class="text-center item bg-img" data-overlay-dark="3" data-background="img/${listrd.urlimage3}"></div>
            </div>

            <!-- arrow down -->
            <div class="arrow bounce text-center">
                <a href="#" data-scroll-nav="1" class=""> <i class="fas fa-arrow-down"></i> </a>
            </div>
        </header>
        <!-- Room Content -->
        <section class="rooms-page section-padding" data-scroll-index="1">
            <div class="container">
                <!-- project content -->

                <div class="row">
                    <div class="col-md-12"> 
                        <span>
                            <i class="star-rating"></i>
                            <i class="star-rating"></i>
                            <i class="star-rating"></i>
                            <i class="star-rating"></i>
                            <i class="star-rating"></i>
                        </span>
                        <div class="section-title">${listrd.roomType}</div>
                    </div>
                    <div class="col-md-8">
                        <p class="mb-30">${listrd.describle}</p>
                        <div class="row">
                            <div class="col-md-6">
                                <h6>Check-in</h6>
                                <ul class="list-unstyled page-list mb-30">
                                    <li>
                                        <div class="page-list-icon"> <span class="fas fa-check"></span> </div>
                                        <div class="page-list-text">
                                            <p>Our doors are open 24/7</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="page-list-icon"> <span class="fas fa-check"></span> </div>
                                        <div class="page-list-text">
                                            <p>Early check-in subject to availability</p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-md-6">
                                <h6>Check-out</h6>
                                <ul class="list-unstyled page-list mb-30">
                                    <li>
                                        <div class="page-list-icon"> <span class="fas fa-check"></span> </div>
                                        <div class="page-list-text">
                                            <p>Check-out before noon</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="page-list-icon"> <span class="fas fa-check"></span> </div>
                                        <div class="page-list-text">
                                            <p>Express check-out</p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-md-12">
                                <h6>Special check-in instructions</h6>
                                <p>Guests will receive an email 5 days before arrival with check-in instructions; front desk staff will greet guests on arrival For more details, please contact the property using the information on the booking confirmation.</p>
                            </div>
                            <div class="col-md-12">
                                <h6>Pets</h6>
                                <p>Pets not allowed</p>
                            </div>
                            <div class="col-md-12">
                                <h6>Children and extra beds</h6>
                                <p>Children are welcome Kids stay free! Children stay free when using existing bedding; children may not be eligible for complimentary breakfast Rollaway/extra beds are available for $ 10 per day.</p>
                            </div>
                            <div class="col-md-12">
                                <div class="butn-dark mt-15 mb-30"> <a href="pay?rid=${listrd.rid}"><span>Check Now</span></a> </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 offset-md-1">
                        <h6>Amenities</h6>
                        <ul class="list-unstyled page-list mb-30">
                            <li>
                                <div class="page-list-icon"> <span class="fa fa-users"></span> </div>
                                <div class="page-list-text">
                                    <p>${listrd.peopleNumber} Persons</p>
                                </div>
                            </li>
                            <li>
                                <div class="page-list-icon"> <span class="fa fa-wifi"></span> </div>
                                <div class="page-list-text">
                                    <p>Free Wifi</p>
                                </div>
                            </li>
                            <li>
                                <div class="page-list-icon"> <span class="fa fa-tv"></span> </div>
                                <div class="page-list-text">
                                    <p>TV</p>
                                </div>
                            </li>
                            <li>
                                <div class="page-list-icon"> <span class="fa fa-utensils"></span> </div>
                                <div class="page-list-text">
                                    <p>Breakfast</p>
                                </div>
                            </li>
                            <li>
                                <div class="page-list-icon"> <span class="fa fa-bed"></span> </div>
                                <div class="page-list-text">
                                    <p>${listrd.bedNumber} Beds</p>
                                </div>
                            </li>
                            <li>
                                <div class="page-list-icon"> <span class="fas fa-bath"></span> </div>
                                <div class="page-list-text">
                                    <p>Bathroom</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>

            </div>
        </section>
        <!-- Similiar Room -->
        <section class="rooms1 section-padding bg-black">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-subtitle"><span>Luxury Hotel</span></div>
                        <div class="section-title"><span>Similar Rooms</span></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="owl-carousel owl-theme">
                            <c:forEach items="${listR}" var="r">
                            <div class="item">
                                <div class="position-re o-hidden"> <img src="img/${r.urlimage1}" alt=""> </div> <span class="category"><a href="rooms2.html">Book</a></span>
                                <div class="con">
                                    <h6><a href="roomdetail?rid=${r.rid}">${r.priceRoom}$ / Night</a></h6>
                                    <h5><a href="roomdetail?rid=${r.rid}">${r.roomType}</a> </h5>
                                    <div class="line"></div>
                                    <div class="row facilities">
                                        <div class="col col-md-7">
                                            <ul>
                                                <li><i class="fas fa-bed"></i></li>
                                                <li><i class="fas fa-bath"></i></li>
                                                <li><i class="fas fa-utensils"></i></i></li>
                                                <li><i class="fas fa-shower"></i></li>
                                            </ul>
                                        </div>
                                        <div class="col col-md-5 text-right">
                                            <div class="permalink"><a href="roomdetail?rid=${r.rid}">Details <i class="fas fa-arrow-right"></i></a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
         <!--================ Start footer Area  =================-->
         <jsp:include page="footer.jsp"></jsp:include>
        <!--================ End footer Area  =================-->

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
        <script src="view/client/js/thu7.js"></script>
    </body>
</html>
