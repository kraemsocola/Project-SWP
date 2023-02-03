<%-- 
    Document   : register
    Created on : Feb 1, 2023, 12:29:47 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/header_footer.css">
    <!-- <link rel="stylesheet" href="./assets/css/profile_info.css"> -->
    <link rel="stylesheet" href="./assets/css/login.css">
    <script type="text/javascript" language="javascript" src="./main.js"></script>
    <link rel="stylesheet" href="./assets/font/fontawesome-free-6.1.1/css/all.min.css">
    <link rel="icon" href="./assets/img/small_logo1.png">
    <title>PERFUME STORE</title>
</head>
    <!-- body -->
<body id="body">
    <div class="body_container">
        <div class="body_left">
            <a href="./index.html" class="body_left-linkhome">
                <img src="./assets/img/small_logo1.png" alt="">
                <img src="./assets/img/Logo.png" alt="Ảnh Logo" class="body_left-imgLogo">
            </a>
        </div>
        <div class="body_right">
            <form action="register" method="post" >
            <div>
               
         
                <input type="text" placeholder="Tên đăng nhập" class="body_right-inputlogin" name="username">
                <input type="password" placeholder="Mật Khẩu" class="body_right-inputlogin" name="password">
                <input type="password" placeholder="Nhập Lại Mật Khẩu" class="body_right-inputlogin" name="repassword">
                <div class="body_right-login" id="login">
                    <button class="body_right-btnlogin" type="submit">Đăng ký</button> <br>
                   
                </div>
                </div>
               </form> 
                <div class="body_right-register" id="createacc">
                    <input type="password" placeholder="Nhập lại mật khẩu" class="body_right-inputlogin">
                   
                    <div class="body_right-policy">
                        Bằng việc đăng kí, bạn đã đồng ý với BOT STORE về 
                        <a href="#" class="body_right-policy-item">Điều khoản dịch vụ</a>
                        & 
                        <a href="#" class="body_right-policy-item">Chính sách bảo mật </a>
                    </div>
                </div>
            
            <hr class="body_right-decoration">
            <div>
                <button class="body_right-btncreateacc-login" id="btn_login" onclick="op_login()">Quay lại</button>
                <button class="body_right-btncreateacc-login" id="btn_createaccount" onclick="op_register()">Tạo Tài Khoản</button>
            </div>
        </div>
    </div>
</body>
    <!-- end body -->
</html>
