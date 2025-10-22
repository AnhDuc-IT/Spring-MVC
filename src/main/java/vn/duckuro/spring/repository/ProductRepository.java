package vn.duckuro.spring.repository;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.duckuro.spring.domain.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {
    ArrayList<Product> findByName(String res);
}
