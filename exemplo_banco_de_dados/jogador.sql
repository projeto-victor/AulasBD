-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20-Maio-2022 às 13:58
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `exemplo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogador`
--

CREATE TABLE `jogador` (
  `num_jogadores` int(11) NOT NULL,
  `nome_jogadores` varchar(255) DEFAULT NULL,
  `codigo_equipe` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `jogador`
--

INSERT INTO `jogador` (`num_jogadores`, `nome_jogadores`, `codigo_equipe`) VALUES
(1, 'RENATO GARCIA', 1),
(2, 'BONONABO', 2),
(3, 'ROK ROK', 1),
(4, 'RAMBO', 1),
(5, 'MONARK', 2),
(6, 'AMEBA', 2);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `jogador`
--
ALTER TABLE `jogador`
  ADD PRIMARY KEY (`num_jogadores`),
  ADD KEY `codigo_equipe` (`codigo_equipe`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `jogador`
--
ALTER TABLE `jogador`
  MODIFY `num_jogadores` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `jogador`
--
ALTER TABLE `jogador`
  ADD CONSTRAINT `jogador_ibfk_1` FOREIGN KEY (`codigo_equipe`) REFERENCES `equipe` (`codigo_equipe`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
