/*exercicio 01*/
/*CRIANDO A TABLEA CADASTRO*/
create table cadastro
(
nome varchar2(30),
sobrenome varchar2(30),
salario number(10,2),
endereco varchar2(30),
dt_cadastro date
);
/*INSERINDO DADOS NA TABELA CADASTRO*/
insert into cadastro values ('Marcelo','Diniz',1000,'Piracema 100',sysdate);
insert into cadastro values ('Fernando','Romero',2000,'Correia 100',sysdate);
insert into cadastro values ('Carlos','Martins',2500,'Siria 100',sysdate);
insert into cadastro values ('Miguel','Carmin',4000,'Piaui 100',sysdate);
insert into cadastro values ('Camila','Pacheco',8000,'Sao Jorge 84',sysdate);
insert into cadastro values ('Marina','Augusto',1400,'Nova Tatuape 100',sysdate);
insert into cadastro values ('Roberto','Eduardo',800,'Jurubatuba 505',sysdate);
insert into cadastro values ('Eduardo','Gomes',1000,'Estrela 14',sysdate);
insert into cadastro values ('Mario','Temer',3500,'Moreira 10',sysdate);
insert into cadastro values ('Marcelo','Juracy',7350,'Santa Elvira',sysdate);

/*exercicio 02*/
select * from cadastro;

/*exercicio 03*/
select c.nome, c.sobrenome 
from cadastro c;

/*exercicio 04*/
select * from cadastro c
where c.nome = 'Marina' or c.nome = 'Eduardo';

/*exercicio 05*/
select 
    c.nome, c.sobrenome,
    c.salario, 
    c.salario * 12 "ANUAL", 
    c.endereco, c.dt_cadastro 
from cadastro c;

/*exercicio 06*/
select 
    c.nome, c.sobrenome, 
    c.salario * 1.10 "AUMENTO" 
from cadastro c;

/*exercicio 07*/
select 
    c.nome, c.sobrenome,
    c.salario, c.endereco, 
    c.dt_cadastro 
from cadastro c
where c.salario between 4000 and 5000;

/*exercicio 08*/
select 
    c.nome, c.sobrenome,
    c.salario, c.endereco, 
    c.dt_cadastro 
from cadastro c
where c.salario > 3999 ;

/*exercicio 09*/
select 
    c.nome, c.sobrenome,
    c.salario, c.endereco, 
    c.dt_cadastro 
from cadastro c
where c.salario = 4000 or c.salario = 8000 ;

/*exercicio 10*/
select 
    c.nome, c.sobrenome,
    c.salario, c.endereco, 
    c.dt_cadastro 
from cadastro c
where c.nome like '%a%';

/*exercicio 11*/
select 
    c.nome, c.sobrenome,
    c.salario, c.endereco, 
    c.dt_cadastro 
from cadastro c
where c.nome like 'M%';

/*exercicio 12*/
select 
    c.nome, c.sobrenome,
    c.salario, c.endereco, 
    c.dt_cadastro 
from cadastro c
where c.nome like 'Marcelo%';

select 
    c.nome, c.sobrenome,
    c.salario, c.endereco, 
    c.dt_cadastro 
from cadastro c
where c.nome ='Marcelo';

/*exercicio 13*/
-- O exercicio 13 não está especificado

/*exercicio 14*/
select 
    c.nome, c.sobrenome 
from cadastro c
where c.nome <>'Carlos' and c.nome <> 'Fernando';

/*exercicio 15*/
select 
    c.nome, c.sobrenome,
    c.salario, c.endereco, 
    c.dt_cadastro e 
from cadastro c
where c.salario <> 1000;










