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
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />

<!-- Bootstrap CSS v5.2.1 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" />
</head>

<body>
	<div class="container">
		<div style="margin-top: 100px; overflow: hidden;">
			<div style="float: left; width: 350px;">
				<input class="form-control" type="text" name="" id=""
					placeholder="Tìm kiếm..."
					style="border-radius: 10px; width: 100%; height: 40px;">
			</div>
			<div style="float: left; width: 100px; margin-left: 10px;">
				<button class="btn btn-primary" style="width: 80px; height: 40px;">
					<i class="bi bi-search"></i> Tìm
				</button>
			</div>
			<div style="float: right;">
				<a href="/quanlysanpham/them" class="btn btn-primary"
					style="height: 40px;"> <i class="bi bi-plus-square"></i> Thêm
					mới
				</a>
			</div>
		</div>
		<table class="table table-striped" style="margin-top: 30px;">
			<thead>
				<tr class="table-primary">
					<th scope="col">Tên</th>
					<th scope="col">Ảnh</th>
					<th scope="col">Hãng</th>
					<th scope="col">Xuất xứ</th>
					<th scope="col">Loại</th>
					<th scope="col">Giá</th>
					<th scope="col">Mô tả</th>
					<th scope="col">Số lượng</th>
					<th scope="col">Ngày thêm</th>
					<th scope="col">Trạng thái</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<c:forEach items="${dsSP.content}" var="sp">
    <tr>
        <td>${sp.name}</td>
        <td><img src="${sp.image}" alt="Ảnh SP1" width="40"></td>
        <td>${ sp.brand.name }</td>
        <td>${ sp.origin }</td>
        <td>${ sp.category.name }</td>
        <td>${ sp.price }</td>
        <td>${ sp.description }</td>
        <td>${ sp.quantity }</td>
        <td>${ sp.createdDate }</td>
        <td>${ sp.availableStatus }</td>
        <td>
            <button class="form-control" style="width: 40px;">
                <i class="bi bi-check2-square"></i>
            </button>
        </td>
        <td>
            <button class="form-control" style="width: 40px;">
                <i class="bi bi-trash" style="color: inherit;"></i>
            </button>
        </td>
    </tr>
</c:forEach>

		</table>
		<div class="row">
			<div class="col-12 d-flex justify-content-center">
				<div class="btn-group" role="group" aria-label="Basic example"
					style="text-align: center">
					<button type="button"
						class="btn btn-primary form-control m-4 rounded-pill"
						onclick="paging(0)">
						<i class="bi bi-chevron-double-left"></i>
					</button>
					<button type="button"
						class="btn btn-primary form-control m-4 rounded-pill"
						onclick="paging(${ dsSP.pageable.pageNumber - 1 > 0 ? dsSP.pageable.pageNumber - 1 : 0 })">
						<i class="bi bi-chevron-left"></i>
					</button>
					<button type="button"
						class="btn btn-primary form-control m-4 rounded-pill"
						onclick="paging(${ (dsSP.pageable.pageNumber + 1) > (dsSP.totalPages - 1) ? dsSP.totalPages - 1 : dsSP.pageable.pageNumber + 1 })">
						<i class="bi bi-chevron-right"></i>
					</button>
					<button type="button"
						class="btn btn-primary form-control m-4 rounded-pill"
						onclick="paging(${ dsSP.totalPages - 1 })">
						<i class="bi bi-chevron-double-right"></i>
					</button>
				</div>
			</div>
		</div>

	</div>
	<script>
    var url = new URL(window.location.href);
    function filterData(value){
        if(url.toString().includes("sort")){
            url.searchParams.set('sort', value);
        }else {
            url.searchParams.append('sort', value);
        }
        window.location.href = url;
    }
    function paging(page){
        if(url.toString().includes("page")){
            url.searchParams.set('page', page);
        } else {
            url.searchParams.append('page', page);
        }
        window.location.href = url;
    }
    </script>

	<!-- Bootstrap JavaScript Libraries -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
		integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
		integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
		crossorigin="anonymous"></script>
</body>
</html>
