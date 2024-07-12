-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 12/07/2024 às 20:01
-- Versão do servidor: 8.3.0
-- Versão do PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `gaby_euro`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cidade`
--

DROP TABLE IF EXISTS `cidade`;
CREATE TABLE IF NOT EXISTS `cidade` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pais_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pais_id` (`pais_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cidade`
--

INSERT INTO `cidade` (`id`, `nome`, `pais_id`) VALUES
(1, 'Berlim', 1),
(2, 'Munique', 1),
(3, 'Madri', 2),
(4, 'Barcelona', 2),
(5, 'Paris', 3),
(6, 'Lyon', 3),
(7, 'Roma', 4),
(8, 'Milão', 4),
(9, 'Londres', 5),
(10, 'Manchester', 5),
(11, 'Lisboa', 6),
(12, 'Porto', 6),
(13, 'Amsterdã', 7),
(14, 'Roterdã', 7),
(15, 'Bruxelas', 8);

-- --------------------------------------------------------

--
-- Estrutura para tabela `estadio`
--

DROP TABLE IF EXISTS `estadio`;
CREATE TABLE IF NOT EXISTS `estadio` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cidade_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cidade_id` (`cidade_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estadio`
--

INSERT INTO `estadio` (`id`, `nome`, `cidade_id`) VALUES
(1, 'Olympiastadion', 1),
(2, 'Allianz Arena', 2),
(3, 'Santiago Bernabéu', 3),
(4, 'Camp Nou', 4),
(5, 'Parc des Princes', 5),
(6, 'Stade de Lyon', 6),
(7, 'Stadio Olimpico', 7),
(8, 'San Siro', 8),
(9, 'Wembley', 9),
(10, 'Old Trafford', 10),
(11, 'Estádio da Luz', 11),
(12, 'Estádio do Dragão', 12),
(13, 'Johan Cruyff Arena', 13),
(14, 'De Kuip', 14),
(15, 'King Baudouin Stadium', 15);

-- --------------------------------------------------------

--
-- Estrutura para tabela `estatisticasindividuais`
--

DROP TABLE IF EXISTS `estatisticasindividuais`;
CREATE TABLE IF NOT EXISTS `estatisticasindividuais` (
  `id` int NOT NULL AUTO_INCREMENT,
  `jogo_id` int DEFAULT NULL,
  `jogador_id` int DEFAULT NULL,
  `passes` int DEFAULT NULL,
  `assistencias` int DEFAULT NULL,
  `remates` int DEFAULT NULL,
  `minutos_jogados` int DEFAULT NULL,
  `gols` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jogo_id` (`jogo_id`),
  KEY `jogador_id` (`jogador_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estatisticasindividuais`
--

INSERT INTO `estatisticasindividuais` (`id`, `jogo_id`, `jogador_id`, `passes`, `assistencias`, `remates`, `minutos_jogados`, `gols`) VALUES
(24, 3, 13, 15, 3, 8, 70, 0),
(23, 2, 13, 60, 6, 4, 23, 1),
(22, 2, 13, 3, 6, 16, 19, 3),
(21, 1, 2, 81, 5, 11, 87, 2),
(20, 1, 8, 56, 5, 9, 83, 2),
(19, 1, 1, 67, 4, 16, 50, 3),
(18, 31, 2, 15, 1, 5, 39, 1),
(17, 31, 8, 87, 5, 16, 81, 1),
(16, 31, 1, 4, 9, 13, 65, 3),
(10, 10, 10, 90, 2, 2, 90, 1),
(11, 11, 11, 80, 1, 1, 90, 1),
(12, 12, 12, 40, 0, 4, 90, 2),
(13, 13, 13, 30, 1, 5, 90, 3),
(14, 14, 14, 50, 2, 4, 90, 1),
(15, 15, 15, 60, 1, 0, 90, 0),
(25, 3, 13, 98, 2, 15, 69, 2),
(26, 4, 13, 87, 9, 18, 30, 4),
(27, 4, 13, 92, 7, 3, 82, 4),
(28, 5, 13, 43, 5, 8, 37, 3),
(29, 5, 12, 63, 2, 5, 29, 3),
(30, 6, 10, 47, 8, 3, 67, 0),
(31, 6, 3, 86, 9, 16, 52, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `grupo`
--

DROP TABLE IF EXISTS `grupo`;
CREATE TABLE IF NOT EXISTS `grupo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `grupo`
--

INSERT INTO `grupo` (`id`, `nome`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(16, 'D');

-- --------------------------------------------------------

--
-- Estrutura para tabela `gruposelecao`
--

DROP TABLE IF EXISTS `gruposelecao`;
CREATE TABLE IF NOT EXISTS `gruposelecao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `grupo_id` int DEFAULT NULL,
  `selecao_id` int DEFAULT NULL,
  `pontos` int DEFAULT '0',
  `jogos` int DEFAULT '0',
  `vitorias` int DEFAULT '0',
  `empates` int DEFAULT '0',
  `derrotas` int DEFAULT '0',
  `gols_marcados` int DEFAULT '0',
  `gols_sofridos` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `grupo_id` (`grupo_id`),
  KEY `selecao_id` (`selecao_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `gruposelecao`
--

INSERT INTO `gruposelecao` (`id`, `grupo_id`, `selecao_id`, `pontos`, `jogos`, `vitorias`, `empates`, `derrotas`, `gols_marcados`, `gols_sofridos`) VALUES
(25, 2, 14, 0, 0, 0, 0, 0, 0, 0),
(20, 1, 5, 1, 1, 0, 1, 0, 0, 0),
(17, 2, 4, 0, 0, 0, 0, 0, 0, 0),
(19, 4, 9, 0, 0, 0, 0, 0, 0, 0),
(22, 3, 7, 0, 0, 0, 0, 0, 0, 0),
(23, 4, 12, 0, 0, 0, 0, 0, 0, 0),
(21, 2, 13, 0, 0, 0, 0, 0, 0, 0),
(28, 1, 3, 1, 1, 0, 1, 0, 0, 0),
(29, 2, 6, 0, 0, 0, 0, 0, 0, 0),
(16, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(18, 3, 11, 0, 0, 0, 0, 0, 0, 0),
(27, 4, 10, 0, 0, 0, 0, 0, 0, 0),
(24, 1, 8, 0, 0, 0, 0, 0, 0, 0),
(26, 3, 2, 0, 0, 0, 0, 0, 0, 0),
(30, 3, 15, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `jogador`
--

DROP TABLE IF EXISTS `jogador`;
CREATE TABLE IF NOT EXISTS `jogador` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `posicao` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `numero_camiseta` int DEFAULT NULL,
  `selecao_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `selecao_id` (`selecao_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `jogador`
--

INSERT INTO `jogador` (`id`, `nome`, `data_nascimento`, `posicao`, `numero_camiseta`, `selecao_id`) VALUES
(8, 'Pedri', '2002-01-01', 'Meio-campo', 15, 2),
(1, 'Manuel Neuer', '1986-03-27', 'Goleiro', 1, 1),
(2, 'Sergio Ramos', '1986-03-30', 'Defensor', 4, 2),
(3, 'NGolo Kante', '1991-03-29', 'Meio-campo', 7, 3),
(4, 'Gianluigi Donnarumma', '1999-02-25', 'Goleiro', 1, 4),
(10, 'Harry Kane', '1993-07-28', 'Atacante', 9, 5),
(11, 'Cristiano Ronaldo', '1985-02-05', 'Atacante', 7, 6),
(5, 'Virgil van Dijk', '1991-07-08', 'Defensor', 4, 7),
(6, 'Kevin De Bruyne', '1991-06-28', 'Meio-campo', 7, 8),
(12, 'Granit Xhaka', '1992-09-27', 'Meio-campo', 10, 9),
(13, 'Luka Modric', '1985-09-09', 'Meio-campo', 10, 10),
(7, 'Christian Eriksen', '1992-02-14', 'Meio-campo', 10, 11),
(14, 'Zlatan Ibrahimovic', '1981-10-03', 'Atacante', 11, 12),
(15, 'Erling Haaland', '2000-07-21', 'Atacante', 9, 13),
(16, 'Robert Lewandowski', '1988-08-21', 'Atacante', 9, 14),
(9, 'David Alaba', '1992-06-24', 'Defensor', 4, 15);

-- --------------------------------------------------------

--
-- Estrutura para tabela `jogo`
--

DROP TABLE IF EXISTS `jogo`;
CREATE TABLE IF NOT EXISTS `jogo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `grupo_id` int DEFAULT NULL,
  `selecao1_id` int DEFAULT NULL,
  `selecao2_id` int DEFAULT NULL,
  `gols_selecao1` int DEFAULT NULL,
  `gols_selecao2` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `grupo_id` (`grupo_id`),
  KEY `selecao1_id` (`selecao1_id`),
  KEY `selecao2_id` (`selecao2_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `jogo`
--

INSERT INTO `jogo` (`id`, `grupo_id`, `selecao1_id`, `selecao2_id`, `gols_selecao1`, `gols_selecao2`) VALUES
(6, 1, 5, 3, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pais`
--

DROP TABLE IF EXISTS `pais`;
CREATE TABLE IF NOT EXISTS `pais` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pais`
--

INSERT INTO `pais` (`id`, `nome`) VALUES
(1, 'Alemanha'),
(2, 'Espanha'),
(3, 'França'),
(4, 'Itália'),
(5, 'Inglaterra'),
(6, 'Portugal'),
(7, 'Holanda'),
(8, 'Bélgica'),
(9, 'Suíça'),
(10, 'Croácia'),
(11, 'Dinamarca'),
(12, 'Suécia'),
(13, 'Noruega'),
(14, 'Polônia'),
(15, 'Áustria');

-- --------------------------------------------------------

--
-- Estrutura para tabela `selecao`
--

DROP TABLE IF EXISTS `selecao`;
CREATE TABLE IF NOT EXISTS `selecao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pais_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pais_id` (`pais_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `selecao`
--

INSERT INTO `selecao` (`id`, `nome`, `pais_id`) VALUES
(1, 'Alemanha', 1),
(2, 'Espanha', 2),
(3, 'França', 3),
(4, 'Itália', 4),
(5, 'Inglaterra', 5),
(6, 'Portugal', 6),
(7, 'Holanda', 7),
(8, 'Bélgica', 8),
(9, 'Suíça', 9),
(10, 'Croácia', 10),
(11, 'Dinamarca', 11),
(12, 'Suécia', 12),
(13, 'Noruega', 13),
(14, 'Polônia', 14),
(15, 'Áustria', 15);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
