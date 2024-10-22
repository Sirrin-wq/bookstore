package com.example.bookstore.entity;

import lombok.Data;

import java.time.LocalDate;

@Data
public class Author {
    private Long id;
    private String name;
    private String biography;
    private LocalDate birthdate;
}
