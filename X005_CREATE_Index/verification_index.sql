-- Verification des index créés
ALTER SESSION SET CONTAINER = PDB_FORMATION;
SELECT 
    table_name,
    index_name,
    uniqueness,
    partitioned,
    status
FROM user_indexes
WHERE table_name IN ('FORMATION', 'ETUDIANT', 'FORMATEUR', 'EVALUATION', 'DOMAIN_FORMATION', 'CENTRE')
ORDER BY table_name;
