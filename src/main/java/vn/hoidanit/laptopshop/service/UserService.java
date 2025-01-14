package vn.hoidanit.laptopshop.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.repository.UserRepository;

@Service
public class UserService {
    protected UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public List<User> getAllUsers() {
        List<User> users = new ArrayList<>();
        users = this.userRepository.findAll();
        return users;

    }

    public User getUserById(long id) {
        User user = this.userRepository.findById(id).orElse(null);
        return user;
    }

    public List<User> getAllUsersByEmail(String email) {
        List<User> users = new ArrayList<>();
        users = this.userRepository.findByEmail(email);
        return users;

    }

    public User saveUser(User user) {
        User eric = this.userRepository.save(user);
        return eric;
    }

    public void deleteUser(long id) {
        this.userRepository.deleteById(id);
    }
}
