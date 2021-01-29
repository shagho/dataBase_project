select distinct doctor_ssn
from doctor_patient.dbo.prescription, doctor_patient.dbo.min_maxdrug, doctor_patient.dbo.prescription_medicine
where doctor_patient.dbo.min_maxdrug.TradeName = doctor_patient.dbo.prescription_medicine.TradeName
and doctor_patient.dbo.prescription_medicine.id = doctor_patient.dbo.prescription.id;