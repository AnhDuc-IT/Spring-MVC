package vn.duckuro.spring.controller.client;

import java.util.List;

import javax.management.relation.Role;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.security.crypto.password.PasswordEncoder;
import vn.duckuro.spring.domain.Product;
import vn.duckuro.spring.domain.User;
import vn.duckuro.spring.service.ProductService;
import vn.duckuro.spring.service.UserService;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.validation.Valid;

import java.util.*;

import vn.duckuro.spring.service.UploadService;

@Controller
public class HomePageController {
    private final ProductService productService;
    private final UserService userService;
    private final UploadService uploadService;
    private PasswordEncoder passwordEncoder;

    public HomePageController(ProductService productService, UserService userService, UploadService uploadService,
            PasswordEncoder passwordEncoder) {
        this.productService = productService;
        this.userService = userService;
        this.passwordEncoder = passwordEncoder;
        this.uploadService = uploadService;
    }

    @GetMapping("/")
    public String getHomePage(Model model) {
        List<Product> products = this.productService.getAllProducts();
        model.addAttribute("products", products);
        return "client/homepage/show";
    }

    @GetMapping("/login")
    public String getLoginUser() {
        return "client/auth/login";
    }

    @GetMapping("/register")
    public String getRegesterUser(Model model) {
        model.addAttribute("newUser", new User());
        return "/client/auth/register";
    }

    @PostMapping(value = "/register")
    public String createUserPage(Model model, @ModelAttribute("newUser") @Valid User res,
            BindingResult newUserbindingResult,
            @RequestParam("duckuroFile") MultipartFile file) {
        List<FieldError> errors = newUserbindingResult.getFieldErrors();
        for (FieldError error : errors) {
            System.out.println(error.getField() + " - " + error.getDefaultMessage());
        }
        if (newUserbindingResult.hasErrors()) {
            return "/client/auth/register"; // không return redirect vì refresh lại => mất dữ liệu
        }
        String avatar = this.uploadService.handleSaveUploadFile(file, "avatar");
        String hashPassword = this.passwordEncoder.encode(res.getPassword());
        res.setAvatar(avatar);
        res.setPassword(hashPassword);
        res.setRole(this.userService.getRoleByName(res.getRole().getName()));
        System.out.println(res);
        this.userService.handleSaveUser(res);
        return "redirect:/login";
    }
}
