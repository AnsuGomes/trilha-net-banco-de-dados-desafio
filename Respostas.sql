--Questão 1 - Buscar o nome e ano dos filmes
select Nome, Ano from Filmes

--Questão 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select Nome, Ano, Duracao from Filmes order by Ano asc

--Questão 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select Nome, Ano, Duracao from Filmes where Nome = 'De volta para o futuro'

--Questão 4 - Buscar os filmes lançados em 1997
select Nome, Ano, Duracao from Filmes where Ano = 1997

--Questão 5 - Buscar os filmes lançados APÓS o ano 2000
select Nome, Ano, Duracao from Filmes where Ano >= 2000

--Questão 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select Nome, Ano, Duracao from Filmes where Duracao > 100 AND Duracao < 150 order by Duracao asc

--Questão 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select Ano, COUNT(*) Quantidade
from Filmes 
group by Ano
order by Quantidade desc

--Questão 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select PrimeiroNome, UltimoNome, Genero from..Atores where Genero = 'M'

--Questão 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select PrimeiroNome, UltimoNome, Genero from..Atores where Genero = 'F' order by PrimeiroNome asc

--Questão 10 - Buscar o nome do filme e o gênero
select Filmes.Nome, Generos.Genero 
from FilmesGenero
  INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
  INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

--Questão 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
select Filmes.Nome, Generos.Genero
from FilmesGenero 
  INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
  INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero 
where Generos.Genero = 'Mistério'

--Questão 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel 
from ElencoFilme 
	INNER JOIN Filmes ON Filmes.Id = ElencoFilme.IdFilme
	INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor