-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 12-Mar-2020 às 20:21
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

CREATE TABLE IF NOT EXISTS `category` (
  `id_category` int(15) NOT NULL AUTO_INCREMENT,
  `descricao_category` varchar(30) NOT NULL,
  `id_language_category` int(15) NOT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

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
  `description_sni` longtext CHARACTER SET utf8 NOT NULL,
  `syntax_sni` longtext NOT NULL,
  `classification_sni` int(15) NOT NULL,
  `language_sni` varchar(30) NOT NULL,
  `category_sni` int(15) NOT NULL,
  `subcategory_sni` int(15) NOT NULL,
  PRIMARY KEY (`id_sni`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `snippets`
--

INSERT INTO `snippets` (`id_sni`, `title_sni`, `description_sni`, `syntax_sni`, `classification_sni`, `language_sni`, `category_sni`, `subcategory_sni`) VALUES
(1, 'for', '<h5 style="color: rgb(84, 78, 78);">Voce pode pensar em um laco de repeticao como um jogo onde voce manda o seu personagem andar X passos em uma direcao e Y passos em outra; por exemplo, a ideia "va 5 passos para leste" pode ser expressa em um laco desta forma:</h5><h5 style="color: rgb(84, 78, 78);"><br></h5><h5 style="color: rgb(84, 78, 78);">Fonte: <a href="http://encurtador.com.br/drIZ9" target="_BLANK">encurtador.com.br/drIZ9</a></h5>', 'var passo;\r\nfor (passo = 0; passo < 5; passo++) {\r\n  // Executa 5 vezes, com os valores de passos de 0 a 4.\r\n  console.log(''Ande um passo para o leste'');\r\n}', 1, 'js', 1, 1),
(2, 'while ', '', 'while (var i < 10) {\r\n  text += "The number is " + i;\r\n  i++;\r\n}', 1, 'js', 1, 1),
(5, 'operador ternario', '', '"The fee is " + (isMember ? "$2.00" : "$10.00");\n\n\n// Conforme o resultado da operacao,\n// voce tambem podera atribuir a variaveis:\n\n\nvar elvisLives = Math.PI > 4 ? "Yep" : "Nope";', 1, 'js', 1, 2),
(6, 'git commit', '', '    git add .\r\n    git commit -m "version 1.1"\r\n    git push origin master ', 4, 'git', 1, 1),
(7, 'php include', '', '	include ''my_include.php'';\r\n	include(''my_include.php'');\r\n', 5, 'php', 1, 1),
(15, 'php msqli crud', '<h5 style="font-size: 1em; color: rgb(84, 78, 78);">Recomendamos o uso do pacote PDO. Ajuda a escapar e proteger contra ataques de injecoes de SQL.</h5>\r\n<ul style="font-size: 1em; color: rgb(84, 78, 78);">fontes: <li><a href="https://dev.to/th3n00bc0d3r/php-and-sql-connect-to-database-48a5" target="_blank">1</a></li><li class="m-2"><a href="https://www.studentstutorial.com/ajax/crud" target="_blank">2</a></li></ul>', '//Create Connection\r\n$conn = mysqli_connect(''localhost'',''root'','''',''noob_cms'');\r\n\r\n//CHECK CONNECTION\r\nif (!$conn) {\r\n    die("Connection failed: ".mysqli_connect_error());\r\n}\r\n\r\n//Insert\r\n$sql = "INSERT INTO users (email, password, name) VALUES (''test@test.com'', ''test'', ''Mr. Test'')";\r\n\r\n//DELETE\r\n$sql = "DELETE FROM users WHERE id = ''1''";\r\n\r\n//UPDATE\r\n$sql = "UPDATE users SET password = ''hello'', name = ''Mr. Yes'' WHERE id = ''3''";\r\n\r\n//SELECT for Multiple\r\n$sql = "SELECT * FROM users";\r\n$result = $conn->query($sql);\r\nwhile ($row = $result->fetch_array()) {\r\n   var_dump($row);\r\n}\r\n\r\n//SELECT FOR single\r\n$sql = "SELECT * FROM users WHERE id = ''3''";\r\n$result = $conn->query($sql);\r\n$user =  $result->fetch_array();\r\nvar_dump($user);\r\necho $user[''name'']; //Prints Name', 2, 'php', 5, 3),
(17, 'if', '<p style="box-sizing: inherit; margin-top: 1.2em; margin-bottom: 1.2em; font-size: 15px; font-family: Verdana, sans-serif;"><font style="box-sizing: inherit; vertical-align: inherit;">Muitas vezes, ao escrever codigo, voce deseja executar acoes diferentes para decisoes diferentes.&nbsp;</font>Voce pode usar instrucoes condicionais no seu codigo para fazer isso. Em JavaScript, temos as seguintes instrucoes condicionais IF.</p>', 'if (hour < 18) {\r\n  greeting = "Good day";\r\n} else {\r\n  greeting = "Good evening";\r\n}', 0, 'js', 1, 1),
(19, 'react - componentes de classe', '<p>Componentes de classe sao componentes que possuem um alto nivel de poder dentro da aplicacao, pois alem gerenciar o proprio estado, herdam os chamados metodos de ciclo de vida do React, lidam com partes logicas da aplicacao e manipulam eventos atraves de metodos que podem ser invocados em qualquer lugar do componente ou em seus filhos.<br></p>\r\nfonte: <a href="https://blog.geekhunter.com.br/criando-componentes-react-componentes-de-classe-e-funcional-sem-estado/" target="_blank">1</a>', 'import React, { Component } from ''react''\r\n\r\nclass Hello extends Component {\r\n  render() {\r\n    return <h3>Ola, {this.props.name}</h3>\r\n  }\r\n}\r\n\r\n\r\n//-------- ou ------------------\r\n\r\n\r\nimport React, { Component } from ''react''\r\n\r\nclass Hello extends Component {\r\n  render() {\r\n    return (\r\n         <h3>Ola, {this.props.name}</h3>\r\n        (\r\n  }\r\n}', 0, 'jsx', 3, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `id_subcategory` int(15) NOT NULL AUTO_INCREMENT,
  `descricao_subcategory` varchar(30) NOT NULL,
  `id_category_subcategory` int(15) NOT NULL,
  PRIMARY KEY (`id_subcategory`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
