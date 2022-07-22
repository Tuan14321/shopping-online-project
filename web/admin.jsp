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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css">
        <title>The World Of Perfume</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="assets/../css/admin.css" rel="stylesheet" />
        <script src="assets/../js/scripts.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap4.min.js"></script>
        <script>
            $(document).ready(function () {
                $('#dataTable').DataTable();
            });
        </script>
    </head>
    <body>
        <!-- Navigation-->
    <body class="fixed-nav sticky-footer bg-dark" id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
            <a class="navbar-brand" href="index.html">Welcome To Admin Page</a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tables">
                        <a class="nav-link" href="load-user">
                            <i class="fa fa-fw fa-table"></i>
                            <span class="nav-link-text">User Manage</span>
                        </a>
                    </li>
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
                        <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseComponents" data-parent="#exampleAccordion">
                            <i class="fa fa-fw fa-wrench"></i>
                            <span class="nav-link-text">Product Manage</span>
                        </a>
                        <ul class="sidenav-second-level collapse" id="collapseComponents">
                            <li>
                                <a href="insert-product">Insert Product</a>
                            </li>
                            <li>
                                <a href="product">Edit Product</a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Example Pages">
                        <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseExamplePages" data-parent="#exampleAccordion">
                            <i class="fa fa-fw fa-file"></i>
                            <span class="nav-link-text">Order Manage</span>
                        </a>
                        <ul class="sidenav-second-level collapse" id="collapseExamplePages">
                            <li>
                                <a href="login.html">Login Page</a>
                            </li>
                            <li>
                                <a href="register.html">Registration Page</a>
                            </li>
                            <li>
                                <a href="forgot-password.html">Forgot Password Page</a>
                            </li>
                            <li>
                                <a href="blank.html">Blank Page</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <ul class="navbar-nav sidenav-toggler">
                    <li class="nav-item">
                        <a class="nav-link text-center" id="sidenavToggler">
                            <i class="fa fa-fw fa-angle-left"></i>
                        </a>
                    </li>
                </ul>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <form class="form-inline my-2 my-lg-0 mr-lg-2">
                            <div class="input-group">
                                <input class="form-control" type="text" placeholder="Search for...">
                                <span class="input-group-append">
                                    <button class="btn btn-primary" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </div>
                        </form>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
                            <i class="fa fa-fw fa-sign-out"></i>Logout</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="content-wrapper">
            <!-- Example DataTables Card-->
            <div class="card mb-3">
                <div class="card-header">
                    <i class="fa fa-table"></i> Data Table Example</div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <c:choose>
                                <c:when test="${listAccount != null}"> 
                                    <thead>
                                        <tr>
                                            <th>UserName</th>
                                            <th>Password</th>
                                            <th>DisplayName</th>
                                            <th>Address</th>
                                            <th>Email</th>
                                            <th>Phone</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${listAccount}" var="a">
                                            <tr>
                                                <td>${a.userName}</td>
                                                <td>${a.password}</td>
                                                <td>${a.displayName}</td>
                                                <td>${a.address}</td>
                                                <td>${a.email}</td>
                                                <td>${a.phone}</td>
                                                <td>
                                                    <a href="delete-account?accountId=${a.id}" class="btn btn-outline-danger">Delete <i class="bi bi-trash"></i></a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </c:when>

                                <c:otherwise>
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Quantity</th>
                                            <th>Price</th>
                                            <th>Description</th>
                                            <th>ImageUrl</th>
                                            <th>Created_date</th>
                                            <th>Brand</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${listProduct}" var="p">
                                            <tr>
                                                <c:choose>
                                                    <c:when test="${productId == p.id}">
                                                <form action="update-product" method="post">
                                                    <input type="hidden" name="productId" value="${p.id}">
                                                    <td><input type="text" name="name" value="${p.name}"></td>
                                                    <td><input type="number" name="quantity" value="${p.quantity}"></td>
                                                    <td><input type="text" name="price" value="${p.price}"></td>
                                                    <td><input type="text" name="description" value="${p.description}"></td>
                                                    <td><input type="text" name="imageUrl" value="${p.imageUrl}"></td>
                                                    <td><input type="date" name="createdDate" value="${p.createdDate}"></td>
                                                    <td><select name="categoryId">
                                                            <c:forEach items="${listCategories}" var="l">
                                                                <option value="${l.id}">${l.name}</option>
                                                            </c:forEach>
                                                        </select></td>
                                                    <td><input class="btn btn-outline-danger" type="submit" name="update" value="update" ></td>
                                                </form>
                                            </c:when>
                                            <c:otherwise>
                                                <td>${p.name}</td>
                                                <td>${p.quantity}</td>
                                                <td>${p.price}$</td>
                                                <td>${p.description}</td>
                                                <td><img src="${p.imageUrl}" alt="alt" width="50"/></td>
                                                <td>${p.createdDate}</td>
                                                <c:forEach items="${listCategories}" var="l">
                                                    <c:if test="${p.categoryId == l.id}">
                                                        <td>${l.name}</td>
                                                    </c:if>
                                                </c:forEach>
                                                <td>
                                                    <a href="update-product?productId=${p.id}" class="btn btn-outline-danger">Update <i class="bi bi-pen"></i></a>
                                                    <a href="delete-product?productId=${p.id}" class="btn btn-outline-danger">Delete <i class="bi bi-trash"></i></a>
                                                </td>
                                            </c:otherwise>
                                        </c:choose>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </c:otherwise>
                            </c:choose>

                        </table>
                    </div>
                </div>
                <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
            </div>
        </div>
        <!-- /.container-fluid-->
        <!-- /.content-wrapper-->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fa fa-angle-up"></i>
        </a>
        <!-- Logout Modal-->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                        <a class="btn btn-primary" href="login">Logout</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<jsp:include page="components/footer.jsp"></jsp:include> 
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>

</body>
</html>

