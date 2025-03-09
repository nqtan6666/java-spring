package vn.hoidanit.laptopshop.repository;

import vn.hoidanit.laptopshop.domain.Role;

import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<Role, Long> {
    Role findByName(String name);
}
