
ALTER SESSION SET CONTAINER = PDB_FORMATION;
-- ====================================


CREATE PROFILE PROFILE_ADMIN LIMIT
  FAILED_LOGIN_ATTEMPTS 3
  PASSWORD_LIFE_TIME 30
  PASSWORD_REUSE_TIME 365
  PASSWORD_REUSE_MAX 10
  PASSWORD_LOCK_TIME 1
  PASSWORD_GRACE_TIME 3
  SESSIONS_PER_USER 2
  IDLE_TIME 30
  CONNECT_TIME 480;

-- ====================================
-- Fin du script de création du profil ADMIN
-- ====================================
COMMIT;