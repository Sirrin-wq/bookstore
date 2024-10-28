package com.example.bookstore.repository;

import com.example.bookstore.entity.user.User;

import java.util.Optional;

public interface UserRepository {
    Optional<User> findById(long id);

    Optional<User> findByEmail(String email);

    void save(User user);

    void deleteById(Long id);
}
