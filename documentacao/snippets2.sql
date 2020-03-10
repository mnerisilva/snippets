-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 06-Mar-2020 às 19:55
-- Versão do servidor: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `snippets`
--
CREATE DATABASE IF NOT EXISTS `snippets` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `snippets`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `category`
--

CREATE TABLE `category` (
  `id_category` int(15) NOT NULL,
  `descricao_category` varchar(30) NOT NULL,
  `id_language_category` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `category`
--

INSERT INTO `category` (`id_category`, `descricao_category`, `id_language_category`) VALUES
(1, 'vanilla', 1),
(2, 'framework', 1),
(3, 'ecmascript6', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `classification`
--

CREATE TABLE `classification` (
  `id_classification` int(15) NOT NULL,
  `descricao_classification` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `classification`
--

INSERT INTO `classification` (`id_classification`, `descricao_classification`) VALUES
(1, 'front-end'),
(2, 'back-end');

-- --------------------------------------------------------

--
-- Estrutura da tabela `language`
--

CREATE TABLE `language` (
  `id_language` int(15) NOT NULL,
  `descricao_language` varchar(30) NOT NULL,
  `id_classification_language` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `language`
--

INSERT INTO `language` (`id_language`, `descricao_language`, `id_classification_language`) VALUES
(1, 'javascript', 1),
(2, 'php', 2),
(3, 'java', 2),
(4, 'python', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `snippets`
--

CREATE TABLE `snippets` (
  `id_sni` int(11) NOT NULL,
  `title_sni` varchar(50) NOT NULL,
  `syntax_sni` varchar(300) NOT NULL,
  `classification_sni` int(15) NOT NULL,
  `language_sni` int(15) NOT NULL,
  `category_sni` int(15) NOT NULL,
  `subcategory_sni` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `snippets`
--

INSERT INTO `snippets` (`id_sni`, `title_sni`, `syntax_sni`, `classification_sni`, `language_sni`, `category_sni`, `subcategory_sni`) VALUES
(1, 'loop for', 'for (var i = 0, text = "";i < cars.length; i++) {\r\n  text += cars[i];\r\n}', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `subcategory`
--

CREATE TABLE `subcategory` (
  `id_subcategory` int(15) NOT NULL,
  `descricao_subcategory` varchar(30) NOT NULL,
  `id_category_subcategory` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `subcategory`
--

INSERT INTO `subcategory` (`id_subcategory`, `descricao_subcategory`, `id_category_subcategory`) VALUES
(1, 'loop for', 1),
(2, 'loop while', 1),
(3, 'if else', 1),
(4, 'spread e rest', 3),
(5, 'arrow functions', 3),
(6, 'let', 3),
(7, 'const', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `classification`
--
ALTER TABLE `classification`
  ADD PRIMARY KEY (`id_classification`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id_language`);

--
-- Indexes for table `snippets`
--
ALTER TABLE `snippets`
  ADD PRIMARY KEY (`id_sni`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id_subcategory`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `classification`
--
ALTER TABLE `classification`
  MODIFY `id_classification` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id_language` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `snippets`
--
ALTER TABLE `snippets`
  MODIFY `id_sni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id_subcategory` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
