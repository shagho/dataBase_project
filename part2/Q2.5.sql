with cnts(counts, patient_ssn) as
(select count(patient_ssn)as counts, patient_ssn
from doctor_patient.dbo.prescription
group by patient_ssn)
select lastName, firstName
from cnts inner join doctor_patient.dbo.patient 
on cnts.patient_ssn = doctor_patient.dbo.patient .ssn
where counts > 5