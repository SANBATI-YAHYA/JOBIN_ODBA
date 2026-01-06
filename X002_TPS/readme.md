# 📁 STRUCTURE DES TABLESPACES

Ce document décrit l'organisation physique des données par tablespace et le mapping
entre `ID_DOMAIN` et le tablespace/partition correspondant.

---

## 🗂️ Résumé des tablespaces

- **TS_ADMIN** (Administratif) 🧾
  - Taille : 100M (auto-extensible)
  - Fichier : `ts_admin.dbf`
  - Contenu : tables non partitionnées
  - Tables stockées : `CENTRE`, `DOMAIN_FORMATION`

- **TS_APP** (Applications) 💻
  - Taille : 200M (auto-extensible, max 500M)
  - Fichier : `ts_app.dbf`
  - Domaine : `ID_DOMAIN = 1` (Développement d'Applications)
  - Tables partitionnées (partition `p_app`) : `FORMATION`, `ETUDIANT`, `FORMATEUR`, `EVALUATION`

- **TS_DATA** (Data Science) 📊
  - Taille : 200M (max 500M)
  - Fichier : `ts_data.dbf`
  - Domaine : `ID_DOMAIN = 2` (Science des Données)
  - Tables partitionnées (partition `p_data`) : `FORMATION`, `ETUDIANT`, `FORMATEUR`, `EVALUATION`

- **TS_AI** (Intelligence Artificielle) 🤖
  - Taille : 200M (max 500M)
  - Fichier : `ts_ai.dbf`
  - Domaine : `ID_DOMAIN = 3` (Intelligence Artificielle)
  - Tables partitionnées (partition `p_ai`) : `FORMATION`, `ETUDIANT`, `FORMATEUR`, `EVALUATION`

- **TS_CYBER** (Cybersécurité) 🔒
  - Taille : 200M (max 500M)
  - Fichier : `ts_cyber.dbf`
  - Domaine : `ID_DOMAIN = 4` (Cybersécurité)
  - Tables partitionnées (partition `p_cyber`) : `FORMATION`, `ETUDIANT`, `FORMATEUR`, `EVALUATION`

- **TS_UIUX** (UI/UX Design) 🎨
  - Taille : 200M (max 500M)
  - Fichier : `ts_uiux.dbf`
  - Domaine : `ID_DOMAIN = 5` (Design UI/UX)
  - Tables partitionnées (partition `p_uiux`) : `FORMATION`, `ETUDIANT`, `FORMATEUR`, `EVALUATION`

---

## 🗺️ Mapping ID_DOMAIN → TABLESPACE

| ID_DOMAIN | Nom du domaine                  | Tablespace | Partition | Icône |
|-----------:|----------------------------------|------------|-----------|-------|
| 1          | Développement d'Applications     | TS_APP     | p_app     | 🔵    |
| 2          | Science des Données              | TS_DATA    | p_data    | 📊    |
| 3          | Intelligence Artificielle        | TS_AI      | p_ai      | 🤖    |
| 4          | Cybersécurité                    | TS_CYBER   | p_cyber   | 🔒    |
| 5          | Design UI/UX                     | TS_UIUX    | p_uiux    | 🎨    |

---

## 🧭 Organisation physique (exemples)

- Exemple — étudiant en IA (`ID_DOMAIN = 3`) : 🤖

  Données stockées dans : **TS_AI**
  - `FORMATION` → partition `p_ai`
  - `ETUDIANT` → partition `p_ai`
  - `FORMATEUR` → partition `p_ai`
  - `EVALUATION` → partition `p_ai`

- Exemple — formation en Cybersécurité (`ID_DOMAIN = 4`) : 🔒

  Données stockées dans : **TS_CYBER**
  - `FORMATION` → partition `p_cyber`
  - `ETUDIANT` → partition `p_cyber`
  - `FORMATEUR` → partition `p_cyber`
  - `EVALUATION` → partition `p_cyber`

---

## 📈 Avantages de cette organisation

- ✅ Séparation physique : données par domaine dans des fichiers différents.
- ⚡ Performance : requêtes ciblées sur partitions/tablespaces plus rapides.
- 🛠️ Maintenance : possibilité de backup/restore par tablespace/partition.
- ↗️ Scalabilité : ajout de nouveaux domaines sans impacter les autres.
- 📊 Monitoring : suivi d'espace disque par domaine.

---

## Requêtes utiles

- Vérifier les partitions d'une table :

```
SELECT partition_name, tablespace_name
FROM user_tab_partitions
WHERE table_name = 'FORMATION';
```

- Consulter le mapping stocké (si vous utilisez `TS_DOMAIN_MAP`) :

```
SELECT id, domain, tablespace_name FROM TS_DOMAIN_MAP ORDER BY id;
```

---

## Notes et recommandations

- Recommandé : utiliser le partitionnement LIST sur la colonne `domain` (`ID_DOMAIN`) pour associer chaque partition à son tablespace.
- Alternative : créer des tables séparées par domaine si le partitionnement n'est pas souhaité.
- Après tout changement de mapping, mettre à jour `TS_DOMAIN_MAP` et documenter ici.

