<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />

<!-- FontAwesome 6.2.0 CSS -->
    <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
    integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
    crossorigin="anonymous"
    referrerpolicy="no-referrer"
/>

<!-- (Optional) Use CSS or JS implementation -->
<script
    src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/js/all.min.js"
    integrity="sha512-naukR7I+Nk6gp7p5TMA4ycgfxaZBJ7MO5iC3Fp6ySQyKFHOGfpkSZkYVWV5R7u7cfAicxanwYQ5D1e17EfJcMA=="
    crossorigin="anonymous"
    referrerpolicy="no-referrer"
></script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <img src="OIG4.jpg" alt="Logo" width="100" height="100" class="d-inline-block align-text-top">       
            </a>
            <h3>BrandName</h3>
            
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Services</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Admin
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#">Quản lý sản phẩm</a></li>
                            <li><a class="dropdown-item" href="#">Quản lý khách hàng</a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li><a class="dropdown-item" href="#">Something else here</a></li>
                        </ul>
                    </li>
                </ul>
                <form class="d-flex" role="search">
                    <span class="navbar-text p-3" id="usernameText">Hello, ${tendangnhap }</span>
                    <a class="nav-link p-3" href="/dangky" id="registerLink">Đăng ký</a>
                    <a class="nav-link p-3" href="/dangnhap" id="loginLink">Đăng nhập</a>
                    <a class="nav-link p-3" href="/dangnhap/dangxuat" id="logoutLink">Đăng xuất</a>
                    <button class="btn btn-outline-success" type="submit">
                        <i class="fas fa-shopping-bag"></i>
                    </button>
                </form>
            </div>
        </div>
    </nav>


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>
</body>
</html>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz4fnFO9gybBogGzEyQ6U5hln4L2J5eonlA4rdsiTxm4aBiGVOJzBxyhZY" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-cuK5qCVi9+AiF4GD4y2HdhwG0LGUhv3tnwGIRkGBbVY4/VpCkF8A9z6XRg7EwM5D" crossorigin="anonymous"></script>

<script>
    window.onload = function() {
        var tendangnhap = "${ tendangnhap }";
        var usernameText = document.getElementById("usernameText");
        var registerLink = document.getElementById("registerLink");
        var loginLink = document.getElementById("loginLink");
        var logoutLink = document.getElementById("logoutLink");

        if (tendangnhap !== null && tendangnhap !== "") {
            // User is logged in
            usernameText.style.display = "inline-block"; // Show the username
            registerLink.style.display = "none"; // Hide the register link
            loginLink.style.display = "none"; // Hide the login link
            logoutLink.style.display = "inline-block"; // Show the logout link
        } else {
            // User is not logged in
            usernameText.style.display = "none"; // Hide the username
            registerLink.style.display = "inline-block"; // Show the register link
            loginLink.style.display = "inline-block"; // Show the login link
            logoutLink.style.display = "none"; // Hide the logout link
        }
    }
</script>


