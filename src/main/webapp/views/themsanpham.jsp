<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Prefix sử dụng JSTL -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
    <head>
        <title>Title</title>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
        />

        <!-- Bootstrap CSS v5.2.1 -->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous"
        />
    </head>

    <body>
        <div class="vh-100 d-flex justify-content-center align-items-center">
            <div class="card p-4" style="width: 800px;">               
                <form>
                    <div class="row" style="margin-bottom: 15px;">
                        <div class="form-group col-sm-6">
                            <label for="name">Tên sản phẩm</label>
                            <input class="form-control" type="text" id="productName" name="productName" required>
                        </div>
                        <div class="form-group col-sm-6">
                            <label for="image">Ảnh</label>
                            <input class="form-control" type="file" id="image" name="image" required>
                        </div>
                    </div>
                    <div class="row" style="margin-bottom: 15px;">
                        <div class="form-group col-sm-6">
                            <label for="brand">Hãng</label>
                            <select id="brand-select" class="form-control" onchange="filterData(this.value)">
                                <option selected value="">Chọn hãng</option>
                                <option value="brand1">Hãng 1</option>
                                <option value="brand2">Hãng 2</option>
                                <option value="brand3">Hãng 3</option>
                                <option value="brand4">Hãng 4</option>
                            </select>
                        </div>
                        <div class="form-group col-sm-6">
                            <label for="origin">Xuất sứ</label>
                            <input class="form-control" type="text" id="quantity" name="quantity" required>
                        </div>
                    </div>
                    <div class="row" style="margin-bottom: 15px;">
                        <div class="form-group col-sm-6">
                            <label for="categogy">Loại sản phẩm</label>
                            <select id="filter-select" class="form-control" onchange="filterData(this.value)">
                                <option selected value="">Chọn loại sản phẩm</option>
                                <option value="">Tai nghe có dây</option>
                                <option value="">Tai nghe không dây</option>
                                <option value="">In-ear Headphone</option>
                                <option value="">Earphone</option>
                            </select>
                        </div>
                        <div class="form-group col-sm-6">
                            <label for="price">Giá</label>
                            <input class="form-control" type="text" id="price" name="price" required>
                        </div>
                        
                    </div>
                    <div class="row" style="margin-bottom: 15px;">
                        <div class="form-group col-sm-6">
                            <label for="description">Mô tả</label>
                            <textarea class="form-control" style="height: 30px;" name="" id=""></textarea> 
                        </div>
                        <div class="form-group col-sm-6">
                            <label for="quantity">Số lượng</label>
                            <input class="form-control" type="number" id="quantity" name="quantity" required>
                        </div>
                    </div>
                    <div class="row" style="margin-bottom: 15px;">
                        <div class="form-group col-sm-6">
                            <label for="createdDate">Ngày thêm</label>
                            <input class="form-control" type="date" id="quantity" name="quantity" required>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary" style="float: right;">Lưu</button>
                </form>
            </div>
        </div>
        <!-- Bootstrap JavaScript Libraries -->
        <script
            src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
            integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
            crossorigin="anonymous"
        ></script>

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
            integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
            crossorigin="anonymous"
        ></script>
    </body>
</html>
