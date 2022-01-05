CREATE TABLE T_SALA -- cria uma tabela Cursos
(
cod_SALA number (5),
  Professor VARCHAR2 (100) NOT NULL, 
  Cursos VARCHAR2 (100) NOT NULL,
  Nivel VARCHAR2 (100) NOT NULL, 
  Sala VARCHAR2 (100)NOT NULL,
  Quantidade_aluno VARCHAR2 (100)NOT NULL,
  Turma VARCHAR2 (100)NOT NULL,
  ATIVO NUMBER (1),
constraint PK_cod_SALA primary key (cod_SALA)
);
COMMIT;
INSERT INTO T_SALA(cod_SALA,Professor,Cursos,Nivel,Sala,Quantidade_aluno,Turma,ATIVO)
VALUES (SEQ_dadosSala.NEXTVAL,'Marcos','INGLÊS','Kids','INGLÊS-A0','3','ING-A0M',1);

SELECT * FROM T_SALA;

drop table T_SALA;
drop SEQUENCE SEQ_dadosSala;
CREATE SEQUENCE SEQ_dadosSala NOCACHE NOCYCLE;
 
---------------------------------
CREATE TABLE T_Responsavel -- cria uma tabela Cursos
(
cod_Resp number (5),
  NOMERESP VARCHAR2 (50)  NULL,
  DATANASC VARCHAR2 (20) NOT NULL,
  SEXO VARCHAR2  (20) NOT NULL,
  CPF_RESP VARCHAR2 (16) NULL,
  RG_RESP VARCHAR2 (20)  NULL,
  ATIVO NUMBER (1),
constraint PK_cod_Resp primary key (cod_Resp)
);
COMMIT;
INSERT INTO T_Responsavel(cod_Resp,NOMERESP,DATANASC,SEXO,CPF_RESP,RG_RESP,ATIVO)
  VALUES (SEQ_dadosResp.NEXTVAL,'Cecilia',' 17/06/1987','Feminino','76.876.342.1','76.432.765.3',1);

SELECT * FROM T_Responsavel;

drop table T_Responsavel;
drop SEQUENCE SEQ_dadosResp;
CREATE SEQUENCE SEQ_dadosResp NOCACHE NOCYCLE;
 
 -----------------------------
 
-----------------------------------------------
CREATE TABLE T_Turma -- cria uma tabela Cursos
(
cod_Turma number (5),
  Inicio VARCHAR2 (20) NOT NULL,
  Terminio VARCHAR2 (20) NOT NULL,
  Duracao VARCHAR2 (20) NOT NULL, 
  RM VARCHAR2 (10)NOT NULL,
Valor VARCHAR2 (10)NOT NULL,
   Sala VARCHAR2 (100) NOT NULL,
  Matricula VARCHAR2 (100) NOT NULL,
  Cursos VARCHAR2 (100) NOT NULL,
  Semana VARCHAR2 (50) NOT NULL,
  Horario VARCHAR2 (70) NOT NULL, 
   Turma VARCHAR2 (100)NOT NULL,
  Nivel VARCHAR2 (100)NOT NULL,
  ATIVO NUMBER (1),
constraint PK_cod_Turma primary key (cod_Turma)
);
COMMIT;
INSERT INTO T_Turma(cod_Turma,Inicio,Terminio,Duracao,RM,Valor,Sala,Matricula,Cursos,Semana,Horario,Turma,Nivel,ATIVO)
VALUES (SEQ_dadosTurma.NEXTVAL,'04/06/2016','04/06/2017','1 ano','19879','5700','INGLÊS-A0','03/06/2016','Inglês','Segunda e Quarta','7:00 ás 9:00','ING-A0M','Kids',1);

SELECT * FROM T_Turma;

drop table T_Turma;
drop SEQUENCE SEQ_dadosTurma;
CREATE SEQUENCE SEQ_dadosTurma NOCACHE NOCYCLE;
 -----------------------------
 CREATE TABLE T_MATERIAL -- cria uma tabela Cursos
(
cod_Material number (5),
  Quant_sala VARCHAR2 (700) NOT NULL, 
  Material VARCHAR2 (100) NOT NULL,
  Quantidade VARCHAR2 (700) NOT NULL, 
  Nivel VARCHAR2 (100)NOT NULL,
  Turma VARCHAR2 (100)NOT NULL,
  ATIVO NUMBER (1),
constraint PK_cod_Material primary key (cod_Material)
);
COMMIT;
INSERT INTO T_MATERIAL(cod_Material,Quant_sala,Material,Quantidade,Nivel,Turma,ATIVO)
VALUES (SEQ_dadosMaterial.NEXTVAL,'10','Apostilas de Italiano','120','Kids','ITALIANO-A0M',1);

SELECT * FROM T_MATERIAL;

drop table T_MATERIAL;
drop SEQUENCE SEQ_dadosMaterial;
CREATE SEQUENCE SEQ_dadosMaterial NOCACHE NOCYCLE;
 
 -------------------------
 
 CREATE TABLE T_Pagamento -- cria uma tabela Cursos
(
cod_pag number (5),
  Forma VARCHAR2 (100) NOT NULL,
  Valor VARCHAR2 (100) NOT NULL,
  Quantidade VARCHAR2 (10) NOT NULL, 
  Nome VARCHAR2 (50)NOT NULL,
 NomeResp VARCHAR2 (50)NOT NULL,
 RM VARCHAR2 (10)NOT NULL,
 DataPagamento VARCHAR2 (40) NOT NULL,
  ATIVO NUMBER (1),
constraint PK_cod_pag primary key (cod_pag)
);
COMMIT;
INSERT INTO T_Pagamento(cod_pag,Forma,Valor,Quantidade,Nome,NomeResp,RM,DataPagamento,ATIVO)
VALUES (SEQ_dadosPagamento.NEXTVAL,'Cartao','130','12','Joaquina','Kimara','543978','12/09/2016',1);

SELECT * FROM T_Pagamento;
drop table T_Pagamento;
drop SEQUENCE SEQ_dadosPagamento;
CREATE SEQUENCE SEQ_dadosPagamento NOCACHE NOCYCLE;
----------------------------------
CREATE TABLE T_Cursos(
cod_Cursos number (5),
Valor VARCHAR2 (20) NOT NULL,
Cursos VARCHAR2(100) NOT NULL,
ATIVO NUMBER (1),
constraint PK_cod_Cursos primary key (cod_Cursos)
);
select * from T_Cursos;
DROP TABLE T_Cursos;
DROP SEQUENCE SEQ_dadosCursos;
--COMMIT;
CREATE SEQUENCE SEQ_dadosCursos NOCACHE NOCYCLE;

INSERT INTO T_Cursos(cod_Cursos,Valor,Cursos,ATIVO)
VALUES (SEQ_dadosCursos.NEXTVAL,'5700','Inglês',1);
INSERT INTO T_Cursos(cod_Cursos,Valor,Cursos,ATIVO)
VALUES (SEQ_dadosCursos.NEXTVAL,'4300','Francês',1);
INSERT INTO T_Cursos(cod_Cursos,Valor,Cursos,ATIVO)
VALUES (SEQ_dadosCursos.NEXTVAL,'3900','Italiano',1);
INSERT INTO T_Cursos(cod_Cursos,Valor,Cursos,ATIVO)
VALUES (SEQ_dadosCursos.NEXTVAL,'2600','Espanhõl',1);
INSERT INTO T_Cursos(cod_Cursos,Valor,Cursos,ATIVO)
VALUES (SEQ_dadosCursos.NEXTVAL,'3700','Russo',1);
INSERT INTO T_Cursos(cod_Cursos,Valor,Cursos,ATIVO)
VALUES (SEQ_dadosCursos.NEXTVAL,'3000','Alemão',1);
INSERT INTO T_Cursos(cod_Cursos,Valor,Cursos,ATIVO)
VALUES (SEQ_dadosCursos.NEXTVAL,'4100','Mandarim',1);
INSERT INTO T_Cursos(cod_Cursos,Valor,Cursos,ATIVO)
VALUES (SEQ_dadosCursos.NEXTVAL,'4200','Português(para estrangeiros)',1);

-------------------------
CREATE TABLE T_AULAS_EXPERIMENTAIS -- cria uma tabela Cliente

(

cod_AULAS_EXPERIMENTAIS number (5),
  NOME VARCHAR2 (50) NOT NULL,
  RG VARCHAR2 (15) NOT NULL,
  TELEFONE VARCHAR2 (9) NOT NULL, 
  SEMANA VARCHAR2 (11) NOT NULL,
  HORARIO VARCHAR2 (8)NOT NULL,
  Cursos VARCHAR2 (100) NOT NULL,
  Sala VARCHAR2 (100) NOT NULL,
  Turma VARCHAR2 (100)NOT NULL,
  ATIVO NUMBER (1),
constraint PK_cod_AULAS_EXPERIMENTAIS primary key (cod_AULAS_EXPERIMENTAIS)
);
COMMIT;
INSERT INTO T_AULAS_EXPERIMENTAIS(cod_AULAS_EXPERIMENTAIS,NOME,RG,TELEFONE,SEMANA,HORARIO,Cursos,Sala,Turma,ATIVO)
VALUES (SEQ_dadosAULAS_EXPERIMENTAIS.NEXTVAL,'Bruna',' 987.452.098.98','4875-9865','Segunda','13:00','Italiano','itaa1','italiano1',1);

SELECT * FROM T_AULAS_EXPERIMENTAIS;

drop table T_AULAS_EXPERIMENTAIS;
drop SEQUENCE SEQ_dadosAULAS_EXPERIMENTAIS;
CREATE SEQUENCE SEQ_dadosAULAS_EXPERIMENTAIS NOCACHE NOCYCLE;


-------------------------------------------------------------------
CREATE TABLE T_Cliente -- cria uma tabela Cliente
(
cod_Cliente number (5),
  NOME VARCHAR2 (100) NOT NULL,
  NOMERESP VARCHAR2 (50)  NULL,
  CPF VARCHAR2 (16) NULL,
  RG VARCHAR2 (20) NOT NULL,
  CPF_RESP VARCHAR2 (16) NULL,
  RG_RESP VARCHAR2 (20)  NULL,
  BAIRRO VARCHAR2(50) NOT NULL,
  CIDADE VARCHAR2 (100) NOT NULL,
  UF CHAR (2) NOT NULL,
  NR VARCHAR2 (5) NOT NULL,
  DTNASC VARCHAR2(10) NOT NULL,
  TELEFONE VARCHAR2 (20) NOT NULL, 
  CELULAR VARCHAR2 (20) NOT NULL,
  SEXO VARCHAR2 (10 )NOT NULL,
  CEP VARCHAR2  (20) NOT NULL,
  ENDERECO VARCHAR2 (100)NOT NULL,
  FOTO BLOB  NULL,
  Duracao VARCHAR2 (20) NOT NULL, 
  RM VARCHAR2 (10)NOT NULL,
   Sala VARCHAR2 (100) NOT NULL,
  Matricula VARCHAR2 (100) NOT NULL,
  Cursos VARCHAR2 (100) NOT NULL,
  Semana VARCHAR2 (50) NOT NULL,
  Horario VARCHAR2 (70) NOT NULL, 
   Turma VARCHAR2 (100)NOT NULL,
  Nivel VARCHAR2 (100)NOT NULL,
  Valor VARCHAR2(10) NULL,
  ATIVO NUMBER (1),
constraint PK_cod_Cliente primary key (cod_Cliente)
);
COMMIT;
SELECT * FROM T_Cliente;
drop table T_Cliente;
drop SEQUENCE SEQ_dadosCliente;
CREATE SEQUENCE SEQ_dadosCliente NOCACHE NOCYCLE;

 INSERT INTO T_Cliente (cod_Cliente,NOME,NOMERESP,CPF,RG,CPF_RESP,RG_RESP,BAIRRO,CIDADE,UF,NR,DTNASC,TELEFONE,CELULAR, SEXO,CEP,ENDERECO,FOTO,Duracao,RM,Sala,Matricula,Cursos,Semana,Horario,Turma,Nivel,Valor,ATIVO)
 VALUES 
(SEQ_dadosCliente.NEXTVAL,'Mariza Souza Pereira',' Luana','326.654.985.97','98.987.852.8','08.767.672.0','90.756.223.8','Jardim Rosa linda','Jurubida','RJ','54','07/04/1990','4587-9662','98785-9658','F','06433050','Rua:Isadora tulis','','1 ano','32564','INGLÊS-B1','13/06/2016 21:45','Ingles','Segunda e Quarta','7:00 ás 9:00','ING-B1M','B1 - Pré-intermediário','5700',1);
 INSERT INTO T_Cliente (cod_Cliente,NOME,NOMERESP,CPF,RG,CPF_RESP,RG_RESP,BAIRRO,CIDADE,UF,NR,DTNASC,TELEFONE,CELULAR, SEXO,CEP,ENDERECO,FOTO,Duracao,RM,Sala,Matricula,Cursos,Semana,Horario,Turma,Nivel,Valor,ATIVO)
 VALUES 
(SEQ_dadosCliente.NEXTVAL,'Jaqueline Juliana Lima',' Beatriz','908.456.234.12','56.765.123.7','76.876.342.1','76.432.765.3','Jardim Audir','barueri','sp','543','17/08/1991','4877-4325','94098-6754','F','06433050','Rua:bichchim','','1 ano','32564','INGLÊS-B1','13/06/2016 21:45','Ingles','Segunda e Quarta','7:00 ás 9:00','ING-B1M','B1 - Pré-intermediário','4600',1);

------------------------------------------------------------------------------------------------------------

alter table t_cliente
alter column foto blob;

CREATE TABLE T_Funcionario(
cod_Func number (5),
Nome VARCHAR2(50)NOT NULL,
Estado_Civil VARCHAR2(50) NULL,
RG VARCHAR2(14)NOT NULL,
CPF VARCHAR2(14)NOT NULL,
Sexo VARCHAR2(12) NOT NULL,
Cargo VARCHAR2(50) NOT NULL,
Telefone VARCHAR2(16) NOT NULL,
Celular VARCHAR2(16)NOT NULL,
Endereco VARCHAR2 (100)  NOT NULL,
Nr VARCHAR2(5) NOT NULL,
Bairro VARCHAR2(100)NOT NULL,
Cidade VARCHAR2(100)NOT NULL,
CEP VARCHAR2(8) NOT NULL,
DataNasc VARCHAR2(10) NOT NULL,
UF CHAR (2) NOT NULL,
Nivel VARCHAR2(200) NULL,
Titulacoes VARCHAR2(100)  NULL,
Viajou VARCHAR2(100)NULL,
Materia VARCHAR2(50) NULL,
Lugar VARCHAR2 (50) NULL,
Admissao VARCHAR2 (20) NULL,
Demissao VARCHAR2 (20) NULL,
Ativo NUMBER (3) NULL,
constraint PK_cod_Func primary key (cod_Func)
);
commit;

select*from  T_Funcionario;
drop table T_Funcionario;
drop SEQUENCE SEQ_DADOSFuncionario;
CREATE SEQUENCE SEQ_DADOSFuncionario NOCACHE NOCYCLE;

insert into T_Funcionario(cod_Func,Nome,Estado_Civil,RG,CPF,Sexo,Cargo,Telefone,Celular,Endereco,Nr,Bairro,Cidade,cep,DataNasc,UF,Nivel,Titulacoes,Viajou,Materia,Lugar,Admissao,Demissao,Ativo) values
(seq_DADOSFuncionario.NEXTVAL,'Hellen','Solteira','23.325.654','365.326.985.65','Feminino','Administrador','2345-0909','987879090','rua santo antonio','10','Vila cesar','Cidade1','123456','12/09/1990','SP','1,Ita-A0','Professor Titular: doutorado','Sim','Italiano','Italia','12/06/2006','00/00/0000',1);
-----------------------------------------------------------------------------------------

Create Table Login
(
cod_Func number,
login varchar2 (50) constraint pk_login primary key,
senha varchar2 (10),
Acesso varchar2 (50),
Foreign key (cod_Func) references T_Funcionario(cod_Func)
);
drop table Login;
DROP SEQUENCE Seq_T_login;
create sequence Seq_T_login
start with 1
increment by 1
maxvalue 999
minvalue 0
nocycle;
commit;
select*from Login;
insert into Login 
values(1,'Adm','12345','Administrador');
------------------------
--Tabela cep
CREATE TABLE TABELACEP(
CEP VARCHAR2 (8) NOT NULL,
UF VARCHAR2(2) NOT NULL,
DESCRICAO VARCHAR2 (100) NOT NULL,
CIDADE VARCHAR2 (100) NOT NULL,
BAIRRO VARCHAR2 (100) NOT NULL
);
select * from TABELACEP;

drop table TABELACEP;
--COMMIT;