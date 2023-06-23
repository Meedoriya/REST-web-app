package alibi.sarafan.repository;

import alibi.sarafan.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserDetailsRepository extends JpaRepository<User, String> {
}
