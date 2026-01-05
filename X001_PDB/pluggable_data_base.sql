-- Création de la PDB à partir de la Seed
CREATE PLUGGABLE DATABASE PDB_FORMATION
ADMIN USER pdb_admin IDENTIFIED BY pdb123
FILE_NAME_CONVERT = ('/opt/oracle/oradata/ORCLCDB/pdbseed/', 
'/opt/oracle/oradata/ORCLCDB/pdb_formation/');

-- Ouverture de la PDB
ALTER PLUGGABLE DATABASE PDB_FORMATION OPEN;
ALTER PLUGGABLE DATABASE PDB_FORMATION SAVE STATE;


-- Basculer sur la nouvelle PDB pour la suite
ALTER SESSION SET CONTAINER = PDB_FORMATION;
