<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<ul class="nav flex-column pt-3 pt-md-0">
    <li class="nav-item ">
        <a href="dashboardControl" class="nav-link">
            <span class="sidebar-icon">
                <svg class="icon icon-xs me-2" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path d="M2 10a8 8 0 018-8v8h8a8 8 0 11-16 0z"></path><path d="M12 2.252A8.014 8.014 0 0117.748 8H12V2.252z"></path></svg>
            </span> 
            <span class="sidebar-text">Dashboard</span>
        </a>
    </li>
    <li class="nav-item active  ">
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
            <div class="multi-level collapse "
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
            <div class="multi-level collapse " role="list"
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
                    <li class="nav-item"><a class="nav-link" href="Vouchers">
                            <span class="sidebar-text-contracted"></span> <span
                                class="sidebar-text">Voucher</span>
                        </a>
                    </li>
                </ul>
            </div>
        </li>
    </c:if>

</ul>