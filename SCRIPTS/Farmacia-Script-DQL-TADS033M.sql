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

select func.cpf "CPF", func.nome "Funcionario", 
	count(dep.cpf) "Quantidade de Dependentes"
    from funcionario func
		inner join dependente dep on dep.funcionario_cpf = func.cpf
			group by func.cpf
				order by func.nome;

select func.cpf "CPF", func.nome "Funcionario", 
	count(dep.cpf) "Quantidade de Dependentes"
    from funcionario func
		left join dependente dep on dep.funcionario_cpf = func.cpf
			group by func.cpf
				order by func.nome;

select upper(func.nome) "Funcionário", func.cpf as "CPF", func.sexo "Gênero", 
	date_format(func.dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    timestampdiff(year, func.dataNasc, now()) "Idade",
	func.estadoCivil "Estado Civil", func.email "E-mail", concat(func.ch, 'h') "Carga-horária", 
    concat('R$ ', format(func.salario, 2, 'de_DE')) "Salário", 
    concat('R$ ', format(func.comissao, 2, 'de_DE')) "Comissão", 
    concat('R$ ', format(func.salario + func.comissao, 2, 'de_DE')) "Salário Final",
    date_format(func.dataAdm, '%H:%i - %d/%m/%Y') "Data de Admissão", 
    dep.nome "Departamento", 
    coalesce(tel.numero, "Não informado") "Número de Telefone"
	from funcionario func
		inner join trabalhar trb on trb.funcionario_cpf = func.cpf    
		inner join departamento dep on dep.idDepartamento = trb.Departamento_idDepartamento
        left join telefone tel on tel.Funcionario_cpf = func.cpf
				order by func.nome;        

create view relatorioFunc as
	select upper(func.nome) "Funcionário", func.cpf as "CPF", func.sexo "Gênero", 
		date_format(func.dataNasc, '%d/%m/%Y') "Data de Nascimento", 
		timestampdiff(year, func.dataNasc, now()) "Idade",
		func.estadoCivil "Estado Civil", func.email "E-mail", concat(func.ch, 'h') "Carga-horária", 
		concat('R$ ', format(func.salario, 2, 'de_DE')) "Salário", 
		concat('R$ ', format(func.comissao, 2, 'de_DE')) "Comissão", 
		concat('R$ ', format(func.salario + func.comissao, 2, 'de_DE')) "Salário Final",
		date_format(func.dataAdm, '%H:%i - %d/%m/%Y') "Data de Admissão", 
		crg.nome "Cargo",
        dep.nome "Departamento", grt.nome "Gerente",
		coalesce(tel.numero, "Não informado") "Número de Telefone"
		from funcionario func
			inner join trabalhar trb on trb.funcionario_cpf = func.cpf    
            inner join cargo crg on crg.cbo = trb.Cargo_cbo
			inner join departamento dep on dep.idDepartamento = trb.Departamento_idDepartamento
			left join telefone tel on tel.Funcionario_cpf = func.cpf
            left join funcionario grt on grt.cpf = dep.Gerente_cpf
					order by func.nome;     

drop view relatoriofunc;

select * from relatoriofunc;

select * from relatoriofunc
	where departamento like "Frente%";
    
select * from relatoriofunc
	order by departamento;

select dep.nome "Departamento", 
	count(trb.Funcionario_cpf) "Quantidade de Funcionários", 
	concat('R$ ', format(sum(func.salario + func.comissao), 2, 'de_DE')) "Investimento Salarial + Comissão", 
    coalesce(grt.nome, "Não existe") "Gerente"
	from departamento dep
		inner join trabalhar trb on trb.Departamento_idDepartamento = dep.idDepartamento
        inner join funcionario func on func.cpf = trb.Funcionario_cpf
        left join funcionario grt on grt.cpf = dep.Gerente_cpf
			group by trb.Departamento_idDepartamento
				order by dep.nome;
                
select date_format(vnd.dataVenda, '%d/%m/%Y - %H:%i') "Data da Venda",
	concat("R$ ", format(valorTotal -  coalesce(desconto, 0), 2, "de_DE")) "Valor Pago",
    cli.nome "Cliente",
    func.nome "Vendedor"
	from venda vnd
		inner join cliente cli on cli.cpf = vnd.Cliente_cpf
        inner join funcionario func on func.cpf = vnd.Funcionario_cpf;
  
select cli.nome "Cliente", count(vnd.idVenda) "Quantidade de Vendas",
	concat("R$ ", format(sum(valorTotal -  coalesce(desconto, 0)), 2, "de_DE")) "Faturamento"
	from venda vnd
		inner join cliente cli on cli.cpf = vnd.Cliente_cpf
			group by cli.cpf
				order by cli.nome;

select func.nome "Funcionario", count(vnd.idVenda) "Quantidade de Vendas",
	concat("R$ ", format(sum(valorTotal -  coalesce(desconto, 0)), 2, "de_DE")) "Faturamento"
	from venda vnd
		inner join funcionario func on func.cpf = vnd.Funcionario_cpf
			group by func.cpf
				order by count(vnd.idVenda) desc;

select func.nome "Funcionario", count(vnd.idVenda) "Quantidade de Vendas",
	concat("R$ ", format(sum(valorTotal -  coalesce(desconto, 0)), 2, "de_DE")) "Faturamento"
	from venda vnd
		inner join funcionario func on func.cpf = vnd.Funcionario_cpf
			where vnd.dataVenda between "2021-04-01" and "2021-06-30"
				group by func.cpf
					order by sum(valorTotal -  coalesce(desconto, 0)) desc;

select upper(tipo) "Tipo", count(Venda_idVenda) "Frequência de Venda",
	concat("R$ ", format(sum(valorPago), 2, "de_DE")) "Faturamento"
	from formapag
		group by tipo
			order by sum(valorPago) desc;
		
select coalesce(endc.cidade, "Não Informado") "Cidade", 
	coalesce(endc.bairro, "Não Informado") "Bairro", 
	count(vnd.idVenda) "Quantidade de Vendas",
    concat("R$ ", format(sum(vnd.valorTotal), 2, "de_DE")) "Faturamento"
	from venda vnd
		inner join cliente cli on cli.cpf = vnd.Cliente_cpf
		left join enderecocli endc on endc.Cliente_cpf = cli.cpf
			group by endc.cidade, endc.bairro
				order by endc.cidade, sum(vnd.valorTotal) desc;

select prod.nome "Produto", count(ivp.Venda_idVenda) "Frequência de Venda",
	sum(ivp.quantidade) "Total Vendido", 
	concat("R$ ", format(sum(ivp.quantidade*ivp.valorDeVenda), 2, "de_DE")) "Faturamento",
    concat("R$ ", format(sum(ivp.quantidade*(ivp.valorDeVenda - ic.valorComp)), 2, "de_DE")) "Lucro"
	from itensvendaprod ivp
		inner join produto prod on prod.idproduto = ivp.Produto_idProduto
		inner join itenscompra ic on ic.Produto_idProduto = prod.idProduto
			group by ivp.Produto_idProduto
				order by sum(ivp.quantidade*ivp.valorDeVenda) desc;
                



