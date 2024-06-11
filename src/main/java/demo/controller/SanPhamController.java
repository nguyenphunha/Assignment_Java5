package demo.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import demo.dao.CategoryDao;
import demo.dao.ProductDao;
import demo.entities.Products;

@Controller
@RequestMapping("/sanpham")
public class SanPhamController {
    @Autowired
    CategoryDao categoryDao;
    @Autowired
    ProductDao productDao;
    
    @RequestMapping("")
    public String sanpham(
            Model model,
            @RequestParam("sort") Optional<String> sortParam,
            @RequestParam("page") Optional<Integer> page,
            @RequestParam("min") Optional<Integer> min,
            @RequestParam("max") Optional<Integer> max
    ) {
        // Phân trang
        Pageable pageable = PageRequest.of(page.orElse(0), 4);
        // Mặc định lấy dữ liệu không sắp xếp
        Page<Products> dsSP = productDao.findAll(pageable);

        if (sortParam.isPresent()) { // Nếu người dùng chọn lọc dữ liệu
            // Mặc định sắp xếp giá tăng dần
            Sort sort = Sort.by(Sort.Direction.ASC, "price");
            if (sortParam.get().equals("gia-desc")) {
                // Nếu biến sortParam = desc => sắp xếp giảm dần
                sort = Sort.by(Sort.Direction.DESC, "price");
            }
            // Lấy dữ liệu có sắp xếp
            pageable = PageRequest.of(page.orElse(0), 4, sort);
            dsSP = productDao.findAll(pageable);
        }

        model.addAttribute("dsSP", dsSP);
        model.addAttribute("currentSort", sortParam.orElse("gia-asc"));
        model.addAttribute("currentPage", page.orElse(0));
        return "sanpham";
    }
    
    
    
}
