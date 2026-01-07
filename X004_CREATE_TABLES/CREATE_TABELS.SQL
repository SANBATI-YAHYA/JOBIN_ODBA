-- Create Tables with Partitions
-- ====================================
ALTER SESSION SET CONTAINER = PDB_FORMATION;

-- CENTRE Table (No Partition)
CREATE TABLE CENTRE (
    id_centre NUMBER PRIMARY KEY,
    name_centre VARCHAR(255),
    city VARCHAR(100),
    address VARCHAR(500),
    phone VARCHAR(20)
) TABLESPACE TS_DATA;

-- DOMAIN_FORMATION Table (No Partition)
CREATE TABLE DOMAIN_FORMATION (
    id_domain NUMBER PRIMARY KEY,
    name_domain VARCHAR(255),
    description VARCHAR(1000)
) TABLESPACE TS_DATA;

-- FORMATION Table with Partitions
CREATE TABLE FORMATION (
    id_formation NUMBER PRIMARY KEY,
    name_formation VARCHAR(255),
    start_date DATE,
    end_date DATE,
    id_domain NUMBER,
    id_centre NUMBER,
    CONSTRAINT fk_formation_domain 
        FOREIGN KEY (id_domain) REFERENCES DOMAIN_FORMATION(id_domain),
    CONSTRAINT fk_formation_centre 
        FOREIGN KEY (id_centre) REFERENCES CENTRE(id_centre)
)
PARTITION BY LIST (id_domain)
(
    PARTITION p_app   VALUES (1) TABLESPACE TS_APP,
    PARTITION p_data  VALUES (2) TABLESPACE TS_DATA,
    PARTITION p_ai    VALUES (3) TABLESPACE TS_AI,
    PARTITION p_cyber VALUES (4) TABLESPACE TS_CYBER,
    PARTITION p_uiux  VALUES (5) TABLESPACE TS_UIUX
);

-- ETUDIANT Table with Partitions
CREATE TABLE ETUDIANT (
    id_etudiant NUMBER PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(255),
    id_formation NUMBER,
    id_centre NUMBER,
    id_domain NUMBER,
    CONSTRAINT fk_etud_formation 
        FOREIGN KEY (id_formation) REFERENCES FORMATION(id_formation),
    CONSTRAINT fk_etud_centre 
        FOREIGN KEY (id_centre) REFERENCES CENTRE(id_centre),
    CONSTRAINT fk_etud_domain 
        FOREIGN KEY (id_domain) REFERENCES DOMAIN_FORMATION(id_domain)
)
PARTITION BY LIST (id_domain)
(
    PARTITION p_app   VALUES (1) TABLESPACE TS_APP,
    PARTITION p_data  VALUES (2) TABLESPACE TS_DATA,
    PARTITION p_ai    VALUES (3) TABLESPACE TS_AI,
    PARTITION p_cyber VALUES (4) TABLESPACE TS_CYBER,
    PARTITION p_uiux  VALUES (5) TABLESPACE TS_UIUX
);

-- FORMATEUR Table with Partitions
CREATE TABLE FORMATEUR (
    id_formateur NUMBER PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(255),
    id_formation NUMBER,
    id_domain NUMBER,
    id_centre NUMBER,
    CONSTRAINT fk_form_formation 
        FOREIGN KEY (id_formation) REFERENCES FORMATION(id_formation),
    CONSTRAINT fk_form_domain 
        FOREIGN KEY (id_domain) REFERENCES DOMAIN_FORMATION(id_domain),
    CONSTRAINT fk_form_centre 
        FOREIGN KEY (id_centre) REFERENCES CENTRE(id_centre)
)
PARTITION BY LIST (id_domain)
(
    PARTITION p_app   VALUES (1) TABLESPACE TS_APP,
    PARTITION p_data  VALUES (2) TABLESPACE TS_DATA,
    PARTITION p_ai    VALUES (3) TABLESPACE TS_AI,
    PARTITION p_cyber VALUES (4) TABLESPACE TS_CYBER,
    PARTITION p_uiux  VALUES (5) TABLESPACE TS_UIUX
);

-- EVALUATION Table with Partitions
CREATE TABLE EVALUATION (
    id_evaluation NUMBER PRIMARY KEY,
    score NUMBER,
    date_evaluation DATE,
    id_etudiant NUMBER,
    id_formation NUMBER,
    id_domain NUMBER,
    CONSTRAINT fk_eval_etudiant 
        FOREIGN KEY (id_etudiant) REFERENCES ETUDIANT(id_etudiant),
    CONSTRAINT fk_eval_formation 
        FOREIGN KEY (id_formation) REFERENCES FORMATION(id_formation),
    CONSTRAINT fk_eval_domain 
        FOREIGN KEY (id_domain) REFERENCES DOMAIN_FORMATION(id_domain)
)
PARTITION BY LIST (id_domain)
(
    PARTITION p_app   VALUES (1) TABLESPACE TS_APP,
    PARTITION p_data  VALUES (2) TABLESPACE TS_DATA,
    PARTITION p_ai    VALUES (3) TABLESPACE TS_AI,
    PARTITION p_cyber VALUES (4) TABLESPACE TS_CYBER,
    PARTITION p_uiux  VALUES (5) TABLESPACE TS_UIUX
);