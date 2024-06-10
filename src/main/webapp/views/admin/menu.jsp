<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha384-k6RqeWeci5ZR/Lv4MR0sA0FfDOMxUL0BzP4sYcp3Lt0tV4Y5bXRR7BXEypQ6b6F1" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="/index">
                <img src="OIG4.jpg" alt="Logo" width="100" height="100" class="d-inline-block align-text-top">       
            </a>
            <h3>BrandName</h3>
            
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="/sanpham">Quản lý sản phẩm</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Quản lý loại</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Quản lý hãng</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/users">Quản lý khách hàng</a>
                    </li>
                </ul>
                <form class="d-flex" role="search">
                    <span class="navbar-text p-3" id="usernameText">Admin, ${tendangnhap }</span>
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
            usernameText.style.display = "inline-block"; 
            registerLink.style.display = "none"; 
            loginLink.style.display = "none";
            logoutLink.style.display = "inline-block"; 
        } else {
            usernameText.style.display = "none"; 
            registerLink.style.display = "inline-block";
            loginLink.style.display = "inline-block";
            logoutLink.style.display = "none";
        }
    }
</script>

