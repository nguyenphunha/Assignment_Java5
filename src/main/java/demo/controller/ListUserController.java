package demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import demo.entities.Accounts;
import demo.repository.UserRepository;

import java.util.List;

@Controller
public class ListUserController {

    @Autowired
    private UserRepository userRepository;

    @GetMapping("/users")
    public String listUsers(Model model, @RequestParam(required = false) String keyword) {
        List<Accounts> accounts;
        if (keyword != null && !keyword.isEmpty()) {
            // Perform search based on the keyword
            accounts = userRepository.findByUsernameContainingOrFullnameContainingOrEmailContaining(keyword, keyword, keyword);
            model.addAttribute("searchKeyword", keyword);
        } else {
            // Get all users if no keyword is provided
            accounts = userRepository.findAll();
        }
        model.addAttribute("accounts", accounts);
        return "listUsers";
    }
}
