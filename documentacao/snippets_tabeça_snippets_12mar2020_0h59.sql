-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 12-Mar-2020 às 04:59
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
-- Database: `snippets`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `snippets`
--
-- Extraindo dados da tabela `snippets`
--

INSERT INTO `snippets` (`id_sni`, `title_sni`, `description_sni`, `syntax_sni`, `classification_sni`, `language_sni`, `category_sni`, `subcategory_sni`) VALUES
(8, 'for', '', 'for (var i = 0; i < cars.length; i++) {\r\n  text += cars[i];\r\n}', 1, 'js', 1, 1),
(9, 'while', '', 'while (i < 10) {\r\n  text += \"The number is \" + i;\r\n  i++;\r\n}', 1, 'js', 1, 1),
(10, 'operador ternario', '', 'isMenber = false;\r\n\"The fee is \" + (isMenber ? \"$2.00\" : \"$10.00\")\r\n// The fee is $10.00\r\n\r\n\r\nvar resultado = (a > b) ? \"a e maior que b\" : \"b e maior que a\";', 1, 'js', 1, 2),
(11, 'git commit', '', '    git add .\r\n    git commit -m \"$m\"\r\n    git push -u origin master \r\n', 4, 'git', 1, 1),
(12, 'php require', '', 'require(\'somefile.php\');\r\n\r\nrequire \'somefile.php\';\r\n', 6, 'php', 1, 1),
(13, 'react', '', 'const e = React.createElement;\r\n\r\n// Exibe um \"Like\" <button>\r\nreturn e(\r\n  \'button\',\r\n  { onClick: () => this.setState({ liked: true }) },\r\n  \'Like\'\r\n);', 4, 'jsx', 1, 3),
(14, 'php mysqli', 'Conectar usando mysqli.', '//Create Connection\r\n$conn = mysqli_connect(\'localhost\',\'root\',\'\',\'noob_cms\');\r\n\r\n//CHECK CONNECTION\r\nif (!$conn) {\r\n    die(\"Connection failed: \".mysqli_connect_error());\r\n}\r\n\r\n//Insert\r\n$sql = \"INSERT INTO users (email, password, name) VALUES (\'test@test.com\', \'test\', \'Mr. Test\')\";\r\n\r\n//DELETE\r\n$sql = \"DELETE FROM users WHERE id = \'1\'\";\r\n\r\n//UPDATE\r\n$sql = \"UPDATE users SET password = \'hello\', name = \'Mr. Yes\' WHERE id = \'3\'\";\r\n\r\n//SELECT for Multiple\r\n$sql = \"SELECT * FROM users\";\r\n$result = $conn->query($sql);\r\nwhile ($row = $result->fetch_array()) {\r\n   var_dump($row);\r\n}\r\n\r\n//SELECT FOR single\r\n$sql = \"SELECT * FROM users WHERE id = \'3\'\";\r\n$result = $conn->query($sql);\r\n$user =  $result->fetch_array();\r\nvar_dump($user);\r\necho $user[\'name\']; //Prints Name', 2, 'php', 6, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `snippets`
--


--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `snippets`
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
