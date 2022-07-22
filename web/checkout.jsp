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
                    <h1>Payment</h1>
                    <div class="row">
                        <div class="col-md-8" style="border: 1px solid #ccc; border-radius: 5px; padding: 1rem">
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
                                    <td>${c.value.quantity}</td>
                                    <td>${c.value.product.price*c.value.quantity}</td>
                                    </tr>
                                </form>
                            </c:forEach>
                            </tbody>
                        </table>
                        <h3>Total Amount: $${totalMoney}</h3>
                    </div>
                    <div class="col-md-4" style="border: 1px solid #ccc; border-radius: 5px; padding: 1rem">
                        <h3>Information Customer</h3>
                        <form action="checkout" method="post">
                            <div class="mb-3">
                                <label for="name" class="form-label">Name</label>
                                <input type="text" class="form-control" id="name" name="name" aria-describedby="emailHelp">
                            </div>
                            <div class="mb-3">
                                <label for="phone" class="form-label">Phone</label>
                                <input type="text" class="form-control" id="phone" name="phone" aria-describedby="emailHelp">
                            </div>                       
                            <div class="mb-3">
                                <label for="address" class="form-label">Address</label>
                                <input type="text" class="form-control" id="address" name="address" aria-describedby="emailHelp">
                            </div>                       
                            <div class="mb-3">
                                <label for="note" class="form-label">Note</label>
                                <textarea class="form-control" id="note" name="note" rows="3"></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary w-100">Submit</button>
                        </form>
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
    </body>
</html>
