/*operador logico and*/
select employee_id, last_name, job_id, salary 
from hr.employees
where salary >= 10000 and job_id like '%MAN';
/*operador logico or*/
select employee_id, last_name, job_id, salary 
from hr.employees
where salary >= 10000 or job_id like '%MAN';
/*ordenacao das linhas*/
select last_name, job_id, department_id, hire_date
from hr.employees
order by last_name;
/*ordenando em ordem decrescente*/
select last_name, job_id, department_id, hire_date
from hr.employees
order by last_name desc;
/*concatenação*/
select 
    'O Funcionario de ID ' || employee_id ||  
    ' e sobrenome ' || last_name ||  
    ' recebe R$ ' || salary || ' de salario' as "Funcionarios e Salarios"
from hr.employees;
/*fucoes de grupo*/
select sum(salary) 
from hr.employees
where department_id = 60;

select min(salary) 
from hr.employees;

select max(salary) 
from hr.employees;

select avg(salary) 
from hr.employees;

select count(*) from hr.employees;

select count(*) from hr.employees 
where department_id = 60;

select * from hr.employees;
/*A função TRUNC tem como objetivo efetuar o truncamento(corte) de números 
para a quantidade de casas determinada na função*/
select department_id " Departamento", trunc(avg(salary)) "Media salarial"
from hr.employees
group by department_id;

/*criacao de grupo de dados*/
select * from hr.departments;

insert into cadastro (nome, sobrenome, salario, endereco)
values('Joao', 'do caminhao', 500,'rua do bras');

insert into cadastro values
('Bruna', 'Surfistinha', 5000,'Casa da Luz Vermelha', sysdate);

