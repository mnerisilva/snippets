-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13-Mar-2020 às 04:58
-- Versão do servidor: 10.1.40-MariaDB
-- versão do PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `snippets_test`
--
CREATE DATABASE IF NOT EXISTS `snippets` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `snippets`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id_category` int(15) NOT NULL AUTO_INCREMENT,
  `descricao_category` varchar(30) NOT NULL,
  `id_language_category` int(15) NOT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

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

CREATE TABLE IF NOT EXISTS `classification` (
  `id_classification` int(15) NOT NULL AUTO_INCREMENT,
  `descricao_classification` varchar(30) NOT NULL,
  PRIMARY KEY (`id_classification`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

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

CREATE TABLE IF NOT EXISTS `language` (
  `id_language` int(15) NOT NULL AUTO_INCREMENT,
  `descricao_language` varchar(30) NOT NULL,
  `id_classification_language` int(15) NOT NULL,
  PRIMARY KEY (`id_language`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

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

CREATE TABLE IF NOT EXISTS `snippets` (
  `id_sni` int(11) NOT NULL AUTO_INCREMENT,
  `title_sni` varchar(50) NOT NULL,
  `description_sni` longtext NOT NULL,
  `syntax_sni` longtext NOT NULL,
  `classification_sni` int(15) NOT NULL,
  `language_sni` varchar(30) NOT NULL,
  `category_sni` int(15) NOT NULL,
  `subcategory_sni` int(15) NOT NULL,
  PRIMARY KEY (`id_sni`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `snippets`
--

INSERT INTO `snippets` (`id_sni`, `title_sni`, `description_sni`, `syntax_sni`, `classification_sni`, `language_sni`, `category_sni`, `subcategory_sni`) VALUES
(22, 'for', '<p>Os loops são úteis, se você deseja executar o mesmo código repetidamente, sempre com um valor diferente.</p><p>Geralmente, este é o caso ao trabalhar com matrizes:</p>', 'for (i = 0, len = cars.length, text = \"\"; i < len; i++) {\r\n  text += cars[i] + \"<br>\";\r\n}', 0, 'js', 1, 1),
(23, 'Math.min () e Math.max ()', '<p>Math.min()e Math.max()pode ser usado para encontrar o valor mais baixo ou mais alto em uma lista de argumentos:<br></p><p>fonte:&nbsp;<a href=\"https://www.w3schools.com/js/js_math.asp\">https://www.w3schools.com/js/js_math.asp</a><br></p>', 'Math.min(0, 150, 30, 20, -8, -200);  // returns -200\r\n\r\nMath.max(0, 150, 30, 20, -8, -200);  // returns 150', 0, 'js', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `id_subcategory` int(15) NOT NULL AUTO_INCREMENT,
  `descricao_subcategory` varchar(30) NOT NULL,
  `id_category_subcategory` int(15) NOT NULL,
  PRIMARY KEY (`id_subcategory`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
