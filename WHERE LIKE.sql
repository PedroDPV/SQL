SELECT * 
    FROM aluno
 WHERE nome LIKE 'Di_go';

 Nesse caso, o filtro ignora o terceiro caractere entre o "Di" e o "go", ou seja, a tabela retornará tanto o "Diego", quanto o "Diogo". Em resumo, o _ , que pode estar no começo, meio ou final de uma palavra, ocupa o espaço específico de um caractere, que será ignorado na busca.

Outra forma de usarmos o _ é com o comando NOT LIKE, ou seja, "não parece com". Portanto, em WHERE nome NOT LIKE 'Di_go' , a tabela apresentará apenas os registros de nomes que não tenham comecem com "Di" e terminem com "go", independentemente do caractere que estiver entre essas sílabas. No caso, todos os nomes que não sejam "Diego" ou "Diogo".

Agora aprenderemos o caractere % , que substitui todos os caracteres até o espaço que ele ocupa. Por exemplo, para recuperar todos os nomes que comecem com "D", usamos o comando:

SELECT * 
    FROM aluno
 WHERE nome LIKE 'D%';
Novamente aparecem os resultados do "Diogo" e do "Diego", que são os nomes da nossa tabela que começam dom D. Podemos filtrar também pela última letra ao invés da primeira. Por exemplo, para filtrar os nomes terminados em "s", utilizamos o comando WHERE nome LIKE %s'; . Assim aparecerão os dados do "Vinícius Dias". Outra possibilidade é recuperar todos os nomes que tenham espaço:

SELECT * 
    FROM aluno
 WHERE nome LIKE '% %';
Esse filtro ignora quaisquer nomes estejam antes ou depois do espaço, então os únicos dados que não vão aparecer serão do "Diogo" e do "Diego", porque todos os outros usuários têm nome e sobrenome divididos por espaço. O % também pode ser usado entre textos, como %i%a%.

SELECT * 
    FROM aluno
 WHERE nome LIKE '%i%a%';
Esse comando apresenta os dados que tenham "i**", em alguma parte do texto, seguido por "a", em outra parte do texto. No nosso banco de dados retorna os nomes "Vinícius Dias", devido ao "i" em "Vinícius" e o "a" em "Dias", e o "Nico Steppat", devido ao "i" em "Nico" e o "a" em "Steppa**t".

Até agora aprendemos o filtro de igualdade, de diferença, os filtros com LIKE e NOT LIKE e os caracteres especiais _ , que substitui um caractere qualquer naquela posição específica, e % que substitui múltiplos caracteres no começo, no final ou entre o texto.