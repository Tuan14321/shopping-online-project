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
        <title>Simple Sidebar - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <jsp:include page="components/navBar.jsp"></jsp:include>

            <div class="row container">
                <div class="p-3 py-5 container col-md-8">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <h4 class="text-right">Profile Settings</h4>
                    </div>
                    <div class="row mt-3">
                        <form action="edit-profile" method="post">
                            <input type="hidden" value="${account.getId()}" name="accountId">
                        <div class="col-md-12"><label class="labels">UserName</label><input type="text" class="form-control" name="username" value="${account.getUserName()}"></div>
                        <div class="col-md-12"><label class="labels">DisplayName</label><input type="text" class="form-control" name="displayname" value="${account.getDisplayName()}"></div>
                        <div class="col-md-12"><label class="labels">Address</label><input type="text" class="form-control" name="address" value="${account.getAddress()}"></div>
                        <div class="col-md-12"><label class="labels">Email</label><input type="text" class="form-control" name="email" value="${account.getEmail()}"></div>
                        <div class="col-md-12"><label class="labels">Phone</label><input type="text" class="form-control" name="phone" value="${account.getPhone()}"></div>
                        <input type="submit" value="Edit Profile"class="mt-3 text-center btn btn-outline-info "/>
                    </form>
                </div>

            </div>
            <div class="p-3 py-5 container col-md-4">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="text-right">Change Password</h4>
                </div>
                <div class="row mt-3">
                    <form action="changepassword" method="post">
                        <input type="hidden" value="${account.getId()}" name="accountId">
                        <div class="col-md-12"><label class="labels">Old Password</label><input type="password" name="opass"class="form-control"></div>
                        <div class="col-md-12"><label class="labels">New Password</label><input type="password" name="npass"class="form-control"></div>
                        <div class="col-md-12"><label class="labels">Confirm New Password</label><input type="password" name="cfnpass"class="form-control"></div>
                        <h4 style="text-danger">${mess}</h4>
                        <input type="submit" value="Change Password"class="mt-3 text-center btn btn-outline-primary "/>
                    </form>
                </div>
            </div>


            <!-- Bootstrap core JS-->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
            <!-- Core theme JS-->
            <script src="js/scripts.js"></script>
    </body>
</html>

