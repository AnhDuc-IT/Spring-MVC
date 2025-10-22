package vn.duckuro.spring.controller.admin;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import vn.duckuro.spring.domain.Product;
import vn.duckuro.spring.service.ProductService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class ProductController {
    private final ProductService productService;

    public ProductController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping("/admin/product")
    public String getProduct(Model model) {
        List<Product> arr = this.productService.getAllProducts();
        model.addAttribute("products", arr);
        return "admin/product/show";
    }

    @GetMapping("/admin/product/create")
    public String getCreateProduct(Model model) {
        model.addAttribute("newProduct", new Product());
        return "admin/product/create";
    }

    @PostMapping("/admin/product/create")
    public String postCreateProduct(@ModelAttribute("newProduct") Product product) {
        productService.createProduct(product);
        return "redirect:/admin/product";
    }

}
