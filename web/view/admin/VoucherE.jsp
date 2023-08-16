

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
                <ul class="nav flex-column pt-3 pt-md-0">
                    
                    <li class="nav-item ">
                        <a href="dashboard.jsp" class="nav-link">
                            <span class="sidebar-icon">
                                <svg class="icon icon-xs me-2" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path d="M2 10a8 8 0 018-8v8h8a8 8 0 11-16 0z"></path><path d="M12 2.252A8.014 8.014 0 0117.748 8H12V2.252z"></path></svg>
                            </span> 
                            <span class="sidebar-text">Dashboard</span>
                        </a>
                    </li>
                    <li class="nav-item ">
                        <a href="Bill" class="nav-link">
                            <span class="sidebar-icon">
                                <svg class="icon icon-xs me-2" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path d="M4 4a2 2 0 00-2 2v1h16V6a2 2 0 00-2-2H4z"></path><path fill-rule="evenodd" d="M18 9H2v5a2 2 0 002 2h12a2 2 0 002-2V9zM4 13a1 1 0 011-1h1a1 1 0 110 2H5a1 1 0 01-1-1zm5-1a1 1 0 100 2h1a1 1 0 100-2H9z" clip-rule="evenodd"></path></svg>
                            </span>
                            <span class="sidebar-text">Transactions</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="useService" class="nav-link d-flex justify-content-between">
                            <span>
                                <span class="sidebar-icon">
                                    <svg class="icon icon-xs me-2" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M12 1.586l-4 4v12.828l4-4V1.586zM3.707 3.293A1 1 0 002 4v10a1 1 0 00.293.707L6 18.414V5.586L3.707 3.293zM17.707 5.293L14 1.586v12.828l2.293 2.293A1 1 0 0018 16V6a1 1 0 00-.293-.707z" clip-rule="evenodd"></path></svg>
                                </span>
                                <span class="sidebar-text">User Service</span>
                            </span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="BookRoom" class="nav-link d-flex justify-content-between">
                            <span>
                                <span class="sidebar-icon">
                                    <svg class="icon icon-xs me-2" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M12 1.586l-4 4v12.828l4-4V1.586zM3.707 3.293A1 1 0 002 4v10a1 1 0 00.293.707L6 18.414V5.586L3.707 3.293zM17.707 5.293L14 1.586v12.828l2.293 2.293A1 1 0 0018 16V6a1 1 0 00-.293-.707z" clip-rule="evenodd"></path></svg>
                                </span>
                                <span class="sidebar-text">Book Room</span>
                            </span>
                        </a>
                    </li>
                    <c:if test="${sessionScope.acc.role == 2}">
                    <li class="nav-item">
                        <span
                            class="nav-link  d-flex justify-content-between align-items-center"
                            data-bs-toggle="collapse" data-bs-target="#submenu-app">
                            <span>
                                <span class="sidebar-icon">
                                    <svg class="icon icon-xs me-2" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M5 4a3 3 0 00-3 3v6a3 3 0 003 3h10a3 3 0 003-3V7a3 3 0 00-3-3H5zm-1 9v-1h5v2H5a1 1 0 01-1-1zm7 1h4a1 1 0 001-1v-1h-5v2zm0-4h5V8h-5v2zM9 8H4v2h5V8z" clip-rule="evenodd"></path></svg>
                                </span> 
                                <span class="sidebar-text">Admin</span>
                            </span>
                            <span class="link-arrow">
                                <svg class="icon icon-sm" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z" clip-rule="evenodd"></path></svg>
                            </span>
                        </span>
                        <div class="multi-level collapse"
                             role="list" id="submenu-app" aria-expanded="false">
                            <ul class="flex-column nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="RoomType">
                                        <span class="sidebar-text">List Room</span>
                                    </a>
                                </li>
                                <li class="nav-item"><a class="nav-link" href="ListServiceT">
                                        <span class="sidebar-text-contracted"></span> <span
                                            class="sidebar-text">List Service</span>
                                    </a>
                                </li>
                                <li class="nav-item"><a class="nav-link" href="Vouchers">
                                        <span class="sidebar-text-contracted"></span> <span
                                            class="sidebar-text">Voucher</span>
                                    </a>
                                </li>
                                <li class="nav-item"><a class="nav-link" href="VEm">
                                        <span class="sidebar-text-contracted"></span> <span
                                            class="sidebar-text">View Employees</span>
                                    </a>
                                </li>
                                <li class="nav-item"><a class="nav-link" href="VUs">
                                            <span class="sidebar-text-contracted"></span> <span
                                                class="sidebar-text">View Users</span>
                                        </a>
                                    </li>
                                    <li class="nav-item"><a class="nav-link" href="QLus">
                                            <span class="sidebar-text-contracted"></span> <span
                                                class="sidebar-text">Manage Users</span>
                                        </a>
                                    </li>
                            </ul>
                        </div>
                    </li>
                    </c:if>
                    <c:if test="${sessionScope.acc.role == 1}">
                    <li class="nav-item">
                        <span
                            class="nav-link  collapsed  d-flex justify-content-between align-items-center"
                            data-bs-toggle="collapse" data-bs-target="#submenu-pages">
                            <span>
                                <span class="sidebar-icon">
                                    <svg class="icon icon-xs me-2" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M2 5a2 2 0 012-2h8a2 2 0 012 2v10a2 2 0 002 2H4a2 2 0 01-2-2V5zm3 1h6v4H5V6zm6 6H5v2h6v-2z" clip-rule="evenodd"></path><path d="M15 7h1a2 2 0 012 2v5.5a1.5 1.5 0 01-3 0V7z"></path></svg>
                                </span> 
                                <span class="sidebar-text">Employees</span>
                            </span>
                            <span class="link-arrow">
                                <svg class="icon icon-sm" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z" clip-rule="evenodd"></path></svg>
                            </span>
                        </span>
                        <div class="multi-level collapse show" role="list"
                             id="submenu-pages" aria-expanded="false">
                            <ul class="flex-column nav">
                                <li class="nav-item"><a class="nav-link" href="Room">
                                        <span class="sidebar-text-contracted">D</span> <span
                                            class="sidebar-text">List Room</span>
                                    </a>
                                </li>
                                <li class="nav-item  ">
                                    <a class="nav-link" href="ListServiceT">
                                        <span class="sidebar-text">List Service</span>
                                    </a>
                                </li>
                                <li class="nav-item active"><a class="nav-link" href="Vouchers">
                                        <span class="sidebar-text-contracted"></span> <span
                                            class="sidebar-text">Voucher</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    </c:if>
                    
                </ul>
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
                        <ul class="navbar-nav align-items-center">
                            
                            <c:if test="${sessionScope.acc != null}">
                                <li class="nav-item dropdown ms-lg-3">
                                    <a class="nav-link dropdown-toggle pt-1 px-0" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        <div class="media d-flex align-items-center">
                                            <img class="avatar rounded-circle" alt="Image placeholder" src="img/${sessionScope.acc.eimage}">
                                            <div class="media-body ms-2 text-dark align-items-center d-none d-lg-block">
                                                <span class="mb-0 font-small fw-bold text-gray-900">${sessionScope.acc.user}</span>
                                            </div>
                                        </div>
                                    </a>
                                    <div class="dropdown-menu dashboard-dropdown dropdown-menu-end mt-2 py-1">
                                        <a class="dropdown-item d-flex align-items-center" href="profile?id=${sessionScope.acc.user}">
                                            <svg class="dropdown-icon text-gray-400 me-2" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-6-3a2 2 0 11-4 0 2 2 0 014 0zm-2 4a5 5 0 00-4.546 2.916A5.986 5.986 0 0010 16a5.986 5.986 0 004.546-2.084A5 5 0 0010 11z" clip-rule="evenodd"></path></svg>
                                            My Profile
                                        </a>
                                        <a class="dropdown-item d-flex align-items-center" href="UpdateP?id=${sessionScope.acc.user}">
                                            <svg class="dropdown-icon text-gray-400 me-2" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M11.49 3.17c-.38-1.56-2.6-1.56-2.98 0a1.532 1.532 0 01-2.286.948c-1.372-.836-2.942.734-2.106 2.106.54.886.061 2.042-.947 2.287-1.561.379-1.561 2.6 0 2.978a1.532 1.532 0 01.947 2.287c-.836 1.372.734 2.942 2.106 2.106a1.532 1.532 0 012.287.947c.379 1.561 2.6 1.561 2.978 0a1.533 1.533 0 012.287-.947c1.372.836 2.942-.734 2.106-2.106a1.533 1.533 0 01.947-2.287c1.561-.379 1.561-2.6 0-2.978a1.532 1.532 0 01-.947-2.287c.836-1.372-.734-2.942-2.106-2.106a1.532 1.532 0 01-2.287-.947zM10 13a3 3 0 100-6 3 3 0 000 6z" clip-rule="evenodd"></path></svg>
                                            Settings
                                        </a>
                                        <a class="dropdown-item d-flex align-items-center" href="#">
                                            <svg class="dropdown-icon text-gray-400 me-2" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M5 3a2 2 0 00-2 2v10a2 2 0 002 2h10a2 2 0 002-2V5a2 2 0 00-2-2H5zm0 2h10v7h-2l-1 2H8l-1-2H5V5z" clip-rule="evenodd"></path></svg>
                                            Messages
                                        </a>
                                        <a class="dropdown-item d-flex align-items-center" href="#">
                                            <svg class="dropdown-icon text-gray-400 me-2" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-2 0c0 .993-.241 1.929-.668 2.754l-1.524-1.525a3.997 3.997 0 00.078-2.183l1.562-1.562C15.802 8.249 16 9.1 16 10zm-5.165 3.913l1.58 1.58A5.98 5.98 0 0110 16a5.976 5.976 0 01-2.516-.552l1.562-1.562a4.006 4.006 0 001.789.027zm-4.677-2.796a4.002 4.002 0 01-.041-2.08l-.08.08-1.53-1.533A5.98 5.98 0 004 10c0 .954.223 1.856.619 2.657l1.54-1.54zm1.088-6.45A5.974 5.974 0 0110 4c.954 0 1.856.223 2.657.619l-1.54 1.54a4.002 4.002 0 00-2.346.033L7.246 4.668zM12 10a2 2 0 11-4 0 2 2 0 014 0z" clip-rule="evenodd"></path></svg>
                                            Support
                                        </a>
                                        <div role="separator" class="dropdown-divider my-1"></div>
                                        <a class="dropdown-item d-flex align-items-center" href="logout">
                                            <svg class="dropdown-icon text-danger me-2" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 16l4-4m0 0l-4-4m4 4H7m6 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h4a3 3 0 013 3v1"></path></svg>                
                                            Logout
                                        </a>
                                    </div>
                                </li>
                            </c:if>
                            <c:if test="${sessionScope.acc == null}">
                                <a class="nav-link dropdown-toggle pt-1 px-0" href="login.jsp">
                                    <img class="avatar rounded-circle" alt="Image placeholder" src="img/team/profile-picture-3.jpg">
                                </a>
                                
                            </c:if>
                        </ul>
                    </div>
                </div>
            </nav>
        
        <div class="task-wrapper border bg-white shadow border-0 rounded">

            <c:forEach items="${listV}" var="v">
            <div class="card hover-state border-bottom rounded-0 py-3">
                <div class="card-body d-sm-flex align-items-center flex-wrap flex-lg-nowrap py-0">
                    <div class="col-1 text-left text-sm-center mb-2 mb-sm-0">
                        <div class="form-check check-lg inbox-check me-sm-2"><input class="form-check-input"
                                type="checkbox" value="" id="mailCheck11"> <label class="form-check-label"
                                for="mailCheck11"></label></div>
                    </div>
                    <div class="col-11 col-lg-8 px-0 mb-4 mb-md-0">
                        <div class="mb-2">
                            <img src="img/${v.img}" class="avatar rounded-circle me-3" alt="Avatar">
                            <h3 class="h5">${v.name}</h3>
                            <div class="d-block d-sm-flex">
                                <div>
                                    <h4 class="h6 fw-normal text-gray d-flex align-items-center mb-3 mb-sm-0"> ${v.discount}%</h4>
                                </div>
                                <div class="ms-sm-3"><span class="badge super-badge bg-warning">In Progress</span></div>
                            </div>
                        </div>
                        <div><span class="fw-normal text-gray">${v.descible}.</span></div>
                    </div>
                    <div
                        class="col-10 col-sm-2 col-lg-2 col-xl-2 d-none d-lg-block d-xl-inline-flex align-items-center ms-lg-auto text-right justify-content-end px-md-0">
                        <div class="dropdown"><button
                                class="btn btn-link text-dark dropdown-toggle dropdown-toggle-split m-0 p-0"
                                data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><svg
                                    class="icon icon-xs" fill="currentColor" viewBox="0 0 20 20"
                                    xmlns="http://www.w3.org/2000/svg">
                                    <path
                                        d="M6 10a2 2 0 11-4 0 2 2 0 014 0zM12 10a2 2 0 11-4 0 2 2 0 014 0zM16 12a2 2 0 100-4 2 2 0 000 4z">
                                    </path>
                                </svg> <span class="visually-hidden">Toggle Dropdown</span></button>
                            <div class="dropdown-menu dashboard-dropdown dropdown-menu-start mt-2 py-1">
                                
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                        <svg
                                        class="dropdown-icon text-gray-400 me-2" fill="currentColor" viewBox="0 0 20 20"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z">
                                        </path>
                                    </svg> Mark as Important </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </c:forEach>
            
            
           
            <div class="row p-4">
                <div class="col-7 mt-1">Showing 1 - 20 of 289</div>
                <div class="col-5">
                    <div class="btn-group float-end"><a href="#" class="btn btn-gray-100"><svg class="icon icon-sm"
                                fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd"
                                    d="M12.707 5.293a1 1 0 010 1.414L9.414 10l3.293 3.293a1 1 0 01-1.414 1.414l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 0z"
                                    clip-rule="evenodd"></path>
                            </svg> </a><a href="#" class="btn btn-gray-800"><svg class="icon icon-sm"
                                fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd"
                                    d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"
                                    clip-rule="evenodd"></path>
                            </svg></a></div>
                </div>
            </div>
        </div>
        <footer class="bg-white rounded shadow p-5 mb-4 mt-4">
            <div class="row">
                <div class="col-12 col-md-4 col-xl-6 mb-4 mb-md-0">
                    <p class="mb-0 text-center text-lg-start">© 2019-<span class="current-year"></span> <a
                            class="text-primary fw-normal" href="https://themesberg.com" target="_blank">Themesberg</a>
                    </p>
                </div>
                <div class="col-12 col-md-8 col-xl-6 text-center text-lg-start">
                    <ul class="list-inline list-group-flush list-group-borderless text-md-end mb-0">
                        <li class="list-inline-item px-0 px-sm-2"><a href="https://themesberg.com/about">About</a></li>
                        <li class="list-inline-item px-0 px-sm-2"><a href="https://themesberg.com/themes">Themes</a>
                        </li>
                        <li class="list-inline-item px-0 px-sm-2"><a href="https://themesberg.com/blog">Blog</a></li>
                        <li class="list-inline-item px-0 px-sm-2"><a href="https://themesberg.com/contact">Contact</a>
                        </li>
                    </ul>
                </div>
            </div>
        </footer>
    </main>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/on-screen.umd.min.js"></script>
    <script src="js/nouislider.min.js"></script>
    <script src="js/smooth-scroll.polyfills.min.js"></script>
    <script src="js/countUp.umd.js"></script>
    <script src="js/apexcharts.min.js"></script>
    <script src="js/datepicker.min.js"></script>
    <script src="js/simple-datatables.js"></script>
    <script src=js/sweetalert2.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.27.0/moment.min.js"></script>
    <script src="js/datepicker.min.js"></script>
    <script src="js/main.min.js"></script>
    <script src="js/dropzone.min.js"></script>
    <script src="js/choices.min.js"></script>
    <script src="js/notyf.min.js"></script>
    <script src="js/leaflet.js"></script>
    <script src="js/svg-pan-zoom.min.js"></script>
    <script src="js/svgMap.min.js"></script>
    <script src="js/simplebar.min.js"></script>
    <script src="js/Sortable.min.js"></script>
    <script async defer="defer" src="https://buttons.github.io/buttons.js"></script>
    <script src="js/volt.js"></script>
    <script defer
        src="https://static.cloudflareinsights.com/beacon.min.js/v652eace1692a40cfa3763df669d7439c1639079717194"
        integrity="sha512-Gi7xpJR8tSkrpF7aordPZQlW2DLtzUlZcumS8dMQjwDHEnw9I7ZLyiOj/6tZStRBGtGgN6ceN6cMH8z7etPGlw=="
        data-cf-beacon='{"rayId":"71ed558e891bb44d","token":"3a2c60bab7654724a0f7e5946db4ea5a","version":"2022.6.0","si":100}'
        crossorigin="anonymous"></script>
</body>

</html>
