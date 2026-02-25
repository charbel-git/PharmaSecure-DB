--insertion de mes categories
INSERT INTO CATEGORIES (id_cat, nom_cat, descriptions) 
VALUES (1, 'Antibiotiques', 'Médicaments utilisés pour traiter les infections bactériennes');
INSERT INTO CATEGORIES (id_cat, nom_cat, descriptions)
 VALUES (2, 'Analgésiques', 'Médicaments utilisés pour soulager la douleur');

--insertion de mes medicaments
INSERT INTO MEDICAMENTS (id_medoc, nom_medoc, code_barre, prix_unitaire, quantite_en_stock, date_peremption, id_cat)
VALUES (101, 'Amoxicilline 500 mg', '1234567890123', 1000.50, 100, TO_DATE('2025-12-31', 'YYYY-MM-DD'), 1);
INSERT INTO MEDICAMENTS (id_medoc, nom_medoc, code_barre, prix_unitaire, quantite_en_stock, date_peremption, id_cat)
VALUES (102, 'Ibuprofène 200 mg', '9876543210987', 500.75, 200, TO_DATE('2024-06-30', 'YYYY-MM-DD'), 2);