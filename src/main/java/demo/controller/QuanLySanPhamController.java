package demo.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import demo.dao.CategoryDao;
import demo.dao.ProductDao;
import demo.entities.Products;

@Controller
@RequestMapping("/quanlysanpham")
public class QuanLySanPhamController {
	@Autowired
	CategoryDao categoryDao;
	@Autowired
	ProductDao productDao;

	@RequestMapping("")
	public String quanlysanpham(Model model, @RequestParam("sort") Optional<String> sortParam,
			@RequestParam("page") Optional<Integer> page, @RequestParam("min") Optional<Integer> min,
			@RequestParam("max") Optional<Integer> max) {
		int currentPage = page.orElse(0);
		int pageSize = 5; // Maximum 10 items per page

		Pageable pageable;
		if (sortParam.isPresent()) {
			String sortDirection = sortParam.get().equalsIgnoreCase("desc") ? "desc" : "asc";
			pageable = PageRequest.of(currentPage, pageSize,
					Sort.by(sortDirection.equals("asc") ? Sort.Direction.ASC : Sort.Direction.DESC, "name"));
		} else {
			pageable = PageRequest.of(currentPage, pageSize);
		}

		Page<Products> productPage = productDao.findAll(pageable);

		model.addAttribute("dsSP", productPage);
		return "quanlysanpham";
	}
	@GetMapping("/them")
	public String themsanpham() {
		return "themsanpham";
	}
	@PostMapping("/them")
	public String saveProduct(@Validated @ModelAttribute("product") Products newProduct, BindingResult bindingResult,
	                          @RequestParam("file") MultipartFile file, Model model) {
	    // Kiểm tra lỗi nhập liệu
	    if (bindingResult.hasErrors()) {
	        // Nếu có lỗi, trả về trang themsanpham để người dùng nhập lại
	        return "themsanpham";
	    }

	    // Lưu ảnh vào thư mục uploads
	    String fileName = file.getOriginalFilename();
	    try {
	        String uploadsDir = "uploads/"; // Thư mục lưu trữ ảnh
	        Path path = Paths.get(uploadsDir + fileName);
	        Files.write(path, file.getBytes());
	        newProduct.setImage(fileName); // Lưu tên ảnh vào đối tượng sản phẩm
	    } catch (IOException e) {
	        e.printStackTrace();
	    }

	    // Lưu thông tin sản phẩm vào cơ sở dữ liệu
	    productDao.save(newProduct);

	    // Cập nhật danh sách sản phẩm và chuyển hướng về trang quản lý sản phẩm
	    return "redirect:/quanlysanpham"; // Chuyển hướng đến trang quản lý sản phẩm
	}

}