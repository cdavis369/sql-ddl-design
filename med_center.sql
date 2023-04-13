DROP DATABASE IF EXISTS med_center;
CREATE DATABASE med_center;

\c med_center

CREATE TABLE doctor (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
);

CREATE TABLE patient (
    id SERIAL PRIMARY KEYL,
    first_name VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
 ;
)

CREATE TABLE visit (
    id SERIAL PRIMARY KEY,
    aptime TIMESTAMP NOT NULL, 
    patient_id REFERENCES patient,
    doctor_id REFERENCES doctor,
);

CREATE TABLE diagnosis (
    visit_id REFERENCES visit,
    disease_id REFERENCES disease,
);

CREATE TABLE disease (
    id SERIAL NOT NULL,
    title VARCHAR(50) NOT NULL,
    details TEXT NOT NULL,
);
