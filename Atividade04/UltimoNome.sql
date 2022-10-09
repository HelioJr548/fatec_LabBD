CREATE OR ALTER FUNCTION f_UltimoNome (@nome varchar(100))
RETURNS varchar(100)
AS BEGIN 
	return Reverse(SUBSTRING(Reverse(@nome),1,CHARINDEX(' ',Reverse(@nome))))
END

select  dbo.f_UltimoNome('Alex Freitas Sampaio')