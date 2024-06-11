//package demo.controller;
//
//import demo.entities.CartItem;
//import demo.entities.Products;
//import demo.service.ProductService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//@Controller
//@RequestMapping("/shopping-cart")
//public class ShoppingCartController {
//
//    @Autowired
//    ProductService productService;
//
//    @GetMapping("views")
//    public String viewCart(Model model) {
//        model.addAttribute("CART_ITEMS", productService.getAll());
//        return "cart-item";
//    }
//
//    @GetMapping("add/{id}")
//    public String addCart(@PathVariable("id") Integer id) {
//        Products products = productService.findProductByID(id);
//        if (products != null) {
//        	CartItem item = new CartItem();
//            item.setProductId(products.getId());
//            item.setName(products.getName());
//            item.setPrice(products.getPrice());
//            item.setQty(1);
//            productService.add(item);
//            // Add logic to add product to cart
//        }
//        return "redirect:/shopping-cart/views";
//    }
//}
