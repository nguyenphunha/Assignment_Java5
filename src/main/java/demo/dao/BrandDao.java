package demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import demo.entities.Brands;

public interface BrandDao extends JpaRepository<Brands, String> {

}
