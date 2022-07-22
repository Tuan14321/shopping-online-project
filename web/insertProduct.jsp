<%-- 
    Document   : insertProduct
    Created on : Jul 15, 2022, 6:05:14 AM
    Author     : tuann
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>The World Of Perfume</title>
    </head>
    <body>
        <form action="insert-product" method="post">
            <td>Product ID: <input type="text" name="productId"></td><br>
            <td>Product Name: <input type="text" name="name"></td><br>
            <td>Quantity: <input type="number" name="quantity"></td><br>
            <td>Price: <input type="text" name="price"></td><br>
            <td>Description: <input type="text" name="description"></td><br>
            <td>Image Link: <input type="text" name="imageUrl"></td><br>
            <td>Date: <input type="date" name="createdDate"></td><br>
            <td>Brand: <select name="categoryId">
                    <c:forEach items="${listCategories}" var="l">
                        <option value="${l.id}">${l.name}</option>
                    </c:forEach>
                </select></td><br>
                <c:if test="${mess != null}">
                <h5>${mess}</h5>
            </c:if>
            <td><input class="btn btn-outline-danger" type="submit" name="insert" value="Insert" ></td>
        </form>
    </body>
</html>
