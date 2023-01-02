package com.example.budmayster.models;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "product")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    @Column(name = "title")
    private String name;
    @Column(name = "price")
    private String price;
    @Column(name = "currency")
    private String currency;
    @Column(name = "count")
    private String count;
    @Column(name = "unit")
    private String unit;
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY,
            mappedBy = "product")
    private List<Image> images = new ArrayList<>();
    private int previewImageId;

    public void addImageToProduct(Image image) {
        image.setProduct(this);
        images.add(image);
    }
    public String getIdString(Product product){
        String str = String.valueOf(product.getId());
        return str;
    }
}