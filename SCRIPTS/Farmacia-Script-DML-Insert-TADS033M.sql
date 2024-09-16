insert into cliente (cpf, nome, sexo, email, telefone, dataNasc) 
	value ("123.321.222-11", "Heloisa Costa", 'F', 
			"heloisa.costa@gmail.com", "81987457600", "2005-05-30");
            
insert into enderecocli (cliente_cpf, uf, cidade, bairro, rua,
							numero, comp, cep)
	value ("123.321.222-11", "PE", "Jaboatão dos Guararapes", 
			"Piedade", "Rua direita", 132, "A", "50550-540");

insert into planosaude (cliente_cpf, numero, nome)
	value ("123.321.222-11", "312456978-08", "Amil PE");

insert into cliente (cpf, nome, sexo, email, telefone, dataNasc) 
	values ("123.321.222-00", "Bruno Ricardo", 'M', 
			"bruno.ricardo@gmail.com", "81987457644", "1992-04-14"),
            ("123.321.777-00", "Erick Lopes", 'M', 
			"erick.lopes@gmail.com", "81955557644", "1982-06-29"),
            ("555.321.222-00", "Bernado Serrano", 'M', 
			"bernado.serrano@gmail.com", "81997457644", "2006-09-27");

insert into enderecocli (cliente_cpf, uf, cidade, bairro, rua,
							numero, comp, cep)
	values ("123.321.222-00", "PE", "Recife", 
			"Caxanga", "Rua do golf", 142, "103", "50700-540"),
            ("123.321.777-00", "PE", "Recife", 
			"Casa amarela", "Rua da esquerda", 823, "1204", "50770-450");

insert into planosaude (cliente_cpf, numero, nome)
	value ("555.321.222-00", "312454448-08", "Unimed Recife PE");

INSERT INTO cliente (cpf, nome, sexo, email, telefone, dataNasc)
VALUES
    ("123.456.789-01", "Ana Carolina", 'F', "ana.carolina@gmail.com", "81987451234", "1990-05-12"),
    ("987.654.321-09", "Marcos Silva", 'M', "marcos.silva@hotmail.com", "81997452345", "1985-07-22"),
    ("654.987.123-10", "Cláudia Mendes", 'F', "claudia.mendes@yahoo.com", "81977453456", "1992-03-14"),
    ("321.654.987-11", "Paulo Henrique", 'M', "paulo.henrique@gmail.com", "81967454567", "1988-10-30"),
    ("159.753.486-12", "Roberta Freitas", 'F', "roberta.freitas@gmail.com", "81987455678", "1995-08-15"),
    ("258.456.789-13", "Carlos Souza", 'M', "carlos.souza@gmail.com", "81957456789", "1993-02-20"),
    ("369.852.147-14", "Juliana Oliveira", 'F', "juliana.oliveira@gmail.com", "81977457890", "1991-11-25"),
    ("147.258.369-15", "Rodrigo Santos", 'M', "rodrigo.santos@hotmail.com", "81997458901", "1987-04-10"),
    ("753.951.258-16", "Camila Castro", 'F', "camila.castro@gmail.com", "81967459012", "1996-06-18"),
    ("852.741.963-17", "Fernando Almeida", 'M', "fernando.almeida@yahoo.com", "81987460123", "1989-12-12"),
    ("963.852.741-18", "Bianca Rocha", 'F', "bianca.rocha@gmail.com", "81957461234", "1994-09-28"),
    ("741.852.963-19", "Thiago Nogueira", 'M', "thiago.nogueira@gmail.com", "81967462345", "1990-01-05"),
    ("654.321.987-20", "Luciana Lima", 'F', "luciana.lima@hotmail.com", "81987463456", "1986-07-30"),
    ("789.456.123-21", "Daniel Barros", 'M', "daniel.barros@gmail.com", "81997464567", "1992-11-11"),
    ("987.123.654-22", "Mariana Teixeira", 'F', "mariana.teixeira@gmail.com", "81967465678", "1993-03-03"),
    ("321.987.654-23", "Lucas Pereira", 'M', "lucas.pereira@gmail.com", "81957466789", "1984-08-16"),
    ("456.789.123-24", "Patrícia Araújo", 'F', "patricia.araujo@gmail.com", "81987467890", "1991-02-19"),
    ("654.123.789-25", "Gabriel Cunha", 'M', "gabriel.cunha@hotmail.com", "81997468901", "1988-06-07"),
    ("852.963.741-26", "Isabela Martins", 'F', "isabela.martins@gmail.com", "81967469012", "1995-12-21"),
    ("753.159.852-27", "Ricardo Gomes", 'M', "ricardo.gomes@yahoo.com", "81957470123", "1989-04-09"),
    ("852.456.159-28", "Larissa Carvalho", 'F', "larissa.carvalho@gmail.com", "81987471234", "1994-10-17"),
    ("159.357.258-29", "Eduardo Ferreira", 'M', "eduardo.ferreira@gmail.com", "81997472345", "1987-09-22"),
    ("258.159.357-30", "Vanessa Costa", 'F', "vanessa.costa@hotmail.com", "81967473456", "1990-05-05"),
    ("147.369.258-31", "Felipe Monteiro", 'M', "felipe.monteiro@gmail.com", "81987474567", "1992-01-15"),
    ("258.147.369-32", "Jéssica Melo", 'F', "jessica.melo@gmail.com", "81997475678", "1991-07-12"),
    ("369.147.258-33", "Diego Ramos", 'M', "diego.ramos@gmail.com", "81967476789", "1986-08-04"),
    ("147.258.369-34", "Natália Andrade", 'F', "natalia.andrade@gmail.com", "81957477890", "1993-11-09"),
    ("753.963.852-35", "Leonardo Borges", 'M', "leonardo.borges@gmail.com", "81987478901", "1994-02-11"),
    ("258.963.753-36", "Adriana Vasconcelos", 'F', "adriana.vasconcelos@gmail.com", "81997479012", "1985-06-25");

INSERT INTO enderecocli (cliente_cpf, uf, cidade, bairro, rua, numero, comp, cep)
VALUES
    ("123.456.789-01", "PE", "Recife", "Boa Viagem", "Avenida Boa Viagem", 1000, "Apto 101", "51021-190"),
    ("987.654.321-09", "PE", "Olinda", "Carmo", "Rua do Sol", 45, "Casa", "53020-010"),
    ("654.987.123-10", "PE", "Recife", "Santo Amaro", "Rua da Aurora", 200, "Apto 102", "50050-000"),
    ("321.654.987-11", "PE", "Jaboatão dos Guararapes", "Piedade", "Rua Direita", 132, "Casa", "54400-220"),
    ("159.753.486-12", "PE", "Recife", "Casa Forte", "Avenida 17 de Agosto", 500, "Apto 303", "52061-540"),
    ("258.456.789-13", "PE", "Recife", "Espinheiro", "Rua Amélia", 150, "Casa", "52020-250"),
    ("369.852.147-14", "PE", "Recife", "Tamarineira", "Rua do Futuro", 180, "Casa", "52050-010"),
    ("147.258.369-15", "PE", "Olinda", "Varadouro", "Rua do Amparo", 200, "Casa", "53025-080"),
    ("753.951.258-16", "PE", "Recife", "Graças", "Rua das Graças", 300, "Apto 101", "52011-010"),
    ("852.741.963-17", "PE", "Paulista", "Janga", "Avenida Cláudio Gueiros Leite", 350, "Casa", "53439-400"),
    ("963.852.741-18", "PE", "Recife", "Pina", "Rua da Aurora", 400, "Apto 502", "51110-190"),
    ("741.852.963-19", "PE", "Cabo de Santo Agostinho", "Centro", "Avenida Getúlio Vargas", 500, "Casa", "54500-000"),
    ("654.321.987-20", "PE", "Recife", "Boa Vista", "Rua Gervásio Pires", 600, "Apto 202", "50050-070"),
    ("789.456.123-21", "PE", "Ipojuca", "Porto de Galinhas", "Rua das Piscinas Naturais", 700, "Casa", "55590-000"),
    ("987.123.654-22", "PE", "Olinda", "Bairro Novo", "Avenida Ministro Marcos Freire", 800, "Casa", "53030-020"),
    ("321.987.654-23", "PE", "Camaragibe", "Timbi", "Avenida Belmino Correia", 900, "Casa", "54756-000"),
    ("456.789.123-24", "PE", "Recife", "Aflitos", "Rua da Harmonia", 1000, "Apto 404", "52050-100"),
    ("654.123.789-25", "PE", "Recife", "Casa Amarela", "Estrada do Arraial", 1100, "Casa", "52070-020"),
    ("852.963.741-26", "PE", "Olinda", "Rio Doce", "Avenida Brasil", 1200, "Casa", "53090-100"),
    ("753.159.852-27", "PE", "Recife", "Várzea", "Rua General Polidoro", 1300, "Apto 305", "50741-010"),
    ("852.456.159-28", "PE", "Recife", "Imbiribeira", "Rua Arquiteto Luiz Nunes", 1400, "Casa", "51170-390"),
    ("159.357.258-29", "PE", "Paulista", "Paratibe", "Avenida Lindolfo Collor", 1500, "Casa", "53403-300"),
    ("258.159.357-30", "PE", "Recife", "Torre", "Rua João Ivo da Silva", 1600, "Apto 202", "50710-110"),
    ("147.369.258-31", "PE", "Olinda", "Ouro Preto", "Avenida Brasil", 1700, "Casa", "53130-120"),
    ("258.147.369-32", "PE", "Recife", "Jardim São Paulo", "Rua Carlos Gomes", 1800, "Apto 301", "50751-220"),
    ("369.147.258-33", "PE", "Recife", "Boa Viagem", "Rua dos Navegantes", 1900, "Apto 502", "51020-010"),
    ("147.258.369-34", "PE", "Recife", "Derby", "Avenida Agamenon Magalhães", 2000, "Apto 601", "52010-900"),
    ("753.963.852-35", "PE", "Recife", "Ilha do Leite", "Rua da Saudade", 2100, "Apto 703", "50070-090"),
    ("258.963.753-36", "PE", "Olinda", "Casa Caiada", "Avenida Presidente Kennedy", 2200, "Casa", "53130-540");


delete from enderecocli where cliente_cpf = "123.321.222-11";

delete from cliente where cpf = "123.321.222-11";