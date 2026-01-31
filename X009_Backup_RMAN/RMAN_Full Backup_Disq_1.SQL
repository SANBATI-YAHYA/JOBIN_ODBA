-- connect target sys/admin@PDB_FORMATION

RUN {
  BACKUP DATABASE FORMAT 'D:\DB_BACKUPS\FULL\full_%U.bkp';
}
