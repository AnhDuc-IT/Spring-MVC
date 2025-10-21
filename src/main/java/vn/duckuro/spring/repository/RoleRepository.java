package vn.duckuro.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.duckuro.spring.domain.Role;
import vn.duckuro.spring.domain.User;
import java.util.*;
import java.util.List;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {
    Role findByName(String name);

}
