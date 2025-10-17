package vn.duckuro.spring.service;

import org.springframework.stereotype.Service;
import java.util.*;
import vn.duckuro.spring.domain.User;
import vn.duckuro.spring.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
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
}
