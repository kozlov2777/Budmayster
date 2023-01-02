package com.example.budmayster.repositories;

import com.example.budmayster.models.Product;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductRepository extends JpaRepository <Product, Integer> {
    List<Product>findByName(String name);
    List<Product>findByNameIsContaining(String name);
    List<Product>findByPriceIsContaining(String price);
    Product findById(int id);
}
