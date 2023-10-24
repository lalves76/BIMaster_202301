---script dim_tempo versão:20220630
---prof. anderson nascimento
create table dim_data (
sk_data integer not null,
nk_data date not null,
desc_data_completa varchar(60) not null,
nr_ano integer not null,
nr_mes integer not null,
nm_mes varchar(20) not null,
nr_dia integer not null,
nm_dia_semana varchar(20) not null,
etl_dt_inicio timestamp not null,
etl_dt_fim timestamp not null,
etl_versao integer,
constraint sk_data_pk primary key (sk_data)
);

insert into dim_data
select to_number(to_char(datum,'yyyymmdd'), '99999999') as sk_tempo,
datum as nk_data,
to_char(datum,'dd/mm/yyyy') as data_completa_formatada,
extract (year from datum) as nr_ano,
extract(month from datum) as nr_mes,
to_char(datum, 'tmMonth') as nm_mes,
extract(day from datum) as nr_dia,
to_char(datum, 'tmDay') as nm_dia_semana,
current_timestamp as data_carga,
'2199-12-31',
1
from (
---incluir aqui a data de início do script, criaremos 15 anos de datas
select '2022-01-01'::date + sequence.day as datum
from generate_series(0,5479) as sequence(day)
group by sequence.day
) dq
order by 1;
SELECT * FROM dim_data;