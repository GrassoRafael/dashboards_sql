-- Gráfico de pizza, contagem por gênero.

select
    gender,
    count(gender) as contagem
from leads_basic_details
group by gender