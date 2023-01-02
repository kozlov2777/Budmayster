package com.example.budmayster.repositories;

import com.example.budmayster.models.Image;
import org.springframework.data.domain.Example;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ImageRepository extends JpaRepository<Image, Integer> {


}
