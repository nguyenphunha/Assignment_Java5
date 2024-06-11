package demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import demo.entities.Categories;

@Repository
public interface CategoryDao extends JpaRepository<Categories, Integer> {
	
}
