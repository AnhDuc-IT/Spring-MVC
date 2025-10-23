package vn.duckuro.spring.service;

import java.util.List;

import org.springframework.stereotype.Service;

import vn.duckuro.spring.domain.Product;
import vn.duckuro.spring.repository.ProductRepository;

@Service
public class ProductService {
    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public Product createProduct(Product result) {
        return this.productRepository.save(result);
    }

    public List<Product> getAllProducts() {
        return this.productRepository.findAll();
    }

    public void handleSaveProduct(Product product) {
        this.productRepository.save(product);
    }

    public Product getProductById(long id) {
        return this.productRepository.findById(id);
    }

    public void handleDelteProduct(long id) {
        this.productRepository.deleteById(id);
        ;
    }
}
