package demo.controller;


import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import demo.dao.ProductDao;
import demo.entities.Products;



@Controller
public class ProductController {
	@Autowired
	ProductDao dao;
	@RequestMapping("/product/page")
	public String paginete(Model model,
			@RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		
		Page<Products> page = dao.findAll(pageable);
		
		model.addAttribute("page", page);
		
		return "product/page";
	}
	
	
}
