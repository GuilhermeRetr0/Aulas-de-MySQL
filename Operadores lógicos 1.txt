-- operador where

	SELECT * 
	FROM senso
	WHERE nome_mun='Jundiaí'
	AND ano='2014';
	
-- operador and

	SELECT *
	FROM senso
	WHERE cod_uf='35'
	AND populacao > 50000
	AND ano='2014';
	
-- operdaor between

	SELECT * FROM senso
	WHERE cod_uf='35'
	AND populacao BETWEEN 5000 AND 10000
	AND ano='2014'
	ORDER BY populacao DESC;
	
-- operador in

	SELECT * FROM senso
	WHERE cod_uf IN ('35','12')
	and ano='2014';
	
-- operador not in

	SELECT * FROM senso
	WHERE cod_uf not IN ('35','12')
	and ano='2014';
	
-- like localiza valores que contenham "or" em qualquer lugar

	SELECT * FROM senso
	WHERE nome_mun LIKE ('%or%')
	AND ano ='2014';
	
-- like encontra qualquer valor "r" na segunda posição

	SELECT * FROM senso
	WHERE nome_mun LIKE '_r%'
	AND ano='2014';
	
-- like localiza valores que começam com "a" e possuem pelo menos 3 caracteres de comprimento[]

	SELECT * FROM senso
	WHERE nome_mun LIKE 'a_%_%'
	AND ano='2014';
	
-- like localiza valores que começam com "a" e terminam com "o"

	SELECT * FROM senso
	WHERE nome_mun LIKE 'a%o'
	AND ano='2014';
	
-- like localiza valores com "a"

	SELECT * FROM senso
	WHERE nome_mun LIKE 'a%'
	AND ano='2014';
	
-- operador like coringa _

	SELECT * FROM senso
	WHERE nome_mun LIKE '_ra%'
	AND ano='2014';
	
-- operador not like

	SELECT ano, cod_uf, estado, nome_mun, populacao FROM senso
	WHERE nome_mun NOT LIKE ('A%')
	AND cod_uf='35'
	AND NOT populacao<40000
	AND ano='2014';