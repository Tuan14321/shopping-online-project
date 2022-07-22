<%-- 
    Document   : navBar
    Created on : Jun 28, 2022, 9:19:26 AM
    Author     : tuann
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="home">The World Of Pefume</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="home">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#!">List Category</a></li>
                                <li><hr class="dropdown-divider" /></li>
                                <c:forEach items="${listCategories}" var="c">
                                    <li><a class="dropdown-item" href="filter-category?categoryId=${c.id}">${c.name}</a></li>
                                    </c:forEach>
                            </ul>
                        </li>
                    </ul>
                    <form action="search" method="" class="d-flex mx-auto" role="search">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="keyword">
                        <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
                    <div class="d-flex my-2">
                        <a class="btn btn-outline-dark" href="carts">
                            <i class="bi-cart-fill me-1"></i>
                            Cart
                            <span id="cart-number" class="badge bg-dark text-white ms-1 rounded-pill">${sessionScope.carts.size()}</span>
                        </a>
                        <c:choose>
                            <c:when test="${sessionScope.account != null}">
                                <a href="user.jsp" class="btn btn-outline-primary ms-lg-2" >${sessionScope.account.displayName}</a>
                                <a href="logout" class="btn btn-outline-primary ms-lg-2" >Logut</a>
                            </c:when>
                            <c:otherwise>
                                <a href="login" class="btn btn-outline-primary ms-lg-2" >Login</a>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
        </nav>
    </body>
</html>
