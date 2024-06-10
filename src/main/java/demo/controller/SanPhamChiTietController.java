package demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import demo.dao.ProductDao;
import demo.entities.Products;

@Controller
public class SanPhamChiTietController {

    @Autowired
    private ProductDao productDao;

    @RequestMapping("chitiet")
    public String chitiet(@RequestParam("productId") Long productId, Model model) {
        Products product = productDao.findById(productId).orElse(null);
        model.addAttribute("product", product);
        return "chitiet";
    }
}
