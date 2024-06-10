<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách người dùng</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h2 class="mb-4">Danh sách người dùng</h2>
        <form action="" method="get" class="mb-4">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="Nhập từ khóa tìm kiếm..." name="keyword">
                <button type="submit" class="btn btn-primary">Tìm kiếm</button>
            </div>
        </form>
        <table class="table table-bordered table-hover">
            <thead class="table-dark">
                <tr>
                    <th scope="col">Tên đăng nhập</th>
                    <th scope="col">Họ và tên</th>
                    <th scope="col">Email</th>
                    <th scope="col">Ảnh</th>
                    <th scope="col">Trạng thái</th>
                    <th scope="col">Quản trị viên</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="account" items="${accounts}">
                    <tr>
                        <td>${account.username}</td>
                        <td>${account.fullname}</td>
                        <td>${account.email}</td>
                        <td><img src="${account.photo}" class="img-fluid" width="50"/></td>
                        <td>${account.activated ? "Kích hoạt" : "Chưa kích hoạt"}</td>
                        <td>${account.admin ? "Quản trị viên" : "Người dùng"}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    <!-- Bootstrap 5 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
