
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="db" class="dao.DAO" scope="request"></jsp:useBean>
<!DOCTYPE html>
<html>
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
        <link rel="stylesheet" href="view/client/css/stylethu1.css">
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
            <!--================Header Area =================-->   

            <!--================Book Area =================-->
            <section class="pay_area">
                <div class="container">

                    <div class="row">

                        <div class="col-md-12 left-pay">
                            <div class="row">


                            <div class="container Service-Menu">
                                <div class="row">
                                    <div class="col-md-12 text-center">
                                        <div class="section-title"><span>Add to your stay</span></div>
                                    </div>
                                </div>
                                <form name="u" action="" method="post">
                                <div class="row">
                                    
                                    <div class="col-md-12">
                                        
                                        <div class="row">
                                            <div class="tabs-icon col-md-10 offset-md-1 text-center">
                                                <div class="owl-carousel owl-theme">
                                                    <c:forEach  items="${listST}" var="st">
                                                        <div id="${st.stid}" class="active item">
                                                            <h6>${st.stname}</h6>
                                                        </div>
                                                    </c:forEach>
                                                </div>
                                            </div>
                                            <div class="Service-Menu-content col-md-12">
                                                <!-- Food -->
                                                <div id="1-content" class="cont active">
                                                    <div class="row">
                                                        <c:forEach items="${listS1}" var="s1">
                                                            <div class="col-md-6">
                                                                <div class="menu-info">
                                                                    <h5>${s1.sname} <span class="price">${s1.price}$</span></h5>
                                                                    <p>${s1.describle}                                                            
                                                                        <input type="submit" onclick="Buy('${s1.srid}')" value="Buy">                                                                                                 
                                                                    </p>
                                                                    <input class="numberS" type="number" name="quantity" min="1" max="20">
                                                                </div>
                                                            </div>
                                                        </c:forEach> 
                                                    </div>
                                                </div>
                                                <!-- Drinks -->
                                                <div id="2-content" class="cont">
                                                    <div class="row">
                                                        <c:forEach items="${listS2}" var="s2">
                                                            <div class="col-md-6">
                                                                <div class="menu-info">
                                                                    <h5>${s2.sname} <span class="price">${s2.price}$</span></h5>
                                                                    <p>${s2.describle}
                                                                        <input type="submit" onclick="Buy('${s2.srid}')" value="Buy">                                                                 
                                                                    </p>
                                                                    <input class="numberS" type="number" name="quantity" min="1" max="20">
                                                                </div>
                                                            </div>
                                                        </c:forEach>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                        
                                </div>
                                    </form>
                                <div class="col-md-12 text-center field nextBtn">
                                    <c:set var="size" value="${sessionScope.size}"/>
                                    <a href="UseService">Mybag (${size}) Service</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End left pay -->
                </div>

                <!-- -------------------------------------------------------------- -->
            </div>
        </section>
        <!--================Book Area =================-->
        <!--================ Start footer Area  =================-->
        <jsp:include page="footer.jsp"></jsp:include>
        <!--================ End footer Area  =================-->
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
        <script type="text/javascript">
            function Buy(id) {
                document.u.action = "Buy?id=" + id;
                document.u.submit();
            }
        </script>
    </body>
</html>
