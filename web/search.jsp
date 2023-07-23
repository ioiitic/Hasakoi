<%-- 
    Document   : search
    Created on : Mar 19, 2023, 4:33:07 AM
    Author     : Dell
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                    <div class="order-lg-last col-lg-4 d-flex justify-content-center">
                        <div class="d-flex float-end align-items-center">
                            <a style="background-color: #4E6C50!important" href="" class="me-1 border rounded py-1 px-3 nav-link d-flex align-items-center" target="_blank"> <i style=" color:white;" class="fas fa-user-alt m-1 me-md-2"></i> <p style=" color:white;" class="d-none d-md-block mb-0">Sign in</p> </a>
                            <a style="background-color: #4E6C50!important" href="" class="me-1 border rounded py-1 px-3 nav-link d-flex align-items-center" target="_blank"> <i style=" color:white;" class="fas fa-heart m-1 me-md-2"></i> <p style=" color:white;" class="d-none d-md-block mb-0">Wishlist</p> </a>
                            <a style="background-color: #4E6C50!important" href="" class="border rounded py-1 px-3 nav-link d-flex align-items-center" target="_blank"> <i style=" color:white;" class="fas fa-shopping-cart m-1 me-md-2"></i> <p style=" color:white;" class="d-none d-md-block mb-0">My cart</p> </a>
                        </div>
                    </div>
                    <!-- Center elements -->

                    <!-- Right elements -->
                    <div class="col-lg-5 d-flex align-items-center">
                        <div class="input-group float-center">
                            <form action="main" method="post" id="searchproductform" class="form-outline align-items-center">
                                <input type="text" id="form1" class="form-control" name="search" value="${param.search}"/>
                                <label class="form-label align-items-center" for="form1">Search</label>
                            </form>
                            <button type="submit" form="searchproductform" class="btn btn-primary shadow-0" style="background-color: #AA8B56!important" name="action" value="search">
                                <i class="fa fa-search"></i>
                            </button>
                        </div>
                    </div>
                    <!-- Right elements -->
                </div>
            </div>
        </nav>
        <!--Main Navigation-->

        <!-- Main -->
        <section class="d-flex justify-content-center" style="background-color: whitesmoke">
            <div class="container m-5 row pr-0" style="background-color: white">  
                <!--Filter-->
                <div class="col-lg-2 border-right pl-0">
                    <div id="filter" class="bg-light">
                        <div class="border-bottom h4 text-uppercase" style="color: #395144"><b>Filter by</b></div>
                        <!--Price Filter-->
                        <div class="box border-bottom pb-2">
                            <div class="box-label d-flex align-items-center h5" style="color: #395144"><b>Price</b></div>
                            <div id="inner-box" class="row  d-flex justify-content-around m-0">
                                <form action="search" method="get" id="searchbyprice" class="p-0 form-outline align-items-center row mb-2">
                                    <input type="number" Placeholder="$ From" class="col-lg-5" name="pricefrom" value="${param.pricefrom}">
                                    <div class="col-lg-2 text-center">-</div>
                                    <input type="number" Placeholder="$ To" class="col-lg-5" name="priceto" value="${param.priceto}">
                                    <input type="hidden" name="search" value="${param.search}">
                                </form>
                                <button type="submit" form="searchbyprice" class="btn btn-primary shadow-0" style="background-color: #AA8B56!important">
                                    <i class="fa fa-search"></i>
                                </button>
                            </div>
                        </div>
                        <!--Price Filter-->
                        
                        <!--Product Types Filter-->
                        <div class="box border-bottom pb-2">
                            <div class="box-label h5" style="color: #395144"><b>Product Type</b></div>
                            <div id="inner-box" class="d-flex m-0">
                                <div class="filter-content mt-2 mb-2" style="width: 100%">
                                    <div class="list-group list-group-flush">
                                        <c:forEach var="productType" items="${requestScope.listProductTypes}">
                                            <a href="#" class="p-0 list-group-item">${productType.name}<span class="float-right badge badge-light round">142</span> </a>
                                        </c:forEach>
                                    </div> 
                                </div>
                            </div>
                        </div>
                        <!--Product Types Filter-->

                        <!--Trademark Filter-->
                        <div class="box border-bottom pb-2">
                            <div class="box-label h5" style="color: #395144"><b>Trademark</b></div>
                            <div id="inner-box" class="d-flex m-0">
                                <div class="filter-content mt-2 mb-2" style="width: 100%">
                                    <div class="list-group list-group-flush">
                                        <c:forEach var="trademark" items="${requestScope.listTrademarks}">
                                            <a href="#" class="p-0 list-group-item">${trademark.name}<span class="float-right badge badge-light round">142</span> </a>
                                        </c:forEach>
                                    </div> 
                                </div>
                            </div>
                        </div>
                        <!--Trademark Filter-->
                    </div>
                </div>
                <!--Filter-->

                <!--Product-->
                <div class="col-lg-10 border-right pl-0">
                    <div class="container">
                        <header class="mb-4">
                            <h2 style="color: #395144">Products</h2>
                        </header>
                        <div class="row">                        
                            <c:forEach var="product" items="${requestScope.listProducts}">
                                <div class="col-lg-3 col-md-6 col-sm-6 d-flex">
                                    <a href="" style="width: 100%">    
                                        <div class="card w-70 my-2 shadow-2-strong">
                                            <img src="${product.image}" style="margin-left: auto; margin-right: auto; min-height: 200px; max-height: 200px; width: 100%; object-fit: scale-down" class=""/>
                                            <div class="card-body d-flex flex-column" style="background-color: #AA8B56; min-height: 150px; max-height: 150px">
                                                <p style="color: #F0EBCE;" class="card-title"><b>$${product.price}</b></p>
                                                <p style="color: #F0EBCE; font-size: small" class="card-title">${product.name}</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </c:forEach>
                        </div>
                    </div> 
                    <nav class="d-flex justify-content-center" aria-label="Page navigation example">
                        <ul class="pagination">
                            <fmt:parseNumber var="p" integerOnly="true" value="1"></fmt:parseNumber>  
                            <fmt:parseNumber var="b" integerOnly="true" value="1"></fmt:parseNumber>  
                            <fmt:parseNumber var="nop" integerOnly="true" value="${requestScope.nop}"></fmt:parseNumber>  
                            <c:if test="${param.p != null}">
                                <fmt:parseNumber var="p" integerOnly="true" value="${param.p}"></fmt:parseNumber>  
                                <fmt:parseNumber var="b" integerOnly="true" value="${param.p}"></fmt:parseNumber>  
                            </c:if>
                            <li class="page-item ${(p == 1?"disabled":"")}">
                                <a class="page-link" 
                                   href="search?search=${param.search}&p=${p-1}"
                                   aria-label="Previous" aria-disabled="true">
                                    Previous
                                </a>
                            </li>
                            <c:if test="${p==1}">
                                <c:forEach var="i" begin="${b}" end="${Math.min(nop,(b + 2))}" >
                                    <li class="page-item <c:if test="${p == i}">active</c:if>">
                                        <a class="page-link" href="search?search=${param.search}&p=${i}">
                                            ${i}
                                        </a>
                                    </li>
                                </c:forEach>
                            </c:if>
                            <c:if test="${p!=1 && p!=nop}">
                                <c:forEach var="i" begin="${b-1}" end="${Math.min(nop,(b + 1))}" >
                                    <li class="page-item <c:if test="${p == i}">active</c:if>">
                                        <a class="page-link" href="search?search=${param.search}&p=${i}">
                                            ${i}
                                        </a>
                                    </li>
                                </c:forEach>
                            </c:if>
                            <c:if test="${p!=1 && p==nop}">
                                <c:forEach var="i" begin="${Math.max(b-2,1)}" end="${Math.min(nop,b)}" >
                                    <li class="page-item <c:if test="${p == i}">active</c:if>">
                                        <a class="page-link" href="search?search=${param.search}&p=${i}">
                                            ${i}
                                        </a>
                                    </li>
                                </c:forEach>
                            </c:if>
                            <li class="page-item ${(p == nop?"disabled":"")}">
                                <a class="page-link" 
                                   href="search?search=${param.search}&p=${p-1}"
                                   aria-label="Next" aria-disabled="true">
                                    Next
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
                <!--Product-->
            </div>
        </section>  
        <!-- Main -->


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
