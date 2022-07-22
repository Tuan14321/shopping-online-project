<%-- 
    Document   : register
    Created on : Jul 6, 2022, 12:47:24 PM
    Author     : tuann
--%>

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
        <div style="width: 40%; margin: auto; border: 1px solid #ccc; padding: 1rem;" class="mt-5">
            <h3>Login</h3>
            <form action="register" method="post">
                    <div class="form-floating mb-3">
                        <input class="form-control" id="username" name="username" type="text" placeholder="Enter Your User Name" />
                        <label for="inputEmail">User Name</label>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <div class="form-floating mb-3 mb-md-0">
                                <input class="form-control" id="password" name="password" type="password" placeholder="Create a password" />
                                <label for="inputPassword">Password</label>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-floating">
                                <input class="form-control" id="cfpass" type="password" name="cfpass" placeholder="Confirm Password" />
                                <label for="inputPasswordConfirm">Confirm Password</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-floating mb-3">
                        <input class="form-control" id="dName" type="text" name="dName" placeholder="Enter Your Display Name" />
                        <label for="inputDisplayName">Display Name</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input class="form-control" id="address" type="text" name="address" placeholder="Enter Your Address" />
                        <label for="inputAddress">Address</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input class="form-control" id="inputEmail" type="email" name="email" placeholder="name@example.com" />
                        <label for="inputEmail">Email address</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input class="form-control" id="phone" type="phone" name="phone" placeholder="Enter Your Phone" />
                        <label for="inputPhone">Phone</label>
                    </div>
                    <div class="mt-4 mb-0">
                        <div class="d-grid"><button class="btn btn-primary btn-block" type="submit">Create Account</button></div>
                    </div>
                </form>
                <div class="card-footer text-center py-3">
                    <div class="small"><a href="login">Have an account? Go to login</a></div>
                </div>
        </div>

        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>

