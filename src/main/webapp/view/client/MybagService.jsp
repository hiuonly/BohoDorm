

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <!--  This file has been downloaded from bootdey.com @bootdey on twitter -->
        <!--  All snippets are MIT license http://bootdey.com/license -->
        <title>Boho Dorm</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <link href="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="view/client/css/stylethu1.css">
    </head>
    <body>
        <!-- information bill -->  
        <div class="page-Step mybagS slidePage">  
            <div class="field btns" id="combackS">
                <a href="${pageContext.request.contextPath}/Service" class="prev-3 btn btn-prev">Go back</a>
            </div>
            <div class="col-md-12 text-center container bootdey" style="margin-left: 130px;">

                <div class="row invoice row-printable">
                    <div class="col-md-12">
                        <!-- col-lg-12 start here -->
                        <div class="panel panel-default plain" id="dash_0">
                            <!-- Start .panel -->
                            <div class="panel-body p30">

                                <div class="row">
                                    <div class="col-md-12 titleBag">
                                        <h3>list of selected services</h3>
                                    </div> 
                                    <!-- col-lg-6 end here -->
                                    <div class="col-lg-12">
                                        <div class="invoice-items">
                                            <div class="table-responsive" style="overflow: hidden; outline: none;" tabindex="0">

                                                <table class="table table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <th class="per70 text-center">No</th>
                                                            <th class="per70 text-center">Services</th>
                                                            <th class="per5 text-center">Quantity</th>
                                                            <th class="per5 text-center">Price</th>
                                                            <th class="per25 text-center">Total</th>
                                                            <th class="per25 text-center">Action</th>
                                                        </tr>
                                                    </thead>

                                                    <c:set var="o" value="${sessionScope.cart}"/>
                                                    <c:set var="t" value="0"/>
                                                    <c:set var="total" value="0" />
                                                    <c:forEach items="${o.items}" var="i">
                                                        <c:set var="total" value="${total + i.quantity * i.price}"/>
                                                        <c:set var="t" value="${t+1}"/>
                                                        <tbody>
                                                            <tr>
                                                                <td>${t}</td>
                                                                <td>${i.services.sname}</td>
                                                                <td class="text-center">
                                                                    <button><a href="${pageContext.request.contextPath}/process?num=-1&id=${i.services.srid}">-</a></button>
                                                                    <input type="text" readonly value="${i.quantity}">
                                                                    <button><a href="${pageContext.request.contextPath}/process?num=1&id=${i.services.srid}">+</a></button>
                                                                </td>
                                                                <td class="text-center">$<fmt:formatNumber pattern="##.#" value="${i.price}"/></td>
                                                                <td class="text-center">$<fmt:formatNumber pattern="##.#" value="${i.quantity * i.price}"/></td>

                                                                <td class="text-center">
                                                                    <form action="${pageContext.request.contextPath}/process" method="post">
                                                                        <input type="hidden" name="id" value="${i.services.srid}">
                                                                        <input class="removeS" type="submit" value="Remove">
                                                                    </form>
                                                                </td>
                                                            </tr>
                                                        </tbody>

                                                    </c:forEach>
                                                    <tfoot> 
                                                        <tr>

                                                            <th colspan="5" class="text-right">Total: $${total}</th>
                                                        </tr>
                                                    </tfoot>
                                                </table>
                                                <form action="${pageContext.request.contextPath}/out" method="post">
                                                    <input hidden name="hai" value="${sessionScope.acount.cid}">
                                                    <input type="submit" value="check out">
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- col-lg-12 end here -->
                                </div>

                                <!-- End .row -->
                            </div>
                        </div>
                        <!-- End .panel -->
                    </div>
                    <!-- col-lg-12 end here -->
                </div>
            </div>
        </div>


        <style type="text/css">
            body{
                min-height: 100vh;
                background: url("img/background.jpeg") no-repeat; 
                background-size: cover;
            }
        </style>
    </body>
