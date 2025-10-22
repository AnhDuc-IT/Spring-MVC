package vn.duckuro.spring.service;

import org.springframework.boot.autoconfigure.kafka.KafkaProperties.Producer;
import org.springframework.stereotype.Service;
import java.util.*;

import vn.duckuro.spring.domain.Product;
import vn.duckuro.spring.domain.Role;
import vn.duckuro.spring.domain.User;
import vn.duckuro.spring.repository.ProductRepository;
import vn.duckuro.spring.repository.RoleRepository;
import vn.duckuro.spring.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;
    private final ProductRepository productRepository;

    public UserService(UserRepository userRepository, RoleRepository roleRepository,
            ProductRepository productRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
        this.productRepository = productRepository;
    }

    public String handleHello() {
        return "Hello from Service";
    }

    public ArrayList<User> getAllUsers() {
        return (ArrayList<User>) this.userRepository.findAll();
    }

    public ArrayList<User> getAllUsersByEmail(String email) {
        return this.userRepository.findByEmail(email);
    }

    public User getUserById(long id) {
        return this.userRepository.findById(id);
    }

    public User handleSaveUser(User user) {
        User res = this.userRepository.save(user);
        return res;
    }

    public void handleDeleteUser(long id) {
        this.userRepository.deleteById(id);
    }

    public Role getRoleByName(String name) {
        return this.roleRepository.findFirstByName(name);
    }
}
