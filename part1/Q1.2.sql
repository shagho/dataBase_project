select fname, lname
from cinema.dbo.actor
where (2021-yob) < 40 and (left(fname,1) = 'a' or left(fname,1) = 'A'
or left(fname,1) = 'e' or left(fname,1) = 'E' 
or left(fname,1) = 'o' or left(fname,1) = 'O' 
or left(fname,1) = 'i' or left(fname,1) = 'I' 
or left(fname,1) = 'u' or left(fname,1) = 'U')