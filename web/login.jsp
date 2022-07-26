<%-- 
    Document   : detail
    Created on : Jun 23, 2022, 9:45:43 PM
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
            <form action="login" method="post">
                <div class="mb-3">
                    <label for="username" class="form-label">Email address</label>
                    <input type="text" class="form-control" id="username" name="username" aria-describedby="emailHelp">
                    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" class="form-control" id="password" name="password">
                </div>
                <div class="mb-3 form-check">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="remember">
                    <label class="form-check-label" for="exampleCheck1">Remember me</label>
                </div>
                <h3 class="text-danger">${error}</h3>
                <button type="submit" class="d-flex btn btn-primary">Login</button>
                <div class="card-footer text-center py-3 mt-3">
                    <div class="small"><a href="register">Need an account? Sign up!</a></div>
                </div>
            </form>
        </div>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
