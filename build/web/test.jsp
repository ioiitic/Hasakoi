<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        crossorigin="anonymous">
    <title>KindaCode.com</title>
</head>

<body>

    <!-- Implement the Navbar -->
   <nav class="navbar sticky-top">
                <div class="container" >
                    <div class="row gy-3" style="width: 100%">
                        <!-- Left elements -->
                        <div class="col-lg-3">
                            <a href="http://localhost:8084/PRJ301_HasaKoiShop/">
                                <img src="Image/Header/header_logo.png" height="120"/>
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
                                        <input type="text" id="form1" class="form-control" name="search"/>
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

    <!-- Just some dummy content -->
    <div class="container">
        <div class="py-5">
            <h1>Sticky Navbar Example</h1>
            <p>Welcome to KindaCode.com</p>
        </div>

        <div class="py-5">
            <h1>Dummy Content #1</h1>
            <p>Welcome to KindaCode.com</p>
        </div>

        <div class="py-5">
            <h1>Dummy Content #2</h1>
            <p>Welcome to KindaCode.com</p>
        </div>

        <div class="py-5">
            <h1>Dummy Content #3</h1>
            <p>Welcome to KindaCode.com</p>
        </div>

        <div class="py-5">
            <h1>Dummy Content #4</h1>
            <p>Welcome to KindaCode.com</p>
        </div>

        <div class="py-5">
            <h1>Dummy Content #4</h1>
            <p>Welcome to KindaCode.com</p>
        </div>

        <div class="py-5">
            <h1>Dummy Content #4</h1>
            <p>Welcome to KindaCode.com</p>
        </div>

        <div class="py-5">
            <h1>Dummy Content #4</h1>
            <p>Welcome to KindaCode.com</p>
        </div>

        <div class="py-5">
            <h1>Dummy Content #4</h1>
            <p>Welcome to KindaCode.com</p>
        </div>

        <div class="py-5">
            <h1>Dummy Content #4</h1>
            <p>Welcome to KindaCode.com</p>
        </div>

        <div class="py-5">
            <h1>Dummy Content #4</h1>
            <p>Welcome to KindaCode.com</p>
        </div>

    </div>

    <!-- Bootstrap Javascript bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
</body>

</html>