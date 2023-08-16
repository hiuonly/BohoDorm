<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Boho Dorm</title>
        <link rel="stylesheet" href="view/client/css/stylevbillCustomer.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <div class="container d-flex justify-content-center mt-50 mb-50">

            <div class="row">

                <div class="col-md-12">

                    <div class="card pagebillC">
                        <div class="card-header bg-transparent header-elements-inline">
                            <a href="mybill?id=${sessionScope.acc.usid}" class="text-headH">
                                <h6 class="card-title">Boho Dorm Invoice</h6>
                            </a>
                            <div class="header-elements">
                                <button type="button" class="btn btn-light btn-sm ml-3" onclick="window.print()"><i class="fa fa-print mr-2"></i> Print</button>
                            </div>
                        </div>

                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="mb-4 pull-left">
                                        <h6>Boho Dorm</h6>
                                        <ul class="list list-unstyled mb-0 text-left">
                                            <li>- FPT City urban area,</li>
                                            <li>VIETNAM</li>
                                            <li>+0236 3956 789</li>

                                        </ul>
                                    </div>
                                </div>

                                <div class="col-sm-6">
                                    <div class="mb-4 ">
                                        <div class="text-sm-right">
                                            <h4 class="invoice-color mb-2 mt-md-2">Invoice #${c.phid}</h4>
                                            <ul class="list list-unstyled mb-0">
                                                <li>Date bill: <span class="font-weight-semibold">${c.paydate}</span></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="d-md-flex flex-md-wrap">
                                <div class="mb-4 mb-md-2 text-left">
                                    <span class="text-C">Invoice To:</span>
                                    <ul class="list list-unstyled mb-0">
                                        <li><h5 class="my-2">- ${sessionScope.acount.cname}</h5></li>
                                        <li><span class="font-weight-semibold">- ${sessionScope.acount.caddress},${sessionScope.acount.country}.</span></li>
                                        <li>${sessionScope.acount.sdt}</li>
                                        <li><a href="#" data-abc="true">- ${sessionScope.acc.email}</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th class="per15 text-center">Room</th>
                                        <th class="per5 text-center">Number of Days</th>
                                        <th class="per25 text-center">Check-in</th>
                                        <th class="per25 text-center">Check-out</th>
                                        <th class="per25 text-center">Price</th>
                                        <th class="per25 text-center">Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:set var="totalr" value="0" />
                                    <c:forEach items="${listR}" var="r">
                                        <c:set var="totalr" value="${totalr + r.rtotal}"/>
                                        <tr>
                                            <td style="text-align: center;">
                                                <img class="mr-3 img-fluid" src="img/${r.rimg}" width="100">
                                                <p class="m-0 text-muted" style="padding-top: 15px;">
                                                    ${r.rid}
                                                </p>

                                            </td>
                                            <td class="text-center">${r.rdate}</td>
                                            <td class="text-center">${r.checkin}</td>
                                            <td class="text-center">${r.checkout}</td>
                                            <td class="text-center">$${r.rprice}</td>
                                            <td class="text-center">$${r.rtotal}</td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th colspan="5" class="text-right">Total:</th>
                                        <th class="text-center">$${totalr}</th>
                                    </tr>
                                </tfoot>
                            </table>
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th class="per70 text-center">Names Of Items & Services</th>
                                        <th class="per5 text-center">Quantity</th>
                                        <th class="per5 text-center">Price</th>
                                        <th class="per25 text-center">Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:set var="total" value="0" />
                                    <c:forEach items="${listS}" var="s">
                                        <c:set var="total" value="${total + s.price}"/>
                                        <tr>
                                            <td style="text-align: center;">
                                                <img class="mr-3 img-fluid" src="img/${s.simg}" width="100">
                                                <p class="m-0 text-muted" style="padding-top: 15px;">
                                                    ${s.sname}
                                                </p>
                                            </td>
                                            <td class="text-center">${s.quantity}</td>
                                            <td class="text-center">$${s.sprice}</td>
                                            <td class="text-center">$${s.price}</td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th colspan="3" class="text-right">Total:</th>
                                        <th class="text-center">$${total}</th>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>

                        <div class="card-body">
                            <div class="d-md-flex flex-md-wrap">


                                <div class="pt-2 mb-3 wmin-md-400 ml-auto">
                                    <h6 class="mb-3 text-left">Total due</h6>
                                    <div class="table-responsive">
                                        <table class="table">
                                            <tbody>
                                                <tr>
                                                    <th class="text-left">Subtotal:</th>
                                                    <td class="text-right">$${total + totalr}</td>
                                                </tr>
                                                <tr>
                                                    <th class="text-left">Voucher:</th>
                                                    <td class="text-right">${c.discout}%</td>
                                                </tr>
                                                <tr>
                                                    <th class="text-left">Total:</th>
                                                    <td class="text-right text-primary"><h5 class="font-weight-semibold">$${(total + totalr) * (100-c.discout)/100}</h5></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </body>
</html>
