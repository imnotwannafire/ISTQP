-- phpMyAdmin SQL Dump
-- version 2.11.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 16, 2011 at 11:05 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hoa`
--

-- --------------------------------------------------------

--
-- Table structure for table `adm`
--

CREATE TABLE IF NOT EXISTS `adm` (
  `ma_adm` int(11) NOT NULL auto_increment,
  `ten_dn` varchar(30) NOT NULL,
  `mat_khau` varchar(30) NOT NULL,
  `ho` varchar(30) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `gioi_tinh` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`ma_adm`),
  UNIQUE KEY `ten_dn` (`ten_dn`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `adm`
--

INSERT INTO `adm` (`ma_adm`, `ten_dn`, `mat_khau`, `ho`, `ten`, `gioi_tinh`) VALUES
(1, 'admin', 'admin', 'Nguyễn Xuân', 'Hùng', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ct_dondathang`
--

CREATE TABLE IF NOT EXISTS `ct_dondathang` (
  `ma_dh` varchar(10) NOT NULL,
  `ma_hoa` varchar(10) NOT NULL,
  `gia_ban` float NOT NULL,
  `sl_dat` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ct_dondathang`
--


-- --------------------------------------------------------

--
-- Table structure for table `dondathang`
--

CREATE TABLE IF NOT EXISTS `dondathang` (
  `ma_dh` int(10) NOT NULL auto_increment,
  `ma_kh` int(11) NOT NULL,
  `ngay_dh` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `ngay_gh` varchar(10) NOT NULL,
  `noi_giao` varchar(300) NOT NULL,
  `hien_trang` int(11) NOT NULL,
  PRIMARY KEY  (`ma_dh`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `dondathang`
--


-- --------------------------------------------------------

--
-- Table structure for table `hoa`
--

CREATE TABLE IF NOT EXISTS `hoa` (
  `ma_hoa` int(11) NOT NULL auto_increment,
  `ma_loai` int(11) NOT NULL,
  `ten_hoa` varchar(30) NOT NULL,
  `gia` float NOT NULL,
  `hinh_anh` varchar(100) NOT NULL,
  `mo_ta` varchar(300) NOT NULL,
  `ngay_d` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `trang_thai` int(11) NOT NULL,
  PRIMARY KEY  (`ma_hoa`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `hoa`
--

-- --------------------------------------------------------

--
-- Table structure for table `khach_hang`
--

CREATE TABLE IF NOT EXISTS `khach_hang` (
  `ma_kh` int(11) NOT NULL auto_increment,
  `ho_kh` varchar(30) NOT NULL,
  `ten_kh` varchar(30) NOT NULL,
  `sdt` int(11) NOT NULL,
  `dia_chi` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gioi_tinh` int(11) NOT NULL default '0',
  `ten_dn` varchar(15) NOT NULL,
  `mat_khau` varchar(15) NOT NULL,
  PRIMARY KEY  (`ma_kh`),
  UNIQUE KEY `ten_dn` (`ten_dn`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `khach_hang`
--



-- --------------------------------------------------------

--
-- Table structure for table `lien_he`
--

CREATE TABLE IF NOT EXISTS `lien_he` (
  `ma_lh` int(11) NOT NULL auto_increment,
  `ten_nguoi_lh` varchar(40) NOT NULL,
  `sdt_nguoi_lh` varchar(12) NOT NULL,
  `email_nguoi_lh` varchar(50) NOT NULL,
  `gioi_nguoi_lh` int(11) NOT NULL,
  `diachi_nguoi_lh` varchar(200) NOT NULL,
  `noi_dung` varchar(1000) NOT NULL,
  `ngay_lh` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ma_lh`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `lien_he`
--


-- --------------------------------------------------------

--
-- Table structure for table `loai_hoa`
--

CREATE TABLE IF NOT EXISTS `loai_hoa` (
  `ma_loai` int(11) NOT NULL auto_increment,
  `ten_loai` varchar(40) NOT NULL,
  PRIMARY KEY  (`ma_loai`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `loai_hoa`
--

-- --------------------------------------------------------

--
-- Table structure for table `tin_tuc`
--

CREATE TABLE IF NOT EXISTS `tin_tuc` (
  `ma_tt` int(11) NOT NULL auto_increment,
  `tieu_de` varchar(50) NOT NULL,
  `hinh_anh` varchar(100) NOT NULL,
  `noi_dung` varchar(3000) NOT NULL,
  `ngay_dang` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ma_tt`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `tin_tuc`
--
