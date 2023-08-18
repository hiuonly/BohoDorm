

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Boho Dorm</title>
        <link rel="apple-touch-icon" sizes="120x120" href="img/favicon/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="img/favicon/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="img/favicon/favicon-16x16.png">
        <link rel="manifest" href="img/favicon/site.webmanifest">
        <link rel="mask-icon" href="img/favicon/safari-pinned-tab.svg" color="#ffffff">
        <meta name="msapplication-TileColor" content="#ffffff">
        <meta name="theme-color" content="#ffffff">
        <link type="text/css" href="css/sweetalert2.min.css" rel="stylesheet">
        <link type="text/css" href="css/notyf.min.css" rel="stylesheet">
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
                        </div>
                        <c:if test="${sessionScope.acc == null}">

                            <a class="nav-link dropdown-toggle pt-1 px-0" href="login">
                                <img src="img/team/profile-picture-3.jpg" class="card-img-top rounded-circle border-white" alt="Bonnie Green">
                            </a>

                        </c:if>
                        <c:if test="${sessionScope.acc != null}">

                            <div class="d-block">

                                <h2 class="h5 mb-3">Hi, ${sessionScope.acc.user}</h2>
                                <a href="logout" class="btn btn-secondary btn-sm d-inline-flex align-items-center">
                                    <svg class="icon icon-xxs me-1" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 16l4-4m0 0l-4-4m4 4H7m6 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h4a3 3 0 013 3v1">
                                    <img src="img/${sessionScope.acc.eimage}" class="card-img-top rounded-circle border-white" alt="Bonnie Green">
                                    </path>
                                    </svg> 
                                    Sign Out
                                </a>
                            </div>
                        </c:if>
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
                                <button id="sidebar-toggle" class="sidebar-toggle me-3 btn btn-icon-only d-none d-lg-inline-block align-items-center justify-content-center">
                                    <svg class="toggle-icon" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h6a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z" clip-rule="evenodd">

                                    </path>
                                    </svg>
                                </button>
                                <form class="navbar-search form-inline" id="navbar-search-main">
                                    <div class="input-group input-group-merge search-bar">
                                        <span class="input-group-text" id="topbar-addon">
                                            <svg class="icon icon-xs" x-description="Heroicon name: solid/search" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                                            <path fill-rule="evenodd" d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z" clip-rule="evenodd">

                                            </path>
                                            </svg> 
                                        </span>
                                        <input type="text" class="form-control" id="topbarInputIconLeft" placeholder="Search" aria-label="Search" aria-describedby="topbar-addon">
                                    </div>
                                </form>
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
                                    <a href="dashboard.jsp">
                                        <svg class="icon icon-xxs" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6">

                                        </path>
                                        </svg>
                                    </a>
                                </li>
                                <li class="breadcrumb-item">
                                    <a href="BookRoom">
                                        BookRoom
                                    </a>
                                </li>

                            </ol>
                        </nav>
                        <h2 class="h4">
                            List Book Room
                        </h2>
                    </div>

                </div>
                <div class="table-settings mb-4">
                    <div class="row justify-content-between align-items-center">
                        <div class="col-9 col-lg-8 d-md-flex">
                            <form action="searchBR" method="POST">
                                <div class="input-group me-2 me-lg-3 fmxw-300">
                                    <button type="submit" class="btn btn-sm px-3 btn-secondary ms-3">
                                        <svg class="icon icon-xs" x-description="Heroicon name: solid/search" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                                        <path fill-rule="evenodd" d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z" clip-rule="evenodd">

                                        </path>
                                        </svg>
                                    </button>
                                    <input name="txt" type="text" class="form-control" placeholder="Search book room">
                                </div>
                            </form>

                        </div>
                        <div class="col-3 col-lg-4 d-flex justify-content-end">
                            <div class="btn-group">
                                <div class="dropdown me-1">
                                    <button class="btn btn-link text-dark dropdown-toggle dropdown-toggle-split m-0 p-1" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <svg class="icon icon-sm" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M5 4a1 1 0 00-2 0v7.268a2 2 0 000 3.464V16a1 1 0 102 0v-1.268a2 2 0 000-3.464V4zM11 4a1 1 0 10-2 0v1.268a2 2 0 000 3.464V16a1 1 0 102 0V8.732a2 2 0 000-3.464V4zM16 3a1 1 0 011 1v7.268a2 2 0 010 3.464V16a1 1 0 11-2 0v-1.268a2 2 0 010-3.464V4a1 1 0 011-1z">

                                        </path>
                                        </svg> 
                                        <span class="visually-hidden">
                                            Toggle Dropdown

                                        </span>
                                    </button>
                                    <div class="dropdown-menu dropdown-menu-end pb-0">
                                        <span class="small ps-3 fw-bold text-dark">
                                            Show
                                        </span> 
                                        <a class="dropdown-item d-flex align-items-center fw-bold" href="#">
                                            10 
                                            <svg class="icon icon-xxs ms-auto" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd">

                                            </path>
                                            </svg>
                                        </a>
                                        <a class="dropdown-item fw-bold" href="#">
                                            20
                                        </a> 
                                        <a class="dropdown-item fw-bold rounded-bottom" href="#">
                                            30
                                        </a>
                                    </div>
                                </div>
                                <div class="dropdown">
                                    <button class="btn btn-link text-dark dropdown-toggle dropdown-toggle-split m-0 p-1" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <svg class="icon icon-sm" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" d="M11.49 3.17c-.38-1.56-2.6-1.56-2.98 0a1.532 1.532 0 01-2.286.948c-1.372-.836-2.942.734-2.106 2.106.54.886.061 2.042-.947 2.287-1.561.379-1.561 2.6 0 2.978a1.532 1.532 0 01.947 2.287c-.836 1.372.734 2.942 2.106 2.106a1.532 1.532 0 012.287.947c.379 1.561 2.6 1.561 2.978 0a1.533 1.533 0 012.287-.947c1.372.836 2.942-.734 2.106-2.106a1.533 1.533 0 01.947-2.287c1.561-.379 1.561-2.6 0-2.978a1.532 1.532 0 01-.947-2.287c.836-1.372-.734-2.942-2.106-2.106a1.532 1.532 0 01-2.287-.947zM10 13a3 3 0 100-6 3 3 0 000 6z" clip-rule="evenodd">

                                        </path>
                                        </svg> 
                                        <span class="visually-hidden">
                                            Toggle Dropdown
                                        </span>
                                    </button>
                                    <div class="dropdown-menu dropdown-menu-xs dropdown-menu-end pb-0">
                                        <span class="small ps-3 fw-bold text-dark">
                                            Show
                                        </span> 
                                        <a class="dropdown-item d-flex align-items-center fw-bold" href="#">
                                            10 
                                            <svg class="icon icon-xxs ms-auto" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd">

                                            </path>
                                            </svg>
                                        </a>
                                        <a class="dropdown-item fw-bold" href="#">
                                            20
                                        </a> 
                                        <a class="dropdown-item fw-bold rounded-bottom" href="#">
                                            30
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card card-body shadow border-0 table-wrapper table-responsive">

                    <table class="table user-table table-hover align-items-center">
                        <thead>
                            <tr>
                                <th class="border-bottom">
                                    Room
                                </th>
                                <th class="border-bottom">
                                    RankRoom
                                </th>
                                <th class="border-bottom">
                                    TypeRoom
                                </th>
                                <th class="border-bottom">
                                    Price Room
                                </th>
                                <th class="border-bottom">
                                    Date Check-in
                                </th>
                                <th class="border-bottom">
                                    Date Check-out
                                </th>
                                <th class="border-bottom">
                                    Total
                                </th>
                            </tr>
                        </thead>

                        <tbody>
                        <c:forEach items="${listBR}" var="r">
                            <tr>
                                <td>
                                    <a href="Vbill?id=${r.phid}" class="fw-bold">
                                        <img src="img/${r.rimg}" class="avatar rounded-circle me-3" alt="Avatar">
                                        <div class="d-block">
                                            <span class="fw-bold">
                                                ${r.rid}
                                            </span>
                                        </div>
                                    </a>        
                                </td>
                                <td>
                                    <span class="fw-normal">
                                        ${r.rankroom}
                                    </span>
                                </td>
                                <td>
                                    <span class="fw-bold">
                                        ${r.roomtype}
                                    </span>
                                    </div>
                                </td>
                                <td>
                                    <span class="fw-normal d-flex align-items-center">
                                        $${r.rprice}
                                    </span>
                                </td>
                                <td>
                                    <span class="fw-normal d-flex align-items-center">
                                        ${r.checkin}
                                    </span>
                                </td>
                                <td>
                                    <span class="fw-normal d-flex align-items-center">
                                        ${r.checkout}
                                    </span>
                                </td>
                                <td>
                                    <span class="fw-normal d-flex align-items-center">
                                        $${r.rtotal}
                                    </span>
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
                                <a class="page-link" href="#">
                                    1
                                </a>
                            </li>
                            <li class="page-item active">
                                <a class="page-link" href="#">
                                    2
                                </a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#">
                                    3
                                </a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#">
                                    4
                                </a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#">
                                    5
                                </a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#">
                                    Next
                                </a>
                            </li>
                        </ul>
                    </nav>
                    <div class="fw-normal small mt-4 mt-lg-0">
                        Showing 
                        <b>5</b> 
                        out of 
                        <b>25</b> 
                        entries
                    </div>
                </div>
            </div>
        </main>
        <script>
            function chooseFile(fileInput) {
                if (fileInput.files && fileInput.files[0]) {
                    var reader = new FileReader();

                    reader.onload = function (e) {
                        $('#image').attr('src', e.target.result);
                    }
                    reader.readAsDataURL(fileInput.files[0])
                }
            }
        </script>
        <script data-cfasync="false" src="js/email-decode.min.js">

        </script>

        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

        <!-- Vendor JS -->
        <script src="js/on-screen.umd.min.js"></script>

        <!-- Slider -->
        <script src="js/nouislider.min.js"></script>

        <!-- Smooth scroll -->
        <script src="js/smooth-scroll.polyfills.min.js"></script>

        <!-- Charts -->
        <script src="js/chartist.min.js"></script>
        <script src="../../vendor/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>

        <!-- Datepicker -->
        <script src="js/datepicker.min.js"></script>

        <!-- Sweet Alerts 2 -->
        <script src="js/sweetalert2.all.min.js"></script>

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

        <!-- Volt JS -->
        <script src="js/volt.js"></script>

        <script defer src="https://static.cloudflareinsights.com/beacon.min.js/v652eace1692a40cfa3763df669d7439c1639079717194" integrity="sha512-Gi7xpJR8tSkrpF7aordPZQlW2DLtzUlZcumS8dMQjwDHEnw9I7ZLyiOj/6tZStRBGtGgN6ceN6cMH8z7etPGlw==" data-cf-beacon='{"rayId":"71ed5561080d24cb","token":"3a2c60bab7654724a0f7e5946db4ea5a","version":"2022.6.0","si":100}' crossorigin="anonymous">

        </script>
    </body></html>
