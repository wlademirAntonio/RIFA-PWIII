-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql102.byetcluster.com
-- Tempo de geração: 21/06/2022 às 09:40
-- Versão do servidor: 10.3.27-MariaDB
-- Versão do PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `epiz_31454090_rifas`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `COMPRADOR`
--

CREATE TABLE `COMPRADOR` (
  `ID` int(11) NOT NULL,
  `NOME` varchar(100) NOT NULL,
  `CELULAR` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `NUMEROS`
--

CREATE TABLE `NUMEROS` (
  `ID` bigint(20) NOT NULL,
  `NUMERO` int(11) NOT NULL,
  `PROMOCAO_ID` int(11) NOT NULL,
  `VENDEDOR_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `NUMEROS_COMPRADOS`
--

CREATE TABLE `NUMEROS_COMPRADOS` (
  `COMPRADOR_ID` int(11) NOT NULL,
  `NUMEROS_ID` bigint(20) NOT NULL,
  `VENDA_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `PREMIO`
--

CREATE TABLE `PREMIO` (
  `ID` int(11) NOT NULL,
  `NOME` varchar(45) NOT NULL,
  `DESCRICAO` varchar(255) NOT NULL,
  `VALOR` double NOT NULL,
  `PROMOCAO_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `PROMOCAO`
--

CREATE TABLE `PROMOCAO` (
  `ID` int(11) NOT NULL,
  `TITULO` varchar(45) NOT NULL,
  `DESCRICAO` varchar(255) DEFAULT NULL,
  `DATA_INICIO` date NOT NULL,
  `DATA_FIM` date NOT NULL,
  `DATA_SORTEIO` date NOT NULL,
  `ARRECADACAO` double NOT NULL,
  `VALOR_RIFA` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `RESULTADO`
--

CREATE TABLE `RESULTADO` (
  `ID` int(11) NOT NULL,
  `DATA` date NOT NULL,
  `PROMOCAO_ID` int(11) NOT NULL,
  `NUMEROS_ID` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TIPO`
--

CREATE TABLE `TIPO` (
  `ID` int(11) NOT NULL,
  `NOME` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `TIPO`
--

INSERT INTO `TIPO` (`ID`, `NOME`) VALUES
(9, 'test4'),
(10, 'Samuel Test3');

-- --------------------------------------------------------

--
-- Estrutura para tabela `VENDA`
--

CREATE TABLE `VENDA` (
  `ID` int(11) NOT NULL,
  `DATA_VENDA` date NOT NULL,
  `VALOR` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `VENDEDOR`
--

CREATE TABLE `VENDEDOR` (
  `ID` int(11) NOT NULL,
  `NOME` varchar(100) NOT NULL,
  `CELULAR` int(11) NOT NULL,
  `LOGIN` varchar(16) NOT NULL,
  `SENHA` varchar(255) NOT NULL,
  `TIPO_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `COMPRADOR`
--
ALTER TABLE `COMPRADOR`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `NUMEROS`
--
ALTER TABLE `NUMEROS`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `PREMIO`
--
ALTER TABLE `PREMIO`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `PROMOCAO`
--
ALTER TABLE `PROMOCAO`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `RESULTADO`
--
ALTER TABLE `RESULTADO`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `TIPO`
--
ALTER TABLE `TIPO`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `VENDA`
--
ALTER TABLE `VENDA`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `VENDEDOR`
--
ALTER TABLE `VENDEDOR`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `COMPRADOR`
--
ALTER TABLE `COMPRADOR`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `NUMEROS`
--
ALTER TABLE `NUMEROS`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `PREMIO`
--
ALTER TABLE `PREMIO`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `PROMOCAO`
--
ALTER TABLE `PROMOCAO`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `RESULTADO`
--
ALTER TABLE `RESULTADO`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `TIPO`
--
ALTER TABLE `TIPO`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `VENDA`
--
ALTER TABLE `VENDA`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `VENDEDOR`
--
ALTER TABLE `VENDEDOR`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
