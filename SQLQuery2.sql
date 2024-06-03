-- 1
SELECT Nome,
Ano 
FROM Filmes
-- 2
SELECT * FROM Filmes
ORDER BY Ano
--3
SELECT * FROM Filmes
WHERE Nome = 'De Volta para o Futuro'
--4
SELECT * FROM Filmes
WHERE Ano = 1997
--5
SELECT * FROM Filmes
WHERE Ano > 2000
--6
SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
--7
SELECT 
	Ano, 
	COUNT(*) Quantidade
	FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC
--8
SELECT PrimeiroNome,UltimoNome FROM Atores
WHERE Genero = 'M'
--9
SELECT PrimeiroNome,UltimoNome FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome
--10
SELECT FilmesGenero.Id, Filmes.Nome,Generos.Genero
FROM FilmesGenero INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
--11
SELECT FilmesGenero.Id, Filmes.Nome,Generos.Genero
FROM FilmesGenero INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério'
--12
SELECT ElencoFilme.Id, Filmes.Nome,Atores.PrimeiroNome,Atores.UltimoNome,ElencoFilme.Papel 
FROM ElencoFilme 
INNER JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id










