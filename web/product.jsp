<%-- 
    Document   : product
    Created on : May 30, 2022, 2:30:55 PM
    Author     : son22
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./assets/css/style.css">
        <link rel="stylesheet" href="./assets/fonts/themify-icons/themify-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <title>JSP Page</title>
    </head>
    <body style="height: 1000px">

        <%@include file="components/header.jsp" %>
        <div  class="container-fluid" style="margin-top: 65px">
            <div class="row">
                <div class="col-md-10">
                    <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
                        <div class="carousel-indicators">
                            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
                            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
                        </div>
                        <div class="carousel-inner">
                            <div class="carousel-item active" data-bs-interval="10000">
                                <img src="https://media.coolmate.me/cdn-cgi/image/width=1920,quality=100/uploads/May2022/34KIDSDAY---Website.jpg" class="d-block w-100" alt="...">

                            </div>
                            <div class="carousel-item" data-bs-interval="2000">
                                <img src="https://media.coolmate.me/cdn-cgi/image/width=1920,quality=100/uploads/May2022/Hero-banner-CleanVN_42.png" class="d-block w-100" alt="...">

                            </div>
                            <div class="carousel-item">
                                <img src="https://media.coolmate.me/cdn-cgi/image/width=1920,quality=100/uploads/May2022/Hero-Excool-Website.jpg" class="d-block w-100" alt="...">

                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="row">
                        <div id="wrapper" >
                            <div class="headline">
                                <h3>Sản phẩm mới nhất</h3>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="product-item">
                            <div class="product-top">

                                <div class="reviews-rating">
                                    <div class="reviews-rating__star is-active"></div> 
                                    <div class="reviews-rating__star is-active"></div>
                                    <div class="reviews-rating__star is-active"></div> 
                                    <div class="reviews-rating__star is-half"></div> 
                                    <div class="reviews-rating__star "></div> 
                                </div>
                                <a href="" class="product-thumb">
                                    <img src="https://media.coolmate.me/cdn-cgi/image/width=450,height=663,quality=100/uploads/April2022/polo-anti-trang_76.jpg" height="365px" alt="">

                                </a>
                                <a href="" class="buy-now" >Mua ngay</a><a href="" class="feedback" >Feedback</a>

                            </div>
                            <div class="product-infor">
                                <a href="" class="product-name">Áo polo nam công nghệ khử mùi Anti-Smell</a>
                                <div class="product-price">100.000đ  <del>200.000đ</del></div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-md-3">
                <form class="input-search">
                    <input type="text" name="keyword" value="" placeholder="Tìm kiếm sản phẩm..." class="filter-search__control">
                    <button type="submit" class="button-search"></button>
                </form>
            </div>

            <div class="col-md-2">
                <div class="dropdown">
                    <button class="dropdown-font dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                        Danh Mục
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-2">
                <div class="dropdown sort">
                    <button class="dropdown-font dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                        Sắp Xếp
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-5">

            </div>
        </div>
        <hr>
        <div  class="container-fluid">
            <div class="row">
                <div class="col-md-2 product-down">
                    <div class="row">
                        <div class="product-item">
                            <div class="product-top">

                                <div class="reviews-rating">
                                    <div class="reviews-rating__star is-active"></div> 
                                    <div class="reviews-rating__star is-active"></div>
                                    <div class="reviews-rating__star is-active"></div> 
                                    <div class="reviews-rating__star is-half"></div> 
                                    <div class="reviews-rating__star "></div> 
                                </div>
                                <a href="" class="product-thumb">
                                    <img src="https://media.coolmate.me/cdn-cgi/image/width=450,height=663,quality=100/uploads/April2022/polo-anti-trang_76.jpg" height="365px" alt="">

                                </a>
                                <a href="" class="buy-now" >Mua ngay</a><a href="" class="feedback" >Feedback</a>

                            </div>
                            <div class="product-infor">
                                <a href="" class="product-name">Áo polo nam công nghệ khử mùi Anti-Smell</a>
                                <div class="product-price">100.000đ  <del>200.000đ</del></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="row">
                        <div class="product-item">
                            <div class="product-top">

                                <div class="reviews-rating">
                                    <div class="reviews-rating__star is-active"></div> 
                                    <div class="reviews-rating__star is-active"></div>
                                    <div class="reviews-rating__star is-active"></div> 
                                    <div class="reviews-rating__star is-half"></div> 
                                    <div class="reviews-rating__star "></div> 
                                </div>
                                <a href="" class="product-thumb">
                                    <img src="https://media.coolmate.me/cdn-cgi/image/width=450,height=663,quality=100/uploads/April2022/polo-anti-trang_76.jpg" height="365px" alt="">

                                </a>
                                <a href="" class="buy-now" >Mua ngay</a><a href="" class="feedback" >Feedback</a>

                            </div>
                            <div class="product-infor">
                                <a href="" class="product-name">Áo polo nam công nghệ khử mùi Anti-Smell</a>
                                <div class="product-price">100.000đ  <del>200.000đ</del></div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-md-2 product-down">
                    <div class="row">
                        <div class="product-item">
                            <div class="product-top">

                                <div class="reviews-rating">
                                    <div class="reviews-rating__star is-active"></div> 
                                    <div class="reviews-rating__star is-active"></div>
                                    <div class="reviews-rating__star is-active"></div> 
                                    <div class="reviews-rating__star is-half"></div> 
                                    <div class="reviews-rating__star "></div> 
                                </div>
                                <a href="" class="product-thumb">
                                    <img src="https://media.coolmate.me/cdn-cgi/image/width=450,height=663,quality=100/uploads/April2022/polo-anti-trang_76.jpg" height="365px" alt="">

                                </a>
                                <a href="" class="buy-now" >Mua ngay</a><a href="" class="feedback" >Feedback</a>

                            </div>
                            <div class="product-infor">
                                <a href="" class="product-name">Áo polo nam công nghệ khử mùi Anti-Smell</a>
                                <div class="product-price">100.000đ  <del>200.000đ</del></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="row">
                        <div class="product-item">
                            <div class="product-top">

                                <div class="reviews-rating">
                                    <div class="reviews-rating__star is-active"></div> 
                                    <div class="reviews-rating__star is-active"></div>
                                    <div class="reviews-rating__star is-active"></div> 
                                    <div class="reviews-rating__star is-half"></div> 
                                    <div class="reviews-rating__star "></div> 
                                </div>
                                <a href="" class="product-thumb">
                                    <img src="https://media.coolmate.me/cdn-cgi/image/width=450,height=663,quality=100/uploads/April2022/polo-anti-trang_76.jpg" height="365px" alt="">

                                </a>
                                <a href="" class="buy-now" >Mua ngay</a><a href="" class="feedback" >Feedback</a>

                            </div>
                            <div class="product-infor">
                                <a href="" class="product-name">Áo polo nam công nghệ khử mùi Anti-Smell</a>
                                <div class="product-price">100.000đ  <del>200.000đ</del></div>
                            </div>
                        </div>
                    </div>

                </div>


                <div class="col-md-2 product-down">
                    <div class="row">
                        <div class="product-item">
                            <div class="product-top">

                                <div class="reviews-rating">
                                    <div class="reviews-rating__star is-active"></div> 
                                    <div class="reviews-rating__star is-active"></div>
                                    <div class="reviews-rating__star is-active"></div> 
                                    <div class="reviews-rating__star is-half"></div> 
                                    <div class="reviews-rating__star "></div> 
                                </div>
                                <a href="" class="product-thumb">
                                    <img src="https://media.coolmate.me/cdn-cgi/image/width=450,height=663,quality=100/uploads/April2022/polo-anti-trang_76.jpg" height="365px" alt="">

                                </a>
                                <a href="" class="buy-now" >Mua ngay</a><a href="" class="feedback" >Feedback</a>

                            </div>
                            <div class="product-infor">
                                <a href="" class="product-name">Áo polo nam công nghệ khử mùi Anti-Smell</a>
                                <div class="product-price">100.000đ  <del>200.000đ</del></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="row">
                        <div class="product-item">
                            <div class="product-top">

                                <div class="reviews-rating">
                                    <div class="reviews-rating__star is-active"></div> 
                                    <div class="reviews-rating__star is-active"></div>
                                    <div class="reviews-rating__star is-active"></div> 
                                    <div class="reviews-rating__star is-half"></div> 
                                    <div class="reviews-rating__star "></div> 
                                </div>
                                <a href="" class="product-thumb">
                                    <img src="https://media.coolmate.me/cdn-cgi/image/width=450,height=663,quality=100/uploads/April2022/polo-anti-trang_76.jpg" height="365px" alt="">

                                </a>
                                <a href="" class="buy-now" >Mua ngay</a><a href="" class="feedback" >Feedback</a>

                            </div>
                            <div class="product-infor">
                                <a href="" class="product-name">Áo polo nam công nghệ khử mùi Anti-Smell</a>
                                <div class="product-price">100.000đ  <del>200.000đ</del></div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-md-2 product-down">
                    <div class="row">
                        <div class="product-item">
                            <div class="product-top">

                                <div class="reviews-rating">
                                    <div class="reviews-rating__star is-active"></div> 
                                    <div class="reviews-rating__star is-active"></div>
                                    <div class="reviews-rating__star is-active"></div> 
                                    <div class="reviews-rating__star is-half"></div> 
                                    <div class="reviews-rating__star "></div> 
                                </div>
                                <a href="" class="product-thumb">
                                    <img src="https://media.coolmate.me/cdn-cgi/image/width=450,height=663,quality=100/uploads/April2022/polo-anti-trang_76.jpg" height="365px" alt="">

                                </a>
                                <a href="" class="buy-now" >Mua ngay</a><a href="" class="feedback" >Feedback</a>

                            </div>
                            <div class="product-infor">
                                <a href="" class="product-name">Áo polo nam công nghệ khử mùi Anti-Smell</a>
                                <div class="product-price">100.000đ  <del>200.000đ</del></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="row">
                        <div class="product-item">
                            <div class="product-top">

                                <div class="reviews-rating">
                                    <div class="reviews-rating__star is-active"></div> 
                                    <div class="reviews-rating__star is-active"></div>
                                    <div class="reviews-rating__star is-active"></div> 
                                    <div class="reviews-rating__star is-half"></div> 
                                    <div class="reviews-rating__star "></div> 
                                </div>
                                <a href="" class="product-thumb">
                                    <img src="https://media.coolmate.me/cdn-cgi/image/width=450,height=663,quality=100/uploads/April2022/polo-anti-trang_76.jpg" height="365px" alt="">

                                </a>
                                <a href="" class="buy-now" >Mua ngay</a><a href="" class="feedback" >Feedback</a>

                            </div>
                            <div class="product-infor">
                                <a href="" class="product-name">Áo polo nam công nghệ khử mùi Anti-Smell</a>
                                <div class="product-price">100.000đ  <del>200.000đ</del></div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <nav aria-label="..." class="pagination">
            <ul class="pagination">
                <li class="page-item disabled">
                    <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                </li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item active" aria-current="page">
                    <a class="page-link" href="#">2</a>
                </li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item">
                    <a class="page-link" href="#">Next</a>
                </li>
            </ul>
        </nav>
        <%@include file="components/footer.jsp" %>
        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d7448.27256631781!2d105.53745830000003!3d21.027232300000005!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1svi!2s!4v1653919437201!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </body>
</html>