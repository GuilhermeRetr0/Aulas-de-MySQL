	-- operador OR
	
	SELECT * FROM senso
	WHERE nome_mun LIKE('A%')
	AND (cod_uf='35' OR cod_uf='15')
	

	
	-- evidência de erro
	SELECT * FROM senso
	WHERE nome_num LIKE ('A%')
	AND cod_uf='35'
	andcod_uf='15';
	
	-- operador IS NOT NULL
	
	SELECT * FROM senso
	WHERE regiao IS NOT NULL;
	
	
	-- operador IS NULL
	
	SELECT * FROM senso
	WHERE regiao IS NULL;
	
	-- preparando o cenário para usar o IS NULL
	
	SELECT * FROM senso
	WHERE regiao=''
	
	UPDATE senso SET regiao=null
	WHERE regiao='';
	
	UPDATE senso SET regiao=''
	WHERE regiao IS NULL; 
	
	-- operador HAVING
	
	SELECT cod_uf,count(*)qtd
	FROM senso
	WHERE ano='2014'
	GROUP BY cod_uf HAVING COUNT(cod_mun)>500;
	
	-- operador HAVING
	
	SELECT cod_uf,estado,COUNT(cod_mun)qtd,
					  SUM(populacao)
	FROM senso
	WHERE ano='2014'
	GROUP BY cod_uf,estado HAVING SUM(populacao)>5000000;
	
	
	