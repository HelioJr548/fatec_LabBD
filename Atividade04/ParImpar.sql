CREATE OR ALTER FUNCTION f_ParImpar (@numero int)
RETURNS varchar(10)
AS BEGIN
	DECLARE @ParImpar varchar(10)
    if (@numero%2=0) 
    	set @ParImpar = 'Par'
    ELSE
    	set @ParImpar = 'Ímpar'
    return @ParImpar
END

select  dbo.f_ParImpar(22)  