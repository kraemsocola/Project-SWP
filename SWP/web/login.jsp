<%-- 
    Document   : login
    Created on : Jan 31, 2023, 4:13:27 PM
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
    <title>BOT STORE</title>
</head>
    <!-- body -->
<body id="body">
    <div class="body_container">
        <div class="body_left">
            <a href="home.jsp" class="body_left-linkhome">
                <img src="./assets/img/small_logo1.png" alt="">
                <img src="./assets/img/Logo.png" alt="Ảnh Logo" class="body_left-imgLogo">
            </a>
        </div>
        <div class="body_right">
            <div> 
                <form action="login" method="post">
                <h3 style="color:red">${requestScope.mess}</h3>
                <input type="text" placeholder="Email hoặc Số Điện Thoại" class="body_right-inputlogin" name="username">
                <input type="password" placeholder="Mật Khẩu" class="body_right-inputlogin" name="password">
                <div class="body_right-login" id="login">
                    <button class="body_right-btnlogin" type="submit">Đăng Nhập</button> <br>
                    <a href="#" class="body_right-forgotpass">Forgotten Password ?</a>
                    <a href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:9999/swp_project/login-google&response_type=code
    &client_id=845236234675-gl7te8a81vmkokgdfjcf4s71g3jkll59.apps.googleusercontent.com&approval_prompt=force">Login With Google</a> 
                    <a href="https://www.facebook.com/dialog/oauth?client_id=2548676761950281&redirect_uri=http://localhost:9999/swp_project/home.jsp">Login Facebook</a>
                </div>
                </form>  
            </div>
            <hr class="body_right-decoration">
            <div>
                <form action="register.jsp" method="post">
                <button class="body_right-btncreateacc-login" id="btn_createaccount" href="register.jsp" >Tạo Tài Khoản</button>
                </form>
            </div>
        </div>
    </div>
</body>
    <!-- end body -->
</html>
