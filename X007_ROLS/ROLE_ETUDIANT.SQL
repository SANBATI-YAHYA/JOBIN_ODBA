--- Set the session to the appropriate pluggable database
ALTER SESSION SET CONTAINER = PDB_FORMATION;

-- Create the ROLE_ETUDIANT role and grant necessary privileges
--- ====================================
CREATE ROLE ROLE_ETUDIANT;
GRANT CREATE SESSION TO ROLE_ETUDIANT;
GRANT SELECT ON FORMATION TO ROLE_ETUDIANT;
GRANT SELECT ON EVALUATION TO ROLE_ETUDIANT;


--- ====================================
--- Fin du script de création du rôle ETUDIANT      
COMMIT;
