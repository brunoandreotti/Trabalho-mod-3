<br />
<p align="center">
    <img src="./readme/download.jpg" alt="Logo" width="200">

  <h3 align="center">Trabalho Módulo 3 - Visualização de dados</h3><br>

  <p align="center">
     Projeto desenvolvido como projeto final do Módulo 3 do curso de Desenvolvedor Web FullStack da <a class="credits" href="https://www.resilia.com.br" target="_blank">Resilia Educação</a>

  
 <br />
  <p align="center">
     Visualização de dados
      <p align="center">
  <a href="#sobre"> Sobre </a> |
  <a href="#conhecimentos-praticados"> Conhecimentos praticados </a> |
  <a href="#perguntas"> Perguntas </a>    
       <br />
    <br />
    <h1 align="center">
    <img src="./readme/graficos.gif" alt="gif-readme">
 </h1>
  </p>
</p>


# Sobre
O objetivo do projeto foi criar gráficos que respondessem as perguntas elaboradas de acordo com a análise feita do banco de dados.

# Conhecimentos Praticados
✔ MySQL <br>
✔ MySQL Workbench <br>
✔ PowerBI <br>


# Perguntas:
<b> Qual time fez mais pontos jogando fora de casa de 2003 até 2013?</b> <br>

  SELECT SUM(PTS_away), NICKNAME, TEAM_ID, ABBREVIATION <br> 
  FROM games <br>
  INNER JOIN TEAMS <br>
  ON games.VISITOR_TEAM_ID = teams.TEAM_ID <br>
  WHERE SEASON IN (2003, 2013) <br>
  GROUP BY TEAM_ID ORDER BY SUM(PTS_away) DESC LIMIT 5;

 <br><br>
 
 <b> Qual time teve mais jogadores nas temporadas de 2009 a 2019?</b> <br>

  SELECT TEAM_ID, NICKNAME, COUNT(TEAM_ID) <br>
   FROM players <br>
   INNER JOIN teams <br>
   USING (team_id) <br>
   GROUP BY team_id <br>
   ORDER BY count(TEAM_ID) <br>
   DESC LIMIT 5
Teste

 <br><br>

  <b> Quais foram os 5 jogadores que jogaram em mais times?</b> <br>

  SELECT PLAYER_NAME, COUNT(TEAM_ID) <br>
  FROM players <br>
  GROUP BY player_name <br>
  ORDER BY count(team_id) <br>
  DESC LIMIT 5;

 <br><br>

  <b> Qual time mais venceu jogando em casa?</b> <br>

 SELECT HOME_TEAM_ID,
 ABBREVIATION as ABREV,
 NICKNAME as APELIDO, COUNT(HOME_TEAM_ID) as TOTAL_VITORIAS,
 HOME_TEAM_WINS as VIT_CASA <br>
FROM games <br>
INNER JOIN teams <br>
ON games.HOME_TEAM_ID = teams.TEAM_ID <br>
GROUP BY HOME_TEAM_ID <br>
HAVING VIT_CASA = 1 <br>
ORDER BY TOTAL_VITORIAS desc;

 <br><br>





---
**Desenvolvido  por [Bruno Andreotti](www.linkedin.com/in/bruno-andreotti/), [Cibele Martins](https://www.linkedin.com/in/cibelemartinssss/), [Gicelle Sena ](https://www.linkedin.com/in/gicellesena/), [Jamerson David](https://www.linkedin.com/in/jamerson-david-13b641171/) e [Maysa Pereira](https://www.linkedin.com/in/maysa-pereira/), .** 