# Exercício Hardcore 02

```sql
SELECT postou.nome_pessoa AS 'QUEM POSTOU', post.descricao_postagem AS 'POSTAGEM',
comentou.nome_pessoa AS 'QUEM COMENTOU', coment.descricao_comentario as 'COMENTÁRIO',
curtiu.nome_pessoa AS 'QUEM CURTIU', lik.emotion_like AS 'EMOÇÃO', lik.data_like AS 'DATA E HORA', compartilhou.nome_pessoa AS 'QUEM COMPARTILHOU'
FROM tb_postagem post
INNER JOIN tb_pessoa postou ON post.cod_pessoa = postou.cod_pessoa 
INNER JOIN tb_comentario coment ON post.cod_postagem = coment.cod_postagem
INNER JOIN tb_pessoa comentou ON coment.cod_pessoa = comentou.cod_pessoa 
INNER JOIN tb_like lik ON post.cod_postagem = lik.cod_postagem
INNER JOIN tb_pessoa curtiu ON lik.cod_pessoa = curtiu.cod_pessoa
INNER JOIN tb_compartilhamento comp ON post.cod_postagem = comp.cod_postagem
INNER JOIN tb_pessoa compartilhou ON comp.cod_pessoa = compartilhou.cod_pessoa
WHERE post.cod_pessoa = 1;
```
