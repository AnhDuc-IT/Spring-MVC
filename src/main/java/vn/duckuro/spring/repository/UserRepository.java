package vn.duckuro.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vn.duckuro.spring.domain.User;
import java.util.*;
import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User save(User duckuro);

    User findById(long id);

    ArrayList<User> findByEmail(String email);
}
