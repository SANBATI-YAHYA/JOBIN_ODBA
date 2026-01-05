-- ====================================
-- INDEXES ESSENTIELS pour tables PARTITIONNÉES
-- ====================================

-- 1. FORMATION (3 indexes: 1 PK + 2 FK)
CREATE UNIQUE INDEX pk_formation ON FORMATION(id_formation) LOCAL;
CREATE INDEX idx_formation_domain ON FORMATION(id_domain) LOCAL;
CREATE INDEX idx_formation_centre ON FORMATION(id_centre) LOCAL;

-- 2. ETUDIANT (4 indexes: 1 PK + 3 FK)
CREATE UNIQUE INDEX pk_etudiant ON ETUDIANT(id_etudiant) LOCAL;
CREATE INDEX idx_etudiant_formation ON ETUDIANT(id_formation) LOCAL;
CREATE INDEX idx_etudiant_centre ON ETUDIANT(id_centre) LOCAL;
CREATE INDEX idx_etudiant_domain ON ETUDIANT(id_domain) LOCAL;

-- 3. FORMATEUR (4 indexes: 1 PK + 3 FK)
CREATE UNIQUE INDEX pk_formateur ON FORMATEUR(id_formateur) LOCAL;
CREATE INDEX idx_formateur_formation ON FORMATEUR(id_formation) LOCAL;
CREATE INDEX idx_formateur_domain ON FORMATEUR(id_domain) LOCAL;
CREATE INDEX idx_formateur_centre ON FORMATEUR(id_centre) LOCAL;

-- 4. EVALUATION (4 indexes: 1 PK + 3 FK)
CREATE UNIQUE INDEX pk_evaluation ON EVALUATION(id_evaluation) LOCAL;
CREATE INDEX idx_evaluation_etudiant ON EVALUATION(id_etudiant) LOCAL;
CREATE INDEX idx_evaluation_formation ON EVALUATION(id_formation) LOCAL;
CREATE INDEX idx_evaluation_domain ON EVALUATION(id_domain) LOCAL;

-- ====================================
-- INDEXES pour tables NON-PARTITIONNÉES
-- ====================================

-- 5. DOMAIN_FORMATION (1 index PK)
CREATE UNIQUE INDEX pk_domain ON DOMAIN_FORMATION(id_domain);

-- 6. CENTRE (1 index PK)
CREATE UNIQUE INDEX pk_centre ON CENTRE(id_centre);

-- Fin du script de création des index
COMMIT;
-- ====================================