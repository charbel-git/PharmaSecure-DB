
--This script creates the MEDICAMENTS and CATEGORIES tables.
DROP TABLE MEDICAMENTS CASCADE CONSTRAINTS;
DROP TABLE CATEGORIES CASCADE CONSTRAINTS;
CREATE TABLE CATEGORIES (
    id_cat NUMBER(5) PRIMARY KEY,
    nom_cat VARCHAR2(50) NOT NULL UNIQUE
);

CREATE TABLE MEDICAMENTS (
    id_medoc NUMBER(5) PRIMARY KEY,
    nom_medoc VARCHAR2(50) NOT NULL,
    code_barre VARCHAR2(50) UNIQUE,
    prix_unitaire NUMBER(10, 2) NOT NULL CHECK (prix_unitaire > 0),
    quantite_en_stock NUMBER(10) DEFAULT 0 CHECK (quantite_en_stock >= 0),
    date_peremption DATE NOT NULL,
    id_cat NUMBER(5),
    CONSTRAINT fk_id_cat FOREIGN KEY (id_cat) REFERENCES CATEGORIES(id_cat)
);
