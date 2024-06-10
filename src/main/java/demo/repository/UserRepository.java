package demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import demo.entities.Accounts;

public interface UserRepository extends JpaRepository<Accounts, String> {
    Accounts findByUsername(String username);
    List<Accounts> findByUsernameContainingOrFullnameContainingOrEmailContaining(String username, String fullname, String email);
}
