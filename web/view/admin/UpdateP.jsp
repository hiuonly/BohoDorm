

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!--icon-->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!--icon-->
        <!--bootstrap-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" 
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <!--bootstrap-->
        <!--Css-->
        <link rel="stylesheet" href="css/profile-style.css">
        <!--Css-->
        <!--JSV-->
        <script src="https://kit.fontawesome.com/3aa40a242b.js" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <!--JSV-->
        <!--style form-->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@200&display=swap" rel="stylesheet">
        <!--style form-->
        <title>Boho Dorm</title>
    </head>
    <body>

        <!--body-->
        <div class="profile-body"> 
            <form action="UpdateP" method="post">
                <div class="row">
                    <!--left-->
                    <div class="left-profile col-2">
                        <div class="dropdown left-profile-top">
                            <div>
                                <img src="img/team/${e.eimage}" id="image"
                                     class="rounded-circle mb-3" style="width: 100%;"
                                     alt="Avatar" />
                                <div style="margin-bottom: 2%;">
                                    <!-- Button trigger modal -->
                                    <input name="img" class="form-control" id="imageFile" type="file" value="${e.eimage}"
                                           accept="image/gif, image/jpeg, image/jpg, image/png" onchange="chooseFile(this)" required>

                                    <!-- Modal -->
                                    <div class="modal fade" id="avatar-edit" tabindex="-1" role="dialog" aria-labelledby="avatar-editLabel" aria-hidden="true">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="avatar-editLabel">Chỉnh sửa ảnh đại diện</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">

                                                    <div class="form-group">
                                                        <input type="file" class="form-control-file" id="avatar-edit-file">
                                                    </div>

                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Thoát</button>
                                                    <button type="button" class="btn btn-primary">Lưu thay đổi</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div  style="margin-top: 10%;">
                                <div class="">
                                    <a href="profile?id=${sessionScope.acc.user}" style="text-decoration: none; color: black;">
                                            Thông tin cá nhân
                                        </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--left-->
                    <!--right-->
                    <div class="right-profile col-8">
                        <div class="profile-nonedit">
                            <h5 style="margin: 2% 0%;">Thông tin cá nhân</h5>

                            <input hidden name="usid" value="${sessionScope.acc.usid}">
                                <div class="form-group">
                                    <label for="NameAccount">Tên người dùng</label>
                                    <input name="name" type="text" id="NameAccount" class="form-control" value="${e.name}">
                                </div>
                                <div class="form-group">
                                    <label for="NameAccount">Mật khẩu</label>
                                    <input name="pass" type="text" id="NameAccount" class="form-control" value="${e.pass}">
                                </div>
                                <div class="form-group">
                                    <label for="NameAccount">Email</label>
                                    <input name="email" type="email" id="NameAccount" class="form-control" value="${e.email}">
                                </div>
                                <div class="form-group">
                                    <label for="NameAccount">Số điện thoại</label>
                                    <input name="sdt" type="number" id="NameAccount" class="form-control" value="${e.sdt}" >
                                </div>
                                <div class="form-group">
                                    <label for="NameAccount">Năm sinh</label>
                                    <input name="bir" type="date" id="NameAccount" class="form-control" value="${e.birthday}">
                                </div>
                            <div class="modal-edit-profile">
                                <!-- Button trigger modal -->
                                <div class="mt-3">
                                            <button class="btn btn-gray-800 mt-2 animate-up-2" type="submit">Save all</button>
                                        </div>
                                <!-- Modal -->
                                

                                <!--End of modal-->
                            </div>

                        </div>
                    </div>
                    <!--right-->
                </div>
            </form>
        </div>
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
        <!--body-->
    </body>
</html>