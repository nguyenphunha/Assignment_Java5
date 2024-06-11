package demo.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import demo.entities.Products;

public interface ProductDao extends JpaRepository<Products, Integer> {
    @Query("SELECT p FROM Products p "
    		+ "WHERE p.price > :min AND p.price < :max")
    Page<Products> findByPrice(
    		@Param("min") Integer min,
    		@Param("max") Integer max,
    		Pageable paging
    		);
    //nếu không có phân trang (Pageable) => List<Entity>
    //nếu có phân trang  => Page<Entity>
    Page<Products> findByNameLike(String tenCanTim, Pageable paging);
    //tfu sinh cau truy van(@Query)
    //SELECT p FROM Products p WHERE p.name LIKE tenCanTim
    
    
    
}
