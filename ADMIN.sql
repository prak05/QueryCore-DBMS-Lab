-- Users and Roles
CREATE TABLE roles (
    role_id NUMBER PRIMARY KEY,
    role_name VARCHAR2(20) NOT NULL
);

CREATE TABLE users (
    user_id NUMBER PRIMARY KEY,
    username VARCHAR2(30) UNIQUE NOT NULL,
    password VARCHAR2(100) NOT NULL,
    role_id NUMBER REFERENCES roles(role_id)
);

-- Medicines
CREATE TABLE medicines (
    med_id NUMBER PRIMARY KEY,
    med_name VARCHAR2(100) NOT NULL,
    quantity NUMBER NOT NULL
);

-- Prescriptions
CREATE TABLE prescriptions (
    prescription_id NUMBER PRIMARY KEY,
    doctor_id NUMBER REFERENCES users(user_id),
    client_id NUMBER REFERENCES users(user_id),
    date_prescribed DATE DEFAULT SYSDATE
);

CREATE TABLE prescription_medicines (
    prescription_id NUMBER REFERENCES prescriptions(prescription_id),
    med_id NUMBER REFERENCES medicines(med_id),
    dosage VARCHAR2(50),
    quantity NUMBER,
    PRIMARY KEY (prescription_id, med_id)
);