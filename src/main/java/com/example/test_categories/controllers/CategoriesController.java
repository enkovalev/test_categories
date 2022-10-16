package com.example.test_categories.controllers;

import com.example.test_categories.repository.CategoryRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("/categories")
public class CategoriesController {
    private final CategoryRepository repository;

    @GetMapping()
    public String getCategories(Model model) {
        model.addAttribute("categories", repository.getByParent(null));
        return "categories/index";
    }

}
