-- LIMPANDO O AMBIENTE CASO JÁ EXISTA (Garante que o script pode ser rodado várias vezes)
DROP TABLE IF EXISTS jogo;

-- CRIANDO A TABELA COM REGRAS E MNEMÓNICOS (DDL)
CREATE TABLE jogo (
   	id_jogo INTEGER PRIMARY KEY AUTOINCREMENT,
	nm_jogo VARCHAR(100) NOT NULL,
    ds_categoria VARCHAR(50) NOT NULL, 
    vlr_preco DECIMAL(10,2) NOT NULL,
    qtd_copias_vendidas INT DEFAULT 0
);

-- POPULANDO O BANCO COM UMA MASSA DE DADOS REALISTA (DML)
INSERT INTO jogo (nm_jogo, ds_categoria, vlr_preco, qtd_copias_vendidas) VALUES 
('Elden Ring', 'RPG', 250.00, 55),
('FIFA 26', 'Esporte', 350.00, 120),
('Cyberpunk 2077', 'RPG', 199.90, 38),
('Minecraft', 'Sobrevivência', 99.00, 540),
('Street Fighter 6', 'Luta', 299.00, 18),
('The Witcher 3', 'RPG', 79.90, 310),
('Grand Theft Auto V', 'Ação', 149.90, 850),
('Red Dead Redemption 2', 'Ação', 249.90, 420),
('Mortal Kombat 1', 'Luta', 279.90, 25),
('Resident Evil 4 Remake', 'Terror', 200.00, 65),
('Hollow Knight', 'Metroidvania', 45.00, 150),
('Stardew Valley', 'Simulação', 30.00, 280),
('Forza Horizon 5', 'Corrida', 249.00, 95),
('Gran Turismo 7', 'Corrida', 299.00, 70),
('Counter-Strike 2', 'Tiro', 0.00, 1200),
('Valorant', 'Tiro', 0.00, 980),
('God of War Ragnarok', 'Ação', 299.90, 180),
('Baldurs Gate 3', 'RPG', 199.99, 210),
('Terraria', 'Sobrevivência', 40.00, 340),
('Outlast', 'Terror', 35.00, 85);

SELECT * FROM jogo
SELECT * FROM jogo WHERE ds_categoria = 'RPG' 
                  --seleciona a categoria
SELECT * FROM jogo ORDER by nm_jogo DESC --ordem do maior para o menor
SELECT * FROM jogo ORDER by nm_jogo ASC --ordem do menor para o menor
                                 ----
                                ------
                              -----------
                            ---ATIVIDADE---
						 -----PERGUNTAS-----
		--FAÇA UMA CONSULTA QUE MOSTRE APENAS O NOME DO JOGO E A CATEGORIA--
SELECT nm_jogo, ds_categoria from jogo
       --filter a tabela para exibir apenas jogos de luta
SELECT * FROM jogo WHERE ds_categoria = 'Luta' 
       --o chefe quer uma lista apenas dos jogos que ccustao mais de 200
SELECT * FROM jogo WHERE vlr_preco > 200
	   --MOSTRA APENAS JOGOS DE AÇAO MAIS ORDENADO DO MAIS VENDIDO ATE O MENOS VENDIDO
SELECT * FROM jogo WHERE ds_categoria = 'Ação' ORDER BY DESC;
       --EXIBA TODOS OS JOGOS DE TERRO EM ORDEM ALFABETICA
SELECT * FROM jogo ORDER by nm_jogo ASC 
DROP TABLE jogo			  