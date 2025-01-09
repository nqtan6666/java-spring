package vn.hoidanit.laptopshop.controller;

import org.springframework.web.bind.annotation.RestController;

import vn.hoidanit.laptopshop.service.UserService;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {
    private UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/")
    public String getHomepage() {
        return "wellcome";
    }

    @RequestMapping("/admin/users")
    public String getUser(Model model) {
        String test = this.userService.handleHello();
        model.addAttribute("data", test);
        model.addAttribute("tannq", "hjghfdjghdf");
        return "/admin/user/create";
    }

}
