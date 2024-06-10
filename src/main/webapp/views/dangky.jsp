<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng ký</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />

</head>
<body>
    <div class="container" style="width: 35%">
        <div class="card">
            <div class="card-header text-center">
                Đăng ký
            </div>
            <div class="card-body">
                <c:if test="${not empty message}">
                    <div class="alert alert-danger" role="alert">
                        ${message}
                    </div>
                    
                </c:if>
                <form action="/dangky/submit" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="username">Tên đăng nhập</label>
                        <input class="form-control" type="text" name="username" required>
                        <br>
                        <label for="password">Mật khẩu</label>
                        <input class="form-control" type="password" name="password" required>
                        <br>
                        <label for="fullname">Họ và tên</label>
                        <input class="form-control" type="text" name="fullname" required>
                        <br>
                        <label for="email">Email</label>
                        <input class="form-control" type="email" name="email" required>
                        <br>
                        <label for="photo">Ảnh đại diện</label>
                        <input class="form-control" type="file" name="photo" required>
                        <br>
                        <button class="btn btn-primary" style="margin-left: 80%;">Đăng ký</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>
</body>
</html>
