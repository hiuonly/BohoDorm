

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
        <div class="d-lg-flex justify-content-between flex-wrap flex-md-nowrap align-items-center py-4">
            <div class="btn-toolbar mb-2 mb-md-0">
                    <!-- Button Modal -->
                    <form action="CreatV" method="POST">
                    <button type="button" class="btn btn-block btn-gray-800 mb-3" data-bs-toggle="modal" data-bs-target="#modal-default">Add new voucher</button>
                    <!-- Modal Content -->
                    <div class="modal fade" id="modal-default" tabindex="-1" role="dialog" aria-labelledby="modal-default" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="card card-body border-0 shadow mb-4">
                                    <h2 class="h5 mb-4">Add an new service</h2>
                                    
                                        
                                        <div class="row">
                                            <div class="col-md-6 mb-3">
                                                <div class="form-group">
                                                    <label for="phone">ID voucher</label>
                                                    <input name="id" class="form-control" id="phone" type="text" placeholder="Description service" required>
                                                </div>
                                            </div>
                                            <div class="col-md-4 mb-3">
                                                <div>
                                                    <label for="first_name">Img Service</label>
                                                    <img src="img/avt.png" alt="" id="image" width="100" height="100">
                                                    <input name="img" class="form-control" id="imageFile" type="file" 
                                                           required accept="image/gif, image/jpeg, image/jpg, image/png" onchange="chooseFile(this)"> 
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6 mb-3">
                                                <div>
                                                    <label for="first_name">Name Voucher</label>
                                                    <input name="name" class="form-control" id="first_name" type="text" placeholder="Enter Name Service" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <div class="form-group">
                                                    <label for="phone">Discount</label>
                                                    <input name="discount" class="form-control" id="phone" type="number" placeholder="Price of service" required>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12 mb-3">
                                                <div class="form-group">
                                                    <label for="phone">Desciblie</label>
                                                    <input name="des" class="form-control" id="phone" type="text" placeholder="Description service" required>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="mt-3">
                                            <button class="btn btn-gray-800 mt-2 animate-up-2" type="submit">Save all</button>
                                        </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    </form>
                </div>
        </div>
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
                                <a class="dropdown-item d-flex align-items-center" href="UpdateV?vid=${v.vid}">
                                    
                                    <svg
                                        class="dropdown-icon text-gray-400 me-2" fill="currentColor" viewBox="0 0 20 20"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M17.414 2.586a2 2 0 00-2.828 0L7 10.172V13h2.828l7.586-7.586a2 2 0 000-2.828z">
                                        </path>
                                        <path fill-rule="evenodd"
                                            d="M2 6a2 2 0 012-2h4a1 1 0 010 2H4v10h10v-4a1 1 0 112 0v4a2 2 0 01-2 2H4a2 2 0 01-2-2V6z"
                                            clip-rule="evenodd"></path>
                                    </svg> Edit 
                                    
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                        <svg
                                        class="dropdown-icon text-gray-400 me-2" fill="currentColor" viewBox="0 0 20 20"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z">
                                        </path>
                                    </svg> Mark as Important </a><a class="dropdown-item d-flex align-items-center"
                                    href="DeleteV?vid=${v.vid}"><svg class="dropdown-icon text-danger me-2" fill="currentColor"
                                        viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd"
                                            d="M9 2a1 1 0 00-.894.553L7.382 4H4a1 1 0 000 2v10a2 2 0 002 2h8a2 2 0 002-2V6a1 1 0 100-2h-3.382l-.724-1.447A1 1 0 0011 2H9zM7 8a1 1 0 012 0v6a1 1 0 11-2 0V8zm5-1a1 1 0 00-1 1v6a1 1 0 102 0V8a1 1 0 00-1-1z"
                                            clip-rule="evenodd"></path>
                                    </svg> Delete</a></div>
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
