CREATE TABLE spring_session (
                                primary_id            CHAR(36) NOT NULL,
                                session_id            CHAR(36) NOT NULL,
                                creation_time         BIGINT   NOT NULL,
                                last_access_time      BIGINT   NOT NULL,
                                max_inactive_interval INTEGER  NOT NULL,
                                expiry_time           BIGINT   NOT NULL,
                                principal_name        VARCHAR(300),
                                PRIMARY KEY (primary_id),
                                UNIQUE INDEX spring_session_ix1 (session_id),
                                INDEX spring_session_ix2 (expiry_time),
                                INDEX spring_session_ix3 (principal_name)
);
CREATE TABLE spring_session_attributes (
                                           session_primary_id CHAR(36)     NOT NULL,
                                           attribute_name     VARCHAR(200) NOT NULL,
                                           attribute_bytes    BLOB         NOT NULL,
                                           PRIMARY KEY (session_primary_id, attribute_name),
                                           CONSTRAINT spring_session_attributes_fk FOREIGN KEY (session_primary_id)
                                               REFERENCES spring_session (primary_id)
                                               ON DELETE CASCADE
);
