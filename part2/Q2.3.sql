with drugs_count(TradeName, prescriptions_count, numOfUnits) as
(select TradeName, count(id) as prescriptions_count, sum(numOfUnit) as numOfUnits
from doctor_patient.dbo.prescription_medicine
group by TradeName)

select doctor_patient.dbo.medicine.TradeName, ISNULL(prescriptions_count, 0) as counts, isnull(numOfUnits, 0) as numberOfunits
from doctor_patient.dbo.medicine
left join drugs_count 
on doctor_patient.dbo.medicine.TradeName = drugs_count.TradeName