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

INSERT INTO `ct_dondathang` (`ma_dh`, `ma_hoa`, `gia_ban`, `sl_dat`) VALUES
('24', '21', 700000, 2),
('24', '39', 12000, 1),
('24', '19', 370000, 5),
('25', '23', 300000, 7),
('26', '1', 300000, 1),
('26', '39', 12000, 1),
('29', '21', 700000, 1),
('29', '22', 500000, 5),
('29', '24', 500000, 1),
('29', '40', 15000, 1),
('30', '39', 12000, 1),
('30', '22', 500000, 1),
('31', '23', 300000, 2),
('31', '21', 700000, 1),
('31', '22', 500000, 1),
('32', '39', 12000, 1),
('37', '22', 500000, 1),
('36', '39', 12000, 1),
('34', '40', 15000, 1),
('37', '40', 15000, 3),
('38', '1', 300000, 1),
('38', '39', 12000, 1);

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

INSERT INTO `dondathang` (`ma_dh`, `ma_kh`, `ngay_dh`, `ngay_gh`, `noi_giao`, `hien_trang`) VALUES
(24, 14, '2011-06-16 03:50:55', '06/25/2011', 'Số 7 Xuân Đỉnh, Cầu Giấy,Hà Nội', 1),
(25, 5, '2011-06-16 03:48:11', '06/18/2011', 'Số 22 Phạm Hùng, Cầu Giấy, Hà Nội', 1),
(26, 13, '2011-06-16 03:37:50', '06/26/2011', 'Số 7 Xuân Đỉnh, Cầu Giấy,Hà Nội', 1),
(29, 5, '2011-06-16 03:53:50', '25/06/2011', 'Số 22 Phạm Hùng, Cầu Giấy, Hà Nội', 1),
(30, 44, '2011-06-16 03:59:14', '30/06/2011', 'Hà Nội', 1),
(31, 16, '2011-06-16 04:02:38', '26/06/2011', 'ha noi', 1),
(32, 16, '2011-06-16 04:03:33', '26/06/2011', 'ha noi', 1),
(34, 41, '2011-06-16 04:09:04', '26/06/2011', 'Hải Phòng', 0),
(36, 39, '2011-06-16 04:11:41', '26/06/2011', 'Tp. HCM', 1),
(37, 39, '2011-06-16 04:10:23', '26/06/2011', 'Tp. HCM', 0),
(38, 40, '2011-06-16 04:11:08', '26/06/2011', 'Hà Nội', 0);

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

INSERT INTO `hoa` (`ma_hoa`, `ma_loai`, `ten_hoa`, `gia`, `hinh_anh`, `mo_ta`, `ngay_d`, `trang_thai`) VALUES
(1, 1, ' Hoa cưới-001', 300000, 'hoacuoi1.jpg', 'Hoa cưới cầm tay, được tạo nên bởi hoa hồng đỏ 1 cách đơn giản nhưng sang trọng', '2011-05-15 00:00:00', 0),
(2, 1, 'Hoa cưới-002', 400000, 'hoacuoi2.jpg', 'Hoa cưới cầm tay độc đáo giản dị, phong cách với những cô dâu có tính cách mạnh mẽ', '0000-00-00 00:00:00', 0),
(3, 1, 'Hoa Bó 001', 250000, 'hoabo01.jpg', 'Hoa bó gồm nhiều loại hoa khác nhau với mẫu bó mới lạ mà đầy cá tính', '2011-05-24 18:06:50', 1),
(20, 1, 'Roses', 650000, 'roses.jpg', '99 bông hồng đỏ được cắm cách điệu duyên dáng và sang trọng. Lẵng hoa sẽ giúp bạn bày tỏ sự ngưỡng mộ và thương yêu mà bạn dành cho người ấy!', '2011-05-29 13:55:14', 0),
(5, 2, 'Hoa Tình Yêu 001', 320000, 'hoatinhyeu1.jpg', 'Sản phẩm gồm: Hồng đỏ,hồng vàng,hồng trắng.Siêu thị hoa cung cấp miễn phí thiệp chúc mừng đính kèm hoa tặng', '0000-00-00 00:00:00', 0),
(6, 9, 'Hoa Cắm Bình 001', 150000, 'hoabinh01.jpg', 'Lọ hoa gốm sứ dành cho những bạn trẻ đang yêu hoặc mún bày tỏ tình cảm bằng cách tặng người kia lọ còn lại. Đặc biệt chỉ thích hợp với cắm hoa hồng đỏ', '0000-00-00 00:00:00', 0),
(7, 1, 'Hoa Bó 002', 500000, 'hoabo2.jpg', 'Hoa hồng trắng thể hiện sự tinh khiết, lòng chân thật của bạn với người ấy. Siêu thị hoa tặng thiệp chúc mừng khi bạn mua sản phẩm', '2011-05-29 13:55:30', 1),
(8, 4, 'Hoa Bó 003', 200000, 'hoabo3.jpg', 'Hoa bó gồm hoa ly và hoa hồng vàng tạo nên sự hài hòa của bó hoa. Siêu thị hoa cung cấp thiệp chúc mừng', '0000-00-00 00:00:00', 0),
(9, 1, 'Tình Yêu Vĩnh Cửu', 300000, 'tinhyeuvinhcuu.jpg', 'Lẵng hoa được kết thành hình trái tim đem lại cho người nhận sự tin tưởng, lãng mạn và hạnh phúc', '2011-05-24 18:05:52', 1),
(10, 1, 'Những Ngày Hạnh PHúc', 420000, 'nhungngayhanhphuc.jpg', 'Hoa hồng được đựng trong hộp trái tim gồm hoa hồng vàng, trắng và hoa cúc xanh. Tặng cho nửa kia của bạn sẽ rất lãng mạn mà đầy ý nghĩa', '2011-05-23 12:27:55', 0),
(11, 1, 'Phút Lãng Mạn', 350000, 'phutlangman.jpg', 'Tạo không gian riêng cho hai người và một hộp hoa hồng nhung sẽ làm cho người ấy cảm thấy lãng mạn khi ở cạnh bạn. Siêu thị hoa luôn làm cho ai đó hạnh phúc', '2011-05-24 19:27:13', 1),
(12, 2, 'Lẵng Hoa Hồng', 120000, 'langhoahong.jpg', 'Lẵng hoa hông kết bởi 25 bông hoa hồng đỏ là lời cầu chúc người mình yêu được hạnh phúc. Siêu thị hoa khuyẽn mãi thiệp và quà tặng đặc biệt cho người mua hàng', '0000-00-00 00:00:00', 0),
(13, 1, 'Sánh Đôi', 290000, 'sanhdoi.jpg', 'Kiểu dáng trái tim đôi cách điệu lãng mạn mang thông điệp ngọt ngào: Em làm trái tim tôi ca hát', '2011-05-24 17:27:01', 1),
(14, 2, 'Tình Yêu Nồng Cháy', 450000, 'tinhyeunongchay.jpg', '50 bông hồng đỏ thắt duy băng đơn giản mà duyên dáng sẽ giúp bạn bày tỏ tình yêu chân thành mà nồng cháy với người ấy', '0000-00-00 00:00:00', 0),
(15, 1, 'Miss You', 400000, 'missyou.jpg', 'Bó hoa gồm 20 bông hồng Đà Lạt đỏ thắm kèm baby trắng bó lưới. Có phải bạn muốn nói bạn nhớ và yêu người ấy rất nhiều', '2011-05-24 18:06:20', 1),
(16, 3, 'Bản Tình Ca Màu Xanh', 450000, 'bantinhcamauhong.jpg', 'Hộp hoa thanh lịch gồm 30 bông hồng phấn xếp 2 tầng, trang trí bằng phụ liệu và nơ lụa. Thích hợp bày tỏ sự ngưỡng mộ và tôn trọng', '0000-00-00 00:00:00', 0),
(17, 1, 'Giỏ Hoa Tím', 250000, 'giohoatim.jpg', 'Giỏ hoa gồm hoa :cúc, hồng, xalen, ly, baby. Siêu thị hoa cung cấp thiệp chúc mừng', '2011-05-24 18:05:58', 1),
(18, 2, 'Trái Tim Hồng', 300000, 'traitimhong.jpg', 'Trái tim kết bằng những bông hông phấn mang thông điệp: "Cảm ơn em đã và đang cùng anh đi chung một con đường', '0000-00-00 00:00:00', 0),
(19, 2, 'Lãng Mạn', 370000, 'langman.jpg', 'Hộp lan gồm 20 cành lan với 3 mầu trắng, tím, phớt hồng. Người ấy sẽ thấy bạn thật cá tính, lãng mạn và rất phong cách!', '0000-00-00 00:00:00', 0),
(21, 2, 'Just For You', 700000, 'justforyou.jpg', 'Lẵng hoa gồm 100 bông hồng đỏ rực rỡ.Ai có thể không hạnh phúc khi nhận được món quà ngọt ngào như thế!', '0000-00-00 00:00:00', 0),
(22, 1, 'Hoa Cưới 003', 500000, 'hoacuoi3.jpg', 'Hoa cưới cầm tay màu hoa hồng cam thể hiện tình yêu chung thuỷ.', '2011-05-23 12:55:55', 1),
(23, 7, 'Hoa Sự Kiện 001', 300000, 'hoasukien1.jpg', 'Hoa chúc mừng ngày khai trương: hoa ly và hoa lan.', '0000-00-00 00:00:00', 0),
(24, 1, 'Hoa Cưới 004', 500000, 'hoacuoi4.jpg', 'Sản phẩm gồm: Lan Cát tường và các loại hoa lan đặc biệt. Khi đặt Hoa cưới cầm tay cô dâu', '2011-05-24 13:01:29', 0),
(39, 37, 'Hoa Cài Áo 001', 12000, 'hoacaiao1.jpg', 'Hoa lan trắng cài áo. Đây là sản phẩm mới của Siêu thị hoa. Hoa được làm bằng chất liệu nhựa. Bền và sử dụng lại được nhiều lần. Có rất nhiều màu cho bạn lựa chọn : Vàng, xanh, đỏ, trắng...', '2011-05-29 20:39:44', 0),
(40, 37, 'Ngày Quan Trọng', 15000, 'hoacaiao2.jpg', 'Hoa lan trắng,đỏ,tím. Tùy theomauf bạn thích sẽ nổi bật trên chiếc áo của bạn. Giúp bạn trở nên đặc biệt trong ngày quan trọng của mình', '2011-05-30 22:23:05', 1);

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

INSERT INTO `khach_hang` (`ma_kh`, `ho_kh`, `ten_kh`, `sdt`, `dia_chi`, `email`, `gioi_tinh`, `ten_dn`, `mat_khau`) VALUES
(1, 'Nguyễn Vân', 'Anh', 1699914834, 'Mỹ Đình, Hà Nội', 'vananh@yahoo.com', 1, 'vananh1', '123'),
(5, 'Nguyễn Xuân', 'Hùng', 1699914834, 'Số 22 Phạm Hùng, Cầu Giấy, Hà Nội', 'hung@yahoo.com', 2, 'hung', '1234'),
(13, 'Trần Văn', 'An', 1663451325, 'Số 7 Xuân Đỉnh, Cầu Giấy,Hà Nội', 'tranvanan@yahoo.com', 2, 'tranvanan', '123'),
(14, 'Nguyễn Doãn', 'Thân', 1234567891, 'Số 7 Xuân Đỉnh, Cầu Giấy,Hà Nội', 'than@yahoo.com', 2, 'than', '123'),
(16, 'nguyen anh', 'vu', 986998866, 'ha noi', 'boyhandsome_pzono1@yahoo.com', 1, 'badboy', '123456'),
(39, 'Lê Thu Bạch', 'Yến', 933568689, 'Tp. HCM', 'yen@yahoo.com', 2, 'yen', '123'),
(40, 'Trần Anh', 'Tuấn', 983568648, 'Hà Nội', 'tuan@yahoo.com.vn', 2, 'tuan', '1234567890'),
(41, 'Hoàng Thanh', 'Mai', 971138688, 'Hải Phòng', 'hoangmai@yahoo.com', 3, 'hoangmai', '1234'),
(42, 'Hoàng Thanh', 'Mai', 971138688, 'Hải Phòng', 'hoangmai@yahoo.com', 3, 'hoangmaianh', '1234'),
(43, 'Trần Thị Thu', 'Thủy', 971138688, 'Hải Phòng', 'hoangmai@yahoo.com', 3, 'thuy', '1234'),
(44, 'Đỗ Văn', 'Lâm', 971138688, 'Hà Nội', 'lam@yahoo.com', 2, 'lam', '1234');

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

INSERT INTO `lien_he` (`ma_lh`, `ten_nguoi_lh`, `sdt_nguoi_lh`, `email_nguoi_lh`, `gioi_nguoi_lh`, `diachi_nguoi_lh`, `noi_dung`, `ngay_lh`) VALUES
(7, 'Trần Văn Hoàng', '0123785498', 'hoang@yahoo.com.vn', 1, 'Hà Nội', 'Windows XP brims with new features, improved programs, and tools. See what’s new; take an entertaining tour; learn about the programs Windows XP contains, including systems, accessories, and communications and entertainment programs. Read articles containing full descriptions for performing key task', '2011-05-22 10:25:14'),
(8, 'Trần Anh', '0123456789', 'trananh@yahoo.com.vn', 2, 'Hà Nội', 'Cảm ơn thông tin của các vị,Boyle nói. Nhưng tôi cũng xin có ý kiến rằng, trước những tình huống như thế này, người ta thường nói: lúc nào\r\nchẳng có người hô hoán lên rằng trời sắp sập, rồi lần nào họ cũng nhầm. Thiên hạ luôn cho rằng: sắp đến ngày tận thế rồi. Họ từng nói bom nguyên tử là\r\ntận thế.', '2011-05-22 22:26:34'),
(5, 'Trần Vân Anh', '0123785498', 'anh@yahoo.com.vn', 3, 'Mỹ Đình,Hà Nội', 'Hoa cưới cầm tay, được tạo nên bởi hoa hồng đỏ 1 cách đơn giản nhưng sang trọng.', '0000-00-00 00:00:00');

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

INSERT INTO `loai_hoa` (`ma_loai`, `ten_loai`) VALUES
(1, 'Hoa Cưới'),
(2, 'Hoa Tình Yêu'),
(3, 'Hoa Sinh Nhật'),
(4, 'Hoa Tươi Bó'),
(5, 'Hoa Tươi Giỏ'),
(10, 'Hoa Văn Phòng'),
(7, 'Hoa Sự Kiện'),
(11, 'Hoa Chia Buồn'),
(9, 'Hoa Cắm Bình'),
(39, 'Hoa Để Bàn'),
(37, 'Hoa Cài Áo'),
(41, 'Hoa Hội Nghị');

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

INSERT INTO `tin_tuc` (`ma_tt`, `tieu_de`, `hinh_anh`, `noi_dung`, `ngay_dang`) VALUES
(1, 'La Bình nơi có nghìn dặm hoa vàng', 'Cai-22.jpg', '<P>Nếu bạn yêu sắc vàng của hoa cải, muốn tìm đến một nơi mà cảnh sắc thiên nhiên ưu đãi, hãy đến La Bình,</P>\r\n<P>&nbsp;một huyện thuộc tỉnh Vân Nam Trung Quốc, nơi đây được coi như hoa viên rộng lớn nhất của Trung Quốc. La Bình nằm ở phía đông của tỉnh Vân Nam cách thủ phủ Côn Minh 240 km, đây là huyện nổi tiếng nhờ hoa cải. </P>\r\n<P>Tại đây, tới hơn 300.000 mẫu (1 mẫu = 10.000m2) liền kề nhau được sử dụng để trồng hoa cải. Từ một huyện nông nghiệp, nay La Bình đã trở thành một địa danh văn hóa - du lịch, trở thành điểm hẹn lãng mạn của những người yêu cảnh sắc tươi đẹp của thiên thiên. Đến với La Bình đúng mùa hoa cải, bạn sẽ được đắm mình cùng nghìn dặm hoa vàng. </P>\r\n<P>Đây cũng là "miền đất hứa" cho các cặp đôi tìm nơi để chụp ảnh cưới.</P>', '2011-06-14 14:46:29'),
(6, 'Ý Nghĩa của số lượng hoa Hồng', 'hoahong.jpg', '<p class="pp">\r\n1 hoa hồng: Trong trái tim anh chỉ có mình em <br>\r\n2 hoa hồng: Thế giới này chỉ có hai chúng ta <br>\r\n3 hoa hồng: Anh yêu Em <br>\r\n4 hoa hồng: Đến chết anh cũng không đổi lòng <br>\r\n5 hoa hồng: Yêu em tự trái tim <br>\r\n6 hoa hồng : Hãy tôn trọng nhau, yêu nhau và tha thứ cho nhau <br>\r\n7 hoa hồng : Anh luôn thầm yêu trộm nhớ em <br>\r\n8 hoa hồng: Cảm ơn sự quan tâm khích lệ của em <br>\r\n9 hoa hồng: Anh yêu em mãi mãi <br>\r\n10 hoa hồng: Tình đôi ta thập toàn thập mỹ<br> \r\n11 hoa hồng: Thế gian này chỉ có mình em <br>\r\n12 hoa hồng: Tình yêu của anh nối dài theo năm tháng <br>\r\n13 hoa hồng: Hãy giữ lấy tình hữu nghị <br>\r\n14 hoa hồng: Tượng trưng sự kiêu ngạo <br>\r\n15 hoa hồng: Anh có lỗi với em <br>\r\n16 hoa hồng: Tình yêu đầy sóng gió <br>\r\n17 hoa hồng: Tình tan vỡ không gì cứu vãn <br>\r\n18 hoa hồng: Chân thành và trong sáng <br>\r\n19 hoa hồng: Hãy nhẫn nại và chờ đợi <br>\r\n20 hoa hồng: Anh yêu em bằng cả trái tim <br>\r\n21 hoa hồng: Một tình yêu chân thành <br>\r\n22 hoa hồng: Cầu mong em gặp may <br>\r\n25 hoa hồng: Cầu chúc em hạnh phúc <br>\r\n<img src="images/tintuc/hong1.jpg" border="0"><br>\r\n30 hoa hồng: Hãy tin vào duyên số <br>\r\n36 hoa hồng: Lãng mạn <br>\r\n40 hoa hồng: Thà chết không xa nhau <br>\r\n50 hoa hồng: Không hẹn mà gặp <br>\r\n99 hoa hồng: Không bao giờ phai nhạt <br>\r\n100 hoa hồng: Anh yêu em trăm phần trăm <br>\r\n101 hoa hồng: Yêu... yêu em vô cùng <br>\r\n108 hoa hồng: Em sẽ lấy anh nhé <br>\r\n365 hoa hồng: Ngày nào anh cũng nghĩ đến em <br>\r\n999 hoa hồng: Mãi mãi đắm say <br>\r\n1001 hoa hồng: Mãi mãi bên nhau!\r\n</p>', '2011-06-13 18:47:07'),
(10, 'Lãng mạn thung lũng hoa oải hương', 'lmtloah.jpg', '<P class=pp>Hoa oải hương vốn nổi tiếng ở miền nam nước Pháp như Provence và Gross.</B> Nhưng bạn cũng có thể được chiêm ngưỡng những trang trại hoa ngát hương trong mùa thu hoạch ở California, Mỹ. Ảnh trên New York Times. \r\n<P class=pp>Với những ai không thể dạo chơi trên những cánh đồng oải hương bất tận ở miền nam nước Pháp, trang trại oải hương ở thung lũng Sonoma, California, Mỹ cũng là một điểm đến lý tưởng để thưởng thức hương hoa. Ở ngoại ô Santa Rosa, oải hương được gieo trồng từ năm 1991 trên diện tích 8 km2. <BR>\r\n<CENTER><IMG src="images/tintuc/anh2.jpg" boder="0"> </CENTER>\r\n<P></P>\r\n<P class=pp>Ong bướm rập rờn trên cánh đồng oải hương. <BR>Anh Kristchen Anderson đang thu hoạch hoa oải hương. Trang trại của anh là nơi trồng oải hương lớn nhất ở vùng Kenwood với 6.000 cây. Trang trại cũng mở cửa đón khách du lịch hàng năm trong 3 ngày hội. <BR>\r\n<CENTER><IMG align=center src="images/tintuc/anh3.jpg" boder="0"> </CENTER><BR>Trong vụ thu hoạch, thân cây được cắt, bó gọn và phơi khô. Khi bó hoa trở nên giòn trong 2 tuần, các bông hoa sẽ tự rụng ra. <BR>\r\n<CENTER><IMG src="images/tintuc/anh1.jpg" boder="0"> </CENTER>\r\n<P></P>', '2011-06-14 14:45:50'),
(25, 'Nguyên tắc cơ bản khi cắm hoa ', 'nguyentaccamhoa.jpg', 'Hoa là một vật vô giá mà thiên nhiên gửi đến cho con người. Hoa là sứ giả của cái đẹp với màu sắc tươi tắn, hình dáng xinh xắn, đường nét tuyệt mỹ, tượng trưng cho nguồn sống dồi dào. <STRONG>Nguyên tắc cơ bản khi cắm hoa:</STRONG><BR><BR>Cắm hoa theo nghệ thuật phương Đông mà đại biểu là Trung Quốc và Nhật Bản với đặc điểm nổi bật là chọn hoa khá ít, nhấn mạnh tính thẩm mỹ từ những đường nét của hoa, tạo bố cục đơn giản, thanh nhã, thoát tục.Còn cắm hoa theo phong cách phương Tây chủ yếu chú trọng sự đối xứng, hoa nhiều và xum xuê, màu sắc sặc sỡ để đạt được hiệu quả muôn màu muôn vẻ.<BR><BR>Cắm theo phong cách phương Đông đòi hỏi giữa hoa và bình cắm phải có tỉ lệ tương xứng, thông thường độ cao của cành chính bằng 1,5 lần độ cao của bình, còn cắm hoa kiểu phương Tây thường chọn loại bình hoa thông thường, miệng rộng để cắm được nhiều hoa.<BR><BR>Nơi để hoa cũng phải chọn nơi thích hợp, sau khi cắm hoa xong cần xem xét độ cao của bình hoa để quyết định vị trí đặt.<BR><BR>Khi cắm hoa cần xác định ý tưởng để chọn hoa và bình thích hợp với chỗ để. Màu sắc và hình dạng của hoa với bình cần có sự hài hoà để có sự cân bằng trong kết cấu và hài hoà màu sắc. Hoa lá không thể cao bằng nhau, hoa chính nên hơi cao, hoa phụ nên hơi thấp. Khi chọn hoa nên chọn hoa có độ tươi ngang nhau để làm hoa chính và hoa phụ, như vậy độ bền sẽ ngang bằng nhau. Các đoá hoa phải được phân bố đồng đều, bất kể là hoa chính hay hoa phụ đều phải hoà hợp và cân xứng. Sự phố hợp hoa và cành cắm thêm cũng cần thích hợp để tạo thành chính thể.<BR><BR>\r\n<P align=center><IMG border=0 alt=hoa src="images/tintuc/hoa11.jpg" alignment=""></P><BR>\r\n<P align=center><A></A></P>\r\n<P align=justify><STRONG>Xử lý trước khi cắm hoa:</STRONG><BR>- Ngắt bỏ cành thừa, lá quá dày để chỉnh lại dáng cho cành.<BR>- Bỏ bớt cành nhỏ<BR>- Nếu thấy có cành héo, không cắm ngay vào bình mà để chỗ mát để phun nước vào cho hoa hồi lại, rồi mới cắm vào bình.<BR>- Trước khi cắm hoa cần cắt bỏ gốc, cú ý cắt gốc hoa ngập trong nước để hút nước nhanh vào miệng cắt tránh để không khí xâm nhập làm cản trở sự hút nước của hoa.</P>', '2011-06-14 15:20:30'),
(27, 'Tản mạn về hoa hồng ', 'hong1.jpg', 'Những đóa hoa hồng đã trở nên quen thuộc với mỗi người trong chúng ta. Loài hoa kỳ diệu này mang nhiều màu sắc khác nhau. Cùng với màu hồng thường thấy nhất, cũng là màu mà loài hoa này mang tên, chúng ta còn thấy những đóa hồng màu trắng, màu đỏ tươi, màu hồng nhạt và có cả những bông hồng màu đen. Những cây hồng mọc lên từ miền đất khác nhau lại mang những màu sắc và hương thơm đặc trưng của vùng đó. \r\n<P>Hoa hồng được phong tặng danh hiệu là “nữ chúa các loài hoa”. Dù được trao tặng cho nhau bất cứ dịp nào, hoa hồng vẫn mang ý nghĩa thân thiện nồng nàn: từ đóa hồng tặng cho người sản phụ mới sinh con, đến đóa hồng trắng tinh khôi nhẹ nhàng đặt trên quan tài của người vừa nằm xuống. Người ta tặng hoa hồng để chúc mừng ngày một em bé được sinh ra qua bí tích Thanh tẩy. Người ta cũng dùng hoa hồng để mừng sinh nhật, mừng kỷ niệm thành hôn. Đóa hồng đỏ tươi mà chàng thanh niên ngập ngừng tặng cho bạn gái nhằm mục đích thay lời khó nói: “I love you !”. Những bông hồng trắng chú rể trao tặng cô dâu trong ngày cưới chính là lời khẳng định “yêu nhau đến cùng”.<BR></P>\r\n<P align=center><IMG border=0 alt=hoa src="images/tintuc/hong2.jpg" alignment=""></P>\r\n<P><A href="http://www.dongocvan.com/wp-content/uploads/2011/05/216.jpeg"></A>Những bông hồng ở độ nở khác nhau cũng diễn tả nhiều thế hệ trong kiếp nhân sinh: những nụ hồng xinh xinh được bọc trong lớp đài hoa màu xanh, như những trẻ thơ đang chập chững vào đời, còn cần được sự bao bọc của cha mẹ. Những đóa hồng hé nở, e ấp thẹn thùng như những thiếu nữ tuổi vừa mới lớn, còn đang ngỡ ngàng trước cuộc sống mới lạ. Có những bông hồng sắc hương rực rỡ, như những chàng trai cô gái đang ở độ thanh xuân đầy sức sống. Có những bông hồng đã qua thời tươi nở, vẫn cố gắng đem chút hương còn lại dâng cho đời, như những người cao tuổi sống những ngày cuối đời trong thanh thản bình yên. Và, nếu bạn để ý, bạn sẽ thấy cả những cánh hồng đã tàn phai, mặc dầu tả tơi xuống nền đất vẫn còn gợi hứng cho thi nhân văn sĩ, giống như những người sống tốt lành ở trần gian, khi ra đi vẫn để lại những bài học cho đời.</P>\r\n<P>Vâng, hoa hồng xứng đáng với danh hiệu cao quý là chủ các loài hoa. Hoa hồng là hoa của tình yêu. Hoa hồng tượng trưng cho lòng hiếu thảo đối với bậc sinh thành, cho tình bằng hữu thân thương giữa những người bạn, cho lòng biết ơn của trò đối với thày, của người được giúp đỡ đối với những ân nhân tâm phúc. Hoa hồng muốn nói lên tất cả. Ngôn ngữ của loài hoa này thật phong phú, tinh tế và siêu nhiên.</P>\r\n<P>Khi bước vào thu, người Công giáo nhắc đến những đóa hồng thiêng liêng. Đó là tràng Mân Côi tuyệt diệu. Chuyện kể về Thánh Đa-minh, một vị Thánh đã đóng góp công sức của mình trong việc khôi phục trật tự Giáo Hội ở thế kỷ 13. Thánh nhân đã được chính Đức Mẹ hiện ra, trao tràng hạt và nói: Con hãy nhiệt thành kêu gọi mọi người siêng năng lần hạt để đem lại cho Giáo Hội sự an bình. Thánh Đa-minh đã thực thi lời Đức Mẹ dạy. Đi đến bất cứ nơi nào, Ngài cũng kêu gọi mọi người hãy suy gẫm cuộc đời Đấng Cứu T', '2011-06-14 15:32:53'),
(29, 'Cắm hoa đẹp không khó ', 'hoatl.jpg', 'Để làm rực sáng nhà bằng những bông hoa tươi sáng, bạn không nhất thiết phải thâm thủng quỹ hoặc hao tổn sự kiên nhẫn. Dưới đây là gợi ý của chuyên gia cắm hoa Kally Ellis. \r\n<P class=Lead align=justify>Để làm rực sáng nhà bằng những bông hoa tươi sáng, bạn không nhất thiết phải thâm thủng quỹ hoặc hao tổn sự kiên nhẫn. Dưới đây là gợi ý của chuyên gia cắm hoa Kally Ellis.</P>\r\n<P class=SubTitle align=justify><STRONG>Mua hoa theo mùa và ở gần nhà</STRONG></P>\r\n<P class=Normal align=justify>Hãy chọn loại hoa đang vào vụ và ở địa phương bạn. Chẳng hạn, ở thời điểm hoa cúc nở rộ trong năm, bạn không nhất thiết phải săn lùng cho được hoa ly, lay ơn hay hồng đỏ, vì khi đó chúng sẽ rất đắt, do trái mùa. Cũng như vậy, trong mùa đông, bạn không nhất thiết phải tìm cho được thứ hoa của mùa hè, hoặc tận ở đầu kia đất nước. Chúng sẽ xấu vì mọc không đúng mùa hay vì phải vận chuyển quá xa.</P>\r\n<P class=Normal align=justify>Và đừng cố gắng trộn nhiều loại hoa trong một lọ. Tốt nhất, chỉ cắm mỗi lần một loại. Bạn sẽ gây được ấn tượng tốt hơn với một bình thủy tiên lớn thay vì một bó những loại hoa linh tinh.</P>\r\n<P align=center><IMG border=0 alt=hoa src="images/tintuc/hoatl.jpg" alignment=""></P><BR>Mỗi bình hoa chỉ nên cắm một loại duy nhất. Ảnh: <EM>Telegraph.<BR></EM>\r\n<P class=SubTitle align=justify><STRONG>Cắt gốc ít một</STRONG></P>\r\n<P class=Normal align=justify>Trong lần đầu tiên cắm hoa, bạn hãy cắt gốc khoảng 2 cm. Thay nước hàng ngày nếu có thể, và mỗi lần thay nước lại cắt gốc, nó sẽ giúp kéo dài tuổi thọ của hoa.</P>\r\n<P class=SubTitle align=justify><STRONG>Tạo thành chùm</STRONG></P>\r\n<P class=Normal align=justify>Nếu bạn khéo tay, hãy cắm sao cho bó hoa xoay theo hình xoắn ốc, nghĩa là thân bông này nằm đè xiên lên bông trước đó. Đó là cách để bạn tạo ra một mái vòm" đẹp. Nhưng nếu không làm được như vậy, hãy làm đơn giản hơn bằng cách đặt tất cả chúng xuống và cắt bằng nhau, sau đó gộp chúng lại và thả vào bình. Những bông hoa sẽ rủ xuống trông tự nhiên.</P>\r\n<P class=SubTitle align=justify><STRONG>Quan tâm đến bình hoa</STRONG></P>\r\n<P class=Normal align=justify>Mọi người thường đánh giá thấp giá trị của bình hoa. Nhưng với tôi, đó là yếu tố hầu như quan trọng hơn cả những bông hoa.</P>\r\n<P class=Normal align=justify>Bạn cần một bộ bình hoa cơ bản sau:</P>\r\n<P class=Normal align=justify>Một chiếc bình hình trụ có thành thẳng đứng, cho những hoa có thân dài như loa kèn, lay ơn</P>\r\n<P class=Normal align=justify>Một chiếc khay vuông hiện đại, dùng để dựng những bông hoa mùa xuân cắt khá ngắn sao cho chúng chỉ mấp mé trên miệng khay.</P>\r\n<P class=Normal align=justify>Một bình hoa dạng bể cá vàng, dùng để cắm chỉ một vài vài bông hoa thân mềm như tulip, phong lan. Thả cọng hoa vào nước và xoáy các bông hoa xung quanh miệng bình để tạo ra ấn tượng lớn từ một số lượng hoa rất nhỏ.</P>\r\n<P class=Normal align=justify>Một bình hoa dạng bầu thon có cổ rộng khoảng 10 cm và bên dưới nở rộng hơn. Loại bình này hoàn hảo để cắm các bó hoa đã bó chặt mà bạ', '2011-06-14 15:38:56');
