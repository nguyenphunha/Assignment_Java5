package demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import demo.entities.Orders;

public interface OrderDao extends JpaRepository<Orders, Long>{

}
