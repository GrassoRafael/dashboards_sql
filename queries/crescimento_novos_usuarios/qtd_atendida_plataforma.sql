-- Gráfico de linhas, Desafio 3 - Quantidade de Ligações Atendidas por Plataforma

with basic_details as(
    select
        *
    from leads_basic_details
), -- Tabela 1

interaction_details as(
    select
        lead_id,
        count(call_status) as contagem_ligacoes,
        call_done_date
    from leads_interaction_details
    where call_status = 'successful'
    group by lead_id,call_done_date
) -- Tabela 2

select
    interaction_details.call_done_date,
    contagem_ligacoes,
    lead_gen_source
from interaction_details
join basic_details on interaction_details.lead_id = basic_details.lead_id
