package vn.duckuro.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.*;

import vn.duckuro.spring.domain.User;
import vn.duckuro.spring.service.UserService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {
    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/")
    public String getHomePage(Model model) {
        List<User> arr = this.userService.getAllUsers();
        System.out.println(arr);
        model.addAttribute("duckuro", "test");
        model.addAttribute("duc", "Hello from Spring Boot!");
        model.addAttribute("print", "Xin chao ban");
        model.addAttribute("duck", "PTIT");
        return "hello";
    }

    @RequestMapping(value = "admin/user/create")
    public String getCreateUser(Model model) {
        model.addAttribute("newUser", new User());
        return "/admin/user/create";
    }

    @RequestMapping(value = "/admin/user/create", method = RequestMethod.POST)
    public String createUserPage(Model model, @ModelAttribute("newUser") User res) {
        this.userService.handleSaveUser(res);
        return "redirect:/admin/user";
    }

    @RequestMapping("/admin/user")
    public String displayUsers(Model model, User user) {
        ArrayList<User> arr = this.userService.getAllUsers();
        model.addAttribute("users", arr);
        return "/admin/user/table-user";
    }

    @RequestMapping("/admin/user/update/{id}")
    public String updateUser(Model model, @PathVariable long id) {
        User currentUser = this.userService.getUserById(id);
        model.addAttribute("newUser", currentUser);
        return "admin/user/update";
    }

    @RequestMapping("admin/user/update")
    public String getUpdateUser(Model model, @ModelAttribute("newUser") User user) {
        User currentUser = this.userService.getUserById(user.getId());
        if (currentUser != null) {
            currentUser.setAddress(user.getAddress());
            currentUser.setFullName(user.getFullName());
            currentUser.setPhone(user.getPhone());
            this.userService.handleSaveUser(currentUser);
        }
        return "redirect:/admin/user";
    }

    @RequestMapping("admin/user/{id}")
    public String getDetailUser(Model model, @PathVariable long id) {
        User user = this.userService.getUserById(id);
        model.addAttribute("id", id);
        model.addAttribute("user", user);
        return "admin/user/show";
    }

    @GetMapping("admin/user/delete/{id}")
    public String getDeleteUser(Model model, @PathVariable long id) {
        model.addAttribute("id", id);
        User user = new User();
        user.setId(id);
        return "/admin/user/delete";
    }

    @PostMapping("/admin/user/delete")
    public String getDeleteUser(Model model, @ModelAttribute("newUser") User user) {
        this.userService.handleDeleteUser(user.getId());
        return "redirect:/admin/user";
    }

}
