<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Chi tiết sản phẩm</title>
</head>
<body>
    <div class="container" style="margin-top: 15px; font-size: small;">
        <div class="row">
            <div class="col-sm-5">
                <div id="carouselExampleIndicators" class="carousel slide">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="${product.image}" style="height: 300px" class="d-block w-100" alt="Image 1">
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
            <div class="col-sm-7">
                <div class="card" style="border-color: orange;">
                    <div class="card-header" style="background-color: orange;">
                        <h5>${product.name}</h5>
                    </div>
                    <div class="card-body">
                        <p>Đã bán: 12.432</p>
                        <p>Giá: ${product.price} VND</p>
                        <input type="text" placeholder="số lượng" class="form-control" style="width: 30%; border-color: orange;">
                        <br>
                        <button class="btn btn-primary">Mua ngay</button>
                        <button class="btn btn-danger">Thêm vào giỏ <i class="fa-solid fa-cart-shopping"></i></button>
                    </div>
                </div>
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col-sm-5">
                <h5 style="color: orange;">Chi tiết sản phẩm</h5>
                <p>
				    Tên: ${product.name} <br>
				    Thương hiệu: ${brands.name} <br>
				    Xuất xứ: ${product.origin} <br>
				</p>

            </div>
            <div class="col-sm-4">
                <div class="card">
                    <div class="card-header">
                        Khuyến mãi
                        <br>
                        Giá khuyến mãi áp dụng từ ngày 25/5/2024
                    </div>
                    <div class="card-body">
                        Nhập mã VNPAYTGDD2 giảm ngay 1% (tối đa 200.000đ) khi thanh toán qua VNPAY-QR, áp dụng cho
                        đơn hàng từ 3 Triệu (Xem chi tiết tại đây)
                    </div>
                </div>
            </div>
            <div class="row">
                <h5 style="color: orange;">Thông tin sản phẩm</h5>
                <p>
                    Tai nghe Bluetooth chụp tai Marshall Major IV là sự kết hợp hoàn hảo giữa thiết kế và công
                    nghệ,
                    mang đến trải nghiệm âm nhạc đỉnh cao. Với phong cách cổ điển, chất lượng âm thanh tuyệt hảo
                    tai
                    nghe này hứa hẹn đem lại trải nghiệm âm nhạc hay nhất.
                </p>
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
