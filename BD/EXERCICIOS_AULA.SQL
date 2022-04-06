/*exercicio01*/
-- A
select min(salary) 
from hr.employees;

-- B
select max(salary) 
from hr.employees;

-- C
select avg(salary) 
from hr.employees;

-- D
select e.job_id, sum(e.salary) "TOTAL SALARIOS"
from hr.employees e
group by e.job_id;

-- E
select e.department_id, trunc(avg(e.salary)) "MEDIA SALARIOS"
from hr.employees e
group by e.department_id;

-- F
select e.department_id, trunc(avg(e.salary)) "MEDIA SALARIOS"
from hr.employees e
where e.department_id >80
group by e.department_id;


/*exercicio02*/
select manager_id, min(salary) "Salario"
from hr.employees
where manager_id is not null and salary > 6000
group by manager_id
order by manager_id desc;

/*EXERCICIO03*/
insert into cadastro (nome, sobrenome, salario, endereco, dt_cadastro)
values('Robson', 'Nunes', 4000,'Rua um', sysdate);
insert into cadastro (nome, sobrenome, salario, endereco, dt_cadastro)
values('Maria', 'das Dores', 1600,'Rua Dois', sysdate);
insert into cadastro (nome, sobrenome, salario, endereco, dt_cadastro)
values('Jeremias', 'do Cabare', 1900,'Rua Tres', sysdate);
insert into cadastro (nome, sobrenome, salario, endereco, dt_cadastro)
values('Joalisson', 'Boca Euzebio',1900,'Rua da Farinha', sysdate);
insert into cadastro (nome, sobrenome, salario, endereco, dt_cadastro)
values('Giane', 'do Salgado', 2000,'Rua Quatro', sysdate);

insert into cadastro values
('Camila', 'da Contabilidade', 7000,'Rua do Desvio', sysdate);
insert into cadastro values
('Valmir', 'dos Testes', 25000,'Rua do Canto', sysdate);
insert into cadastro values
('Bruno', 'Ananias', 4500,'Rua da Escola', sysdate);
insert into cadastro values
('Bruna', 'da Gi', 2000,'Casa da Gi', sysdate);
insert into cadastro values
('Yan', 'Kinder das Bolas', 1900,'Rua da Barba', sysdate);

select * from cadastro;

