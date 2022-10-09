CREATE OR ALTER FUNCTION f_MesExtenso (@mes int)
RETURNS varchar(20)
AS BEGIN
	DECLARE @meses varchar(50) = 'JanFevMarAbrMaiJunJulAgoSetOutNovDez'
    if (@mes < 1 or @mes > 12) 
    	set @meses = 'Mês Inválido'
    ELSE
    	return SUBSTRING(@meses,@mes*3-2,3)
    return @meses
END
    	
select  dbo.f_MesExtenso(0)  
    