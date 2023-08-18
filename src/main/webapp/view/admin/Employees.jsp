
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Boho Dorm</title>
        <link rel="apple-touch-icon" sizes="120x120" href="img/favicon/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="img/favicon/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="img/favicon/favicon-16x16.png">
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
        
        <main class="content">
            
            <div class="py-4">
                
                <div class="d-flex justify-content-between w-100 flex-wrap">
                    <div class="mb-3 mb-lg-0">
                        <h1 class="h4">Information</h1>

                    </div>

                </div>
            </div>

            <div class="row">
                <div class="col-12 mb-4">
                    <div class="card border-0 shadow components-section">

                        <div class="card-body">
                            <form action="Employees" method="POST">
                                <div class="row mb-4">
                                    <div class="col-lg-4 col-sm-6">
                                        <div class="mb-3">
                                            <label for="usernameValidate"></label>
                                            <input name="user" type="text" class="form-control" value="${sessionScope.acc.usid}" hidden>
                                        </div>
                                        <!-- Form -->
                                        <div class="mb-4">
                                            <label for="image">Your Avatar</label>
                                            <img src="img/avt.png" alt="" id="image" width="100" height="100">
                                            <input name="img" class="form-control" id="imageFile" type="file"
                                                   required accept="image/gif, image/jpeg, image/jpg, image/png" onchange="chooseFile(this)">

                                        </div>
                                        <div class="mb-3">
                                            <label for="exampleInputIconLeft">Your name</label>
                                            <div class="input-group">

                                                <input name="name" type="text" class="form-control" id="exampleInputIconLeft"
                                                       placeholder="Name" aria-label="Name">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-sm-6">
                                        <div class="mb-3">
                                            <label for="exampleInputIconRight">Your birthday</label>
                                            <div class="input-group">
                                                <span class="input-group-text">
                                                    <svg class="icon icon-xs text-gray-600" fill="currentColor"
                                                         viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                                    <path fill-rule="evenodd"
                                                          d="M6 2a1 1 0 00-1 1v1H4a2 2 0 00-2 2v10a2 2 0 002 2h12a2 2 0 002-2V6a2 2 0 00-2-2h-1V3a1 1 0 10-2 0v1H7V3a1 1 0 00-1-1zm0 5a1 1 0 000 2h8a1 1 0 100-2H6z"
                                                          clip-rule="evenodd"></path>
                                                    </svg>
                                                </span>
                                                <input name="birth" data-datepicker="" class="form-control" id="birthday" type="date"
                                                       placeholder="dd/mm/yyyy" value required>
                                            </div>
                                        </div>
                                        <div class="mb-3">
                                            <label for="firstName">Your Gender: </label>
                                            <div class="input-group">
                                                <select name="gender" class="form-select mb-0" id="gender">
                                                    <option value="Male">Male</option>
                                                    <option value="Female">Female</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-sm-6">
                                        <div class="mb-3">
                                            <label for="birthday">Your CCCD</label>
                                            <div class="input-group">

                                                <input name="cccd" data-datepicker="" class="form-control" id="birthday" type="text"
                                                       placeholder="CCCD" required>
                                            </div>
                                        </div>
                                        <div class="my-4">
                                            <label for="textarea">Your Address</label>
                                            <div class="input-group">

                                                <input name="address" type="text" class="form-control" id="exampleInputIconLeft"
                                                       placeholder="Address" aria-label="Address">
                                            </div>
                                        </div>
                                        <!-- End of Form -->
                                        <!-- Form -->
                                        <div class="mb-4">
                                            <label for="usernameValidate">Your Phone</label>
                                            <div class="input-group">
                                                <input name="phone" type="number" class="form-control" placeholder="Phone" aria-label="Phone" required>
                                            </div>
                                        </div>
                                        <!-- Form -->
                                        


                                    </div>

                                </div>
                                <div class="mt-3">
                                    <button class="btn btn-gray-800 mt-2 animate-up-2" type="submit">Save all</button>
                                </div>
                            </form>
                        </div>


                    </div>
                </div>
            </div>

            <div class="theme-settings card bg-gray-800 pt-2 collapse" id="theme-settings">
                <div class="card-body bg-gray-800 text-white pt-4">
                    <button type="button" class="btn-close theme-settings-close" aria-label="Close"
                            data-bs-toggle="collapse" href="#theme-settings" role="button" aria-expanded="false"
                            aria-controls="theme-settings"></button>
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
                        <svg class="icon icon-xs ms-2" fill="currentColor" viewBox="0 0 20 20"
                             xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M2 9.5A3.5 3.5 0 005.5 13H9v2.586l-1.293-1.293a1 1 0 00-1.414 1.414l3 3a1 1 0 001.414 0l3-3a1 1 0 00-1.414-1.414L11 15.586V13h2.5a4.5 4.5 0 10-.616-8.958 4.002 4.002 0 10-7.753 1.977A3.5 3.5 0 002 9.5zm9 3.5H9V8a1 1 0 012 0v5z"
                              clip-rule="evenodd"></path>
                        </svg>
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
                        <svg class="icon icon-xs me-2" fill="currentColor" viewBox="0 0 20 20"
                             xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M11.49 3.17c-.38-1.56-2.6-1.56-2.98 0a1.532 1.532 0 01-2.286.948c-1.372-.836-2.942.734-2.106 2.106.54.886.061 2.042-.947 2.287-1.561.379-1.561 2.6 0 2.978a1.532 1.532 0 01.947 2.287c-.836 1.372.734 2.942 2.106 2.106a1.532 1.532 0 012.287.947c.379 1.561 2.6 1.561 2.978 0a1.533 1.533 0 012.287-.947c1.372.836 2.942-.734 2.106-2.106a1.533 1.533 0 01.947-2.287c1.561-.379 1.561-2.6 0-2.978a1.532 1.532 0 01-.947-2.287c.836-1.372-.734-2.942-2.106-2.106a1.532 1.532 0 01-2.287-.947zM10 13a3 3 0 100-6 3 3 0 000 6z"
                              clip-rule="evenodd"></path>
                        </svg>
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

        <!-- Slider -->
        <script src="js/nouislider.min.js"></script>

        <!-- Smooth scroll -->
        <script src="js/smooth-scroll.polyfills.min.js"></script>

        <!-- Charts -->
        <script src="js/chartist.min.js"></script>
        <script src="js/chartist-plugin-tooltip.min.js"></script>

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

        <!-- Code injected by live-server -->
        <script type="text/javascript">
            // <![CDATA[  <-- For SVG support
            if ('WebSocket' in window) {
                (function () {
                    function refreshCSS() {
                        var sheets = [].slice.call(document.getElementsByTagName("link"));
                        var head = document.getElementsByTagName("head")[0];
                        for (var i = 0; i < sheets.length; ++i) {
                            var elem = sheets[i];
                            var parent = elem.parentElement || head;
                            parent.removeChild(elem);
                            var rel = elem.rel;
                            if (elem.href && typeof rel != "string" || rel.length == 0 || rel.toLowerCase() == "stylesheet") {
                                var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/, '');
                                elem.href = url + (url.indexOf('?') >= 0 ? '&' : '?') + '_cacheOverride=' + (new Date().valueOf());
                            }
                            parent.appendChild(elem);
                        }
                    }
                    var protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://';
                    var address = protocol + window.location.host + window.location.pathname + '/ws';
                    var socket = new WebSocket(address);
                    socket.onmessage = function (msg) {
                        if (msg.data == 'reload')
                            window.location.reload();
                        else if (msg.data == 'refreshcss')
                            refreshCSS();
                    };
                    if (sessionStorage && !sessionStorage.getItem('IsThisFirstTime_Log_From_LiveServer')) {
                        console.log('Live reload enabled.');
                        sessionStorage.setItem('IsThisFirstTime_Log_From_LiveServer', true);
                    }
                })();
            } else {
                console.error('Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.');
            }
            // ]]>
        </script>
    </body>

</html>
