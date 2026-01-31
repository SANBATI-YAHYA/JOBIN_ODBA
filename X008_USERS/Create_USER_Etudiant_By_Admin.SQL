ALTER SESSION SET CONTAINER = PDB_FORMATION;
-- ====================================

CREATE USER USER_FORMATEUR IDENTIFIED BY form123
DEFAULT TABLESPACE TS_DATA
QUOTA UNLIMITED ON TS_DATA;
-- ====================================
-- Assign the PROFILE_ETUDIANT profile and grant the ROLE_ETUDIANT role to USER_ETUDIANT
ALTER USER USER_FORMATEUR PROFILE PROFILE_ETUDIANT;


GRANT ROLE_ETUDIANT TO USER_ETUDIANT;
-- ====================================
-- Fin du script de création de l'utilisateur USER_ETUDIANT
COMMIT;
