CREATE or ALTER FUNCTION dbo.f_Bissexto(@ano int)
RETURNS varchar(100)
AS
BEGIN
	declare @resultado varchar(100) = 'NÃO é Ano Bissexto'
    if(@ano%4 = 0 and @ano%100 != 0  )
    	set @resultado = 'Ano Bissexto'
    ELSE IF (@ano%4 = 0 and @ano%100 = 0 and @ano%400 = 0)
        set @resultado = 'Ano Bissexto'
 return @resultado
END

select  dbo.f_Bissexto(1900)