
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--

=========================================================
* Volt Free - Bootstrap 5 Dashboard
=========================================================

* Product Page: https://themesberg.com/product/admin-dashboard/volt-bootstrap-5-dashboard
* Copyright 2021 Themesberg (https://www.themesberg.com)
* License (https://themesberg.com/licensing)

* Designed and coded by https://themesberg.com

=========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software. Please contact us to request a removal.

-->
<!DOCTYPE html>
<html lang="en">

    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Boho Dorm</title>

        <!-- Sweet Alert -->
        <link type="text/css" href="css/sweetalert2.min.css" rel="stylesheet">

        <!-- Notyf -->
        <link type="text/css" href="css/notyf.min.css" rel="stylesheet">

        <!-- Volt CSS -->
        <link type="text/css" href="css/volt.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-141734189-6">

        </script>
        <script>window.dataLayer = window.dataLayer || [];
            function gtag() {
                dataLayer.push(arguments);
            }
            gtag('js', new Date());

            gtag('config', 'UA-141734189-6');</script><script>(function (w, d, s, l, i) {
                    w[l] = w[l] || [];
                    w[l].push({
                        'gtm.start':
                                new Date().getTime(), event: 'gtm.js'
                    });
                    var f = d.getElementsByTagName(s)[0],
                            j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : '';
                    j.async = true;
                    j.src =
                            'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
                    f.parentNode.insertBefore(j, f);
                })(window, document, 'script', 'dataLayer', 'GTM-THQTXJ7');
        </script>
    </head>
    <body>
        <noscript>
        <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-THQTXJ7" height="0" width="0" style="display:none;visibility:hidden">

        </iframe>
        </noscript>
        <nav class="navbar navbar-dark navbar-theme-primary px-4 col-12 d-lg-none">
            <a class="navbar-brand me-lg-5" href="../index.html">
                <img class="navbar-brand-dark" src="img/brand/light.svg" alt="Volt logo"> 
                <img class="navbar-brand-light" src="img/brand/dark.svg" alt="Volt logo"></a>
            <div class="d-flex align-items-center">
                <button class="navbar-toggler d-lg-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon">

                    </span>
                </button>
            </div>
        </nav>
        <nav id="sidebarMenu" class="sidebar d-lg-block bg-gray-800 text-white collapse" data-simplebar>
            <div class="sidebar-inner px-4 pt-3">
                <div class="user-card d-flex d-md-none justify-content-between justify-content-md-center pb-4">
                    <div class="d-flex align-items-center"><div class="avatar-lg me-4">
                            <img src="img/team/profile-picture-3.jpg" class="card-img-top rounded-circle border-white" alt="Bonnie Green">
                        </div>
                        <div class="d-block">
                            <h2 class="h5 mb-3">Hi, Jane</h2>
                            <a href="../pages/examples/sign-in.html" class="btn btn-secondary btn-sm d-inline-flex align-items-center">
                                <svg class="icon icon-xxs me-1" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 16l4-4m0 0l-4-4m4 4H7m6 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h4a3 3 0 013 3v1">

                                </path>
                                </svg> 
                                Sign Out
                            </a>
                        </div>
                    </div>
                    <div class="collapse-close d-md-none">
                        <a href="#sidebarMenu" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="true" aria-label="Toggle navigation">
                            <svg class="icon icon-xs" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd">

                            </path>
                            </svg>
                        </a>
                    </div>
                </div>
                <!--================Menu Information =================-->
                <jsp:include page="navTabAdmin.jsp"></jsp:include>
                    <!--================Menu Information =================--> 
                </div>
            </nav>
            <main class="content">
                <nav class="navbar navbar-top navbar-expand navbar-dashboard navbar-dark ps-0 pe-2 pb-0">
                    <div class="container-fluid px-0">
                        <div class="d-flex justify-content-between w-100" id="navbarSupportedContent">
                            <div class="d-flex align-items-center">

                            </div>
                            <!--================Menu Information =================-->
                        <jsp:include page="menuAdmin.jsp"></jsp:include>
                            <!--================Menu Information =================--> 
                        </div>
                    </div>
                </nav>

                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center py-4">
                    <div class="d-block mb-4 mb-md-0">
                        <nav aria-label="breadcrumb" class="d-none d-md-inline-block">
                            <ol class="breadcrumb breadcrumb-dark breadcrumb-transparent">
                                <li class="breadcrumb-item">
                                    <a href="#">
                                        <svg class="icon icon-xxs" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6"></path></svg>
                                    </a>
                                </li>
                                <li class="breadcrumb-item"><a href="#">HSM Hotel</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Transactions</li>
                            </ol>
                        </nav>
                        <h2 class="h4">All Bill</h2>
                    </div>
                </div>
                <div class="table-settings mb-4">
                    <div class="row align-items-center justify-content-between">
                        <div class="col col-md-6 col-lg-3 col-xl-4">
                            <form action="SearchB" method="POST">
                                <div class="input-group me-2 me-lg-3 fmxw-400">
                                    <button type="submit" class="btn btn-sm px-3 btn-secondary ms-3">
                                        <svg class="icon icon-xs" x-description="Heroicon name: solid/search" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                                        <path fill-rule="evenodd" d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z" clip-rule="evenodd">

                                        </path>
                                        </svg>
                                    </button>
                                    <input name="txt" type="text" class="form-control" placeholder="Search bill">
                                </div>
                            </form>
                        </div>
                        <div class="col-4 col-md-2 col-xl-1 ps-md-0 text-end">
                            <div class="dropdown">
                                <button class="btn btn-link text-dark dropdown-toggle dropdown-toggle-split m-0 p-1" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <svg class="icon icon-sm" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M11.49 3.17c-.38-1.56-2.6-1.56-2.98 0a1.532 1.532 0 01-2.286.948c-1.372-.836-2.942.734-2.106 2.106.54.886.061 2.042-.947 2.287-1.561.379-1.561 2.6 0 2.978a1.532 1.532 0 01.947 2.287c-.836 1.372.734 2.942 2.106 2.106a1.532 1.532 0 012.287.947c.379 1.561 2.6 1.561 2.978 0a1.533 1.533 0 012.287-.947c1.372.836 2.942-.734 2.106-2.106a1.533 1.533 0 01.947-2.287c1.561-.379 1.561-2.6 0-2.978a1.532 1.532 0 01-.947-2.287c.836-1.372-.734-2.942-2.106-2.106a1.532 1.532 0 01-2.287-.947zM10 13a3 3 0 100-6 3 3 0 000 6z" clip-rule="evenodd"></path></svg>
                                    <span class="visually-hidden">Toggle Dropdown</span>
                                </button>
                                <div class="dropdown-menu dropdown-menu-xs dropdown-menu-end pb-0">
                                    <span class="small ps-3 fw-bold text-dark">Show</span>
                                    <a class="dropdown-item d-flex align-items-center fw-bold" href="#">10 <svg class="icon icon-xxs ms-auto" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path></svg></a>
                                    <a class="dropdown-item fw-bold" href="#">20</a>
                                    <a class="dropdown-item fw-bold rounded-bottom" href="#">30</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card card-body border-0 shadow table-wrapper table-responsive">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th class="border-gray-200">#</th>
                                <th class="border-gray-200">Bill For Customer</th>						
                                <th class="border-gray-200">Phone</th>
                                <th class="border-gray-200">Date Pay</th>
                                <th class="border-gray-200">Total</th>
                                <th class="border-gray-200">Status</th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${listB}" var="b">
                            <tr>
                                <td>
                                    <a href="Vbill?id=${b.phid}" class="fw-bold">
                                        ${b.phid}
                                    </a>
                                </td>
                                <td>
                                    <img src="img/${b.cimg}" class="avatar rounded-circle me-3" alt="Avatar">
                                    <div class="d-block">
                                        <span class="fw-bold">
                                            ${b.cname}
                                        </span>
                                    </div>
                                </td>
                                <td><span class="fw-bold">${b.sdt}</span></td>
                                <td><span class="fw-bold">${b.paydate}</span></td>
                                <td><span class="fw-bold">$${b.total}</span></td>
                                <td>
                                    <c:if test="${b.status == 2}">
                                        <span class="fw-normal text-success">
                                            Paid
                                        </span>
                                    </c:if>
                                    <c:if test="${b.status == 1}">
                                        <span class="fw-normal text-warning">
                                            <a type="button" href="Bill?pending=${b.phid}">Pending</a>
                                        </span>
                                    </c:if>
                                </td>
                            </tr>
                        </c:forEach>                          
                    </tbody>
                </table>
                <div class="card-footer px-3 border-0 d-flex flex-column flex-lg-row align-items-center justify-content-between">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination mb-0">
                            <li class="page-item">
                                <a class="page-link" href="#">Previous</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#">1</a>
                            </li>
                            <li class="page-item active">
                                <a class="page-link" href="#">2</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#">3</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#">4</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#">5</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#">Next</a>
                            </li>
                        </ul>
                    </nav>
                    <div class="fw-normal small mt-4 mt-lg-0">Showing <b>5</b> out of <b>25</b> entries</div>
                </div>
            </div>
            <div class="theme-settings card bg-gray-800 pt-2 collapse" id="theme-settings">
                <div class="card-body bg-gray-800 text-white pt-4">
                    <button type="button" class="btn-close theme-settings-close" aria-label="Close" data-bs-toggle="collapse"
                            href="#theme-settings" role="button" aria-expanded="false" aria-controls="theme-settings"></button>
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <p class="m-0 mb-1 me-4 fs-7">Open source <span role="img" aria-label="gratitude">💛</span></p>
                        <a class="github-button" href="https://github.com/themesberg/volt-bootstrap-5-dashboard"
                           data-color-scheme="no-preference: dark; light: light; dark: light;" data-icon="octicon-star"
                           data-size="large" data-show-count="true"
                           aria-label="Star themesberg/volt-bootstrap-5-dashboard on GitHub">Star</a>
                    </div>
                    <a href="https://themesberg.com/product/admin-dashboard/volt-bootstrap-5-dashboard" target="_blank"
                       class="btn btn-secondary d-inline-flex align-items-center justify-content-center mb-3 w-100">
                        Download 
                        <svg class="icon icon-xs ms-2" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M2 9.5A3.5 3.5 0 005.5 13H9v2.586l-1.293-1.293a1 1 0 00-1.414 1.414l3 3a1 1 0 001.414 0l3-3a1 1 0 00-1.414-1.414L11 15.586V13h2.5a4.5 4.5 0 10-.616-8.958 4.002 4.002 0 10-7.753 1.977A3.5 3.5 0 002 9.5zm9 3.5H9V8a1 1 0 012 0v5z" clip-rule="evenodd"></path></svg>
                    </a>
                    <p class="fs-7 text-gray-300 text-center">Available in the following technologies:</p>
                    <div class="d-flex justify-content-center">
                        <a class="me-3" href="https://themesberg.com/product/admin-dashboard/volt-bootstrap-5-dashboard"
                           target="_blank">
                            <img src="img/technologies/bootstrap-5-logo.svg" class="image image-xs">
                        </a>
                        <a href="https://demo.themesberg.com/volt-react-dashboard/#/" target="_blank">
                            <img src="img/technologies/react-logo.svg" class="image image-xs">
                        </a>
                    </div>
                </div>
            </div>

            <div class="card theme-settings bg-gray-800 theme-settings-expand" id="theme-settings-expand">
                <div class="card-body bg-gray-800 text-white rounded-top p-3 py-2">
                    <span class="fw-bold d-inline-flex align-items-center h6">
                        <svg class="icon icon-xs me-2" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M11.49 3.17c-.38-1.56-2.6-1.56-2.98 0a1.532 1.532 0 01-2.286.948c-1.372-.836-2.942.734-2.106 2.106.54.886.061 2.042-.947 2.287-1.561.379-1.561 2.6 0 2.978a1.532 1.532 0 01.947 2.287c-.836 1.372.734 2.942 2.106 2.106a1.532 1.532 0 012.287.947c.379 1.561 2.6 1.561 2.978 0a1.533 1.533 0 012.287-.947c1.372.836 2.942-.734 2.106-2.106a1.533 1.533 0 01.947-2.287c1.561-.379 1.561-2.6 0-2.978a1.532 1.532 0 01-.947-2.287c.836-1.372-.734-2.942-2.106-2.106a1.532 1.532 0 01-2.287-.947zM10 13a3 3 0 100-6 3 3 0 000 6z" clip-rule="evenodd"></path></svg>
                        Settings
                    </span>
                </div>
            </div>

        </main>

        <!-- Core -->
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

        <!-- Vendor JS -->
        <script src="js/on-screen.umd.min.js"></script>


        <!-- Smooth scroll -->
        <script src="js/smooth-scroll.polyfills.min.js"></script>

        <!-- Moment JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.27.0/moment.min.js"></script>

        <!-- Vanilla JS Datepicker -->
        <script src="js/datepicker.min.js"></script>

        <!-- Notyf -->
        <script src="js/notyf.min.js"></script>

        <!-- Simplebar -->
        <script src="js/simplebar.min.js"></script>

        <!-- Github buttons -->
        <script async defer src="https://buttons.github.io/buttons.js"></script>



    </body>

</html>

