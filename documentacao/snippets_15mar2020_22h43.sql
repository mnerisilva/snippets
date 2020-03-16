-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 16-Mar-2020 às 02:43
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `snippets`
--

INSERT INTO `snippets` (`id_sni`, `title_sni`, `description_sni`, `syntax_sni`, `classification_sni`, `language_sni`, `category_sni`, `subcategory_sni`) VALUES
(25, 'for', '<p style=\"box-sizing: inherit; margin-top: 1.2em; margin-bottom: 1.2em; font-size: 15px; font-family: Verdana, sans-serif;\"><font style=\"box-sizing: inherit; vertical-align: inherit;\">Os loops são úteis, se você deseja executar o mesmo código repetidamente, sempre com um valor diferente.</font>Geralmente, este é o caso ao trabalhar com matrizes:</p><p style=\"box-sizing: inherit; margin-top: 1.2em; margin-bottom: 1.2em; font-size: 15px; font-family: Verdana, sans-serif;\">fonte:&nbsp;<a href=\"https://bit.ly/3aWHQYZ\" style=\"font-family: Montserrat, sans-serif; font-size: 1rem;\">https://bit.ly/3aWHQYZ</a></p>', 'for (var i = 0; i < 5; i++) {\r\n  text += \"The number is \" + i + \"<br>\";\r\n}', 0, 'js', 1, 1),
(26, 'react - Configurando uma aplicação', '<p>Configurando uma aplicação React.</p><p>fonte:&nbsp;&nbsp;<a href=\"https://bit.ly/2IGm3Zt\" style=\"font-size: 1rem;\">https://bit.ly/2IGm3Zt</a></p>', '//----- Instalando o node.js e gerando um novo NPM package\r\n\r\n\r\nnpm init\r\n\r\n   {\r\n      \"name\": \"bills-hub\",\r\n      \"version\": \"1.0.0\",\r\n      \"description\": \"A react app for educational purposes\",\r\n      \"main\": \"index.js\",\r\n      \"scripts\": {\r\n         \"test\": \"echo \\\"Error: no test specified\\\" && exit 1\"\r\n   },\r\n   \"author\": \"Arodrigo Vargas\",\r\n   \"license\": \"ISC\"\r\n}\r\n\r\n\r\n\r\n//----- Instalando os pacotes NPM essenciais\r\n\r\nnpm install react react-dom webpack webpack-cli webpack-dev-server babel-loader @babel/core sass-loader --save-dev\r\n\r\nnpm install react react-dom --save-dev\r\n\r\n\r\n//----- Instalando o webpack e seus utilitários\r\n\r\nnpm install webpack webpack-cli webpack-dev-server --save-dev\r\n\r\n\r\n\r\n//----- Arquivo de configuração do Webpack\r\n   module.exports = {\r\n      entry: \'./src/indeex.jsx\',\r\n      output: {\r\n         path: __dirname + \'/public/assets\',\r\n         filename: \'bundle.js\'\r\n      },\r\n      devServer: {\r\n         contentBase: \'./public\',\r\n         publicPath: \'/assets\'\r\n      }\r\n   };', 0, 'jsx', 1, 1),
(27, 'git add, commit e push no github', '<p>A maneira tradicional de adicionar arquivos a um repositório usando a linha de comando é resumida nas 3 etapas abaixo:<br></p><p>fonte:&nbsp;<a href=\"https://bit.ly/38NRqvu\" style=\"font-size: 1rem;\">https://bit.ly/38NRqvu</a></p><br><a href=\"https://rogerdudler.github.io/git-guide/index.pt_BR.html\" target=\"_blank\">https://rogerdudler.github.io/git-guide/index.pt_BR.html</a>', '    git add .\r\n    git commit -m \"version x.xx\"\r\n    git push origin master ', 0, 'git', 1, 1),
(28, 'babel - Usando Babel standalone', '<p>Instrui o Babel a transpilar e processar o JavaScript nessas tags. Esse código agora será executado em navegadores tão antigos quanto o IE 11.<br></p>\r\n<p>fonte: <a href=\"https://tinyurl.com/t7axmdd\" target=\"_blank\">https://tinyurl.com/t7axmdd</a></p>', '  <script src=\"https://unpkg.com/@babel/polyfill@7.6.0/dist/polyfill.min.js\"></script>\r\n<script src=\"https://unpkg.com/@babel/standalone/babel.min.js\"></script>\r\n  \r\n  \r\n  \r\n  //--- Especifique text/babel como a typetag do script anterior:\r\n  \r\n  \r\n\r\n<script type=\"text/babel\">\r\n  var button = document.querySelector(\'button\')\r\n\r\n  button.addEventListener(\'click\', () => {\r\n    alert(\'You Clicked Me!\')\r\n  })\r\n</script>', 0, 'js', 1, 1),
(29, 'php msqli crud', '<h5 style=\"font-size: 1em; color: rgb(84, 78, 78);\">Recomendamos o uso do pacote PDO. Ajuda a escapar e proteger contra ataques de injecoes de SQL.</h5>\r\n<ul style=\"font-size: 1em; color: rgb(84, 78, 78);\">fontes: <li><a href=\"https://dev.to/th3n00bc0d3r/php-and-sql-connect-to-database-48a5\" target=\"_blank\">1</a></li><li class=\"m-2\"><a href=\"https://www.studentstutorial.com/ajax/crud\" target=\"_blank\">2</a></li></ul>', '//Create Connection\r\n$conn = mysqli_connect(\'localhost\',\'root\',\'\',\'noob_cms\');\r\n\r\n//CHECK CONNECTION\r\nif (!$conn) {\r\n    die(\"Connection failed: \".mysqli_connect_error());\r\n}\r\n\r\n//Insert\r\n$sql = \"INSERT INTO users (email, password, name) VALUES (\'test@test.com\', \'test\', \'Mr. Test\')\";\r\n\r\n//DELETE\r\n$sql = \"DELETE FROM users WHERE id = \'1\'\";\r\n\r\n//UPDATE\r\n$sql = \"UPDATE users SET password = \'hello\', name = \'Mr. Yes\' WHERE id = \'3\'\";\r\n\r\n//SELECT for Multiple\r\n$sql = \"SELECT * FROM users\";\r\n$result = $conn->query($sql);\r\nwhile ($row = $result->fetch_array()) {\r\n   var_dump($row);\r\n}\r\n\r\n//SELECT FOR single\r\n$sql = \"SELECT * FROM users WHERE id = \'3\'\";\r\n$result = $conn->query($sql);\r\n$user =  $result->fetch_array();\r\nvar_dump($user);\r\necho $user[\'name\']; //Prints Name', 2, 'php', 5, 3),
(30, 'while ', '', 'while (var i < 10) {\r\n  text += \"The number is \" + i;\r\n  i++;\r\n}', 1, 'js', 1, 1),
(31, 'operador ternario', '', '\"The fee is \" + (isMember ? \"$2.00\" : \"$10.00\");\r\n\r\n\r\n// Conforme o resultado da operacao,\r\n// voce tambem podera atribuir a variaveis:\r\n\r\n\r\nvar elvisLives = Math.PI > 4 ? \"Yep\" : \"No', 1, 'js', 1, 1),
(32, 'php include', '', '	include \'my_include.php\';\r\n	include(\'my_include.php\');\r\n', 8, 'php', 1, 1),
(33, 'if', '<p style=\"box-sizing: inherit; margin-top: 1.2em; margin-bottom: 1.2em; font-size: 15px; font-family: Verdana, sans-serif;\"><font style=\"box-sizing: inherit; vertical-align: inherit;\">Muitas vezes, ao escrever codigo, voce deseja executar acoes diferentes para decisoes diferentes.&nbsp;</font>Voce pode usar instrucoes condicionais no seu codigo para fazer isso. Em JavaScript, temos as seguintes instrucoes condicionais IF.</p>', 'if (hour < 18) {\r\n  greeting = \"Good day\";\r\n} else {\r\n  greeting = \"Good evening\";\r\n}', 1, 'js', 1, 1),
(34, 'react - componentes de classe', '<p>Componentes de classe sao componentes que possuem um alto nivel de poder dentro da aplicacao, pois alem gerenciar o proprio estado, herdam os chamados metodos de ciclo de vida do React, lidam com partes logicas da aplicacao e manipulam eventos atraves de metodos que podem ser invocados em qualquer lugar do componente ou em seus filhos.<br></p>\r\nfonte: <a href=\"https://blog.geekhunter.com.br/criando-componentes-react-componentes-de-classe-e-funcional-sem-estado/\" target=\"_blank\">1</a>', 'import React, { Component } from \'react\'\r\n\r\nclass Hello extends Component {\r\n  render() {\r\n    return <h3>Ola, {this.props.name}</h3>\r\n  }\r\n}\r\n\r\n\r\n//-------- ou ------------------\r\n\r\n\r\nimport React, { Component } from \'react\'\r\n\r\nclass Hello extends Component {\r\n  render() {\r\n    return (\r\n         <h3>Ola, {this.props.name}</h3>\r\n        (\r\n  }\r\n}', 1, 'js', 1, 1),
(35, 'Math.min () e Math.max ()', '<p><code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, &quot;courier new&quot;; font-size: 15.75px; color: crimson; background-color: rgb(241, 241, 241); padding-left: 4px; padding-right: 4px;\">Math.min()</code><font style=\"box-sizing: inherit; font-family: Verdana, sans-serif; font-size: 15px; vertical-align: inherit;\"><font style=\"box-sizing: inherit; vertical-align: inherit;\">e&nbsp;</font></font><code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, &quot;courier new&quot;; font-size: 15.75px; color: crimson; background-color: rgb(241, 241, 241); padding-left: 4px; padding-right: 4px;\">Math.max()</code><font style=\"box-sizing: inherit; font-family: Verdana, sans-serif; font-size: 15px; vertical-align: inherit;\"><font style=\"box-sizing: inherit; vertical-align: inherit;\">pode ser usado para encontrar o valor mais baixo ou mais alto em uma lista de argumentos:</font></font></p><p>fonte:&nbsp;<a href=\"https://www.w3schools.com/js/js_math.asp\" style=\"font-size: 1rem;\">https://www.w3schools.com/js/js_math.asp</a></p><p><br></p>', 'Math.min(0, 150, 30, 20, -8, -200);  // returns -200\r\n\r\nMath.max(0, 150, 30, 20, -8, -200);  // returns 150', 1, 'js', 1, 1),
(36, 'jQuery - valor do margin-left elemento html', '<p>jQuery - valor do margin-left elemento html,<br></p>', '        var margin = $(\'.lado1\').css(\'margin-left\');\r\n        margin = parseInt(margin.replace(\"px\",\"\"));', 0, 'js', 1, 1),
(37, 'jQuery Ajax: Requisições assíncronas com jQuery e ', '<p>Nesta vídeo-aula, é apresentado o conceito de AJAX (Asynchronous JavaScript and XML), que é fundamental para a construção de aplicações Web hoje, por facilitar a criação de melhores interfaces para o usuário. Entenda o que é AJAX e aprenda a diferença entre requisição síncrona e requisição assíncrona.</p><p>vídeo:&nbsp;<a href=\"https://www.youtube.com/watch?v=AbzL8TrtSb8\" target=\"_blank\">https://www.youtube.com/watch?v=AbzL8TrtSb8</a><a href=\"https://www.youtube.com/watch?v=AbzL8TrtSb8\" style=\"font-size: 1rem;\"></a></p><p>fonte:&nbsp;<a href=\"https://www.gigasystems.com.br/artigo/30/como-usar-ajax-com-jquery\" style=\"font-size: 1rem;\">https://www.gigasystems.com.br/artigo/30/como-usar-ajax-com-jquery</a></p>', '<!-- Inicio do nosso código Jquery().AJAX() -->\r\n    <script>\r\n        //Aqui inicio do código Jquery\r\n        $(document).ready(function(){\r\n             \r\n            //Primeiro criaremos a função que exibe a imagem em gif do loading\r\n            function loading_show(){\r\n                $(\'#load\').fadeIn(\'fast\');\r\n            }\r\n             \r\n            //Agora é a vez de criar a função que esconde a imagem da gif de loading\r\n            function loading_hide(){\r\n                $(\'#load\').fadeOut(\'fast\');\r\n            }  \r\n             \r\n            //Agora faremos o evento que chama a função ajax, esse evento é o click do botão(button) do formulário\r\n            $(\'#click\').click(function(){\r\n                 \r\n                //Apos clicar no botão vamos armazenar os valores dos campos dele em uma variavel, para isso usamos um camando chamdo\r\n                //serialize() no formulario que contenha os dados\r\n                var valores = $(\'#pesquisar\').serialize();\r\n                 \r\n                //Esta é a função Ajax// Seu inicio é por essa sintaxe\r\n                $.ajax\r\n                ({\r\n                    type: \'POST\', //Esta propriedade diz que tipo de interação faremos entre os dados, neste caso por POST\r\n                    dataType: \'html\', //Tipo de retorno que tera o ajax, neste caso retornaremos um tipo html, página em html\r\n                    url: \'pages/pesquisaPorData.php\', //Qual página o ajax ira buscar \r\n                    beforeSend: function(){//Chama a função para mostrar a imagem gif de loading antes do carregamento\r\n                                    loading_show();  \r\n                                },\r\n                    data: valores, //Este são os valores do POST do formularios, neste caso as datas\r\n                    success: function(retorno) //Em caso de sucesso da função .ajax ele retornara para a var retorno\r\n                    {\r\n                        loading_hide(); //Função que esconde novamente a imagem do gif de loading\r\n                        $(\'#resultados\').html(retorno).fadeIn(); //Aqui estamos inserido o conteudo de retorno na local indicado    \r\n                    },\r\n                    //Aqui poderiamos programar uma execeção, um tipo de retorno caso tenhamos falha na exception função .ajax\r\n                    error: function(error)\r\n                    {\r\n                        loading_hide(); //Função que esconde novamente a imagem do gif de loading\r\n                        $(\"#resultados\").html(error).fadeIn(); //Aqui estamos inserido o conteudo de erro no local indicado \r\n                    }\r\n                });\r\n            });\r\n        });\r\n    </script>', 0, 'js', 1, 1);

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
