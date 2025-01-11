package vn.hoidanit.laptopshop.controller;

import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.repository.UserRepository;
import vn.hoidanit.laptopshop.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.transaction.Transactional;

@Controller
public class UserController {
    private final UserService userService;
    private EntityManager entityManager;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/")
    public String getHomepage() {
        return "wellcome";
    }

    @RequestMapping("/admin/users")
    public String getUserPage(Model model) {
        model.addAttribute("newUser", new User());
        return "/admin/user/create";
    }

    // @Transactional
    @RequestMapping(value = "/admin/users/create", method = RequestMethod.POST)
    public User createUser(Model model, @ModelAttribute("newUser") User user) {
        // try {
        // this.userService.saveUser(user);

        // } catch (Exception e) {
        // throw new RuntimeException("Error creating user", e);
        // }
        User userCreated = this.userService.saveUser(user);
        System.out.println(userCreated);
        return userCreated;
    }

}
