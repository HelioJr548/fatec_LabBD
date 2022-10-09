CREATE OR ALTER FUNCTION f_PrimeiroNome (@nome varchar(100))
RETURNS varchar(100)
AS BEGIN 
	return SUBSTRING(@nome,1,CHARINDEX(' ',@nome))
END

select  dbo.f_PrimeiroNome('Helio de Jesus dos Santos')
