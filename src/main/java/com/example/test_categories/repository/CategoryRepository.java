package com.example.test_categories.repository;

import com.example.test_categories.models.Category;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CategoryRepository extends JpaRepository<Category, Long> {

    List<Category> getByParent(Integer parentId);
}
