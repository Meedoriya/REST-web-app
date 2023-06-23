package alibi.sarafan.domain;

import javax.persistence.*;

import lombok.Data;

import java.io.Serializable;
import java.time.LocalDateTime;

@Entity
@Table(name="usr")
@Data
public class User implements Serializable {
    @Id
    private String id;
    private String name;
    private String userpic;
    private String email;
    private String gender;
    private String locale;
    private LocalDateTime lastVisit;
}
