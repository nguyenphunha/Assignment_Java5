<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sản phẩm</title>
    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
    <div class="row">
        <div class="col-sm-3">
            <select id="filter-select" onchange="filterData(this.value)" class="form-control">
                <option selected value="">Lọc dữ liệu</option>
                <option value="gia-asc">Giá từ thấp đến cao</option>
                <option value="gia-desc">Giá từ cao đến thấp</option>
            </select>
        </div>
        <div class="col-sm-3"></div>
    </div>

    <div class="row col-12">
        <c:forEach items="${dsSP.getContent()}" var="sp">
            <div class="card m-2" style="width: 18rem; height: 24rem;">
                <img src="../${sp.image}" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title" style="color: red">${sp.name}</h5>
                    <p class="card-text" style="font-size: x-large;">${sp.price}</p>
                    <a href="chitiet?productId=${sp.id}" style="color: blue; text-decoration: none;">Chi tiết sản phẩm</a>
                    <a href="/add-cart/${sp.id}" style="margin-top: 5px" class="btn btn-primary">Thêm vào giỏ</a>
                    <button class="btn btn-danger">Mua ngay</button>
                </div>
            </div>
        </c:forEach>
    </div>
    <div class="row col-6">
        <div class="btn-group" role="group" aria-label="Basic example">
            <button type="button" class="btn btn-primary m-4" onclick="paging(0)">Đầu</button>
            <button type="button" class="btn btn-primary m-4" onclick="paging(${dsSP.pageable.pageNumber-1 > 0 ? dsSP.pageable.pageNumber-1 : 0})">Trước</button>
            <button type="button" class="btn btn-primary m-4" onclick="paging(${(dsSP.pageable.pageNumber+1) > (dsSP.totalPages-1) ? dsSP.totalPages-1 : dsSP.pageable.pageNumber+1})">Kế</button>
            <button type="button" class="btn btn-primary m-4" onclick="paging(${dsSP.totalPages-1})">Cuối</button>
        </div>
    </div>
</body>
<script>
    var url = new URL(window.location.href);
    function filterData(value) {
        if (url.toString().includes("sort")) {
            url.searchParams.set('sort', value);
        } else {
            url.searchParams.append('sort', value);
        }
        window.location.href = url;
    }
    function paging(page) {
        if (url.toString().includes("page")) {
            url.searchParams.set('page', page);
        } else {
            url.searchParams.append('page', page);
        }
        window.location.href = url;
    }
</script>
</html>
