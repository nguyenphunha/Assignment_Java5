//package demo.service;
//
//
//import java.util.ArrayList;
//import java.util.List;
//
//import org.springframework.stereotype.Service;
//
//import demo.entities.Products;
//
//@Service
//public class ProductServiceImpl implements ProductService {
//    public static List<Products> ls = new ArrayList<>();
//
////    static {
////        ls.add(new Products(1, "Iphone1", "product1.png", 110000, "Mo tả", 2, new Date(), true, "Vietnam"));
////        ls.add(new Products(2, "Iphone2", "product2.png", 120000, "Mo tả", 3, new Date(), true, "Vietnam"));
////        ls.add(new Products(3, "Iphone3", "product3.png", 130000, "Mo tả", 1, new Date(), true, "Vietnam"));
////    }
//
//    @Override
//    public int add(Products p) {
//        ls.add(p);
//        return 1;
//    }
//
//    @Override
//    public int remove(int id) {
//        ls.removeIf(p -> p.getId() == id);
//        return 1;
//    }
//
//    @Override
//    public List<Products> getAll() {
//        return ls;
//    }
//
//    @Override
//    public Products findProductByID(int id) {
//        return ls.stream().filter(p -> p.getId() == id).findFirst().orElse(null);
//    }
//}
