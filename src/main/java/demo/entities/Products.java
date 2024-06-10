package demo.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.Data;

@Table(name = "Products")
@Entity
@Data
public class Products implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    String name;
    String image;
    Double price;
    String description;
    Integer quantity;
    String origin;

    @Temporal(TemporalType.DATE)
    @Column(name = "Createddate")
    Date createdDate = new Date();

    // Sửa getter cho trường "available" để trả về chuỗi "Còn hàng" hoặc "Hết hàng"
    public String getAvailableStatus() {
        return this.quantity > 0 ? "Còn hàng" : "Hết hàng";
    }

    @ManyToOne
    @JoinColumn(name = "Categoryid")
    Categories category;
    @ManyToOne
    @JoinColumn(name = "Brandid")
    Brands brand;
    @OneToMany(mappedBy = "products")
    List<OrderDetails> orderDetails;
}
