-- ====================================
-- Insert data in CENTRE table 
-- ====================================
INSERT INTO CENTRE (id_centre, name_centre, city, address, phone) VALUES 
(1, 'Centre Digital Casablanca', 'Casablanca', '123 Boulevard Mohammed V, Casablanca', '+212522345678');

INSERT INTO CENTRE (id_centre, name_centre, city, address, phone) VALUES 
(2, 'Campus Tech Rabat', 'Rabat', '45 Avenue Mohammed VI, Rabat', '+212537890123');

INSERT INTO CENTRE (id_centre, name_centre, city, address, phone) VALUES 
(3, 'Académie Digital Marrakech', 'Marrakech', '78 Avenue Hassan II, Marrakech', '+212524567890');

INSERT INTO CENTRE (id_centre, name_centre, city, address, phone) VALUES 
(4, 'Centre Innovation Fès', 'Fès', '22 Rue du Savoir, Fès', '+212535678901');

INSERT INTO CENTRE (id_centre, name_centre, city, address, phone) VALUES 
(5, 'Campus Technologique Tanger', 'Tanger', '9 Boulevard Pasteur, Tanger', '+212539012345');

-- ====================================
-- Insert data in DOMAIN_FORMATION table
-- ====================================
INSERT INTO DOMAIN_FORMATION (id_domain, name_domain, description) VALUES 
(1, 'Développement d''Applications', 'Développement mobile, web et logiciel');

INSERT INTO DOMAIN_FORMATION (id_domain, name_domain, description) VALUES 
(2, 'Science des Données', 'Big Data, Analytics et Data Engineering');

INSERT INTO DOMAIN_FORMATION (id_domain, name_domain, description) VALUES 
(3, 'Intelligence Artificielle', 'Machine Learning et IA générative');

INSERT INTO DOMAIN_FORMATION (id_domain, name_domain, description) VALUES 
(4, 'Cybersécurité', 'Sécurité des systèmes et réseaux');

INSERT INTO DOMAIN_FORMATION (id_domain, name_domain, description) VALUES 
(5, 'Design UI/UX', 'Design d''interface et expérience utilisateur');

-- ====================================
-- Insert data in FORMATION table
-- ====================================
INSERT INTO FORMATION (id_formation, name_formation, start_date, end_date, id_domain, id_centre) VALUES 
(1, 'Bootcamp Développement FullStack', DATE '2024-03-01', DATE '2024-06-01', 1, 1);

INSERT INTO FORMATION (id_formation, name_formation, start_date, end_date, id_domain, id_centre) VALUES 
(2, 'Formation Data Analyst', DATE '2024-04-15', DATE '2024-07-15', 2, 2);

INSERT INTO FORMATION (id_formation, name_formation, start_date, end_date, id_domain, id_centre) VALUES 
(3, 'Certification Machine Learning', DATE '2024-05-10', DATE '2024-08-10', 3, 3);

INSERT INTO FORMATION (id_formation, name_formation, start_date, end_date, id_domain, id_centre) VALUES 
(4, 'Expert en Cybersécurité', DATE '2024-06-01', DATE '2024-09-01', 4, 4);

INSERT INTO FORMATION (id_formation, name_formation, start_date, end_date, id_domain, id_centre) VALUES 
(5, 'Design Thinking & UX', DATE '2024-07-01', DATE '2024-10-01', 5, 5);

-- ====================================
-- Insert data in ETUDIANT table
-- ====================================
INSERT INTO ETUDIANT (id_etudiant, first_name, last_name, phone, email, id_formation, id_centre, id_domain) VALUES 
(1, 'Karim', 'Benjelloun', '+212612345678', 'karim.benjelloun@email.ma', 1, 1, 1);

INSERT INTO ETUDIANT (id_etudiant, first_name, last_name, phone, email, id_formation, id_centre, id_domain) VALUES 
(2, 'Fatima', 'El Amrani', '+212623456789', 'fatima.elamrani@email.ma', 2, 2, 2);

INSERT INTO ETUDIANT (id_etudiant, first_name, last_name, phone, email, id_formation, id_centre, id_domain) VALUES 
(3, 'Mehdi', 'Chaoui', '+212634567890', 'mehdi.chaoui@email.ma', 3, 3, 3);

INSERT INTO ETUDIANT (id_etudiant, first_name, last_name, phone, email, id_formation, id_centre, id_domain) VALUES 
(4, 'Amina', 'Berrada', '+212645678901', 'amina.berrada@email.ma', 4, 4, 4);

INSERT INTO ETUDIANT (id_etudiant, first_name, last_name, phone, email, id_formation, id_centre, id_domain) VALUES 
(5, 'Youssef', 'Mansouri', '+212656789012', 'youssef.mansouri@email.ma', 5, 5, 5);

-- ====================================
-- Insert data in FORMATEUR table
-- ====================================
INSERT INTO FORMATEUR (id_formateur, first_name, last_name, phone, email, id_formation, id_domain, id_centre) VALUES 
(1, 'Dr. Ahmed', 'El Fassi', '+212667890123', 'ahmed.elfassi@formation.ma', 1, 1, 1);

INSERT INTO FORMATEUR (id_formateur, first_name, last_name, phone, email, id_formation, id_domain, id_centre) VALUES 
(2, 'Prof. Leila', 'Benkirane', '+212678901234', 'leila.benkirane@formation.ma', 2, 2, 2);

INSERT INTO FORMATEUR (id_formateur, first_name, last_name, phone, email, id_formation, id_domain, id_centre) VALUES 
(3, 'Ing. Omar', 'Tazi', '+212689012345', 'omar.tazi@formation.ma', 3, 3, 3);

INSERT INTO FORMATEUR (id_formateur, first_name, last_name, phone, email, id_formation, id_domain, id_centre) VALUES 
(4, 'Dr. Nadia', 'Cherkaoui', '+212690123456', 'nadia.cherkaoui@formation.ma', 4, 4, 4);

INSERT INTO FORMATEUR (id_formateur, first_name, last_name, phone, email, id_formation, id_domain, id_centre) VALUES 
(5, 'Prof. Samira', 'Bennis', '+212601234567', 'samira.bennis@formation.ma', 5, 5, 5);

-- ====================================
-- Insert data in EVALUATION table
-- ====================================
INSERT INTO EVALUATION (id_evaluation, score, date_evaluation, id_etudiant, id_formation, id_domain) VALUES 
(1, 18.5, DATE '2024-05-15', 1, 1, 1);

INSERT INTO EVALUATION (id_evaluation, score, date_evaluation, id_etudiant, id_formation, id_domain) VALUES 
(2, 16.0, DATE '2024-06-20', 2, 2, 2);

INSERT INTO EVALUATION (id_evaluation, score, date_evaluation, id_etudiant, id_formation, id_domain) VALUES 
(3, 19.0, DATE '2024-07-10', 3, 3, 3);

INSERT INTO EVALUATION (id_evaluation, score, date_evaluation, id_etudiant, id_formation, id_domain) VALUES 
(4, 17.5, DATE '2024-08-05', 4, 4, 4);

INSERT INTO EVALUATION (id_evaluation, score, date_evaluation, id_etudiant, id_formation, id_domain) VALUES 
(5, 15.5, DATE '2024-09-15', 5, 5, 5);

-- ====================================
-- Commit toutes les transactions
-- ====================================
COMMIT;