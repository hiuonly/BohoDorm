
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <!-- Primary Meta Tags -->
        <title>Boho Dorm</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link rel="manifest" href="img/favicon/site.webmanifest">
        <link rel="mask-icon" href="img/favicon/safari-pinned-tab.svg" color="#ffffff">
        <meta name="msapplication-TileColor" content="#ffffff">
        <meta name="theme-color" content="#ffffff">

        <!-- Sweet Alert -->
        <link type="text/css" href="css/sweetalert2.min.css" rel="stylesheet">

        <!-- Notyf -->
        <link type="text/css" href="css/notyf.min.css" rel="stylesheet">

        <!-- Volt CSS -->
        <link type="text/css" href="css/volt.css" rel="stylesheet">

        <!-- NOTICE: You can use the _analytics.html partial to include production code specific code & trackers -->

    </head>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Barlow+Condensed:ital,wght@1,100&family=Dosis:wght@700&family=Gilda+Display&display=swap');
        /*Back home*/
        *{
            margin: 0;
            padding: 0;
        }
        body{
            font-family: 'Gilda Display';
            background-image: url('view/client/image/banner/viewsea2.jpg');
            background-size: cover;
            background-repeat: no-repeat;
        }

        h1{
            font-family: 'Gilda Display';
        }
        .back_Homepage{
            position: absolute;
            top: 0;
            left: 0;
        }
        .back_Homepage a{
            color: #ffff;
            text-transform: uppercase;
            font-family: 'Dosis';
            display: flex;
            padding: 10px 20px;
            background: #000;
            border-radius: 0 15px 15px 0;
        }
        .back_Homepage i{
            font-size: 20px;
            padding-right: 5px; 
        }
        .back_Homepage a:hover{
            color: #AA8453;
        }
        .pageH{
            background: rgba(255,255,255, 0.7);
            font-weight: 600;
            padding-top: 30px;
            padding-bottom: 22.5%;
            overflow: hidden;
        }
        .table-responsive .table .text-status .textsuccess{
            background-color: green;
            padding: 8px 15px;
            border-radius: 15px;
            color: white;
            font-weight: 800;
        }
        .table-responsive .table .text-status .textwarning{
            background-color: orange;
            padding: 8px 15px;
            border-radius: 15px;
            color: white;
            font-weight: 800;
        }
    </style>
    <body>
        <div class="back_Homepage">
            <a type="button" class="btn btn-outline-dark" href="homeP"><i class="fa fa-angle-left"></i> Home</a>
        </div>
        <div class="container-fluid bg-soft pageH">
            <div class="row">
                <div class="col-12">
                    <div class="row justify-content-center">
                        <div class="col-12 col-xl-8 text-center">
                            <h1 class="fw-extrabold text-center d-inline-flex align-items-center mb-4" style="margin-top: 15px;">
                                Booking History                                    
                            </h1>                             
                        </div>
                    </div>  
                    <div class="row justify-content-center">
                        <div class="col-12 col-xl-8">
                            <div class="table-responsive">
                                <table class="table comparison-table table-striped">
                                    <thead>
                                        <tr>
                                            <th class="border-gray-200">#</th>
                                            <th class="border-gray-200">Date Bill</th>		
                                            <th class="border-gray-200">Total Money bill</th>
                                            <th class="border-gray-200">Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${listB}" var="b">
                                            <tr>
                                                <td class="option border-0">
                                                    <a href="VbillC?id=${b.phid}" class="fw-bold">
                                                        ${b.phid}
                                                    </a>
                                                </td>

                                                <td class="border-0">${b.pdate}</td>
                                                <td class="border-0">${b.totalmoney}$</td>
                                                <td class="border-0 text-status">
                                                    <c:if test="${b.status == 2}">
                                                        <span class="fw-normal textsuccess">
                                                            Paid
                                                        </span>
                                                    </c:if>
                                                    <c:if test="${b.status == 1}">
                                                        <span class="fw-normal textwarning">
                                                            Unpaid
                                                        </span>
                                                    </c:if>
                                                </td>
                                            </tr>
                                        </c:forEach>             
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Core -->
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

        <!-- Vendor JS -->
        <script src="js/on-screen.umd.min.js"></script>


        <!-- Smooth scroll -->
        <script src="js/smooth-scroll.polyfills.min.js"></script>

        <!-- Moment JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.27.0/moment.min.js"></script>


        <!-- Notyf -->
        <script src="js/notyf.min.js"></script>

        <!-- Simplebar -->
        <script src="js/simplebar.min.js"></script>

        <!-- Github buttons -->
        <script async defer src="https://buttons.github.io/buttons.js"></script>



    </body>

</html>
