-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2016 at 06:53 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `funildevendas`
--

-- --------------------------------------------------------

--
-- Table structure for table `artigos`
--

CREATE TABLE IF NOT EXISTS `artigos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(520) NOT NULL,
  `conteudo` text NOT NULL,
  `slug` varchar(520) NOT NULL,
  `imagem` varchar(520) NOT NULL,
  `categorias_artigo_id` int(11) NOT NULL,
  `situacoes_artigo_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `artigos`
--

INSERT INTO `artigos` (`id`, `titulo`, `conteudo`, `slug`, `imagem`, `categorias_artigo_id`, `situacoes_artigo_id`, `created`, `modified`) VALUES
(1, 'Curso de PHP, MySQLi e Bootstrap', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam iaculis imperdiet porttitor. Vestibulum elit lectus, mollis at urna a, cursus scelerisque lectus. Nulla leo mi, elementum sit amet cursus quis, tincidunt nec purus. Quisque sit amet libero eu lectus bibendum commodo. Fusce hendrerit rhoncus quam ut pulvinar. Sed nisi nibh, laoreet ut vulputate sed, dignissim quis orci. Nam lectus augue, finibus quis felis vel, pellentesque tincidunt neque.\r\n<p></p>\r\nCras faucibus elit sem, in hendrerit lacus dignissim sit amet. Proin laoreet vel justo non mollis. Suspendisse sit amet ipsum non leo dignissim placerat. Quisque felis metus, blandit aliquet tortor in, ultricies euismod mauris. Nullam posuere ut lacus et congue. Aliquam quis varius leo. Morbi gravida lacus sapien, nec finibus augue congue eget. Etiam blandit blandit ipsum vel ullamcorper. Curabitur dignissim fringilla mi, eu cursus tortor convallis eu. Aliquam tempus purus in massa volutpat, id pretium mi fringilla. Morbi condimentum enim odio, ut pulvinar lorem rutrum molestie.\r\n<p></p>\r\nDonec egestas sollicitudin nulla, a porta nibh pharetra nec. Etiam aliquet ante vitae maximus cursus. Aenean ultricies ante eget sagittis malesuada. Donec sagittis dui ipsum, et commodo lectus vestibulum sed. Nullam id lorem et arcu luctus mollis et ut arcu. Morbi tristique sit amet magna sit amet ultrices. Donec laoreet ante ipsum, ac dapibus tortor venenatis vitae. Integer eleifend leo enim, id accumsan metus dignissim ac. Maecenas vulputate mauris augue, eu gravida nisi tincidunt nec.</p>', 'curso-de-php-mysqli-e-bootstrap', 'teste.png', 1, 1, '2016-11-30 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categorias_artigos`
--

CREATE TABLE IF NOT EXISTS `categorias_artigos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(220) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `categorias_artigos`
--

INSERT INTO `categorias_artigos` (`id`, `nome`, `created`, `modified`) VALUES
(1, 'PHP', '2016-08-01 00:00:00', NULL),
(2, 'CSS', '0000-00-00 00:00:00', NULL),
(3, 'JavaScript', '2016-06-25 10:11:28', '2016-06-25 11:19:28'),
(4, 'MySQLi', '2016-06-25 10:11:49', '2016-06-25 11:19:01');

-- --------------------------------------------------------

--
-- Table structure for table `niveis_acessos`
--

CREATE TABLE IF NOT EXISTS `niveis_acessos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `niveis_acessos`
--

INSERT INTO `niveis_acessos` (`id`, `nome`, `created`, `modified`) VALUES
(1, 'Administrador', '2016-03-25 00:00:00', NULL),
(2, 'Colaborador', '2016-03-25 00:00:00', NULL),
(3, 'Cliente', '2016-03-25 00:00:00', '2016-03-27 20:26:18'),
(4, 'Fornecedor', '2016-03-27 20:12:03', '2016-03-27 20:18:11');

-- --------------------------------------------------------

--
-- Table structure for table `situacoes`
--

CREATE TABLE IF NOT EXISTS `situacoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `situacoes`
--

INSERT INTO `situacoes` (`id`, `nome`, `created`, `modified`) VALUES
(1, 'Ativo', '2016-03-25 00:00:00', NULL),
(2, 'Inativo', '2016-03-25 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `situacoes_artigos`
--

CREATE TABLE IF NOT EXISTS `situacoes_artigos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `situacoes_artigos`
--

INSERT INTO `situacoes_artigos` (`id`, `nome`, `created`, `modified`) VALUES
(1, 'Ativo', '2016-10-13 00:00:00', '2016-06-25 12:06:10'),
(2, 'Inativo', '2016-10-28 00:00:00', NULL),
(3, 'RevisÃ£o', '2016-06-25 11:53:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(240) NOT NULL,
  `email` varchar(240) NOT NULL,
  `senha` varchar(240) NOT NULL,
  `foto` varchar(220) DEFAULT NULL,
  `situacoe_id` int(11) NOT NULL,
  `niveis_acesso_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `foto`, `situacoe_id`, `niveis_acesso_id`, `created`, `modified`) VALUES
(1, 'Cesar Szpak', 'cesar@celke.com.br', '202cb962ac59075b964b07152d234b70', NULL, 1, 1, '2016-03-25 01:01:01', NULL),
(2, 'Kelly1', 'kelly1@celke.com.br', '202cb962ac59075b964b07152d234b70', NULL, 1, 1, '2016-03-25 02:02:02', '2016-03-27 19:22:38'),
(3, 'Jessica', 'jessica@celke.com.br', '202cb962ac59075b964b07152d234b70', '1465152636_logo_celke.png', 2, 3, '2016-03-25 03:03:33', '2016-06-05 15:50:36'),
(4, 'Gabriely', 'gabriely@celke.com.br', '202cb962ac59075b964b07152d234b70', NULL, 1, 2, '2016-03-25 22:50:38', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
