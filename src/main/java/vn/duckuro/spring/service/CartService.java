package vn.duckuro.spring.service;

import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;
import vn.duckuro.spring.domain.Cart;
import vn.duckuro.spring.domain.Product;
import vn.duckuro.spring.service.ProductService;

@Service
@SessionScope
public class CartService {
    private Cart cart;
    private final ProductService productService;

    public CartService(ProductService productService) {
        this.cart = new Cart();
        this.productService = productService;
    }

    public Cart getCart() {
        return cart;
    }

    public void addProduct(Long productId) {
        Product product = productService.getProductById(productId);
        if (product != null) {
            cart.addItem(product);
        }
    }

    public void updateProduct(Long productId, int quantity) {
        Product product = productService.getProductById(productId);
        if (product != null) {
            cart.updateItem(product, quantity);
        }
    }

    public void removeProduct(Long productId) {
        cart.removeItem(productId);
    }
}