select firstName, lastName
from doctor_patient.dbo.patient
where pd_ssn in (select ssn
                from doctor_patient.dbo.doctor
                where firstName = 'ali' and lastName='irani')