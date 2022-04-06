select upper(first_name), lower(last_name), initcap(job_id) from hr.employees;
-- UPPER deixa tudo em Maiusculo
-- LOWER deixa tudo em Minusculo
-- INITCAP deixa a primeira letra de cada palavra em Maiusculo

select
    e.employee_id, 
    e.first_name,
    e.last_name
from hr.employees e
where lower(e.last_name) = 'higgins';

select
    e.employee_id, 
    CONCAT(e.first_name, e.last_name) AS "NOME",
    e.job_id,
    LENGTH(e.last_name),
    INSTR(e.last_name, 'a') AS "Possui a"
from hr.employees e
where SUBSTR(e.job_id, 4) = 'REP';

select ROUND (45.295, 2) from dual;
-- ROUND arredonda um numero para uma determinada quantidade de casas decimais
-- caso vc não defina as casa decimais ele nao ira exibir casas decimais, sempre aredonda pra cima

select TRUNC (45.295, 2) from dual;
-- Trunc arredonda um numero para uma determinada quantidade de casas decimais, apenas utiliza as casas definidas

select last_name, salary, MOD(salary,5000) 
from hr.employees
where job_id = 'SA_REP';

-- MOD retorna o resto da divisao

-- 01
select 
    e.employee_id, 
    e.last_name, 
    e.salary,
    ROUND(e.salary * 1.155) AS "NOVO_SALARIO"
from hr.employees e;

-- 02
select 
    e.employee_id, 
    e.last_name, 
    e.salary,
    ROUND(e.salary * 1.155) AS "NOVO_SALARIO",
    ROUND(e.salary*0.155) AS "AUMENTO"
from hr.employees e;

-- 03
select 
    INITCAP(e.last_name) as "SOBRENOME",
    LENGTH(e.last_name) as "TAMANHO_SOBRENOME"
from hr.employees e
where e.last_name like 'J%' or e.last_name like 'A%' or e.last_name like 'M%'
order by e.last_name;

