use [doctor_patient]
GO

delete from doctor;
delete from patient;
delete from medicine;
delete from prescription;
delete from prescription_medicine;



bulk insert doctor_patient.dbo.doctor
from '/home/navid/my_program/doctor_patient_data/doctor.csv'
with 
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
	ROWTERMINATOR='\n'
);

bulk insert doctor_patient.dbo.patient
from '/home/navid/my_program/doctor_patient_data/patient.csv'
with 
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
	ROWTERMINATOR='\n'
);

bulk insert doctor_patient.dbo.medicine
from '/home/navid/my_program/doctor_patient_data/medicine.csv'
with 
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
	ROWTERMINATOR='\n'
);

bulk insert doctor_patient.dbo.prescription
from '/home/navid/my_program/doctor_patient_data/prescription.csv'
with 
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
	ROWTERMINATOR='\n'
);

bulk insert doctor_patient.dbo.prescription_medicine
from '/home/navid/my_program/doctor_patient_data/prescriptionMedicine.csv'
with 
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
	ROWTERMINATOR='\n'
);
