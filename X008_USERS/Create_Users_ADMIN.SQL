ALTER SESSION SET CONTAINER = PDB_FORMATION;
-- ====================================         

CREATE USER ADMIN_APP IDENTIFIED BY admin123
DEFAULT TABLESPACE TS_DATA
QUOTA UNLIMITED ON TS_DATA;
-- ====================================
-- Assign the PROFILE_ADMIN profile and grant the ROLE_ADMIN role to ADMIN_APP

ALTER USER ADMIN_APP PROFILE PROFILE_ADMIN;
GRANT ROLE_ADMIN TO ADMIN_APP;  
-- ====================================
-- Fin du script de création de l'utilisateur ADMIN_APP
COMMIT;
