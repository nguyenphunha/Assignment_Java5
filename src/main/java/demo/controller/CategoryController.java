package demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import demo.dao.CategoryDao;
import demo.entities.Categories;

@Controller
public class CategoryController {
    @Autowired
    CategoryDao dao; // Tiêm CategoryDao

    @RequestMapping("/categories/category")
    public String index(Model model) {
        Categories item = new Categories(); // Tạo một đối tượng mới Categories
        model.addAttribute("item", item); // Thêm đối tượng mới vào model
        List<Categories> items = dao.findAll(); // Tìm tất cả Categories
        model.addAttribute("items", items); // Thêm tất cả Categories vào model
        return "categories/category"; // Trả về view
    }

    @RequestMapping("/categories/edit/{id}")
    public String edit(Model model, @PathVariable("id") Integer id) {
        Categories item = dao.findById(id).get(); // Tìm Category theo id
        model.addAttribute("item", item); // Thêm Category tìm thấy vào model
        List<Categories> items = dao.findAll(); // Tìm tất cả Categories
        model.addAttribute("items", items); // Thêm tất cả Categories vào model
        return "categories/category"; // Trả về view
    }

    @PostMapping("/categories/create")
    public String create(Categories category) {
        dao.save(category);
        return "redirect:/categories/category";
    }

    @PostMapping("/categories/update")
    public String update(Categories category) {
        dao.save(category);
        return "redirect:/categories/category";
    }

    @RequestMapping("/categories/delete/{id}")
    public String delete(@PathVariable("id") Integer id) {
        dao.deleteById(id);
        return "redirect:/categories/category";
    }
}
