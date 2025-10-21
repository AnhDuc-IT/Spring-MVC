package vn.duckuro.spring.controller.admin;

import org.eclipse.tags.shaded.org.apache.xpath.operations.Mod;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;
import vn.duckuro.spring.domain.Product;

@Controller
public class OrderController {
    @GetMapping("/admin/order")
    public String getDashboard() {
        return "admin/order/show";
    }

    @GetMapping("/admin/product/create")
    public String getCreateProduct(Model model) {
        model.addAttribute("newProduct", new Product());
        return "admin/product/create";
    }
}
