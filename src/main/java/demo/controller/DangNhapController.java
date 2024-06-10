package demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import demo.services.SessionService;
import demo.entities.Accounts;
import demo.repository.UserRepository;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequestMapping("/dangnhap")
public class DangNhapController {
    @Autowired
    private SessionService ss;

    @Autowired
    private UserRepository userRepository;

    @GetMapping("")
    public String Giaodien() {
        return "dangnhap";
    }

    @PostMapping("/submit")
    public String submit(@RequestParam("tendangnhap") String tendangnhap, @RequestParam("matkhau") String matkhau, Model model) {
        Accounts user = userRepository.findByUsername(tendangnhap);
        if (user != null && user.getPassword().equals(matkhau)) {
            ss.setAttribute("tendangnhap", tendangnhap);
            if (user.isAdmin()) {
                return "redirect:/admin";
            } else {
                return "redirect:/index"; 
            }
        } else {
            model.addAttribute("message", "Tên đăng nhập hoặc mật khẩu chưa đúng!");
            return "dangnhap";
        }
    }


    @GetMapping("/dangxuat")
    public String dangxuat() {
        ss.removeAttribute("tendangnhap");
        return "redirect:/index";
    }

}
