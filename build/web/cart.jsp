<%-- 
    Document   : detail
    Created on : Jun 23, 2022, 9:45:43 PM
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
            <!-- Product section-->
            <section class="py-5">
                <div class="container" style="min-height: 1000px">
                <c:choose>
                    <c:when test="${sessionScope.carts.size()==0||sessionScope.carts.size()==null}">
                        <h1>List Cart is Empty</h1>
                    </c:when>
                    <c:otherwise >
                        <h3>List Products</h3>
                        <table class="table table-striped table-hover">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Image</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Quantity</th>
                                    <th scope="col">Total Price</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${carts}" var="c">
                                <form action="update-quantity" method="get">
                                    <tr>
                                    <input type="hidden" name="productId" value="${c.value.product.id}">
                                    <th scope="row">${c.value.product.id}</th>
                                    <td><img src="${c.value.product.imageUrl}" alt="alt" width="50"/></td>
                                    <td>${c.value.product.name}</td>
                                    <td>${c.value.product.price}</td>
                                    <td><input onchange="this.form.submit()" type="number" name="quantity" value="${c.value.quantity}"></td>
                                    <td>${c.value.product.price*c.value.quantity}</td>
                                    <td><a href="delete-cart?productId=${c.value.product.id}" class="btn btn-outline-danger">Delete <i class="bi bi-trash"></i></a></td>
                                    </tr>
                                </form>
                            </c:forEach>
                            </tbody>
                        </table>
                        <c:if test="${mess != null}">
                            <h5>${mess}</h5>
                            
                        </c:if>
                        <h3>Total Amount: $${totalMoney}</h3>
                        <a href="checkout" class="btn btn-success w-25">Pay Now</a>
                    </c:otherwise>
                </c:choose>
            </div>
        </section>
        <!-- Footer-->
        <jsp:include page="components/footer.jsp"></jsp:include> 
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
