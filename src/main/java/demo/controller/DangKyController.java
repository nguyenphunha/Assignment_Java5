package demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import demo.entities.Accounts;
import demo.repository.UserRepository;
import demo.services.FileUploadService;

@Controller
@RequestMapping("/dangky")
public class DangKyController {
    
    @Autowired
    private UserRepository userRepository;
    
    @Autowired
    private FileUploadService fileUploadService;

    @GetMapping("")
    public String showRegistrationForm() {
        return "dangky";
    }

    @PostMapping("/submit")
    public String register(@RequestParam("username") String username,
                           @RequestParam("password") String password,
                           @RequestParam("fullname") String fullname,
                           @RequestParam("email") String email,
                           @RequestParam("photo") MultipartFile photo,
                           Model model) {
        if (userRepository.existsById(username)) {
            model.addAttribute("message", "Tên đăng nhập đã tồn tại!");
            return "dangky";
        }

        try {
            String photoPath = fileUploadService.uploadFile(photo);
            
            Accounts newAccount = new Accounts();
            newAccount.setUsername(username);
            newAccount.setPassword(password);
            newAccount.setFullname(fullname);
            newAccount.setEmail(email);
            newAccount.setPhoto(photoPath);
            newAccount.setActivated(true); 
            newAccount.setAdmin(false);

            model.addAttribute("thanhcong", "Đăng ký thành công!");
            
            userRepository.save(newAccount);
            return "redirect:/index";
            
        } catch (Exception e) {
            model.addAttribute("message", "File upload failed: " + e.getMessage());
            return "dangky";
        }
    }
}
