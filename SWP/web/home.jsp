<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./assets/css/main.css">
        <!-- <link rel="stylesheet" href="./assets/css/main.css"> -->
        <link rel= "stylesheet" href="./main.js">
        <script type="text/javascript" language="javascript" src="./main.js"></script>
        <link rel="stylesheet" href="./assets/font/fontawesome-free-6.1.1/css/all.min.css">
        <link rel="icon" href="./assets/img/small_logo1.png">
        <!-- <link rel="icon" href="./assets/img/small_logo.png"> --> 
        <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA==" crossorigin="anonymous" referrerpolicy ="no-referrer" /> -->
        <title>Boon Bo</title>
    </head>
    <body>
        <!-- header -->
        <div id="header">
            <!-- header top -->
            <div class="header_top">
                <div class="header_top-intro">
                    <div class="header_top-intro-support">
                        <div class="sp-child hotline">
                            <i class="fa-solid fa-phone icon-sup"></i>
                            <span>+84 969420123</span>
                        </div>
                        <div class="sp-child email">
                            <i class="fa-solid fa-at icon-sup"></i>
                            <span>botstore.vn@gmail.com</span>
                        </div>
                        <div class="sp-child question">
                            <i class="fa-solid fa-headset icon-sup"></i>
                            <span>Hỗ trợ trực tuyến 24/7</span>
                        </div>
                    </div>
                    <div class="header_top-intro-language">
                        Language
                        <i class="fa-solid fa-chevron-down icon_arrowdown"></i>
                        <ul class="language-child">
                            <li class="language_item">
                                <img src="./assets/img/flagVN.jpg" class="language-item_child flag">
                                <span class="language-item_child ">VietNam</span>
                            </li>
                            <li class="language_item">
                                <img src="./assets/img/la-co-vuong-quoc-anh.jpg" class="language-item_child flag">
                                <span class="language-item_child ">English</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- end header top -->
            <!-- header mid -->
            <div class="header_mid">
                <!-- header mid top -->
                <div class="mid-top">
                    <div class="logo">
                        <a href="./index.html">
                            <img src="./assets/img/Logo.png" alt="Logo" id="img_logo">
                        </a>
                    </div>
                    <div class="search">
                        <input type="text" placeholder="Tìm Kiếm..." class="input_search">
                        <div class="search-item">
                            <i class="fa-solid fa-magnifying-glass icon-search"></i>
                        </div>
                    </div>
                    <div class="login-cart">
                    <c:if test="${sessionScope.userNow.role_id==null}">

                    <a href="login" class="login_cart-item-link">
                    <div class="login-cart_item">
                    <i class="fa-solid fa-key"></i>
                     </div>
                    </a>      

                    </c:if>
                    <c:if test="${sessionScope.userNow.role_id!=null}">
                    <a href="#" class="login_cart-item-link" >
                        <div class="login-cart_item">
                            <i class="fa-solid fa-user"></i>
                        </div>
                    </a>    

                    </c:if>
                    
                    <a href="cart.html" class="login_cart-item-link">
                        <div class="login-cart_item">
                            <i class="fa-solid fa-bag-shopping"></i>
                        </div>
                    </a>
                    <c:if test="${sessionScope.userNow.role_id!=null}">
                    <a href="logout" class="login_cart-item-link">
                        <div class="login-cart_item">
                            <i class="fa-solid fa-right-from-bracket"></i>
                        </div>
                    </a>    

                    </c:if>
                </div>
                </div>
                <!-- end header mid top -->
                <!-- header mid bot -->
                <div class="mid-bot">
                    <!-- menu left -->
                    <button class="menu_left">
                        <i class="fa-solid fa-bars icon_list"></i>
                        Danh mục sản phẩm
                        <div class="menu_left-child">
                            <ul>
                                <li class="menu_left-item">
                                    Mô hình xe hơi
                                </li>
                                <li class="menu_left-item">
                                    Mô hình Lego
                                </li>
                                <li class="menu_left-item">
                                    <div class="menu_left-item-title">
                                        <div class="menu_left-item-title-child">Mô hình phim</div>
                                        <i class="fa-solid fa-angle-right icon_arrow-menulv2"></i> 
                                    </div>
                                    <div class="menu_left-item-lv2">
                                        <ul>
                                            <li class="menu_left-item-child">Marvel</li>
                                            <li class="menu_left-item-child">DC</li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="menu_left-item">
                                    Mô hình Transformer
                                </li>
                                <li class="menu_left-item">
                                    <div class="menu_left-item-title">
                                        <div class="menu_left-item-title-child">Mô hình anime</div>
                                        <i class="fa-solid fa-angle-right icon_arrow-menulv2"></i> 
                                    </div>
                                    <div class="menu_left-item-lv2">
                                        <ul>
                                            <li class="menu_left-item-child">Naruto</li>
                                            <li class="menu_left-item-child">One Piece</li>
                                            <li class="menu_left-item-child">Dragon Ball</li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="menu_left-item">
                                    Mô hình Figger
                                </li>
                                <li class="menu_left-item">
                                    <div class="menu_left-item-title">
                                        <div class="menu_left-item-title-child">Mô hình khác</div>
                                        <i class="fa-solid fa-angle-right icon_arrow-menulv2"></i> 
                                    </div>
                                    <div class="menu_left-item-lv2">
                                        <ul>
                                            <li class="menu_left-item-child">Mô hình cây mini</li>
                                            <li class="menu_left-item-child">Mô hình trang trí</li>
                                            <li class="menu_left-item-child">Mô hình PC</li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </button>
                    <!-- end menu left -->
                    <!-- menu right -->
                    <ul class="menu_right">
                        <li class="menu_right-item">
                            <a class="link_decor_remover hover-link" href="./index.html">Trang chủ</a>
                        </li>
                        <li class="menu_right-item">
                            <a class="link_decor_remover hover-link" href="#">Hàng mới</a>
                        </li>
                        <li class="menu_right-item">
                            <a class="link_decor_remover hover-link" href="#">Thương hiệu</a>
                        </li>
                        <li class="menu_right-item">
                            <a class="link_decor_remover hover-link" href="./src/oder.html">Đơn hàng</a>
                        </li>
                        <li class="menu_right-item">
                            <a class="link_decor_remover hover-link" href="./src/profile_info.html">Trang cá nhân</a>
                        </li>
                    </ul>
                    <!-- end menu right -->
                </div>
                <!-- end header mid bot -->
            </div>
            <!-- end mid -->
            <!-- bot -->
            <div class="header_bot">
                <div class="header_bot-review">
                    <img src="https://theme.hstatic.net/200000374707/1000984519/14/slideshow_1.jpg?v=51", alt="" id="img__bgreview">
                    <div class="arrow_slide arrow_slide-left">
                        <!-- <i class="fa-solid fa-circle-chevron-left icon_arrow-slide" onclick="prev()"></i> -->
                        <i class="fa-solid fa-chevron-left icon_arrow-slide" onclick="prev()"></i>
                    </div>
                    <div class="arrow_slide arrow_slide-right">
                        <i class="fa-solid fa-chevron-right icon_arrow-slide" onclick="next()"></i>
                    </div>
                </div>
            </div>
            <!-- end bot -->
        </div>
        <!-- end header -->
        <!-- body -->
        <div id="body">
            <!-- body-top -->
            <div class="body_top">
                <!-- DEAL -->
                <div class="body_top-deal">
                    <div class="body_top-title">
                        <div class="body_top-title-left">
                            <i class="fa-solid fa-bolt-lightning icon_top-title"></i>
                            Ưu đãi 
                        </div>
                        <div class="body_top-title-right">
                            <a href="./src/allproducts.html" class="body_top-title-right-item">Xem tất cả
                                <i class="fa-solid fa-caret-right icon_arrow-viewall"></i>
                            </a>
                        </div>
                    </div>
                    <div class="body_bot-deal-child">
                        <div class="products">
                            <a href="./src/products.html">
                                <img src="./assets/img/lego3.jpg" alt="" class="img_products">
                            </a>
                            <div class="describe_products">
                                <div class="ratings_products">
                                    <span>Mô hình Lego Jurassic</span>
                                    <span>
                                        <i class="fa-solid fa-star icon_star"></i>
                                        <i class="fa-solid fa-star icon_star"></i>
                                        <i class="fa-solid fa-star icon_star"></i>
                                        <i class="fa-solid fa-star icon_star"></i>
                                        <i class="fa-solid fa-star icon_star"></i>
                                    </span>
                                    <div>
                                        <span class="info_price">100$</span>
                                        <span class="oldprice">200$</span>
                                    </div>
                                </div>
                                <div class="add_like_products">
                                    <i class="fa-regular fa-heart icon_heart"></i>
                                    <button class="btn_deal-item"><i class="fa-solid fa-plus"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="products">
                            <a href="./src/products.html">
                                <img src="./assets/img/xe1.png" alt="" class="img_products">
                            </a>
                            <div class="describe_products">
                                <div class="ratings_products">
                                    <span>Mô hình FERRARI LAFERRARI</span>
                                    <span>
                                        <i class="fa-solid fa-star icon_star"></i>
                                        <i class="fa-solid fa-star icon_star"></i>
                                        <i class="fa-solid fa-star icon_star"></i>
                                        <i class="fa-solid fa-star icon_star"></i>
                                    </span>
                                    <div>
                                        <span class="info_price">100$</span>
                                        <span class="oldprice">200$</span>
                                    </div>
                                </div>
                                <div class="add_like_products">
                                    <i class="fa-regular fa-heart icon_heart"></i>
                                    <button class="btn_deal-item"><i class="fa-solid fa-plus"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="products">
                            <a href="./src/products.html">
                                <img src="./assets/img/tranformer4.jpg.png" alt="" class="img_products">
                            </a>
                            <div class="describe_products">
                                <div class="ratings_products">
                                    <span>Mô hình Transformer</span>
                                    <span>
                                        <i class="fa-solid fa-star icon_star"></i>
                                        <i class="fa-solid fa-star icon_star"></i>
                                        <i class="fa-solid fa-star icon_star"></i>
                                        <i class="fa-solid fa-star icon_star"></i>
                                    </span>
                                    <div>
                                        <span class="info_price">100$</span>
                                        <span class="oldprice">200$</span>
                                    </div>
                                </div>
                                <div class="add_like_products">
                                    <i class="fa-regular fa-heart icon_heart"></i>
                                    <button class="btn_deal-item"><i class="fa-solid fa-plus"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="products">
                            <a href="./src/products.html">
                                <img src="./assets/img/blackpanther.png" alt="" class="img_products">
                            </a>
                            <div class="describe_products">
                                <div class="ratings_products">
                                    <span>Mô hình Black Panther</span>
                                    <span>
                                        <i class="fa-solid fa-star icon_star"></i>
                                        <i class="fa-solid fa-star icon_star"></i>
                                        <i class="fa-solid fa-star icon_star"></i>
                                        <i class="fa-solid fa-star icon_star"></i>
                                        <i class="fa-solid fa-star icon_star"></i>
                                    </span>
                                    <div>
                                        <span class="info_price">100$</span>
                                        <span class="oldprice">200$</span>
                                    </div>
                                </div>
                                <div class="add_like_products">
                                    <i class="fa-regular fa-heart icon_heart"></i>
                                    <button class="btn_deal-item"><i class="fa-solid fa-plus"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END DEAL -->

                <!-- end top sản phẩm -->
                <!-- sản phẩm mới -->
                <div class="body_top-newarrivals">
                    <div class="body_top-title">
                        <div class="body_top-title-left">
                            <i class="fa-solid fa-medal icon_top-title"></i>
                            Sản phẩm hàng đầu 
                        </div>
                        <div class="body_top-title-right">
                            <a href="./src/allproducts.html" class="body_top-title-right-item">Xem tất cả
                                <i class="fa-solid fa-caret-right icon_arrow-viewall"></i>
                            </a>
                        </div>
                    </div>
                    <div class="body_bot-arrivals-info">
                        <div class="arrivals-info_item">
                            <a href="./src/products.html">
                                <img src="./assets/img/cap.jpg" class="img_arrivals-item">
                            </a>
                            <div class="arrivals-info_text">
                                <span>Captain America</span>
                                <span class="info_price">50$</span>
                            </div>
                        </div>
                        <div class="arrivals-info_item">
                            <a href="./src/products.html">
                                <img src="./assets/img/zoro4.jpg" class="img_arrivals-item">
                            </a>
                            <div class="arrivals-info_text">
                                <span>Zoronoa Zoro</span>
                                <span class="info_price">39$</span>
                            </div>
                        </div>
                        <div class="arrivals-info_item">
                            <a href="./src/products.html">
                                <img src="./assets/img/vegeta.jpg" class="img_arrivals-item">
                            </a>
                            <div class="arrivals-info_text">
                                <span>Vegeta</span>
                                <span class="info_price">120$</span>
                            </div>
                        </div>
                        <div class="arrivals-info_item">
                            <a href="./src/products.html">
                                <img src="./assets/img/dragon.jpg" class="img_arrivals-item">
                            </a>
                            <div class="arrivals-info_text">
                                <span>Dragon Ball</span>
                                <span class="info_price">70$</span>
                            </div>
                        </div>
                        <div class="arrivals-info_item">
                            <a href="./src/products.html">
                                <img src="./assets/img/legoarrivals.png" class="img_arrivals-item">
                            </a>
                            <div class="arrivals-info_text">
                                <span>Lego</span>
                                <span class="info_price">153$</span>
                            </div>
                        </div>
                        <div class="arrivals-info_item">
                            <a href="./src/products.html">
                                <img src="./assets/img/spiderman.png" class="img_arrivals-item">
                            </a>
                            <div class="arrivals-info_text">
                                <span>Spiderman</span>
                                <span class="info_price">62$</span>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end sản phẩm mới -->
            </div>
            <!-- end body top -->
            <!-- body mid --> 
            <div class="body_mid">

            </div>
            <!-- end body mid -->
            <!-- body bot -->
            <div class="body_bot">
                <div class="body_top-title">
                    <div class="body_top-title-left">
                        <i class="fa-solid fa-burst icon_top-title"></i>
                        Sản phẩm mới
                    </div>
                    <div class="body_top-title-right">
                        <a href="./src/allproducts.html" class="body_top-title-right-item">Xem tất cả
                            <i class="fa-solid fa-caret-right icon_arrow-viewall"></i>
                        </a>
                    </div>
                </div>
                <div class="body_bot-recommend">
                    
                    <c:forEach items="${product}" var="p">
                        
                        <div class="products products_recommend">
                        <a href="./src/products.html">
                            <img src="${p.thumbnail}" alt="" class="img_products">
                        </a>
                        <div class="describe_products">
                            <div class="ratings_products">
                                <span>${p.title}</span>
                                <span>
                                    <i class="fa-solid fa-star icon_star"></i>
                                    <i class="fa-solid fa-star icon_star"></i>
                                    <i class="fa-solid fa-star icon_star"></i>
                                    <i class="fa-solid fa-star icon_star"></i>
                                    <i class="fa-solid fa-star icon_star"></i>
                                </span>
                                <div>
                                    <span class="info_price">190$</span>
                                    <span class="oldprice">210$</span>
                                </div>
                            </div>
                            <div class="add_like_products">
                                <i class="fa-regular fa-heart icon_heart"></i>
                                <button class="btn_deal-item"><i class="fa-solid fa-plus"></i></button>
                            </div>
                        </div>
                    </div>
                     
                    </c:forEach>
                    
                    
                    
                </div>
             <div class="body_info">
                <div class="body_info-item">
                    <div style="width: 333px; height: 333px;border-radius: 10px; box-shadow: 0px 2px 20px -8px black; background-image: url(https://theme.hstatic.net/200000374707/1000984519/14/home_box_item_image_1.png?v=51)">
                    </div>
                    <div style="margin-top: 15px">
                        <span class="body_info-item-title">Chọn mùi hương</span>
                        <p class="body_info-item-description">Cùng bước vào không gian trải nghiệm tại Morra để tìm cho bạn một mùi hương đặc trưng và phù hợp nhất.</p>
                    </div>
                </div>
                <div style="margin-left: 100px; margin-right: 100px" class="body_info-item">
                    <div style="width: 333px; height: 333px;border-radius: 10px; box-shadow: 0px 2px 20px -8px black; background-image: url(https://theme.hstatic.net/200000374707/1000984519/14/home_box_item_image_2.png?v=51)">
                    </div>
                    <div style="margin-top: 15px">
                        <span class="body_info-item-title">Pha chế & Đóng gói</span>
                        <p class="body_info-item-description">Mọi thao tác pha chế, đóng gói được đội ngũ Morra thực hiện ngay tại Morra Lab cùng với sự tham gia của bạn.
                        </p>
                    </div>
                </div>
                <div class="body_info-item">
                    <div style="width: 333px; height: 333px;border-radius: 10px; box-shadow: 0px 2px 20px -8px black; background-image: url(https://theme.hstatic.net/200000374707/1000984519/14/home_box_item_image_3.png?v=51)">
                    </div>
                    <div style="margin-top: 15px">
                        <span class="body_info-item-title">Tạo dấu ấn riêng</span>
                        <p class="body_info-item-description">Duy nhất tại Morra, chúng tôi giúp bạn khắc tên riêng hay ghi lại tháng năm hoàn toàn miễn phí, và chỉ trong vài phút.
                        </p>
                    </div>
                </div>           
            </div>   
            </div>
            
            <!-- End body bot -->
        </div>
        <!-- end body -->
        <!-- footer -->
        <div id="footer">
            <!-- container footer -->
            <div class="container_footer">
                <!-- footer logo / online shop -->
                <div class="footer_contact-logo">
                    <a href="#">
                        <img class="footer_logo-resize" src="./assets/img/Logo.png" alt="logo">
                    </a>
                    <p class="footer_contact-logo-text">
                        Mua các mô hình, lego, trang trí tại của hàng Bot Store.
                    </p>
                    <div class="footer_contact-logo-onlineshop">
                        <a href="#" id="onlineshop">
                            <div class="online-shop">
                                <!-- logo shopee -->
                                <div class="shopee-tiki">
                                    <img class="online-shop-logo" src="./assets/img/shopee.png" alt="shopee logo">
                                </div>
                                <!-- chữ bên cạnh logo -->
                                <div>
                                    <span class="online-shop-text-top">Shopping on</span>
                                    <p class="online-shop-text-bot">Shopee</p>
                                </div>
                            </div>
                        </a>
                        <a href="#" id="onlineshop">
                            <div class="online-shop">
                                <!-- logo tiki -->
                                <div class="shopee-tiki">
                                    <img class="online-shop-logo" src="./assets/img/tiki.png" alt="tiki logo">
                                </div>
                                <!-- chữ bên cạnh logo -->
                                <div>
                                    <span class="online-shop-text-top">Shopping on</span>
                                    <p class="online-shop-text-bot">Tiki</p>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <!-- về chúng tôi -->
                <div class="footer_contact-about">
                    <!-- title -->
                    <div class="footer_contact-title">Về chúng tôi</div>
                    <!-- about us link -->
                    <div class="footer_contact-about-link">
                        <a class="about-link" href="#">Careers</a>
                        <a class="about-link" href="#">Của hàng của chúng tôi</a>
                        <a class="about-link" href="#">Chính sách giao hàng</a>
                        <a class="about-link" href="#">Điều khoản dịch vụ</a>
                        <a class="about-link" href="#">Chính sách quyền riêng tư</a>
                    </div>
                </div>
                <!-- dịch vụ chăm sóc khách hàng -->
                <div class="footer_contact-customer">
                    <!-- title -->
                    <div class="footer_contact-title">Hỗ trợ khách hàng</div>
                    <!-- customer care link -->
                    <div class="footer_contact-about-link">
                        <a class="about-link" href="#">Trung tâm hỗ trợ</a>
                        <a class="about-link" href="#">Cách để mua hàng</a>
                        <a class="about-link" href="#">Truy cứu đơn hàng</a>
                        <a class="about-link" href="#">Hợp tác</a>
                        <a class="about-link" href="#">Hoàn trả và hoàn tiền</a>
                    </div>
                </div>
                <!-- liên hệ -->
                <div class="footer_contact-contact">
                    <!-- title -->
                    <div class="footer_contact-title">Liên hệ chúng tôi</div>
                    <!-- địa chỉ -->
                    <p class="footer_contact-text">69 Thái Hà, Trung Liệt, Đống Đa, Hà Nội</p>
                    <p class="footer_contact-text">Email: botstore.vn@gmail.com</p>
                    <p class="footer_contact-text">Số điện thoại: +84 969420123</p>
                    <div class="footer_contact-icon">
                        <a class="about-link" href="#">
                            <div class="footer_contact-icon-child">
                                <i class="fa-brands fa-facebook-f"></i>
                            </div>
                        </a>
                        <a class="about-link" href="#">
                            <div class="footer_contact-icon-child">
                                <i class="fa-brands fa-instagram"></i>
                            </div>
                        </a>
                        <a class="about-link" href="#">
                            <div class="footer_contact-icon-child">
                                <i class="fa-brands fa-twitter"></i>
                            </div>
                        </a>
                        <a class="about-link" href="#">
                            <div class="footer_contact-icon-child">
                                <i class="fa-brands fa-youtube"></i>
                            </div>
                        </a>
                        <a class="about-link" href="https://github.com/EmLongDauLung/WebDoChoi">
                            <div class="footer_contact-icon-child">
                                <i class="fa-brands fa-github"></i>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- end footer -->
    </body>
</html>
