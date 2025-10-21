package vn.duckuro.spring.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import vn.duckuro.spring.domain.Product;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class ProductController {
    @GetMapping("/admin/product")
    public String getDashboard() {
        return "admin/product/show";
    }

    @PostMapping("/create")
    public String createProduct(
            @ModelAttribute("newProduct") Product product,
            @RequestParam("duckuroFile") MultipartFile file) {

        // TODO: xử lý lưu sản phẩm và ảnh
        // ví dụ: productService.save(product, file);

        return "redirect:/admin/product/list";
    }

}
