
-- Hospital Management System SQL Script (Updated Patient Names)

-- Drop existing tables if any
DROP TABLE IF EXISTS Bills, Treatments, Appointments, Doctors, Patients;

-- Create Patients table
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    Phone VARCHAR(15),
    Address TEXT
);

-- Create Doctors table
CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY,
    Name VARCHAR(100),
    Specialty VARCHAR(50),
    Phone VARCHAR(15),
    Department VARCHAR(50)
);

-- Create Appointments table
CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    Date DATE,
    Time TIME,
    Reason TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

-- Create Treatments table
CREATE TABLE Treatments (
    TreatmentID INT PRIMARY KEY,
    AppointmentID INT,
    Diagnosis TEXT,
    Prescription TEXT,
    Notes TEXT,
    FOREIGN KEY (AppointmentID) REFERENCES Appointments(AppointmentID)
);

-- Create Bills table
CREATE TABLE Bills (
    BillID INT PRIMARY KEY,
    PatientID INT,
    Date DATE,
    Amount DECIMAL(10, 2),
    Status VARCHAR(20),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);

-- Insert updated patient data
INSERT INTO Patients VALUES
(101, 'Parth Jadhav', 25, 'Male', '1234567890', '123 Park Avenue'),
(102, 'Aaryaman Khurana', 21, 'Male', '9876543210', '456 Elm Street'),
(103, 'Urvish Dadich', 24, 'Male', '1122334455', '789 Maple Road'),
(104, 'Saksham Mahajan', 22, 'Male', '5566778899', '321 Oak Street'),
(105, 'Sanskriti Agarwal', 23, 'Female', '9988776655', '654 Pine Avenue'),
(106, 'Sagar Rajuria', 26, 'Male', '6677889900', '987 Cedar Lane'),
(107, 'Moh Bhagwe', 25, 'Male', '7788990011', '111 Birch Boulevard');

-- Insert doctors
INSERT INTO Doctors VALUES
(201, 'Dr. Emily Davis', 'Cardiology', '5551112233', 'Cardiology'),
(202, 'Dr. Michael Lee', 'Neurology', '5554445566', 'Neurology');

-- Insert appointments
INSERT INTO Appointments VALUES
(301, 101, 201, '2025-05-10', '10:30:00', 'Chest Pain'),
(302, 102, 202, '2025-05-11', '11:00:00', 'Migraine');

-- Insert treatments
INSERT INTO Treatments VALUES
(401, 301, 'Mild Heart Issue', 'Aspirin', 'Follow up in 2 weeks'),
(402, 302, 'Tension Headache', 'Ibuprofen', 'Reduce screen time');

-- Insert bills
INSERT INTO Bills VALUES
(501, 101, '2025-05-10', 250.00, 'Paid'),
(502, 102, '2025-05-11', 300.00, 'Unpaid');
