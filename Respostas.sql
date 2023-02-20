--Quest�o 1 - Buscar o nome e ano dos filmes
select Nome, Ano from Filmes

--Quest�o 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select Nome, Ano, Duracao from Filmes order by Ano asc

--Quest�o 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
select Nome, Ano, Duracao from Filmes where Nome = 'De volta para o futuro'

--Quest�o 4 - Buscar os filmes lan�ados em 1997
select Nome, Ano, Duracao from Filmes where Ano = 1997

--Quest�o 5 - Buscar os filmes lan�ados AP�S o ano 2000
select Nome, Ano, Duracao from Filmes where Ano >= 2000

--Quest�o 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select Nome, Ano, Duracao from Filmes where Duracao > 100 AND Duracao < 150 order by Duracao asc

--Quest�o 7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select Ano, COUNT(*) Quantidade
from Filmes 
group by Ano
order by Quantidade desc

--Quest�o 8 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
select PrimeiroNome, UltimoNome, Genero from..Atores where Genero = 'M'

--Quest�o 9 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select PrimeiroNome, UltimoNome, Genero from..Atores where Genero = 'F' order by PrimeiroNome asc

--Quest�o 10 - Buscar o nome do filme e o g�nero
select Filmes.Nome, Generos.Genero 
from FilmesGenero
  INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
  INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

--Quest�o 11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio"
select Filmes.Nome, Generos.Genero
from FilmesGenero 
  INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
  INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero 
where Generos.Genero = 'Mist�rio'

--Quest�o 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel 
from ElencoFilme 
	INNER JOIN Filmes ON Filmes.Id = ElencoFilme.IdFilme
	INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor