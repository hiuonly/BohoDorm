

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
                        <h2 class="page-cover-tittle">Contact Us</h2>
                        <ol class="breadcrumb">
                            <li><a href="homeP">Home</a></li>
                            <li class="active">Contact</li>
                        </ol>
                    </div>
                </div>
            </section>
            <!--================Breadcrumb Area =================-->
            <!--================Contact Area =================-->
            <section class="contact_area">
                <div class="contactUs">
                    <div class="contact_box">
                        <!--Form -->
                        <div class="contact form">
                            <h3>Get in touch</h3>
                            <div id="myForm">
                                <div class="formBox">
                                    <div class="rows50">
                                        <div class="inputBox">
                                            <span>Full Name</span>
                                            <input id="fullname" type="text" placeholder="Your Name">
                                        </div>
                                        <div class="inputBox">
                                            <span>Your Phone Number</span>
                                            <input id="phone_id" type="text" placeholder="+91 890 8908 8907">
                                        </div>
                                    </div>

                                    <div class="rows50">
                                        <div class="inputBox">
                                            <span>Email</span>
                                            <input id="email_id" type="text" placeholder="example@gmail.com">
                                        </div>

                                        <div class="inputBox">
                                            <span>Subject</span>
                                            <input id="subject_id" type="text" placeholder="Your subject">
                                        </div>
                                    </div>
                                    <div class="rows100">
                                        <div class="inputBox">
                                            <span>Message</span>
                                            <textarea id="content" placeholder="Write your message here..."></textarea>
                                        </div>
                                    </div>

                                    <div class="rows100">
                                        <div class="inputBox">
                                            <input style="background-color: #C5966D" onclick="SendMail()" class="submit-btn" type="submit" value="Send Message">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--info Box-->
                        <div class="contact info" style="background-color: #C5966D;">
                            <h3>Contact Info</h3>
                            <div class="infoBox">
                                <div>
                                    <span><ion-icon name="location-outline"></ion-icon></span>
                                    <p>Boho Dorm and Coffee in Cam Son Street, Cam Chau Ward, Hoi An City. <br>Viet Nam</p>
                                </div>
                                <div>
                                    <span><ion-icon name="mail-outline"></ion-icon></span>
                                    <a href="mailto:bohodorm@gmail.com">bohodorm@gmail.com</a>
                                </div>
                                <div>
                                    <span><ion-icon name="call-outline"></ion-icon></span>
                                    <a href="tel:+9198765849238">0777 544 046 - 0236 3 898945</a>
                                </div>
                                <!--    Social Media Link-->
                                <ul class="sci">
                                    <li><a href="https://www.facebook.com/profile.php?id=100092566839966"><ion-icon name="logo-facebook"></ion-icon></a></li>
                                    <li><a href="https://www.instagram.com/bohodorm_cafe"><ion-icon name="logo-instagram"></ion-icon></a></li>
                                    <li><a href="https://www.tiktok.com/@bohodorm?lang=vi-VN"><ion-icon name="logo-tiktok"></ion-icon></a></li>
                                </ul>
                            </div>
                        </div>
                        <!--Map-->
                        <div class="contact map">
                            <iframe src="https://maps.google.com/maps?q=Boho Dorm and Coffee, Cẩm Sơn, Hội An, Quảng Nam, Việt Nam&t=&z=10&ie=UTF8&iwloc=&output=embed" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                        </div>
                        
                    </div>
                </div>
            </section>
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
        <script src="view/client/vendors/nice-select/js/jquery.nice-select.js"></script>
        <script src="view/client/js/stellar.js"></script>   
        <script src="view/client/vendors/lightbox/simpleLightbox.min.js"></script>
        <script src="view/client/js/scrollIt.min.js"></script>
        <script src="view/client/js/owl.carousel.min.js"></script>
        <script src="view/client/js/YouTubePopUp.js"></script>
        <script src="view/client/js/smooth-scroll.min.js"></script>
        <script src="view/client/js/contactjs.js"></script>
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
        <!--        <script src="https://smtpjs.com/v3/smtp.js"></script>-->
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/@emailjs/browser@3/dist/email.min.js"></script>
        <script type="text/javascript">
        (function () {
            emailjs.init('PP1SP2TgS5U0fn4Sc');
        })();
        </script>
    </body>
</html>
