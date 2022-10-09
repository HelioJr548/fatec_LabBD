CREATE OR ALTER FUNCTION f_DiaSemanaExtenso (@dia int)
RETURNS varchar(20)
AS BEGIN
	DECLARE @semana varchar(50) = 'DomSegTerQuaQuiSexSab'
    if (@dia < 1 or @dia > 7) 
    	set @semana = 'Dia Inválido'
    ELSE
    	return SUBSTRING(@semana,@dia*3-2,3)
    return @semana
END

select  dbo.f_DiaSemanaExtenso(0)  