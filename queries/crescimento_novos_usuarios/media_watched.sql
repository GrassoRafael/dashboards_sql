-- Tabela, Desafio 3 - Médias de Watched

select
    avg(watched_percentage) as porcentagem,
    language
from leads_demo_watched_details

where watched_percentage > 0.5

group by language