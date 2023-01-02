package com.example.budmayster.controllers;

import com.example.budmayster.models.Product;
import com.example.budmayster.services.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;


@Controller
@RequiredArgsConstructor
public class ProductController {
    private final ProductService productService;
    @GetMapping("/")
    public String products(@RequestParam(name = "name", required = false) String name, Model model, Principal principal) {
        model.addAttribute("products", productService.listProducts(name));
        model.addAttribute("user", productService.getUserByPrincipal(principal));
        return "list";
    }

    @GetMapping("/product/findByPrice")
    public String productsByPrice(@RequestParam(name = "price", required = false) String price, Model model, Principal principal) {
        model.addAttribute("products", productService.productListByPrice(price));
        model.addAttribute("user", productService.getUserByPrincipal(principal));
        return "list";
    }
    @GetMapping("/product/findByName")
    public String productsByName(@RequestParam(name = "name", required = false) String name, Model model, Principal principal) {
        model.addAttribute("products", productService.productListByName(name));
        model.addAttribute("user", productService.getUserByPrincipal(principal));
        return "list";
    }
    @GetMapping("/product/{id}")
    public String productInfo(@PathVariable int id, Model model) {
        Product product = productService.getProductById(id);
        model.addAttribute("product", product);
        model.addAttribute("images", product.getImages());
        return "product-info";
    }

    @PostMapping("/product/create")
    public String createProduct(@RequestParam("file1") MultipartFile file1, @RequestParam("file2") MultipartFile file2,
                                @RequestParam("file3") MultipartFile file3, Product product, Principal principal) throws IOException {
        productService.saveProduct(principal, product, file1, file2, file3);
        return "redirect:/";
    }
}
