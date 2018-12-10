-- --------------------------------------------------------
-- Servidor:                     18.225.37.30
-- Versão do servidor:           10.1.36-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para integrador
CREATE DATABASE IF NOT EXISTS `integrador` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `integrador`;

-- Copiando estrutura para tabela integrador.cliente
CREATE TABLE IF NOT EXISTS `cliente` (
  `CODCLIENTE` int(11) NOT NULL AUTO_INCREMENT,
  `NOME` varchar(80) NOT NULL,
  `TELEFONE` varchar(12) DEFAULT NULL,
  `CPF` varchar(12) NOT NULL,
  `EMAIL` varchar(80) NOT NULL,
  `ENDERECO` varchar(100) DEFAULT NULL,
  `CEP` varchar(15) DEFAULT NULL,
  `BAIRRO` varchar(40) DEFAULT NULL,
  `CIDADE` varchar(50) DEFAULT NULL,
  `ESTADO` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`CODCLIENTE`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
-- Copiando estrutura para tabela integrador.funcionario
CREATE TABLE IF NOT EXISTS `funcionario` (
  `CODFUNC` int(11) NOT NULL AUTO_INCREMENT,
  `NOME` varchar(80) NOT NULL,
  `CARGO` varchar(50) NOT NULL,
  `PERMISSAO` varchar(20) NOT NULL,
  `LOGIN` varchar(20) DEFAULT NULL,
  `SENHA` varchar(30) NOT NULL,
  PRIMARY KEY (`CODFUNC`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
-- Copiando estrutura para tabela integrador.itemvenda
CREATE TABLE IF NOT EXISTS `itemvenda` (
  `CODITEM` int(11) NOT NULL AUTO_INCREMENT,
  `CODBARRAS` varchar(13) DEFAULT NULL,
  `NOMEITEM` varchar(50) NOT NULL,
  `QUANTIDADE` int(3) NOT NULL,
  `VALOR` double(6,2) NOT NULL,
  `CODVENDA` int(6) NOT NULL,
  PRIMARY KEY (`CODITEM`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
-- Copiando estrutura para tabela integrador.produtos
CREATE TABLE IF NOT EXISTS `produtos` (
  `CODPROD` int(11) NOT NULL AUTO_INCREMENT,
  `CODBARRAS` varchar(13) NOT NULL,
  `NOMEPROD` varchar(50) NOT NULL,
  `VALOR` double(6,2) NOT NULL,
  `QUANTIDADE` int(3) NOT NULL,
  `DESCRICAO` text NOT NULL,
  PRIMARY KEY (`CODPROD`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
-- Copiando estrutura para tabela integrador.venda
CREATE TABLE IF NOT EXISTS `venda` (
  `CODVENDA` int(11) NOT NULL AUTO_INCREMENT,
  `DATAVENDA` varchar(30) NOT NULL,
  `FORMAPAGAMENTO` varchar(30) NOT NULL,
  `VALORTOTAL` double(6,2) NOT NULL,
  `CLIENTE` varchar(50) NOT NULL,
  `FUNCIONARIO` varchar(50) NOT NULL,
  PRIMARY KEY (`CODVENDA`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
