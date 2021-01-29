use [doctor_patient]
go
create view min_maxdrug(TradeName, unitPrice, genericFlag) as
select TradeName, unitPrice, genericFlag
from doctor_patient.dbo.medicine
where unitPrice in ((
                select min(unitPrice)
                from doctor_patient.dbo.medicine
                ) union 
                (
                    select max(unitPrice)
                    from doctor_patient.dbo.medicine
                ))