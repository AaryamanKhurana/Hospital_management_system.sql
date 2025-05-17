Hospital Management System
Overview
A SQL database system for managing hospital operations including patients, doctors, appointments, treatments, and billing.
Database Structure

Patients: Patient demographic information
Doctors: Doctor profiles and specialties
Appointments: Scheduled patient-doctor meetings
Treatments: Diagnosis and treatment details
Bills: Patient billing information

Setup
Run the Hospital_Management_System_Updated.sql script in your preferred SQL database system.
Sample Data
Includes data for 7 patients, 2 doctors, and 2 appointments with corresponding treatments and bills.
Key Features

Patient and doctor information management
Appointment scheduling
Treatment recording
Billing tracking

Example Query
sql-- Find appointments with doctor information
SELECT a.*, d.Name as DoctorName
FROM Appointments a
JOIN Doctors d ON a.DoctorID = d.DoctorID
WHERE a.PatientID = 101;
