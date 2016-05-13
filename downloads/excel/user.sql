-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2016 at 06:11 PM
-- Server version: 5.6.17-log
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `humanity`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `status` tinyint(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `nationality` int(11) DEFAULT NULL,
  `scholarship` int(11) DEFAULT NULL,
  `rh` int(11) DEFAULT NULL,
  `skype` varchar(255) DEFAULT NULL,
  `cellphone` int(11) DEFAULT NULL,
  `seniority` int(11) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `project` int(11) DEFAULT NULL,
  `afp` int(11) DEFAULT NULL,
  `eps` int(11) DEFAULT NULL,
  `fc` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id_user` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `document_type` int(11) DEFAULT NULL,
  `document_number` int(11) DEFAULT NULL,
  `first_last_name` varchar(255) DEFAULT NULL,
  `second_last_name` varchar(255) DEFAULT NULL,
  `birth_place` int(11) DEFAULT NULL,
  `n_of_children` int(11) DEFAULT NULL,
  `marital_status` int(11) DEFAULT NULL,
  `people_in_charge` int(11) DEFAULT NULL,
  `social_stratum` int(11) DEFAULT NULL,
  `personal_email` varchar(255) DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `contact_phone` int(11) DEFAULT NULL,
  `hired_date` date DEFAULT NULL,
  `corporate_email` varchar(255) DEFAULT NULL,
  `skills_array` longtext,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `document_number` (`document_number`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`status`, `name`, `address`, `birthday`, `age`, `nationality`, `scholarship`, `rh`, `skype`, `cellphone`, `seniority`, `salary`, `project`, `afp`, `eps`, `fc`, `createdAt`, `updatedAt`, `id_user`, `document_type`, `document_number`, `first_last_name`, `second_last_name`, `birth_place`, `n_of_children`, `marital_status`, `people_in_charge`, `social_stratum`, `personal_email`, `contact_name`, `contact_phone`, `hired_date`, `corporate_email`, `skills_array`) VALUES
(1, 'David', 'Calle 26 #39-95', '1988-12-07', 25, 3, 1, 4, 'davidgamboa07', 2147483647, 4, 10000000, 14, 2, 2, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 1, 4, 420752, 'Gamboa', 'Sandrea', 4, 0, 2, 1, 4, 'davidgamboa07@gmail.com', 'Ruth Ramírez', 2147483647, '2015-07-15', 'dgamboa@velocitypartners.net', '[]'),
(1, 'Adrian eduardo', 'Cale 19 #43G-155  Apto 1905', '1977-12-14', 25, 3, 1, 4, 'aemdb2010', 2147483647, 5, 10000000, 14, 6, 2, 6, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 2, 4, 432224, 'Moya', 'Guzman', 5, 1, 2, 0, 4, 'amoya@gmail.com', 'Andreina Romero', 2147483647, '2015-03-05', 'amoya@velocitypartners.net', '[]'),
(1, 'Vitaly', 'Cr 45 #26-162', '1989-01-28', 25, 2, 1, 4, 'm0t0r__', 2147483647, 1, 10000000, 14, 2, 2, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 3, 4, 449482, 'Tkachenko', 'Null', 6, 0, 2, 0, 4, 'tkachenko.vitaly.job@gmail.com', 'Jessica Ramirez', 2147483647, '2014-09-08', 'vtkachenko@velocitypartners.net', '[]'),
(1, 'Luzkeila de los angeles', 'CL 27d sur # 27c-50 apt 320', '1981-04-01', 25, 1, 1, 1, 'luzkeila.ferrer', 2147483647, 16, 10000000, 14, 1, 2, 1, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 4, 4, 521114, 'Ferrer', 'Araque', 5, 2, 2, 0, 4, 'luzkeiladeramirez@gmail.com', 'Antonio Ramirez', 2147483647, '2015-08-03', 'luzkeilaferrer@velocitypartners.net', '[]'),
(1, 'Israel', 'Calle 31 Sur #44A 24', '1977-11-21', 25, 4, 1, 1, 'israel.dacunha1', 2147483647, 4, 10000000, 14, 2, 2, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 5, 4, 571368, 'Da cunha', 'Urriola', 12, 0, 2, 0, 4, 'yoisrael@gmail.com', 'Rebeca Cramar', 2147483647, '2012-10-02', 'idacunha@velocitypartners.net', '[]'),
(1, 'Esteban jose', 'calle 24 sur #40-47', '1985-12-26', 25, 3, 1, 1, 'ejfr1985', 311, 5, 10000000, 14, 2, 2, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 6, 4, 572390, 'Florez', 'Rodriguez', 7, 0, 1, 0, 4, 'ejfr1985@gmail.com', 'Nilda Rodriguez.', 2147483647, '2016-01-19', 'flores@velocitypartners.net', '[]'),
(1, 'Jonny edison', 'carrera 75da # 2 b sur 35 apto 206', '1985-02-26', 25, 1, 1, 1, 'jgambax', 2147483647, 4, 10000000, 14, 2, 2, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 7, 1, 4520734, 'Gamba', 'Urrea', 2, 0, 1, 0, 4, 'jgambax@gmail.com', 'luz mary urrea', 2147483647, '2014-04-02', 'jgamba@velocitypartners.net', '[]'),
(1, 'Juan diego alberto', 'Carrera 28 # 38 Sur 10', '1985-08-24', 25, 1, 1, 1, 'jrestr52', 2147483647, 4, 10000000, 14, 2, 2, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 8, 1, 8032409, 'Restrepo', 'Diaz', 1, 0, 1, 0, 4, 'juandiegor@gmail.com', 'Luz Mariela Díaz.', 2147483647, '2015-08-03', 'jrestrepo@velocitypartners.net', '[]'),
(1, 'Jorge luis', 'Cra 48 # 17a sur 51 Apt 309', '1982-08-13', 25, 1, 1, 1, 'Kankis 6', 2147483647, 16, 10000000, 14, 2, 2, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 9, 1, 8486273, 'Robledo', 'Solano', 8, 1, 4, 1, 4, 'kankis1382@hotmail.com', 'Milena Robledo', 2147483647, '2016-03-14', 'jrobledo@velocitypartners.net', '[]'),
(1, 'Diego alejandro', 'Calle 28 sur 43 A 70 APT 708', '1984-12-25', 25, 1, 1, 3, 'dtoropsl', 300, 4, 10000000, 14, 1, 2, 1, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 10, 1, 8027130, 'Toro', 'Diaz', 1, 0, 1, 0, 4, 'diegotdiaz@gmail.com', 'Ana maria diaz', 2147483647, '2013-11-18', 'dtorodiaz@velocitypartners.net', '[]'),
(1, 'Alexander', 'CL 61 # 56-51 apt 1911', '1981-08-17', 25, 1, 1, 4, 'aleksortizr', 2147483647, 3, 10000000, 14, 1, 2, 1, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 11, 1, 10292309, 'Ortiz', 'Rosada', 9, 0, 1, 0, 4, 'aleksortizr@gmail.com', 'Angela Maria Gomez', 2147483647, '2015-06-01', 'aortiz@velocitypartners.net', '[]'),
(1, 'Sergio andres', 'CR 74 # 93-104', '1984-11-09', 25, 1, 1, 3, 'abedoyag', 2147483647, 4, 10000000, 14, 2, 2, 1, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 12, 1, 15372921, 'Bedoya', 'Garces', 1, 0, 1, 1, 4, 'andres.paranoid@gmail.com', 'Cenella Garces', 2147483647, '2015-10-13', 'abedoya@velocitypartners.net', '[]'),
(1, 'Leonardo', 'Calle 23 #41-20', '1982-03-10', 25, 1, 1, 1, 'Cachancha', 301, 1, 10000000, 14, 1, 2, 1, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 13, 1, 16943360, 'Moreno', 'Guzman', 9, 0, 1, 0, 4, 'leonardo.moreno@gmail.com', 'Lorena Guzmán', 311, '2016-02-01', 'lmoreno@velocitypartners.net', '[]'),
(1, 'Angela maria', 'CL 18 # 83-310 casa 203', '1980-01-19', 25, 1, 1, 1, 'amdelgado', 2147483647, 15, 10000000, 14, 5, 2, 5, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 14, 1, 29127517, 'Delgado', 'Marin', 9, 0, 1, 2, 4, 'angela.delgado@gmail.com', 'Socorro Pedraza', 2147483647, '2015-08-18', 'adelgado@velocitypartners.net', '[]'),
(1, 'Ruby cecilia', '3619838', '1980-04-21', 25, 1, 1, 4, 'ruby_romero', 2147483647, 7, 10000000, 14, 2, 2, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 15, 1, 43163984, 'Romero', 'Rodriguez', 11, 0, 1, 1, 4, 'rromeror@gmail.com', 'Ruperto Romero', 2147483647, '2013-11-05', 'rromero@velocitypartners.net', '[]'),
(1, 'Isabel cristina', 'Calle 16a # 43b 126 apt 505', '1979-11-03', 25, 1, 1, 4, 'isabelcristinablairlopez', 2147483647, 7, 10000000, 14, 2, 2, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 16, 1, 32141410, 'Blair', 'Lopez', 1, 0, 1, 0, 4, 'cristinablair@gmail.com', 'ANDRES CERRO', 2147483647, '2015-10-19', 'iblair@velocitypartners.net', '[]'),
(1, 'Claudia lucia', 'carrera 28 a # 34dd sur 41', '1981-11-22', 25, 1, 1, 1, 'la_chama3', 2147483647, 3, 10000000, 14, 1, 2, 1, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 17, 1, 43876660, 'Davila', 'Monsalve', 13, 0, 1, 2, 4, 'davilaclaudial@gmail.com', 'Laura Monsalve', 6009376, '2015-10-13', 'cdavila@velocitypartners.net', '[]'),
(1, 'Carolina', 'Carrera 65c # 32b -62', '1984-11-14', 25, 1, 1, 4, 'cconde@hotmail.com', 2147483647, 14, 10000000, 14, 5, 4, 5, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 18, 1, 43983303, 'Conde', 'Perez', 8, 0, 1, 1, 4, 'anker0@gmail.com', 'Nydia Pérez', 2147483647, '2014-05-05', 'cconde@velocitypartners.net', '[]'),
(1, 'Daniel', 'CL 39 sur # 25c 89', '1982-12-10', 25, 1, 1, 2, 'bitclaw', 14, 5, 10000000, 14, 2, 2, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 19, 1, 71266131, 'Chavez', 'Orozco', 14, 0, 1, 0, 4, 'bitclaw@gmail.com', 'Esperanza Orozco', 2147483647, '2014-11-19', 'dchaves@velocitypartners.net', '[]'),
(1, 'Alejandro', 'Cl 36S 27D 50', '1975-12-31', 25, 1, 1, 1, 'alejo.gaviria', 2147483647, 5, 10000000, 14, 2, 2, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 20, 1, 71773565, 'Gaviria', 'Lopera', 1, 2, 2, 0, 4, '0', 'Sandra Ramirez', 2147483647, '2015-11-09', 'agaviria@velocitypartners.net', '[]'),
(1, 'Fernando andres', 'Calle 29 # 29-31 apto 1003', '1979-03-20', 25, 1, 1, 4, 'maillane', 5041402, 4, 10000000, 14, 2, 2, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 21, 1, 71782884, 'Maillane', 'Tabarez', 1, 0, 1, 1, 4, 'apolofx@gmail.com', 'Diana Maillane', 5822390, '2014-08-19', 'fmaillane@velocitypartners.net', '[]'),
(1, 'Juan david', 'CL 1 sur # 43c-161 apt 301', '1990-12-17', 25, 1, 1, 4, 'juandillo', 2147483647, 15, 10000000, 14, 2, 2, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 22, 1, 71318655, 'Jaramillo', 'Gomez', 15, 0, 1, 0, 4, 'juandjar@gmail.com', 'Amparo Gomez', 2147483647, '2015-10-01', 'jjaramillo@velocitypartners.net', '[]'),
(1, 'Ricardo andres', 'Cra 41 # 24-131 Apt 610-3', '1979-02-03', 25, 1, 1, 1, 'deekattax', 2147483647, 5, 10000000, 14, 1, 2, 1, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 23, 1, 79723961, 'Buitrago', 'Carbajal', 16, 3, 2, 1, 4, 'rbuitragoc@gmail.com', 'Carolina Velandia', 2147483647, '2013-11-06', 'rbuitrago@velocitypartners.net', '[]'),
(1, 'Mario', 'Calle 17 # 40b-185 Apto 2308', '1975-08-19', 25, 1, 1, 8, 'mrugeles', 2147483647, 4, 10000000, 14, 1, 2, 1, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 24, 1, 79756974, 'Rugeles', 'Perez', 17, 0, 1, 0, 4, 'mrugeles@gmail.com', 'Alejandro Rugeles', 2147483647, '2014-03-10', 'mrugeles@velocitypartners.net', '[]'),
(1, 'Alfredo', 'Calle 20 sur 35 15 Apto 603', '1976-11-02', 25, 1, 1, 1, '0', 2147483647, 4, 10000000, 14, 1, 2, 1, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 25, 1, 79980503, 'Isaacs', 'Coral', 16, 0, 2, 1, 4, 'alfredoisaacs@gmail.com', 'Diana Carolina García', 2147483647, '2014-09-03', 'aisaacs@velocitypartners.net', '[]'),
(1, 'Johan paul', 'Calle 48 # 80 – 68 apto 501', '1976-02-23', 25, 1, 1, 5, 'Johann.echavarria', 2147483647, 4, 10000000, 14, 2, 2, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 26, 1, 71789483, 'Echavarria', 'Zarata', 1, 1, 2, 0, 4, 'johannechavarria@hotmail.com', 'Hermes Echavarría Zapata', 2147483647, '2015-12-07', 'jechavarria@velocitypartners.net', '[]'),
(1, 'Daniel felipe', 'CR 58 # 77-41 apt 343', '1984-09-18', 25, 1, 1, 4, 'dposada2', 2147483647, 3, 10000000, 14, 2, 2, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 27, 1, 75102090, 'Posada', 'Valencia', 2, 1, 2, 0, 4, 'dfposadavalencia@gmail.com', 'Carolina Salazar', 311, '2015-08-24', 'dposada@velocitypartners.net', '[]'),
(1, 'Ronald guillermo', 'cra 38 # 26 - 385 apto   248', '1981-04-08', 25, 1, 1, 4, 'ronald.manrique.8', 2147483647, 4, 10000000, 14, 2, 3, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 28, 1, 80089392, 'Manrrique', 'Sanabria', 16, 1, 4, 3, 4, 'ronald.manrique@gmail.com', 'Eliana Garcia', 2147483647, '2014-11-18', 'rmanrique@velocitypartners.net', '[]'),
(1, 'Alvaro sebastian', 'calle 27 Sur # 27 B - 34 apto 1509', '1983-07-22', 25, 1, 1, 3, 'alvaro.miranda', 80100088, 11, 10000000, 14, 2, 4, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 29, 1, 80100088, 'Miranda', 'Forero', 16, 0, 2, 0, 4, 'sebacho@gmail.com', 'Alvaro Enrique Miranda', 2147483647, '2015-05-11', 'smiranda@velocitypartners.net', '[]'),
(1, 'Daniel alejandro', 'Calle 9bS #79A-221', '1975-11-09', 25, 1, 1, 1, 'dniskav', 2147483647, 3, 10000000, 14, 6, 4, 3, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 30, 1, 80497803, 'Silva', 'Romero', 19, 3, 4, 3, 4, 'Dniskav@gmail. Com', 'Miriam Romero', 2147483647, '2014-10-27', 'dsilva@velocitypartners.net', '[]'),
(1, 'Andres felipe', 'Cr 79 # 34a - 82 apt 302', '1983-02-17', 25, 1, 1, 1, 'pipelin3', 2147483647, 14, 10000000, 14, 2, 2, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 31, 1, 80137239, 'Jimenez', 'Espitia', 16, 0, 2, 1, 4, 'pipelin3@gmail.com', 'Carolina Gomez', 2147483647, '2014-06-03', 'fjimenez@velocitypartners.net', '[]'),
(1, 'Jairo alonso', 'Cl 7AA # 30-244 apt 904', '1983-10-02', 25, 1, 1, 1, 'javalga', 2147483647, 4, 10000000, 14, 2, 2, 1, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 32, 1, 94064460, 'Valderrama', 'Gallego', 1, 0, 1, 1, 4, 'jairovg@gmail.com', 'Mriryam Gallego Vera', 2147483647, '2015-04-13', 'jvalderrama@velocitypartners.net', '[]'),
(1, 'Andres felipe', 'Cra 38 #26-385 B12 Apto 229', '1984-11-01', 25, 1, 1, 3, '0', 300, 4, 10000000, 14, 2, 2, 1, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 33, 1, 80851684, 'Cardona', 'Castro', 16, 0, 4, 1, 4, 'andres.felipe.cardona@gmail.com', 'Delly Cabezas', 301, '2014-01-07', 'fcardona@velocitypartners.net', '[]'),
(1, 'Jaime alberto', 'Cra 74d #74-114 Ap 1102', '1979-06-28', 25, 1, 1, 1, 'sposmen', 2147483647, 10, 10000000, 14, 2, 2, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 34, 1, 98636978, 'Giraldo', 'Jimenez', 1, 0, 2, 0, 4, 'jaime.giraldo.jimenez@gmail.com', 'Patricia', 2147483647, '2014-10-01', 'jgiraldo@velocitypartners.net', '[]'),
(1, 'Anderson', 'Cra 84B #35B 56 AP 201', '1983-04-13', 25, 1, 1, 1, 'jaraudea', 2147483647, 4, 10000000, 14, 2, 2, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 35, 1, 98703261, 'Jaramillo', 'Bedoya', 1, 1, 2, 1, 4, 'andersonjb.work@gmail.com', 'Liberto Jaramillo', 2389086, '2014-01-13', 'ajaramillo@velocitypartners.net', '[]'),
(1, 'Leonardo', 'Cl 7AA # 30-244 apt 904', '1986-01-22', 25, 1, 1, 1, 'leonardo.c.c', 2147483647, 4, 10000000, 14, 2, 4, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 36, 1, 1010161040, 'Cardozo', 'Cadavid', 16, 0, 1, 0, 4, 'metaleo@gmail.com', 'Betty Cadavid', 571, '2014-04-07', 'lcardozo@velocitypartners.net', '[]'),
(1, 'Jean paul', '6000849', '1986-12-25', 25, 1, 1, 1, 'jean.paul.ruiz.vallejo', 2147483647, 3, 10000000, 14, 2, 2, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 37, 1, 1017142963, 'Ruiz', 'Vallejo', 20, 0, 4, 0, 4, 'jpruiz114@gmail.com', 'Lina Santacoloma', 2147483647, '2014-08-11', 'jruiz@velocitypartners.net', '[]'),
(1, 'Edwin alexander', 'Calle 53 # 63 AA 52 Apto 120', '1984-03-16', 25, 1, 1, 4, 'friendzonemayor', 2147483647, 3, 10000000, 14, 2, 2, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 38, 1, 98707394, 'Cano', 'Rua', 1, 0, 1, 0, 4, 'alexander.kno@gmail.com', 'Claudia Rúa', 2147483647, '2014-08-11', 'acano@velocitypartners.net', '[]'),
(1, 'Raul santiago', 'Cl 17 40 B 185 AP 2007', '1986-06-10', 25, 1, 1, 4, 'slashdragon', 2147483647, 5, 10000000, 14, 2, 2, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 39, 1, 1017137618, 'Zapata', 'Bustamante', 1, 0, 2, 0, 4, 'java.koder@gmail.com', 'Adriana Avila', 2147483647, '2014-01-13', 'szapata@velocitypartners.net', '[]'),
(1, 'Hernan dario', 'Calle 45 E 14 C 24', '1989-07-29', 25, 1, 1, 1, 'hachesilva', 313, 4, 10000000, 14, 1, 4, 1, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 40, 1, 1017151573, 'Silva', 'Garzon', 1, 0, 1, 1, 4, 'hachesilva@gmail.com', 'Luz Elena Garzón', 313, '2015-12-21', 'hsilva@velocitypartners.net', '[]'),
(1, 'Maria ximena', 'Calle 38b sur # 26- 02 apto 1236', '1989-10-04', 25, 1, 1, 1, 'Ximena.tc4', 2147483647, 17, 10000000, 14, 1, 2, 1, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 41, 1, 1019037751, 'Tarazona', 'Casadiego', 16, 2, 2, 2, 4, 'andersonjb.work@gmail.com', 'Daniel Romero', 2147483647, '2014-01-07', 'xtarazona@velocitypartners.net', '[]'),
(1, 'Anderson farid', 'Cll 82 N 75-12', '1989-04-27', 25, 1, 1, 2, 'anderson.palacio4', 2147483647, 19, 10000000, 14, 2, 2, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 42, 1, 1020420769, 'Palacio', 'Agudelo', 21, 0, 1, 0, 4, 'apfarid780@gmail.com', 'Gloria Agudelo', 4419257, '2014-09-16', 'apalacio@velocitypartners.net', '[]'),
(1, 'Geneller alexis', 'Clla 31 # 57 44', '1989-11-27', 25, 1, 1, 1, 'genellern', 2147483647, 3, 10000000, 14, 2, 2, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 43, 1, 1020428061, 'Naranjo', 'Alzate', 1, 0, 1, 0, 4, 'genellern@gmail.com', 'Odilia Alzate', 2147483647, '2016-02-18', 'gnaranjo@velocitypartners.net', '[]'),
(1, 'Juan camilo', 'Carrera 47 # 52 sur 110 Apto 2009', '1986-08-08', 25, 1, 1, 1, 'juankahn4', 2147483647, 1, 10000000, 14, 1, 2, 1, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 44, 1, 1020717806, 'Gutierrez', 'Ruiz', 16, 0, 2, 1, 4, 'juancgr_4@hotmail.com', 'Yeisca Mosquera Sanchez', 2147483647, '2016-02-01', 'jgutierrez@velocitypartners.net', '[]'),
(1, 'Sara', 'Calle 63 58 D08', '1994-01-17', 25, 1, 1, 1, 'saravilla1207', 2147483647, 18, 10000000, 14, 1, 2, 1, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 45, 1, 1026150468, 'Muñoz', 'Villa', 1, 0, 1, 1, 4, 'sara.19.94@hotmail.es', 'Daniel Montoya', 2147483647, '2016-02-01', 'smunoz@velocitypartners.net', '[]'),
(1, 'Carlos', 'Cr 47 No 17 a sur - 51  Int 3 Apto 920', '1987-01-06', 25, 1, 1, 4, 'carlos.suarez', 2147483647, 4, 10000000, 14, 1, 2, 1, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 46, 1, 1026552557, 'Suarez', 'Null', 16, 0, 1, 0, 4, 'ingcarlos.suarez.moreno@gmail.com', 'Clara Oliva Moreno Chaves', 2147483647, '2015-11-30', 'csuarez@velocitypartners.net', '[]'),
(1, 'Andres', 'CL 68 sur # 45-57 apto 601', '1989-06-02', 25, 1, 1, 1, 'dev.ossa', 2147483647, 3, 10000000, 14, 2, 2, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 47, 1, 1039451245, 'Ossa', 'Arango', 1, 0, 1, 0, 4, 'raveneyex@gmail.com', 'Maria Helena Arango', 5514591, '2015-06-09', 'aossa@velocitypartners.net', '[]'),
(1, 'Daniel arturo', 'CR 45 # 1-59 apt 603', '1987-01-28', 25, 1, 1, 1, 'dahernandezt', 2147483647, 4, 10000000, 14, 1, 5, 1, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 48, 1, 1032380250, 'Hernandez', 'Toro', 16, 1, 2, 2, 4, 'danart8@gmail.com', 'Nathaly Chavez Guapo', 2147483647, '2015-07-01', 'dhernandez@velocitypartners.net', '[]'),
(1, 'Edgar fabian', 'CR 45 # 1-59 apt 705', '1987-02-11', 25, 1, 1, 4, 'efgar000', 2147483647, 4, 10000000, 14, 1, 2, 3, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 49, 1, 1032381325, 'Garcia', 'Hernandez', 16, 0, 2, 0, 4, 'edguitar000@gmail.com', 'Cindy Chavez', 2147483647, '2014-10-14', 'edgargarcia@velocitypartners.net', '[]'),
(1, 'Duver ferney', 'Cra 81 No. 4G 35', '1988-03-27', 25, 1, 1, 1, 'duverj', 2147483647, 4, 10000000, 14, 1, 1, 1, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 50, 1, 1036614987, 'Jaramillo', 'Marin', 1, 0, 4, 2, 4, 'duverj@gmail.com', 'Catalina Martinez', 316, '2014-10-15', 'djaramillo@velocitypartners.net', '[]'),
(1, 'Luis javier', 'CL 76 sur # 46c 34 int 201', '1991-06-30', 25, 1, 1, 5, 'luis.javier.rodriguez.zarate', 2147483647, 1, 10000000, 14, 1, 2, 1, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 51, 1, 1048212092, 'Rodriguez', 'Zarate', 22, 0, 1, 0, 4, 'ljrzarate@gmail.com', 'Yira Perez', 2147483647, '2015-07-06', 'lrodriguez@velocitypartners.net', '[]'),
(1, 'Santiago', 'CL 36 sur # 27 10', '1987-07-11', 25, 1, 1, 3, 'santiagovelezsaffon', 2147483647, 15, 10000000, 14, 2, 3, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 52, 1, 1053778047, 'Velez', 'Saffon', 2, 0, 4, 0, 4, 'svelezsaffon@gmail.com', 'Cristina Toledo', 2147483647, '2015-09-01', 'svelez@velocitypartners.net', '[]'),
(1, 'Juan camilo', 'Calle 34#64A-30', '1986-05-06', 25, 1, 1, 1, 'juankprada', 2147483647, 4, 10000000, 14, 1, 4, 1, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 53, 1, 1098614738, 'Prada', 'Ojeda', 17, 0, 2, 0, 4, 'juankprada@gmail.com', 'Lina María Parra Orduz', 2147483647, '2015-11-17', 'jprada@velocitypartners.net', '[]'),
(1, 'Javier omar', 'Cll 36 Sur # 27d - 50 torre 2 apt 301', '1986-04-22', 25, 1, 1, 2, 'jomar.londoño', 2147483647, 3, 10000000, 14, 1, 1, 1, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 54, 1, 1116234110, 'Londoño', 'Cuellar', 23, 0, 4, 1, 4, 'javier.londonno@gmail.com', 'Mayra Castro', 2147483647, '2014-11-18', 'jlondono@velocitypartners.net', '[]'),
(1, 'Jorge andres', 'Cra 68 # 70 Sur - 50', '1987-04-05', 25, 1, 1, 2, 'jramirezgranada', 2147483647, 4, 10000000, 14, 1, 3, 1, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 55, 1, 1082857414, 'Ramirez', 'Granda', 1, 2, 2, 0, 4, 'jarg5487@gmail.com', 'Yajairis Paola Escobar Scott', 300, '2016-01-18', 'orgeramirez@velocitypartners.net', '[]'),
(1, 'Cristian fernando', 'CL 58 # 39a - 25', '1986-08-10', 25, 1, 1, 1, 'yayobyte@hotmail.com', 2147483647, 1, 10000000, 14, 2, 1, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 56, 1, 1087986486, 'Gutierrez', 'Gonzalez', 1, 0, 1, 2, 4, 'yayobyte@hotmail.com', 'Alfonso Gutierrez', 2543133, '2015-01-13', 'cgutierrez@velocitypartners.net', '[]'),
(1, 'Andres mauricio', 'Carrera 38 # 26 - 385 Apto 9718', '1989-05-13', 25, 1, 1, 1, 'andres.mvc', 2147483647, 4, 10000000, 14, 1, 2, 1, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 57, 1, 1121854853, 'Vargas', 'Cespedes', 16, 2, 4, 0, 4, 'rogant@gmail.com', 'Jenny Martinez', 2147483647, '2015-09-01', 'avargas@velocitypartners.net', '[]'),
(1, 'Juan felipe', 'Carrera 39e #48F Sur - 150', '1986-08-10', 25, 1, 1, 2, 'felipe.morales', 2147483647, 4, 10000000, 14, 2, 2, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 58, 1, 1128265759, 'Morales', 'Castellanos', 1, 0, 4, 1, 4, 'juanfelipem@gmail.com', 'Sirley Yuliana Patiño', 2147483647, '2014-11-25', 'jfmorales@velocitypartners.net', '[]'),
(1, 'Manuel felipe', 'CR 41 # 57 sur 53 apt 1804', '1987-01-05', 25, 1, 1, 4, 'mfstroh', 2147483647, 3, 10000000, 14, 2, 2, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 59, 1, 1130668781, 'Stroh', 'Sinisterra', 9, 1, 2, 2, 4, 'donmafelstroh@gmail.com', 'Chris Hernandez', 2147483647, '2015-06-24', 'mstroh@velocitypartners.net', '[]'),
(1, 'Daniel omar', '45b #29 sur - 71 Int 610', '1980-08-06', 25, 3, 1, 1, 'danmetal', 2147483647, 3, 10000000, 14, 2, 2, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 60, 1, 1127597664, 'Cortes', 'Petro', 7, 0, 2, 1, 4, '0', 'Maria Karina Garcia', 2147483647, '2015-09-23', 'dcortes@velocitypartners.net', '[]'),
(1, 'Andres', 'CL 45 # 45-28', '1990-04-06', 25, 1, 1, 1, 'amnitus', 2147483647, 3, 10000000, 14, 2, 2, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 61, 1, 1128432656, 'Martinez', 'Gutierrez', 1, 0, 1, 0, 4, 'amartinez0000@gmail.com', 'Libia Gutierrez', 2147483647, '2015-08-18', 'andresmartinez@velocitypartners.net', '[]'),
(1, 'Juan camilo', 'CL 75 # 73c - 41 apt 102', '1988-02-24', 25, 1, 1, 1, 'juanrestrepo211', 2147483647, 13, 10000000, 14, 2, 2, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 62, 1, 1128467542, 'Restrepo', 'Cordoba', 24, 0, 1, 0, 4, 'juanrestrepo16@gmail.com', 'Erica Urrea Minota', 2147483647, '2015-10-01', 'jcrestrepo@velocitypartners.net', '[]'),
(1, 'Juan nitael', 'CLL 45D # 76A - 13', '1989-02-11', 25, 1, 1, 2, 'nitaelduque', 300, 3, 10000000, 14, 2, 2, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 63, 1, 1143332131, 'Duque', 'Echeverry', 25, 0, 1, 0, 4, 'nitaelduque@gmail.com', 'Juan Diego Duque', 300, '2016-01-12', 'nduque@velocitypartners.net', '[]'),
(1, 'Felipe', 'Calle 49 EE 38A 68 apt 306', '1994-02-26', 25, 1, 1, 1, 'maillane', 5041402, 1, 10000000, 14, 3, 2, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 64, 1, 1152203838, 'Alvare', 'Gañan', 1, 0, 1, 0, 4, 'felipeag06@gmail.com', 'Karen Montes', 301, '2014-10-22', 'felipealvarez@velocitypartners.net', '[]'),
(1, 'Luis fernando', 'Carrera 39 No. 77 sur – 84 Apto. 1406', '1984-10-04', 25, 1, 1, 4, 'luisf350', 314, 4, 10000000, 14, 3, 2, 1, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 65, 1, 8358559, 'Ramirez', 'Escobar', 1, 1, 4, 0, 4, 'luisf350@gmail.com', 'Tatiana Salazar', 301, '2016-01-25', 'ramirez@velocitypartners.net', '[]'),
(1, 'Julio', 'Calle 51 N° 70 a 20 Apto 407', '1976-08-13', 25, 1, 1, 3, 'jcbedoya13', 2147483647, 15, 10000000, 14, 2, 2, 2, '2016-05-13 11:10:03', '2016-05-13 11:10:03', 66, 1, 71774011, 'Bedoya', 'Velez', 1, 0, 2, 0, 4, 'juliocesarbedoya@gmail.com', 'Diana Lucia Serna Lopez', 2147483647, '2015-11-03', 'jbedoya@velocitypartners.net', '[]');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
