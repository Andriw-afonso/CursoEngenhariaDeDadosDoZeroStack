-- CDC

ALTER TABLE public.airbyte_users ADD PRIMARY KEY (id);
 
ALTER TABLE public.airbyte_products ADD PRIMARY KEY (id);


-- consulta a tabela produtos
select * from public.airbyte_products
order by 1;

-- Atualiza a linha da tabela products
update public.airbyte_products
set make ='JEEP',
    model='COMPAS'
where id = 15;

-- Remove a linha da tabela products
delete from airbyte_products
where id = 15;


-- consulta a tabela produtos
select * from public.airbyte_products
order by 1;

-- consulta a tabela users
select * from public.airbyte_users
order by id;

-- atualiza a tabela users
update public.airbyte_users
set mail ='fulano@stack.com.br',
    name='Fulano',
    sex='M'
where id = 501;

 
--  Endpoint attribute
 https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html
 
-- timestampColumnName=TIMESTAMP