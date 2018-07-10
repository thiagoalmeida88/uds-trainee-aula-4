# Exercicios 02

```sql
/*A -  TRAGA TODOS OS DADOS INSERIDOS NAS SUAS DUAS TABELAS EM APENAS UM SELECT*/

SELECT * FROM tb_pessoa pes INNER JOIN tb_instrumento inst WHERE pes.cod_pessoa = inst.cod_pessoa;

/* B - ALTERE TODOS OS REGISTROS DE SUA TABELA QUE POSSUAM EM SEU CAMPO BOOLEAN O VALOR FALSE */ 

UPDATE tb_pessoa SET nome_pessoa = 'Reinaldo Testa', idade_pessoa = 19, nascimento_pessoa = '2001-03-06 20:45:03', sexo_pessoa = 1,
					 endereco_pessoa = 'Rua Laranjeiras, 1500', descricao_pessoa = 'Todas diversos instrumentos' WHERE sexo_pessoa = 0;	
                     
/* C - DELETE APENAS OS REGISTROS QUE CONTENHAM A LETRA 'A' EM SEU CAMPO TEXTO */

DELETE FROM tb_instrumento WHERE tipo_instrumento LIKE '%a%';   

SELECT DISTINCT pes.nome_pessoa, pes.idade_pessoa, pes.nascimento_pessoa, pes.sexo_pessoa, pes.endereco_pessoa, pes.descricao_pessoa,
inst.cod_pessoa, inst.nome_instrumento, inst.tipo_instrumento, inst.condicao_instrumento, inst.data_aquisicao  FROM tb_pessoa pes INNER JOIN tb_instrumento inst ON pes.cod_pessoa = inst.cod_pessoa;

/* D - TRAGA OS DADOS DAS SUAS TABELAS QUE NÃO SEJAM REPETIDOS, QUE CONTENHAM EM UM DOS SEUS CAMPOS TEXTO NO MÍNIMO 10 CARACTERES, 
QUE ESTEJAM ORDENADOS PELO SEU ID E AGRUPADOS PELO BOOLEANO */ 

SELECT pes.nome_pessoa, pes.idade_pessoa, pes.nascimento_pessoa, pes.sexo_pessoa, pes.endereco_pessoa, pes.descricao_pessoa,
inst.cod_pessoa, inst.nome_instrumento, inst.tipo_instrumento, inst.condicao_instrumento, inst.data_aquisicao 
FROM tb_pessoa pes 
INNER JOIN tb_instrumento inst ON pes.cod_pessoa = inst.cod_pessoa
WHERE character_length(pes.nome_pessoa) > 9 GROUP BY pes.sexo_pessoa 
ORDER BY pes.cod_pessoa;

```