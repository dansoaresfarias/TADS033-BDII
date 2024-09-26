-- Comandos SQL: DQL

select * from funcionario;

select 
	cpf, 
	nome, 
    email, 
    sexo, 
    estadoCivil, 
    dataNasc, 
    ch,
	salario, 
    comissao, 
    dataAdm 
from 
	funcionario;
    
select cpf,	nome, email, sexo, estadoCivil, dataNasc, ch,
	salario, comissao, dataAdm 
    from funcionario;
    
select cpf "CPF", nome as "Funcionário", email "E-mail", 
	sexo "Gênero", estadoCivil "Estado Civil", 
    dataNasc "Data de Nascimento", ch "Carga-horária",
	salario "Salário", comissao "Comissão", dataAdm "Data de Admissão"
    from funcionario;
    
select cpf "CPF", nome as "Funcionário", email "E-mail", 
	sexo "Gênero", estadoCivil "Estado Civil", 
    dataNasc "Data de Nascimento", ch "Carga-horária",
	salario "Salário", comissao "Comissão", dataAdm "Data de Admissão"
    from funcionario
		order by nome;
    
select cpf "CPF", nome as "Funcionário", email "E-mail", 
	sexo "Gênero", estadoCivil "Estado Civil", 
    dataNasc "Data de Nascimento", ch "Carga-horária",
	salario "Salário", comissao "Comissão", dataAdm "Data de Admissão"
    from funcionario
		order by salario desc;    
        
select cpf "CPF", nome as "Funcionário", email "E-mail", 
	sexo "Gênero", estadoCivil "Estado Civil", 
    dataNasc "Data de Nascimento", ch "Carga-horária",
	salario "Salário", comissao "Comissão", dataAdm "Data de Admissão"
    from funcionario
		order by estadoCivil, salario desc;

select cpf "CPF", nome as "Funcionário", email "E-mail", 
	sexo "Gênero", estadoCivil "Estado Civil", 
    date_format(dataNasc, "%d/%m/%Y")  "Data de Nascimento", 
    concat(ch, "h") "Carga-horária",
	concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, "de_DE")) "Comissão", 
    date_format(dataAdm, "%H:%i %d/%m/%Y")  "Data de Admissão"
    from funcionario
		where estadoCivil like "Casad%"
			order by nome;

