-- Gráfico de barras, Desafio 3 - Quantidade de Leads por Grau de escolaridade

select
    current_education,
    count(lead_id) as qtd_lead
from leads_basic_details

group by current_education

order by qtd_lead