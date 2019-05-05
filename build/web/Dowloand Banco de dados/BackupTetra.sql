-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.6.41-log - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para db_tetra
CREATE DATABASE IF NOT EXISTS `db_tetra` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_tetra`;

-- Copiando estrutura para tabela db_tetra.tbl_cliente
CREATE TABLE IF NOT EXISTS `tbl_cliente` (
  `cli_id` int(11) NOT NULL AUTO_INCREMENT,
  `cli_nome` varchar(25) DEFAULT NULL,
  `cli_email` varchar(25) DEFAULT NULL,
  `cli_endereco` varchar(25) DEFAULT NULL,
  `cli_telefone` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`cli_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela db_tetra.tbl_cliente: ~2 rows (aproximadamente)
DELETE FROM `tbl_cliente`;
/*!40000 ALTER TABLE `tbl_cliente` DISABLE KEYS */;
INSERT INTO `tbl_cliente` (`cli_id`, `cli_nome`, `cli_email`, `cli_endereco`, `cli_telefone`) VALUES
	(1, 'José Walter', 'odim123@hotmail.com', 'Rua Dos Girassóis 35', '(19)3601-1437'),
	(2, 'José Walter', 'odim123@hotmail.com', 'Rua Dos Girassóis 35', '(19)3601-1437');
/*!40000 ALTER TABLE `tbl_cliente` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
