package demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import demo.entities.Accounts;
import demo.entities.Categories;


public interface AccountDao extends JpaRepository<Categories, Integer>{
//	public Accounts findByUsernameAndPassword(
//			String username,
//			String password
//			);
//	
}
