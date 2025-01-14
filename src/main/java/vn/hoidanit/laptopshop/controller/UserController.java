package vn.hoidanit.laptopshop.controller;

import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.service.UserService;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {
    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/")
    public String getHomepage() {
        return "wellcome";
    }

    @RequestMapping("/admin/users")
    public String getUserPage(Model model) {
        List<User> users = userService.getAllUsers();
        model.addAttribute("listUser", users);
        return "/admin/user/list";
    }

    @RequestMapping("/admin/user/{id}")
    public String getUserDetail(Model model, @PathVariable("id") long id) {
        User user = this.userService.getUserById(id);
        model.addAttribute("user", user);
        return "/admin/user/show"; // return view
    }

    @RequestMapping("/admin/users/create")
    public String getCreateUserPage(Model model) {
        model.addAttribute("newUser", new User());
        return "/admin/user/create";
    }

    @RequestMapping(value = "/admin/users/create", method = RequestMethod.POST)
    public String createUser(Model model, @ModelAttribute("newUser") User user) {
        this.userService.saveUser(user);
        List<User> users = this.userService.getAllUsers();
        model.addAttribute("listUser", users);
        return "redirect:/admin/users"; // return url
    }

    @RequestMapping(value = "/admin/users/update", method = RequestMethod.POST)
    public String updateUser(Model model, @ModelAttribute("userUpdate") User user) {
        User userCurrent = this.userService.getUserById(user.getId());
        if (userCurrent != null) {
            userCurrent.setAddress(user.getAddress());
            userCurrent.setEmail(user.getEmail());
            userCurrent.setFullName(user.getFullName());
            userCurrent.setPhone(user.getPhone());
            this.userService.saveUser(userCurrent);
        }
        return "redirect:/admin/users"; // return url
    }

    @RequestMapping("/admin/user/delete/{id}")
    public String getUserDelete(Model model, @PathVariable("id") long id) {
        // co the thuc hien xoa o day luon
        model.addAttribute("id", id);
        // co the truyen user va su dung path o jsp;
        return "/admin/user/delete"; // return view
    }

    @RequestMapping(value = "/admin/user/delete", method = RequestMethod.POST)
    public String getUserDelete(@RequestParam("id") String idString) {
        long id = Long.valueOf(idString);
        this.userService.deleteUser(id);
        return "redirect:/admin/users";
    }

}
