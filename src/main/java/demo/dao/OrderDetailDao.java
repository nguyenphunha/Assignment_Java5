package demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import demo.entities.OrderDetails;


public interface OrderDetailDao extends JpaRepository<OrderDetails, Long>{
//		@Query("SELECT" 
//				+ " new ThongKe(od.products, sum(od.quantity), sum(od.price*od.quantity))"
//				+ " FROM OrderDetails od GROUP BY od.products")
//		List<ThongKe> thongKeDoanhThu();
		//Object -> 1 doi tuong ko ten (ko duoc dinh nghia la class)
}
