
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Boho Dorm</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="view/client/css/bootstrap.css">
    <link rel="stylesheet" href="view/client/vendors/linericon/style.css">
    <!--        <link rel="stylesheet" href="css/font-awesome.min.css">-->
    <link rel="stylesheet" href="view/client/vendors/owl-carousel/owl.carousel.min.css">
    <link rel="stylesheet" href="view/client/vendors/nice-select/css/nice-select.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <link href="view/client/css/jquery.nice-number.css" rel="stylesheet">

    <!-- main css -->
    <link rel="stylesheet" href="view/client/css/paythu5.css">
    <link rel="stylesheet" href="view/client/css/stylethu3.1.css">
    <link rel="stylesheet" href="view/client/css/responsive.css">
</head>

<body>
    <!--================Header Area =================-->
    <jsp:include page="header.jsp"></jsp:include>
        <!--================Header Area =================-->   

        <!--================Breadcrumb Area =================-->
        <section class="breadcrumb_area">
            <div class="overlay bg-parallax" data-stellar-ratio="0.8" data-stellar-vertical-offset="0" data-background="">
            </div>
            <div class="container">
                <div class="page-cover text-center">
                    <h2 class="page-cover-tittle">Make A Reservation</h2>
                    <ol class="breadcrumb">
                        <li><a href="homeP">Home</a></li>
                        <li class="active">Make A Reservation</li>
                    </ol>
                </div>
            </div>
        </section>
        <!--================Breadcrumb Area =================-->
        <!--================Book Area =================-->
        <section class="pay_area">
            <div class="container">
                <form action="BookR" method="post" class="formPay">
                    <div class="row">
                        <div class="col-md-8 left-pay">
                            <div class="row">
                                <div class="col-sm-3 col-md-6 col-lg-4 pay-picRoom">
                                    <div class="image_payroom">
                                        <img src="img/${listrPay.urlimage1}" alt="">
                                </div>
                            </div>
                            <div class="col-sm-9 col-md-6 col-lg-8 pay-infoRoom">
                                <span class="text-title">${listrPay.priceRoom}$ / Night</span>
                                <h3>${listrPay.roomType}</h3>
                                <span>
                                    <i class="star-rating"></i>
                                    <i class="star-rating"></i>
                                    <i class="star-rating"></i>
                                    <i class="star-rating"></i>
                                    <i class="star-rating"></i>
                                </span>
                                <ul>
                                    <li>beds <span>${listrPay.bedNumber} <i class="fa fa-bed"></i></span></li>
                                    <li>guests <span>${listrPay.peopleNumber} <i class="fa fa-users"></i></span></li>
                                    <li>bath <span> <i class="fa fa-bath"></i></span></li>
                                    <li>wifi <span><i class="fa fa-wifi"></i></span></li>
                                    <li>tv <span> <i class="fa fa-tv"></i></span></li>
                                </ul>
                            </div>
                            <div class="description">
                                <h2>Good to know:</h2>
                                <p>${listrPay.describle}erisque enim ligula
                                    venenatis dolor. Maecenas nisl est,
                                    ultrices nec <span id="dots">...</span><span id="more">congue eget, auctor vitae massa. Fusce luctus vestibulum augue ut
                                        aliquet. Nunc sagittis dictum
                                        nisi, sed ullamcorper ipsum dignissim ac. In at libero sed nunc venenatis imperdiet
                                        sed ornare turpis. Donec
                                        vitae dui eget tellus gravida venenatis. Integer fringilla congue eros non
                                        fermentum. Sed dapibus pulvinar nibh
                                        tempor porta.</span></p>
                                <button data-toggle="pill" onclick="readMore()" id="myBtn">Read more</button>
                            </div>

                            <!-- Infomation -->               
                            <div class="InfoBooking page-Step page-active slidePage">
                                <h3>Enter your details</h3>
                                <input hidden name="cid" value="${listC.cid}">
                                <div class="formBox">
                                    <input hidden name="rid" value="${listrPay.rid}" >

                                    <div class="rows50">
                                        <div class="inputBox">
                                            <span>Arrival Date</span>
                                            <input type="date" id="datecheckin" name="datecheckin"  placeholder="Arrival Date">
                                        </div>
                                        <div class="inputBox">
                                            <span>Departure Date</span>
                                            <input type="date" id="datecheckout" name="datecheckout"  placeholder="Departure Date">
                                        </div>
                                    </div>
                                    <!--                                    <div class="rows50">
                                                                            <div class="inputBox">
                                                                                <span>Note</span>
                                                                                <textarea name="note" placeholder="Write your message what are your recommendations for the hotel?..."></textarea>
                                                                            </div>                                       
                                                                        </div>-->
                                    <div class="field nextBtn">
                                        <button class="btn">Book</button>
                                    </div>
                                </div>
                            </div>                      


                        </div>
                    </div>
                    <!-- End left pay -->

                    <!-- Start right pay -->
                    <div class="col-md-4 right-pay">
                        <h3>Reservation summary</h3>
                        <div class="infoTime">
                            <div class="row">
                                <div class="col-sm-6 timetocheck">
                                    <span>check-in</span>
                                    <!--                                <h4>Sun,22 May 2022</h4>-->
                                    <p>from 14:00</p>
                                </div>
                                <div class="col-sm-6 timetocheck time2">
                                    <span>check-out</span>
                                    <!--                                <h4>Wed,25 May 2022</h4>-->
                                    <p>to 12:00</p>
                                </div>
                            </div>

                            <div class="selected_room">
                                <h4>You selected</h4>
                                <p>${listrPay.roomType}</p>
                                <a href="room">Change your selection</a>
                            </div>

                        </div>
                        <div class="voucher">
                            <h3>Have you got a coupon code? <a onclick="showformInputCode()" id="show_voucher">place a
                                    code</a></h3>
                            <div id="inputcode">
                                <select class="wide" name="voucher">
                                    <c:forEach items="${listV}" var="v">
                                        <option value="${v.vid}">${v.vname}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <!-- -------------------------------------------------------------- -->
        </div>
    </div>
</div>
</section>
<!--================Book Area =================-->
<!--================ Start footer Area  =================-->
<jsp:include page="footer.jsp"></jsp:include>
<!--================ End footer Area  =================-->

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="view/client/js/jquery-3.6.0.min.js"></script>
<script src="view/client/js/popper.js"></script>
<script src="view/client/js/bootstrap.min.js"></script>
<script src="view/client/vendors/owl-carousel/owl.carousel.min.js"></script>
<script src="view/client/js/jquery.ajaxchimp.min.js"></script>
<script src="view/client/vendors/nice-select/js/jquery.nice-select.js"></script>
<script src="view/client/js/stellar.js"></script>
<script src="view/client/vendors/lightbox/simpleLightbox.min.js"></script>
<script src="view/client/js/scrollIt.min.js"></script>
<script src="view/client/js/owl.carousel.min.js"></script>
<script src="view/client/js/YouTubePopUp.js"></script>
<script src="view/client/js/smooth-scroll.min.js"></script>
<script src="view/client/js/thu7.js"></script>
<script src="view/client/js/payjsthu4.js"></script>
<script src="https://kit.fontawesome.com/95e3053da6.js" crossorigin="anonymous"></script>
<script src="view/client/js/jquery.nice-number.js"></script>
<script>
                                $(function () {
                                    $('input[type="number"]').niceNumber();
                                });
</script>
</body>

</html>
