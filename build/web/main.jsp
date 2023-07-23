<%-- 
    Document   : index
    Created on : Mar 14, 2023, 1:41:59 PM
    Author     : Dell
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page import="java.util.List"%>
<%@page import="dao.ProductTypeDAO"%>
<%@page import="entity.ProductType"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta http-equiv="x-ua-compatible" content="ie=edge" />
        <title>Material Design for Bootstrap</title>

        <link rel="stylesheet" href="css/style.css">   
        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">

        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/4.5.6/css/ionicons.min.css">
        <link rel="stylesheet" href="css/style.css">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="css/owl.carousel.min.css">

        <!-- MDB icon -->
        <link rel="icon" href="img/mdb-favicon.ico" type="image/x-icon" />
        <!-- Font Awesome -->
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
            />

        <!-- MDB -->
        <link rel="stylesheet" href="css/mdb.min.css" />

        <title>Mystory Book</title>
    </head>
    <body>
        <!--Main Navigation-->
        <nav class="navbar sticky-top"  
             style=" text-color:white; background: white; box-shadow: 0 0px 10px 0 black, 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
            <div class="container" >
                <div class="row gy-3" style="width: 100%">
                    <!-- Left elements -->
                    <div class="col-lg-3">
                        <a href="http://localhost:8084/PRJ301_HasaKoiShop/">
                            <img src="Image/Header/header_logo.png" height="80"/>
                        </a>
                    </div>
                    <!-- Left elements -->

                    <!-- Center elements -->
                    <div class="col-lg-5 d-flex align-items-center">
                        <div class="input-group float-center">
                            <form action="main" method="post" id="searchproductform" class="form-outline align-items-center">
                                <input type="text" id="form1" class="form-control" name="search"/>
                                <label class="form-label align-items-center" for="form1">Search</label>
                            </form>
                            <button type="submit" form="searchproductform" class="btn btn-primary shadow-0" style="background-color: #AA8B56!important" name="action" value="search">
                                <i class="fa fa-search"></i>
                            </button>
                        </div>
                    </div>
                    <!-- Center elements -->

                    <!-- Right elements -->
                    <div class="order-lg-last col-lg-4 d-flex justify-content-center">
                        <div class="d-flex float-end align-items-center">
                            <a style="background-color: #4E6C50!important" href="" class="me-1 border rounded py-1 px-3 nav-link d-flex align-items-center" target="_blank"> <i style=" color:white;" class="fas fa-user-alt m-1 me-md-2"></i> <p style=" color:white;" class="d-none d-md-block mb-0">Sign in</p> </a>
                            <a style="background-color: #4E6C50!important" href="" class="me-1 border rounded py-1 px-3 nav-link d-flex align-items-center" target="_blank"> <i style=" color:white;" class="fas fa-heart m-1 me-md-2"></i> <p style=" color:white;" class="d-none d-md-block mb-0">Wishlist</p> </a>
                            <a style="background-color: #4E6C50!important" href="" class="border rounded py-1 px-3 nav-link d-flex align-items-center" target="_blank"> <i style=" color:white;" class="fas fa-shopping-cart m-1 me-md-2"></i> <p style=" color:white;" class="d-none d-md-block mb-0">My cart</p> </a>
                        </div>
                    </div>
                    <!-- Right elements -->
                </div>
            </div>
        </nav>
        <!--Main Navigation-->

        <!--Bottom Navigation-->
        <div class="bg-primary text-white py-5 row" style="background-color: #F0EBCE!important">
            <div class="col-lg-5 d-flex">
                <div class="container py-5 col-lg-6">
                    <h1 style= "color: #395144">
                        Best products & <br />
                        brands in our store
                    </h1>
                    <p style= "color: #395144">
                        Trendy Products, Factory Prices, Excellent Service
                    </p>
                    <button type="button" class="btn" style="background: #395144; color: white">
                        Learn more
                    </button>
                    <button type="button" class="btn btn-light shadow-0 text-primary pt-2 border border-white">
                        <span class="pt-1"  style="color: #4E6C50!important">Purchase now</span>
                    </button>
                </div>
            </div>
            <div class="col-lg-7 d-flex align-items-center" style="width: 55%">
                <div class="home-slider owl-carousel " >
                    <div class="slider-item " style="background-image:url(Image/Header/header-slider-1.png);">
                        <div class="overlay"></div>
                        <div class="container">
                            <div class="row no-gutters slider-text align-items-center justify-content-center">
                                <div class="col-md-12 ftco-animate">
                                    <div class="text w-100 text-center">
                                        <h2>Best Place to </h2>
                                        <h1 class="mb-3">Buy</h1>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="slider-item " style="background-image:url(Image/Header/header-slider-2.png);">
                        <div class="overlay"></div>
                        <div class="container">
                            <div class="row no-gutters slider-text  align-items-center justify-content-center">
                                <div class="col-md-12 ftco-animate">
                                    <div class="text w-100 text-center">
                                        <h2 >Best Place for</h2>
                                        <h1 class="mb-3">SALE</h1>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="slider-item " style="background-image:url(Image/Header/header-slider-3.png);">
                        <div class="overlay"></div>
                        <div class="container">
                            <div class="row no-gutters slider-text  align-items-center justify-content-center">
                                <div class="col-md-12 ftco-animate">
                                    <div class="text w-100 text-center">
                                        <h2>Best Place for</h2>
                                        <h1 class="mb-3">Quality</h1>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Bottom Navigation-->

        <!-- Product Types -->
        <section>
            <div class="container my-5">
                <header class="mb-4">
                    <h2 style="color: #395144">Product Types</h2>
                </header>
                <div class="row">                        
                    <c:forEach var="productType" items="${requestScope.listProductTypes}">
                        <div class="col-lg-3 col-md-6 col-sm-6 d-flex">   
                            <a href="" style="width: 100%">    
                                <div class="card w-70 my-2 shadow-2-strong" style="background-color: #AA8B56">
                                    <img src="${productType.image}" style="min-height: 300px; max-height: 300px; width: 100%; object-fit: cover;"/>
                                    <div class="card-body d-flex flex-column">
                                        <h5 style="color: #F0EBCE" class="card-title">${productType.name}</h5>
                                    </div>
                                </div>
                            </a>
                        </div>            
                    </c:forEach>  
                </div>
            </div>
        </section>
        <!-- Product Types -->

        <!-- Trademarks -->
        <section>
            <div class="container my-5">
                <header class="mb-4">
                    <h2 style="color: #395144">Trademarks</h2>
                </header>
                <div class="row">                        
                    <c:forEach var="trademark" items="${requestScope.listTrademarks}">
                        <div class="col-lg-4 col-md-6 col-sm-6 d-flex">   
                            <a href="" style="width: 100%">    
                                <div class="card w-70 my-2 shadow-2-strong">
                                    <img src="${trademark.image}" style="margin-left: auto; margin-right: auto; min-height: 200px; max-height: 200px; width: 100%; object-fit: contain" class=""/>
                                    <div class="card-body d-flex flex-column" style="background-color: #AA8B56">
                                        <h5 style="color: #F0EBCE" class="card-title">${trademark.name}</h5>
                                    </div>
                                </div>
                            </a>
                        </div>            
                    </c:forEach>  
                </div>
            </div>
        </section>
        <!-- Trademarks -->

        <!-- Feature -->
        <section class="mt-5" style="background-color: #f5f5f5;">
            <div class="container text-dark pt-3">
                <header class="pt-4 pb-3">
                    <h3>Why choose us</h3>
                </header>

                <div class="row mb-4">
                    <div class="col-lg-4 col-md-6">
                        <figure class="d-flex align-items-center mb-4">
                            <span class="rounded-circle bg-white p-3 d-flex me-2 mb-2">
                                <i class="fas fa-camera-retro fa-2x fa-fw text-primary floating"></i>
                            </span>
                            <figcaption class="info">
                                <h6 class="title">Reasonable prices</h6>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit sed do eiusmor</p>
                            </figcaption>
                        </figure>
                        <!-- itemside // -->
                    </div>
                    <!-- col // -->
                    <div class="col-lg-4 col-md-6">
                        <figure class="d-flex align-items-center mb-4">
                            <span class="rounded-circle bg-white p-3 d-flex me-2 mb-2">
                                <i class="fas fa-star fa-2x fa-fw text-primary floating"></i>
                            </span>
                            <figcaption class="info">
                                <h6 class="title">Best quality</h6>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit sed do eiusmor</p>
                            </figcaption>
                        </figure>
                        <!-- itemside // -->
                    </div>
                    <!-- col // -->
                    <div class="col-lg-4 col-md-6">
                        <figure class="d-flex align-items-center mb-4">
                            <span class="rounded-circle bg-white p-3 d-flex me-2 mb-2">
                                <i class="fas fa-plane fa-2x fa-fw text-primary floating"></i>
                            </span>
                            <figcaption class="info">
                                <h6 class="title">Worldwide shipping</h6>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit sed do eiusmor</p>
                            </figcaption>
                        </figure>
                        <!-- itemside // -->
                    </div>
                    <!-- col // -->
                    <div class="col-lg-4 col-md-6">
                        <figure class="d-flex align-items-center mb-4">
                            <span class="rounded-circle bg-white p-3 d-flex me-2 mb-2">
                                <i class="fas fa-users fa-2x fa-fw text-primary floating"></i>
                            </span>
                            <figcaption class="info">
                                <h6 class="title">Customer satisfaction</h6>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit sed do eiusmor</p>
                            </figcaption>
                        </figure>
                        <!-- itemside // -->
                    </div>
                    <!-- col // -->
                    <div class="col-lg-4 col-md-6">
                        <figure class="d-flex align-items-center mb-4">
                            <span class="rounded-circle bg-white p-3 d-flex me-2 mb-2">
                                <i class="fas fa-thumbs-up fa-2x fa-fw text-primary floating"></i>
                            </span>
                            <figcaption class="info">
                                <h6 class="title">Happy customers</h6>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit sed do eiusmor</p>
                            </figcaption>
                        </figure>
                        <!-- itemside // -->
                    </div>
                    <!-- col // -->
                    <div class="col-lg-4 col-md-6">
                        <figure class="d-flex align-items-center mb-4">
                            <span class="rounded-circle bg-white p-3 d-flex me-2 mb-2">
                                <i class="fas fa-box fa-2x fa-fw text-primary floating"></i>
                            </span>
                            <figcaption class="info">
                                <h6 class="title">Thousand items</h6>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit sed do eiusmor</p>
                            </figcaption>
                        </figure>
                        <!-- itemside // -->
                    </div>
                    <!-- col // -->
                </div>
            </div>
            <!-- container end.// -->
        </section>
        <!-- Feature -->

        <!-- Blog -->
        <section class="mt-5 mb-4">
            <div class="container text-dark">
                <header class="mb-4">
                    <h3>Blog posts</h3>
                </header>

                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <article>
                            <a href="#" class="img-fluid">
                                <img class="rounded w-100" src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/posts/1.webp" style="object-fit: cover;" height="160" />
                            </a>
                            <div class="mt-2 text-muted small d-block mb-1">
                                <span>
                                    <i class="fa fa-calendar-alt fa-sm"></i>
                                    23.12.2022
                                </span>
                                <a href="#"><h6 class="text-dark">How to promote brands</h6></a>
                                <p>When you enter into any new area of science, you almost reach</p>
                            </div>
                        </article>
                    </div>
                    <!-- col.// -->
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <article>
                            <a href="#" class="img-fluid">
                                <img class="rounded w-100" src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/posts/2.webp" style="object-fit: cover;" height="160" />
                            </a>
                            <div class="mt-2 text-muted small d-block mb-1">
                                <span>
                                    <i class="fa fa-calendar-alt fa-sm"></i>
                                    13.12.2022
                                </span>
                                <a href="#"><h6 class="text-dark">How we handle shipping</h6></a>
                                <p>When you enter into any new area of science, you almost reach</p>
                            </div>
                        </article>
                    </div>
                    <!-- col.// -->
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <article>
                            <a href="#" class="img-fluid">
                                <img class="rounded w-100" src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/posts/3.webp" style="object-fit: cover;" height="160" />
                            </a>
                            <div class="mt-2 text-muted small d-block mb-1">
                                <span>
                                    <i class="fa fa-calendar-alt fa-sm"></i>
                                    25.11.2022
                                </span>
                                <a href="#"><h6 class="text-dark">How to promote brands</h6></a>
                                <p>When you enter into any new area of science, you almost reach</p>
                            </div>
                        </article>
                    </div>
                    <!-- col.// -->
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <article>
                            <a href="#" class="img-fluid">
                                <img class="rounded w-100" src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/posts/4.webp" style="object-fit: cover;" height="160" />
                            </a>
                            <div class="mt-2 text-muted small d-block mb-1">
                                <span>
                                    <i class="fa fa-calendar-alt fa-sm"></i>
                                    03.09.2022
                                </span>
                                <a href="#"><h6 class="text-dark">Success story of sellers</h6></a>
                                <p>When you enter into any new area of science, you almost reach</p>
                            </div>
                        </article>
                    </div>
                </div>
            </div>
        </section>
        <!-- Blog -->

        <!-- Footer -->
        <footer class="text-center text-lg-start text-muted mt-3" style="background-color: #f5f5f5;">
            <!-- Section: Links  -->
            <section class="">
                <div class="container text-center text-md-start pt-4 pb-4">
                    <!-- Grid row -->
                    <div class="row mt-3">
                        <!-- Grid column -->
                        <div class="col-12 col-lg-3 col-sm-12 mb-2">
                            <!-- Content -->
                            <a href="https://mdbootstrap.com/" target="_blank" class="">
                                <img src="https://mdbootstrap.com/img/logo/mdb-transaprent-noshadows.png" height="35" />
                            </a>
                            <p class="mt-2 text-dark">
                                © 2023 Copyright: MDBootstrap.com
                            </p>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-6 col-sm-4 col-lg-2">
                            <!-- Links -->
                            <h6 class="text-uppercase text-dark fw-bold mb-2">
                                Store
                            </h6>
                            <ul class="list-unstyled mb-4">
                                <li><a class="text-muted" href="#">About us</a></li>
                                <li><a class="text-muted" href="#">Find store</a></li>
                                <li><a class="text-muted" href="#">Categories</a></li>
                                <li><a class="text-muted" href="#">Blogs</a></li>
                            </ul>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-6 col-sm-4 col-lg-2">
                            <!-- Links -->
                            <h6 class="text-uppercase text-dark fw-bold mb-2">
                                Information
                            </h6>
                            <ul class="list-unstyled mb-4">
                                <li><a class="text-muted" href="#">Help center</a></li>
                                <li><a class="text-muted" href="#">Money refund</a></li>
                                <li><a class="text-muted" href="#">Shipping info</a></li>
                                <li><a class="text-muted" href="#">Refunds</a></li>
                            </ul>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-6 col-sm-4 col-lg-2">
                            <!-- Links -->
                            <h6 class="text-uppercase text-dark fw-bold mb-2">
                                Support
                            </h6>
                            <ul class="list-unstyled mb-4">
                                <li><a class="text-muted" href="#">Help center</a></li>
                                <li><a class="text-muted" href="#">Documents</a></li>
                                <li><a class="text-muted" href="#">Account restore</a></li>
                                <li><a class="text-muted" href="#">My orders</a></li>
                            </ul>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-12 col-sm-12 col-lg-3">
                            <!-- Links -->
                            <h6 class="text-uppercase text-dark fw-bold mb-2">Newsletter</h6>
                            <p class="text-muted">Stay in touch with latest updates about our products and offers</p>
                            <div class="input-group mb-3">
                                <input type="email" class="form-control border" placeholder="Email" aria-label="Email" aria-describedby="button-addon2" />
                                <button class="btn btn-light border shadow-0" type="button" id="button-addon2" data-mdb-ripple-color="dark">
                                    Join
                                </button>
                            </div>
                        </div>
                        <!-- Grid column -->
                    </div>
                    <!-- Grid row -->
                </div>
            </section>
            <!-- Section: Links  -->

            <div class="">
                <div class="container">
                    <div class="d-flex justify-content-between py-4 border-top">
                        <!--- payment --->
                        <div>
                            <i class="fab fa-lg fa-cc-visa text-dark"></i>
                            <i class="fab fa-lg fa-cc-amex text-dark"></i>
                            <i class="fab fa-lg fa-cc-mastercard text-dark"></i>
                            <i class="fab fa-lg fa-cc-paypal text-dark"></i>
                        </div>
                        <!--- payment --->

                        <!--- language selector --->
                        <div class="dropdown dropup">
                            <a class="dropdown-toggle text-dark" href="#" id="Dropdown" role="button" data-mdb-toggle="dropdown" aria-expanded="false"> <i class="flag-united-kingdom flag m-0 me-1"></i>English </a>

                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="Dropdown">
                                <li>
                                    <a class="dropdown-item" href="#"><i class="flag-united-kingdom flag"></i>English <i class="fa fa-check text-success ms-2"></i></a>
                                </li>
                                <li><hr class="dropdown-divider" /></li>
                                <li>
                                    <a class="dropdown-item" href="#"><i class="flag-poland flag"></i>Polski</a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="#"><i class="flag-china flag"></i>中文</a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="#"><i class="flag-japan flag"></i>日本語</a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="#"><i class="flag-germany flag"></i>Deutsch</a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="#"><i class="flag-france flag"></i>Français</a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="#"><i class="flag-spain flag"></i>Español</a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="#"><i class="flag-russia flag"></i>Русский</a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="#"><i class="flag-portugal flag"></i>Português</a>
                                </li>
                            </ul>
                        </div>
                        <!--- language selector --->
                    </div>
                </div>
            </div>
        </footer>
        <!-- Footer -->

        <!-- MDB -->
        <script type="text/javascript" src="js/mdb.min.js"></script>


        <script src="js/jquery.min.js"></script>
        <script src="js/popper.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>

    </body>
</html>
