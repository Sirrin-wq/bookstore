package com.example.bookstore.entity.user;

import lombok.Data;

@Data
public class User {
    private Long id;
    private String username;
    private String password;
    private String email;
    private Role role;
}
