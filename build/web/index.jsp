<%-- 
    Document   : index.jsp
    Created on : Jun 6, 2022, 2:05:27 PM
    Author     : tuann
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>The World Of Perfume</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <!-- Navigation-->
        <jsp:include page="components/navBar.jsp"></jsp:include> 

            <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active ">
                        <img style="height: 500px; width: 100% " src="https://img.freepik.com/premium-vector/cosmetic-banner-ads-with-flying-chiffon-feathers_281653-1342.jpg?w=2000" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img style="height: 500px; width: 100%" src="https://thumbs.dreamstime.com/b/different-perfume-bottles-sampler-pink-floral-background-perfumery-collection-cosmetics-banner-bottle-light-selective-132169480.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img style="height: 500px; width: 100%" src="http://theperfumestore.vn/wp-content/uploads/2021/02/perfumes-banner-lanc.jpg" class="d-block w-100" alt="...">
                    </div>

                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
            <!-- Section-->
            <section class="py-5">
                <div class="container px-4 px-lg-5 mt-5">
                    <div class="row">
                        <div class="col-md-3 mb-sm-5">
                            <h3>Brand</h3>
                            <ul class="list-group">
                            <c:forEach items="${listCategories}" var="c">
                                <li class="list-group-item"><a href="filter-category?categoryId=${c.id}" style="text-decoration: none">${c.name}</a></li>
                                </c:forEach>
                        </ul>
                    </div>
                    <div class="col-md-9">  
                        <h3>Products</h3>
                        <c:choose>
                            <c:when test="${listProducts == null || listProducts.size()==0}">
                                <h3 class="text-danger">No products found</h3>
                            </c:when>
                            <c:otherwise>
                                <c:if test="${index == 1}">
                                    <nav aria-label="Page navigation example" class="d-flex justify-content-center">
                                        <ul class="pagination">
                                            <li class="page-item"><a class="page-link" href="home?page=${page-1}">Previous</a></li>
                                                <c:forEach begin="1" end="${totalPage}" var="i">
                                                <li class="page-item ${i==page?"active":""}"><a class="page-link" href="home?page=${i}">${i}</a></li>
                                                </c:forEach>      
                                            <li class="page-item"><a class="page-link" href="home?page=${page+1}">Next</a></li>
                                        </ul>
                                    </nav>
                                </c:if>
                                <c:if test="${index == 2}">
                                    <nav aria-label="Page navigation example" class="d-flex justify-content-center">
                                        <ul class="pagination">
                                            <li class="page-item"><a class="page-link" href="filter-category?page=${page-1}&categoryId=${categoryId}">Previous</a></li>
                                                <c:forEach begin="1" end="${totalPage}" var="i">
                                                <li class="page-item ${i==page?"active":""}"><a class="page-link" href="filter-category?page=${i}&categoryId=${categoryId}">${i}</a></li>
                                                </c:forEach>      
                                            <li class="page-item"><a class="page-link" href="filter-category?page=${page+1}&categoryId=${categoryId}">Next</a></li>
                                        </ul>
                                    </nav>
                                </c:if>
                                <c:if test="${index == 3}">
                                    <nav aria-label="Page navigation example" class="d-flex justify-content-center">
                                        <ul class="pagination">
                                            <li class="page-item"><a class="page-link" href="search?page=${page-1}&keyword=${keyword}">Previous</a></li>
                                                <c:forEach begin="1" end="${totalPage}" var="i">
                                                <li class="page-item ${i==page?"active":""}"><a class="page-link" href="search?page=${i}&keyword=${keyword}">${i}</a></li>
                                                </c:forEach>      
                                            <li class="page-item"><a class="page-link" href="search?page=${page+1}&keyword=${keyword}">Next</a></li>
                                        </ul>
                                    </nav>
                                </c:if>
                            </c:otherwise>
                        </c:choose>
                        <c:if test="${index == 1}">
                            <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 justify-content-center">
                                <c:forEach items="${listProducts}" var="p">
                                    <div class="col mb-5">
                                        <div class="card h-100">
                                            <!-- Sale badge-->
                                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                                            <!-- Product image-->
                                            <a href="detail?productId=${p.id}"><img class="card-img-top" src="${p.imageUrl}" alt="..." /></a>
                                            <!-- Product details-->
                                            <div class="card-body p-4">
                                                <div class="text-center">
                                                    <!-- Product name-->
                                                    <h5 class="fw-bolder">${p.name}</h5>
                                                    <!-- Product reviews-->
                                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                                        <div class="bi-star-fill"></div>
                                                        <div class="bi-star-fill"></div>
                                                        <div class="bi-star-fill"></div>
                                                        <div class="bi-star-fill"></div>
                                                        <div class="bi-star-fill"></div>
                                                    </div>
                                                    <!-- Product price-->
                                                    <span class="text-muted text-decoration-line-through">$20.00</span>
                                                    $${p.price}
                                                </div>
                                            </div>
                                            <!-- Product actions-->
                                            <c:choose>
                                                <c:when test="${p.quantity > 0}"> 
                                                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                                        <div class="text-center"><a class="btn btn-outline-dark mt-auto" onclick="addToCartAsync(${p.id})">Add to cart</a></div>
                                                    </div>
                                                </c:when>
                                                <c:otherwise>
                                                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                                        <div class="text-center"><h5 class="btn btn-outline-danger mt-auto">Sold Out</h5></div>
                                                    </div>
                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </c:if>
                        <c:if test="${index == 2}">
                            <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 justify-content-center">
                                <c:forEach items="${listProduct}" var="p">
                                    <div class="col mb-5">
                                        <div class="card h-100">
                                            <!-- Sale badge-->
                                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                                            <!-- Product image-->
                                            <a href="detail?productId=${p.id}"><img class="card-img-top" src="${p.imageUrl}" alt="..." /></a>
                                            <!-- Product details-->
                                            <div class="card-body p-4">
                                                <div class="text-center">
                                                    <!-- Product name-->
                                                    <h5 class="fw-bolder">${p.name}</h5>
                                                    <!-- Product reviews-->
                                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                                        <div class="bi-star-fill"></div>
                                                        <div class="bi-star-fill"></div>
                                                        <div class="bi-star-fill"></div>
                                                        <div class="bi-star-fill"></div>
                                                        <div class="bi-star-fill"></div>
                                                    </div>
                                                    <!-- Product price-->
                                                    <span class="text-muted text-decoration-line-through">$20.00</span>
                                                    $${p.price}
                                                </div>
                                            </div>
                                            <!-- Product actions-->
                                            <c:choose>
                                                <c:when test="${p.quantity > 0}"> 
                                                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                                        <div class="text-center"><a class="btn btn-outline-dark mt-auto" onclick="addToCartAsync(${p.id})">Add to cart</a></div>
                                                    </div>
                                                </c:when>
                                                <c:otherwise>
                                                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                                        <div class="text-center"><h5 class="btn btn-outline-danger mt-auto">Sold Out</h5></div>
                                                    </div>
                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </c:if>
                        <c:if test="${index == 3}">
                            <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 justify-content-center">
                                <c:forEach items="${listProduct}" var="p">
                                    <div class="col mb-5">
                                        <div class="card h-100">
                                            <!-- Sale badge-->
                                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                                            <!-- Product image-->
                                            <a href="detail?productId=${p.id}"><img class="card-img-top" src="${p.imageUrl}" alt="..." /></a>
                                            <!-- Product details-->
                                            <div class="card-body p-4">
                                                <div class="text-center">
                                                    <!-- Product name-->
                                                    <h5 class="fw-bolder">${p.name}</h5>
                                                    <!-- Product reviews-->
                                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                                        <div class="bi-star-fill"></div>
                                                        <div class="bi-star-fill"></div>
                                                        <div class="bi-star-fill"></div>
                                                        <div class="bi-star-fill"></div>
                                                        <div class="bi-star-fill"></div>
                                                    </div>
                                                    <!-- Product price-->
                                                    <span class="text-muted text-decoration-line-through">$20.00</span>
                                                    $${p.price}
                                                </div>
                                            </div>
                                            <!-- Product actions-->
                                            <c:choose>
                                                <c:when test="${p.quantity > 0}"> 
                                                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                                        <div class="text-center"><a class="btn btn-outline-dark mt-auto" onclick="addToCartAsync(${p.id})">Add to cart</a></div>
                                                    </div>
                                                </c:when>
                                                <c:otherwise>
                                                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                                        <div class="text-center"><h5 class="btn btn-outline-danger mt-auto">Sold Out</h5></div>
                                                    </div>
                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </c:if>

                    </div>
                </div>
            </div>

        </section>
        <!-- Footer-->
        <jsp:include page="components/footer.jsp"></jsp:include> 
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
        <script>
                                                            function addToCartAsync(productId) {
                                                                axios.get('add-to-cart-async', {
                                                                    params: {
                                                                        productId: productId
                                                                    }
                                                                }).then((respone) => {
                                                                    document.getElementById("cart-number").innerHTML = respone.data;
                                                                })
                                                            }
        </script>
    </body>
</html>

