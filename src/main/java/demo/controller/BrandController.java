package demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import demo.dao.BrandDao;
import demo.entities.Brands;


@Controller
public class BrandController {
	@Autowired
	BrandDao dao; // Tiêm BrandDao

    @RequestMapping("/brands/brand")
    public String index(Model model) {
        Brands item = new Brands(); // Tạo một đối tượng mới Brands
        model.addAttribute("item", item); // Thêm đối tượng mới vào model
        List<Brands> items = dao.findAll(); // Tìm tất cả Brands
        model.addAttribute("items", items); // Thêm tất cả Brands vào model
        return "brands/brand"; // Trả về view
    }

    @RequestMapping("/brands/edit/{id}")
    public String edit(Model model, @PathVariable("id") String id) {
        Brands item = dao.findById(id).get(); // Tìm Brand theo id
        model.addAttribute("item", item); // Thêm Brand tìm thấy vào model
        List<Brands> items = dao.findAll(); // Tìm tất cả Brands
        model.addAttribute("items", items); // Thêm tất cả brands vào model
        return "brands/brand"; // Trả về view
    }

    @PostMapping("/brands/create")
    public String create(Brands brand) {
        dao.save(brand);
        return "redirect:/brands/brand";
    }

    @PostMapping("/brands/update")
    public String update(Brands brand) {
        dao.save(brand);
        return "redirect:/brands/brand";
    }

    @RequestMapping("/brands/delete/{id}")
    public String delete(@PathVariable("id") String id) {
        dao.deleteById(id);
        return "redirect:/brands/brand";
    }
}
