

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/styleP.css">

        <title>Boho Dorm</title>
    </head>

    <body>
        <div class="my-5 page" size="A4">

            <h2 style="text-align:center">User Profile </h2>

            <div class="card">
                <img src="img/team/${e.eimage}" alt="" style="height: 535px; width: 500px;  display: block; margin-left: auto; margin-right: auto;">
                <div style="margin: 45px 0;">
                    <div class="detailInfo">
                        <div class="row my-2">
                            <div class="col-lg-4 col-12 boldd">Name:</div>

                            <div class="col-lg-8 col-12 b">${e.name}</div>
                        </div>

                        <div class="row my-2">
                            <div class="col-lg-4 col-12 boldd">SDT:</div>

                            <div class="col-lg-8 col-12 b">${e.sdt}</div>
                        </div>

                        <div class="row my-2">
                            <div class="col-lg-4 col-12 boldd">Email:</div>

                            <div class="col-lg-8 col-12 b">${e.email}</div>
                        </div>

                        <div class="row my-2">
                            <div class="col-lg-4 col-12 boldd">Gender:</div>

                            <div class="col-lg-8 col-12 b">${e.gender}</div>
                        </div>

                        <div class="row my-2">
                            <div class="col-lg-4 col-12 boldd">Address:</div>

                            <div class="col-lg-8 col-12 b">${e.address}</div>
                        </div>

                        <div class="row">
                            <div class="col-lg-4 col-12 boldd">Birthday:</div>

                            <div class="col-lg-8 col-12 b">${e.birthday}</div>
                        </div>
                        <a href="#"><i class="fa fa-dribbble"></i></a> 
                        <a href="#"><i class="fa fa-twitter"></i></a>  
                        <a href="#"><i class="fa fa-linkedin"></i></a>  
                        <a href="#"><i class="fa fa-facebook"></i></a> 
                    </div>
                    <p>
                        <a href="dashboardControl"><button>Satisfied</button></a>

                    </p>
                </div>
            </div>
        </div>
    </body>
</html>

