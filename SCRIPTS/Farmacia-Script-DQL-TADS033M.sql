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

select cpf "CPF", nome as "Funcionário", email "E-mail", 
	sexo "Gênero", estadoCivil "Estado Civil", 
    date_format(dataNasc, "%d/%m/%Y")  "Data de Nascimento", 
    concat(ch, "h") "Carga-horária",
	concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, "de_DE")) "Comissão", 
    date_format(dataAdm, "%H:%i %d/%m/%Y")  "Data de Admissão"
    from funcionario
		where dataAdm < '2020-03-19'
			order by nome;
            
select cpf "CPF", nome as "Funcionário", email "E-mail", 
	sexo "Gênero", estadoCivil "Estado Civil", 
    date_format(dataNasc, "%d/%m/%Y")  "Data de Nascimento", 
    concat(ch, "h") "Carga-horária",
	concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, "de_DE")) "Comissão", 
    date_format(dataAdm, "%H:%i %d/%m/%Y")  "Data de Admissão"
    from funcionario
		where dataAdm > '2020-03-19'
			order by nome;
            
select cpf "CPF", nome as "Funcionário", email "E-mail", 
	sexo "Gênero", estadoCivil "Estado Civil", 
    date_format(dataNasc, "%d/%m/%Y")  "Data de Nascimento", 
    concat(ch, "h") "Carga-horária",
	concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, "de_DE")) "Comissão", 
    date_format(dataAdm, "%H:%i %d/%m/%Y")  "Data de Admissão"
    from funcionario
		order by salario desc
			limit 10;

select cpf "CPF", nome as "Funcionário", email "E-mail", 
	sexo "Gênero", estadoCivil "Estado Civil", 
    date_format(dataNasc, "%d/%m/%Y")  "Data de Nascimento", 
    concat(ch, "h") "Carga-horária",
	concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, "de_DE")) "Comissão", 
    date_format(dataAdm, "%H:%i %d/%m/%Y")  "Data de Admissão"
    from funcionario
		where salario > (select avg(salario) from funcionario)
			order by nome;
    
select avg(salario) from funcionario;
    
select cpf "CPF", nome as "Funcionário", email "E-mail", 
	sexo "Gênero", estadoCivil "Estado Civil", 
    date_format(dataNasc, "%d/%m/%Y")  "Data de Nascimento", 
    concat(ch, "h") "Carga-horária",
	concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, "de_DE")) "Comissão", 
    date_format(dataAdm, "%H:%i %d/%m/%Y")  "Data de Admissão"
    from funcionario
		where cpf in (select funcionario_cpf from enderecoFunc
	where cidade like "Olinda")
			order by nome;    

select funcionario_cpf from enderecoFunc
	where cidade like "Olinda";

select cpf "CPF", nome as "Funcionário", email "E-mail", 
	sexo "Gênero", estadoCivil "Estado Civil", 
    date_format(dataNasc, "%d/%m/%Y")  "Data de Nascimento", 
    concat(ch, "h") "Carga-horária",
	concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, "de_DE")) "Comissão", 
    date_format(dataAdm, "%H:%i %d/%m/%Y")  "Data de Admissão"
    from funcionario, enderecoFunc
		where funcionario.cpf = enderecoFunc.funcionario_cpf
			and enderecoFunc.cidade like "Olinda"
			order by nome;

select cpf "CPF", nome as "Funcionário", email "E-mail", 
	sexo "Gênero", estadoCivil "Estado Civil", 
    date_format(dataNasc, "%d/%m/%Y")  "Data de Nascimento", 
    concat(ch, "h") "Carga-horária",
	concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, "de_DE")) "Comissão", 
    date_format(dataAdm, "%H:%i %d/%m/%Y")  "Data de Admissão"
    from funcionario
		inner join enderecoFunc on funcionario.cpf = enderecoFunc.funcionario_cpf
			where enderecoFunc.cidade like "Olinda"
			order by nome;
            
select func.cpf "CPF", func.nome as "Funcionário", func.email "E-mail", 
	func.sexo "Gênero", func.estadoCivil "Estado Civil", 
    date_format(func.dataNasc, "%d/%m/%Y")  "Data de Nascimento", 
    concat(func.ch, "h") "Carga-horária",
	concat("R$ ", format(func.salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(func.comissao, 2, "de_DE")) "Comissão", 
    date_format(func.dataAdm, "%H:%i %d/%m/%Y")  "Data de Admissão"
    from funcionario func
		inner join enderecoFunc endFunc on func.cpf = endFunc.funcionario_cpf
			where endFunc.cidade like "Olinda"
			order by nome;

select func.cpf "CPF", func.nome as "Funcionário", func.email "E-mail", 
	func.sexo "Gênero", func.estadoCivil "Estado Civil", 
    date_format(func.dataNasc, "%d/%m/%Y")  "Data de Nascimento", 
    concat(func.ch, "h") "Carga-horária",
	concat("R$ ", format(func.salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(func.comissao, 2, "de_DE")) "Comissão", 
    date_format(func.dataAdm, "%H:%i %d/%m/%Y")  "Data de Admissão", 
    endFunc.cidade "Cidade",
    crg.nome "Cargo" 
    from funcionario func
		inner join enderecoFunc endFunc on func.cpf = endFunc.funcionario_cpf
        inner join trabalhar trb on trb.funcionario_cpf = func.cpf
        inner join cargo crg on crg.cbo = trb.cargo_cbo
			order by crg.nome, func.nome;

select dep.cpf "CPF Dependente", dep.nome "Dependente", 
	dep.parentesco "Parentesco", 
    date_format(dep.datanasc, '%d/%m/%Y') "Data de nascimento Dependente",
    func.nome "Funcionário Responsável"
    from dependente dep
		inner join funcionario func on func.cpf = dep.funcionario_cpf
			order by func.nome, dep.nome;

select * from cliente;

select cli.cpf "CPF", cli.nome "Cliente", cli.sexo "Gênero", 
	timestampdiff(year, cli.dataNasc, now()) "Idade", 
    cli.email "E-mail", cli.telefone "Telefone", 
    endCli.bairro "Bairro", endCli.cidade "Cidade"
	from cliente cli
		inner join enderecocli endCli on endCli.Cliente_cpf = cli.cpf
		order by cli.nome; 

select cli.cpf "CPF", cli.nome "Cliente", cli.sexo "Gênero", 
	timestampdiff(year, cli.dataNasc, now()) "Idade", 
    cli.email "E-mail", cli.telefone "Telefone", 
    coalesce(concat(psCli.nome, " | ", psCli.numero), "Não informado") "Plano de Saude", 
    coalesce(endCli.bairro, "Não informado") "Bairro", 
    coalesce(endCli.cidade, "Não informado") "Cidade"
	from cliente cli
		left join enderecocli endCli on endCli.Cliente_cpf = cli.cpf
        left join planosaude psCli on psCli.Cliente_cpf = cli.cpf
		order by cli.nome; 







