package com.example.bookstore.entity;

import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDate;

@Data
public class Book {
    private Long id;
    private String isbn;
    private String title;
    private String description;
    private String author;
    private BigDecimal price;
    private LocalDate publicationDate;
}
