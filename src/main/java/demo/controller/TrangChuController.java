package demo.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import demo.dao.CategoryDao;
import demo.entities.Categories;
import demo.controller.SanPhamController;

@Controller
@RequestMapping("/index")
public class TrangChuController {
    @Autowired
    CategoryDao categoryDao;

    @Autowired
    SanPhamController sanPhamController;
    
    @RequestMapping("")
    public String trangChu(
            Model model,
            @RequestParam("sort") Optional<String> sortParam,
            @RequestParam("page") Optional<Integer> page,
            @RequestParam("min") Optional<Integer> min,
            @RequestParam("max") Optional<Integer> max
    ) {
        for (Categories category : categoryDao.findAll()) {
            System.out.println(category.getName());
        }
        // Gọi phương thức sanpham để nạp danh sách sản phẩm vào model
        sanPhamController.sanpham(model, sortParam, page, min, max);
        return "index";
    }
}
