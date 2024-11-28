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
                
-- criando a função calcAuxSaude
delimiter $$
create function calcAuxSaude(dn date)
	returns decimal(6,2) deterministic
	begin
		declare idade int;
        declare auxSaude decimal(6,2) default 0.0;
        select timestampdiff(year, dn, now()) into idade;
        if idade <= 25 then set auxSaude = 250;
			elseif idade>= 26 and idade <= 35 then set auxSaude = 350;
			elseif idade>= 36 and idade <= 45 then set auxSaude = 450;
			else set auxSaude = 550;
		end if;
        return auxSaude;
    end $$
delimiter ;				

-- criando a função calcAuxEscola
delimiter $$
create function calcAuxEscola(funcCPF varchar(14))
	returns decimal(6,2) deterministic
	begin
		declare auxEscola decimal(6,2) default 0.0;
        declare qtdFilho int default 0;
        select count(cpf) into qtdFilho
			from dependente
				where funcionario_cpf = funcCPF and
					timestampdiff(year, dataNasc, now()) <= 6
						group by funcionario_cpf;
        set auxEscola = 180 * qtdFilho;
        return auxEscola;
    end $$
delimiter ;

-- criação da função de calcINSS
delimiter $$
create function calcINSS(sb decimal(7,2))
	returns decimal(6,2) deterministic
    begin
		declare inss decimal(6,2) default 0.0;
        if sb <= 1412.00 then set inss = sb * 0.075;
			elseif sb > 1412.0 and sb <= 2666.68 then set inss = sb * 0.09;
			elseif sb > 2666.68 and sb <= 4000.03 then set inss = sb * 0.12;
            elseif sb > 4000.03 and sb <= 7786.02 then set inss = sb * 0.14;
			else set inss = 7786.02 * 0.14;
            end if;
		return inss;
    end $$
delimiter ;


-- criação da função de calcIRRF
delimiter $$
create function calcIRRF(sb decimal(7,2))
	returns decimal(6,2) deterministic
    begin
		declare irrf decimal(6,2) default 0.0;
        if sb > 2259.21  and sb <= 2826.65 then set irrf = sb * 0.075;
			elseif sb > 2826.65 and sb <= 3751.05 then set irrf = sb * 0.15;
            elseif sb > 3751.05 and sb <= 4664.68 then set irrf = sb * 0.225;
			else set irrf = sb * 0.275;
            end if;
		return irrf;
    end $$
delimiter ;

-- cpf, funcionario, salario(SB), comissao, aux alimentacao(550), aux saude(idade),
-- aux escola(180*filho<=6), INSS, IRRF, salario liquido
select cpf "CPF", nome "Funcionário", 
	concat("R$ ", format(salario, 2, 'de_DE')) "Salário Bruto",
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão",
    concat("R$ ", format(550, 2, 'de_DE')) "Auxílio Alimentação",
    concat("R$ ", format(calcAuxSaude(dataNasc), 2, 'de_DE'))  "Auxílio Saúde",
    concat("R$ ", format(calcAuxEscola(cpf), 2, 'de_DE'))  "Auxílio Escola",
    concat("-R$ ", format(calcINSS(salario), 2, 'de_DE'))  "INSS",
    concat("-R$ ", format(calcIRRF(salario), 2, 'de_DE'))  "IRRF",
    concat("R$ ", format(salario + comissao + 550 + calcAuxSaude(dataNasc) 
		+ calcAuxEscola(cpf) - calcINSS(salario) - calcIRRF(salario), 2, 
        'de_DE'))"Salário Líquido"
	from funcionario
		order by nome;

create view vFolhaPag as
	select cpf "CPF", nome "Funcionário", 
		concat("R$ ", format(salario, 2, 'de_DE')) "Salário Bruto",
		concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão",
		concat("R$ ", format(550, 2, 'de_DE')) "Auxílio Alimentação",
		concat("R$ ", format(calcAuxSaude(dataNasc), 2, 'de_DE'))  "Auxílio Saúde",
		concat("R$ ", format(calcAuxEscola(cpf), 2, 'de_DE'))  "Auxílio Escola",
		concat("-R$ ", format(calcINSS(salario), 2, 'de_DE'))  "INSS",
		concat("-R$ ", format(calcIRRF(salario), 2, 'de_DE'))  "IRRF",
		concat("R$ ", format(salario + comissao + 550 + calcAuxSaude(dataNasc) 
			+ calcAuxEscola(cpf) - calcINSS(salario) - calcIRRF(salario), 2, 
			'de_DE'))"Salário Líquido"
		from funcionario
			order by nome;

select * from vfolhapag
	order by `Salário Líquido` desc;
    
-- valorComp, valorVnd --> valorComp + (valorComp * 0,33) + (valorComp * 0,25) +
-- (valorComp * 2)

delimiter $$
create procedure calcValorFinal(in valorComp decimal(6,2), out valorVnd decimal(6,2))
	begin
		set valorVnd = valorComp + (valorComp * 0.33) + 
			(valorComp * 0.25) + (valorComp * 2);
    end $$
delimiter ;

call calcValorFinal(75/15, @valorVenda);

select @valorVenda;

delimiter $$
create procedure cadFunc(in pcpf varchar(14),
						in pnome varchar(60), 
						in pnomeSocial varchar(45),
						in pemail varchar(45), 
						in psexo char(1), 
						in pestadoCivil varchar(15), 
						in pdataNasc date, 
						in pch int, 
						in psalario decimal(7,2),
						in pcomissao decimal(6,2), 
						in pdataAdm datetime,
                        in puf char(2), 
						in pcidade varchar(60), 
						in pbairro varchar(60), 
						in prua varchar(70), 
						in pnumero int, 
						in pcomp varchar(45), 
						in pcep varchar(9),
						in numTel1 varchar(15),
                        in numTel2 varchar(15),
                        in numTel3 varchar(15))
	begin
		insert into funcionario (cpf, nome, nomeSocial, email, sexo, estadoCivil, 
			dataNasc, ch, salario, comissao, dataAdm)
			value (pcpf, pnome, pnomeSocial, pemail, psexo, pestadoCivil, pdataNasc,
			pch, psalario, pcomissao, pdataAdm);
		insert into enderecofunc
			value (pcpf, puf, pcidade, pbairro, prua, pnumero, pcomp, pcep);
		insert into telefone (numero, funcionario_cpf)
			value (numTel1, pcpf);
		if numTel2 is not null 
			then insert into telefone (numero, funcionario_cpf)
					value (numTel2, pcpf);
		end if;
        if numTel3 is not null 
			then insert into telefone (numero, funcionario_cpf)
					value (numTel3, pcpf);
		end if;
    end $$
delimiter ;
    
call cadFunc("999.888.777-99", "Mateus Henrique de Assis", null, "mhassis@gmail.com",
	'M', "Casado", '2003-11-08', 40, 3200, 500, '2024-11-04', 'PE', "Recife", 
    "Varzea", "Prof. Danilo Farias", 157, "Ap 304", "50850-300", "(81)999987777", 
    "(81)977886655", null);

delimiter $$
create trigger tgr_aft_insert_itensVndProd after insert
	on itensVendaProd
    for each row
    begin
		update produto
			set quantidade = quantidade - new.quantidade
				where idProduto = new.Produto_idProduto;
		update venda
			set valorTotal = valorTotal + new.quantidade * new.valorDeVenda 
								- new.descontoProd * new.valorDeVenda * new.quantidade
				where idVenda = new.Venda_idVenda;
    end $$
delimiter ;

drop trigger tgr_aft_insert_itensVndProd;

insert into venda (dataVenda, valorTotal, desconto, Funcionario_cpf, 
					Cliente_cpf)
		value ('2024-11-21 11:40:00', 0.0, 0.0,"999.888.777-99","896.235.417-80");

insert into itensvendaprod
	values (264, 1, 5, 4, 0.1),
		(264, 6, 9, 2, 0.0),
        (264, 41, 5, 10, 0.2),
        (264, 45, 50, 1, 0.0);

insert into venda (dataVenda, valorTotal, desconto, Funcionario_cpf, 
					Cliente_cpf)
		value ('2024-11-28 10:30:00', 0.0, 0.0,"999.888.777-99","896.235.417-80");

insert into itensvendaprod
	values (265, 10, 15, 4, 0.1),
		(265, 11, 20, 2, 0.5),
        (265, 12, 10, 10, 0.2);

delimiter $$
create trigger trg_aft_delete_itensvendaprod after delete 
on itensvendaprod 
for each row 
	begin 
		update produto
			set quantidade = quantidade + old.quantidade
				where idProduto = old.Produto_idProduto;
		update venda
			set valorTotal = valorTotal - (old.quantidade * old.valorDeVenda 
								- old.descontoProd * old.valorDeVenda * old.quantidade)
				where idVenda = old.Venda_idVenda;
    end $$
delimiter ;

delete from itensvendaprod
	where Venda_idVenda = 265 and Produto_idProduto = 12;
		
delimiter $$
create trigger trg_aft_update_itensvendaprod after update 
on itensvendaprod 
for each row 
	begin 
		if ((new.quantidade - old.quantidade) > 0) then 
			update produto
				set quantidade = quantidade - (new.quantidade - old.quantidade)
					where idProduto = old.Produto_idProduto;
			update venda
				set valorTotal = valorTotal + ((new.quantidade - old.quantidade) * old.valorDeVenda 
									- old.descontoProd * old.valorDeVenda * (new.quantidade - old.quantidade))
					where idVenda = old.Venda_idVenda;
		else 
			update produto
				set quantidade = quantidade + (old.quantidade - new.quantidade)
					where idProduto = old.Produto_idProduto;
			update venda
				set valorTotal = valorTotal - ((old.quantidade - new.quantidade) * old.valorDeVenda 
									- old.descontoProd * old.valorDeVenda * (old.quantidade - new.quantidade))
					where idVenda = old.Venda_idVenda;
        end if;
    end $$
delimiter ;

drop trigger trg_aft_update_itensvendaprod;

update itensvendaprod
	set quantidade = quantidade + 2
		where venda_idVenda = 265 and produto_idProduto = 10;
        
update itensvendaprod
	set quantidade = quantidade - 1
		where venda_idVenda = 265 and produto_idProduto = 11;
