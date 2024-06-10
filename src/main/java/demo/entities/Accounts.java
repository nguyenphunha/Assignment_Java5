package demo.entities;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table(name = "Accounts")
@Data
public class Accounts implements Serializable {
    @Id 
    private String username; 
    private String password; 
    private String fullname; 
    private String email; 
    private String photo; 
    private boolean activated; 
    private boolean admin; 

    @OneToMany(mappedBy = "accounts")
    private List<Orders> orders;
}
