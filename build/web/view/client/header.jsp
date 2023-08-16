
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--================Header Area =================-->
<header class="header_area" >
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light">
            <!-- Brand and toggle get grouped for better mobile display -->
            <a class="navbar-brand logo_h" href="#"><img src="view/client/image/icon/boho.png" style="width: 70px;">
                <span style="font-size: 30px">BOHO DORM</span>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse offset" id="navbarSupportedContent" >
                <ul class="nav navbar-nav menu_nav ml-auto">
                    <li class="nav-item active"><a class="nav-link" href="homeP">Home</a></li> 
                    <li class="nav-item"><a class="nav-link" href="about">About us</a></li>
                    <li class="nav-item"><a class="nav-link" href="room">Room</a></li>
                    <li class="nav-item"><a class="nav-link" href="ServiceController">Service</a></li>
                    <li class="nav-item"><a class="nav-link" href="contact">Contact</a></li>
                    <li class="nav-item submenu dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                            <c:if test="${sessionScope.acc == null}"> 
                                <img  width="30px" height="30px" class="rounded-circle" src="view/client/image/icon/user.png" alt="">
                            </c:if>
                            <c:if test="${sessionScope.acc != null}"> 
                                <img  width="30px" height="30px" class="rounded-circle" src="img/${sessionScope.acount.urlimage}" alt="">
                            </c:if>
                        </a>
                        <ul class="dropdown-menu">  
                            <c:if test="${sessionScope.acc != null && sessionScope.acc.urole == 0}">
                                <a href="myprofile?id=${sessionScope.acc.usid}"><li class="nav-item" id="menu-profile"><img class="nav-link" src="view/client/image/icon/user.png">My Profile</li></a>
                                <a href="mybill?id=${sessionScope.acc.usid}"><li class="nav-item" id="menu-profile"><img class="nav-link" src="view/client/image/icon/bill.png">My Bill</li></a>
                                </c:if>                                   
                                <c:if test="${sessionScope.acc != null}">                              
                                <a href="${pageContext.request.contextPath}/logout"><li class="nav-item" id="menu-profile"><img class="nav-link" src="view/client/image/icon/log-out.png">Logout</li></a>
                                    </c:if>

                            <c:if test="${sessionScope.acc == null}">
                                <a href="login"><li class="nav-item" id="menu-profile"><img class="nav-link" src="view/client/image/icon/enter.png">Login</li></a>
                                    </c:if>
                        </ul>
                    </li> 
                </ul>
            </div> 
        </nav>
    </div>
</header>
<!--================Header Area =================--> 
