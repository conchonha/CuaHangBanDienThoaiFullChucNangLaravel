-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 21, 2022 lúc 09:57 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cuahangsach`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bosuutap`
--

CREATE TABLE `bosuutap` (
  `id` int(11) NOT NULL,
  `tentbosuutap` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `motabosuutap` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `hinhchinh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `hinhphu` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `stt` int(11) NOT NULL,
  `masanpham` int(11) NOT NULL,
  `tensanpham` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `soluongsanpham` int(10) NOT NULL,
  `giasanpham` int(10) NOT NULL,
  `hinhanhsanpham` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `iddondathang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`stt`, `masanpham`, `tensanpham`, `soluongsanpham`, `giasanpham`, `hinhanhsanpham`, `iddondathang`) VALUES
(79, 52, 'Khô Gà Lá Chanh 500g', 3, 3000000, 'https://lzd-img-global.slatic.net/g/p/5bd46ab921e3a8dfffcf116db5d63f83.jpg_400x400q75.jpg_.webp', 28),
(80, 52, 'Khô Gà Lá Chanh 500g', 1, 1000000, 'https://lzd-img-global.slatic.net/g/p/5bd46ab921e3a8dfffcf116db5d63f83.jpg_400x400q75.jpg_.webp', 29),
(81, 80, 'Điện thoại Samsung Galaxy S22', 3, 66000000, 'https://cdn.tgdd.vn/Products/Images/42/235838/Slider/samsung-galaxys22ultra5Gthumbvideo-1020x570.jpg', 30);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgia`
--

CREATE TABLE `danhgia` (
  `Id_DanGgia` int(11) NOT NULL,
  `namsao` int(11) NOT NULL,
  `bonsao` int(11) NOT NULL,
  `basao` int(11) NOT NULL,
  `haisao` int(11) NOT NULL,
  `motsao` int(11) NOT NULL,
  `ComMent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Id_SanPham` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NgayDanhGia` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhgia`
--

INSERT INTO `danhgia` (`Id_DanGgia`, `namsao`, `bonsao`, `basao`, `haisao`, `motsao`, `ComMent`, `Id_SanPham`, `username`, `NgayDanhGia`) VALUES
(39, 0, 0, 1, 0, 0, 'bsbhs', 80, 'Test', '21/05/2022');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dondathang`
--

CREATE TABLE `dondathang` (
  `id` int(11) NOT NULL,
  `tentaikhoan` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sodienthoai` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngaydat` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `trinhtrang` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `idtaikhoan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `dondathang`
--

INSERT INTO `dondathang` (`id`, `tentaikhoan`, `email`, `diachi`, `sodienthoai`, `ngaydat`, `trinhtrang`, `idtaikhoan`) VALUES
(29, 'Test', 'thaibasang8@gmail.com', 'Da nang-phuong Hoa Quy-Quqn Ngu Hanh Son', '0366426402', '21/5/2022', 'Đã Giao', 15),
(30, 'Test', 'thaibasang8@gmail.com', 'Da nang-phuong Hoa Quy-Quqn Ngu Hanh Son', '0366426402', '21/5/2022', 'Đã Giao', 15);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `idgiohang` int(11) NOT NULL,
  `idsanpham` int(11) NOT NULL,
  `idtaikhoan` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tensp` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hinhsp` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id` int(11) NOT NULL,
  `tenloaisanpham` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`id`, `tenloaisanpham`) VALUES
(4, 'SamSung'),
(5, 'Iphone'),
(6, 'Oppo'),
(7, 'Vivo'),
(8, 'Thể Loại Khác');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanloaitaikhoan`
--

CREATE TABLE `phanloaitaikhoan` (
  `id` int(11) NOT NULL,
  `tenphanloai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `phanloaitaikhoan`
--

INSERT INTO `phanloaitaikhoan` (`id`, `tenphanloai`) VALUES
(0, 'Khách Hàng'),
(1, 'Admin'),
(2, 'Shipper');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `ID` int(11) NOT NULL,
  `TenSP` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `GiaSP` int(11) NOT NULL,
  `NgayGiamGia` date NOT NULL,
  `GiamGia` int(11) NOT NULL,
  `HinhAnhSP` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `MoTaSP` varchar(20000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `IDSP` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`ID`, `TenSP`, `GiaSP`, `NgayGiamGia`, `GiamGia`, `HinhAnhSP`, `MoTaSP`, `IDSP`) VALUES
(76, 'Điện thoại iPhone 11 64GB   ', 10000000, '2022-05-26', 10, 'https://cdn.tgdd.vn/Products/Images/42/153856/Slider/vi-vn-iphone-11-tinhnang.jpg', 'Sau chiếc điện thoại iPhone Xr, Apple tiếp tục ra mắt siêu phẩm 2019 mang tên iPhone 11 64GB - một smartphone được nâng cấp toàn diện từ thiết kế cao cấp, vi xử lý hiệu năng mạnh mẽ đến hệ thống camera chất lượng cùng thời lượng pin vượt trội.\r\nHiệu năng đứng đầu bảng smartphone\r\nChiếc điện thoại này được Apple trang bị vi xử lý Apple A13 Bionic mạnh mẽ được lắp ráp trên tiến trình 7 nm, cho hiệu năng mạnh mẽ cùng khả năng tiết kiệm điện cao hơn hẳn với người tiền nhiệm.@https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-dmx2.jpg@https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11--1.jpg@https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-dmx9.jpg@https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-dmx5.jpg', 5),
(77, 'Điện thoại iPhone 13 Pro Max 128GB', 20000000, '2022-05-28', 15, 'https://cdn.tgdd.vn/Products/Images/42/230529/Slider/iphone-13-pro-max637691517843007201.jpg', 'Thông tin sản phẩm\r\nĐiện thoại iPhone 13 Pro Max 128 GB siêu phẩm mới từ Apple được mong đợi nhất trong nửa cuối năm 2021 với hàng loạt nâng cấp từ màn hình ProMotion 120 Hz, bộ vi xử lý A15 Bionic cho hiệu năng không đối thủ, thời lượng pin vượt trội và bộ 3 camera được nâng cấp đáng kể, hứa hẹn sẽ tiếp tục khuấy đảo thị trường di động Việt.\r\nThiết kế sang trọng đẳng cấp trong từng đường nét\r\nNgôn ngữ thiết kế của dòng iPhone 13 Pro Max năm nay vẫn tương tự iPhone 12 Pro Max, thay đổi dễ dàng nhận biết trên iPhone 13 Pro Max chính là kích thước của cảm biến camera sau được thiết kế to hơn và lồi hơn.@https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-3.jpg@https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-1.jpg@https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-4.jpg@https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-23.jpg', 5),
(78, 'Điện thoại iPhone 12 Pro Max 256GB  ', 15000000, '2022-05-31', 25, 'https://cdn.tgdd.vn/Products/Images/42/228743/Slider/iphone-12-pro-max-thumbv-780x433-1.jpg', 'Thông tin sản phẩm\r\nApple luôn nắm bắt thị hiếu người dùng, do đó không khó để lý giải sự thành công của những “đứa con tinh thần” nhà táo. Trong đó phải kể đến điện thoại iPhone 12 Pro Max 256 GB, “gã khổng lồ” khó có đối thủ nào đánh bại.\r\nVẻ đẹp cao cấp, sang trọng\r\niPhone 12 Pro Max 256 GB được “ôm trọn” bởi khung thép không gỉ sáng bóng, bắt mắt, không chỉ chống bám dấu vân tay mà còn tránh va đập, trầy xước tốt. Các đường nét góc cạnh được vát thẳng, vuông vức khiến tổng thể máy trở nên chắc chắn.@https://cdn.tgdd.vn/Products/Images/42/228743/iphone-12-pro-max-256gb-2-1.jpg@https://cdn.tgdd.vn/Products/Images/42/228743/iphone-12-pro-max-256gb-023720-043759.jpg@https://cdn.tgdd.vn/Products/Images/42/228743/iphone-12-pro-max-256gb-1-1.jpg@https://cdn.tgdd.vn/Products/Images/42/228743/iphone-12-pro-max-256gb-023620-043631.jpg', 5),
(79, 'Điện thoại iPhone 13 Pro 128GB ', 19000000, '2022-05-31', 50, 'https://cdn.tgdd.vn/Products/Images/42/230521/Slider/iphone-13-promax-1020x570.jpg', 'Thông tin sản phẩm\r\nSmartphone iPhone 13 Pro là một trong những dòng điện thoại iPhone hot nhất hiện nay nhờ thiết kế sang trọng đặc trưng, cụm 3 camera và cấu hình được nâng cấp cũng như viên pin \"trâu\" cho thời lượng sử dụng lâu hơn, hứa hẹn sẽ mang đến cho bạn những giờ phút giải trí cực chất. \r\nKiểu dáng sang trọng, bền bỉ\r\nVề thiết kế, iPhone 13 Pro mang vẻ ngoài tối giản, các góc bo tròn, đường nét sắc sảo, thiết kế vuông vắn tương tự như trên iPhone 12 Pro.\r\n\r\n@https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-1.jpg@https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-2.jpg@https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-6.jpg@https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-man-hinh.jpg', 5),
(80, 'Điện thoại Samsung Galaxy S22', 22000000, '2022-05-31', 10, 'https://cdn.tgdd.vn/Products/Images/42/235838/Slider/samsung-galaxys22ultra5Gthumbvideo-1020x570.jpg', 'Thông tin sản phẩm\r\nĐược cho ra mắt vào tháng 02/2022, Samsung Galaxy S22 Ultra 5G gây sốt trong cộng đồng công nghệ bởi hiệu năng mạnh mẽ, thiết kế đẳng cấp sang trọng cùng nhiều tiện ích do bút S Pen mang lại.\r\nThiết kế đẳng cấp sang trọng\r\nLấy cảm hứng thiết kế từ những dòng Galaxy Note trước đây, với các góc vuông cùng viền màn hình được thiết kế mỏng, mang đến không gian hiển thị rộng lớn cho những trải nghiệm giải trí hay thao tác công việc trên máy.\r\n\r\n@https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-10-2.jpg@https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-11-2.jpg@https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-5-2.jpg@https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-7-2.jpg@https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-3-2.jpg', 4),
(81, 'Điện thoại Samsung Galaxy A03 3GB', 10000000, '2022-05-31', 20, 'https://cdn.tgdd.vn/Products/Images/42/251856/Slider/samsung-galaxy-A03-3GB-tongquan-slider-1020x570.jpg', 'Thông tin sản phẩm\r\nKiểu dáng hiện đại, thời trang\r\nSamsung Galaxy A03 3GB tạo ấn tượng với thiết kế gọn gàng, các góc uốn cong mềm mại, tinh tế, chế tác nguyên khối với khung và mặt sau được làm từ nhựa tốt cho điện thoại nhẹ, bền, thoải mái khi cầm tay và thao tác.\r\n\r\nMàn hình dạng giọt nước kích thước 6.5 inch, bề mặt phủ tấm nền PLS LCD, độ phân giải HD+ (720 x 1600 Pixels), độ sáng đến 400 nits tái tạo hình ảnh nét đẹp, chi tiết, màu sắc hiển thị rực rỡ. @https://cdn.tgdd.vn/Products/Images/42/251856/samsung-galaxy-a03-180122-033510.jpg@https://cdn.tgdd.vn/Products/Images/42/251856/samsung-galaxy-a03-180122-033513.jpg@https://cdn.tgdd.vn/Products/Images/42/251856/samsung-galaxy-a03-180122-033517.jpg', 4),
(82, 'Điện thoại Samsung Galaxy A52s 5G 128GB ', 22000000, '2022-05-31', 10, 'https://cdn.tgdd.vn/Products/Images/42/247507/Slider/Thumb-Video-Galaxy-A52s-5G-1020x570.jpg', 'Thông tin sản phẩm\r\nGalaxy A52s 5G là phiên bản nâng cấp của Galaxy A52 5G, không chỉ được thừa hưởng thiết kế đột phá, màn hình tuyệt đỉnh và bộ tứ camera chống rung quang học OIS chuyên nghiệp mà còn được nâng cấp khá nhiều về trang bị và tính năng, sẵn sàng là người đồng hành cùng bạn chinh phục mọi thử thách.\r\nThiết kế tinh xảo, thừa hưởng từ dòng flagship cao cấp\r\nNhìn chung, Galaxy A52s 5G vẫn mang đậm phong cách từ người đàn anh đi trước với thiết kế nguyên khối cứng cáp, mặt lưng nhám mềm mại và các đường bo cong hợp lý cho cảm giác cầm nắm tối ưu.@https://cdn.tgdd.vn/Products/Images/42/247507/samsung-galaxy-a52s-5g--6.jpg@https://cdn.tgdd.vn/Products/Images/42/247507/samsung-galaxy-a52s-5g-3.jpg@https://cdn.tgdd.vn/Products/Images/42/247507/samsung-galaxy-a52s-5g-140921-011838.jpg@https://cdn.tgdd.vn/Products/Images/42/247507/samsung-galaxy-a52s-5g-6-1.jpg@https://cdn.tgdd.vn/Products/Images/42/247507/samsung-galaxy-a52s-5g-5-1.jpg@https://cdn.tgdd.vn/Products/Images/42/247507/samsung-galaxy-a52s-5g-2.jpg', 4),
(83, 'Điện thoại Samsung Galaxy Z Fold3 5G 256GB', 30000000, '2022-05-31', 66, 'https://cdn.tgdd.vn/Products/Images/42/226935/Slider/samsung-galaxy-z-fold3-5g-thumb-video-1020x570.jpg', 'Thông tin sản phẩm\r\nSamsung chính thức tung ra mẫu điện thoại cao cấp Galaxy Z Fold3 5G. Chiếc flagship này không chỉ mang đến một trải nghiệm hiệu năng tiên tiến, mà còn có màn hình vô cực liền mạch, hỗ trợ bút S Pen trên màn hình gập lần đầu tiên xuất hiện, mở ra chương mới của sáng tạo công nghệ di động.\r\nThiết kế mang tầm thương hiệu\r\nGalaxy Z Fold3 5G sở hữu ngoại hình tương tự thế hệ trước với màn hình gập vào trong bản lề ở giữa. Tuy nhiên, với cải tiến thiết kế thì lần này thiết bị khi gập lại đã trở nên mỏng hơn nhiều.@https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-25.jpg@https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-30.jpg@https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-22.jpg@https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-18.jpg@https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-20.jpg@https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-21.jpg', 4),
(84, 'Điện thoại OPPO Reno7 ', 1000000, '2022-05-31', 25, 'https://cdn.tgdd.vn/Products/Images/42/274721/Slider/oppo-reno7-4g637868239541033142.jpg', 'Thông tin sản phẩm\r\nBên cạnh phiên bản 5G thì OPPO còn tung ra thị trường phiên bản OPPO Reno7 4G với những điểm nổi bật như: Thiết kế thời thượng, sạc siêu nhanh, camera cảm biến thông minh,... hứa hẹn sẽ mang đến nhiều trải nghiệm ấn tượng cho người dùng trên điện thoại này.\r\nThiết kế mạnh mẽ, lịch lãm\r\nLần đầu tiên trong ngành xuất hiện chất liệu da sợi thủy tinh, trải qua nhiều quá trình sáng tạo thì OPPO cũng đã thành công tạo nên một chất liệu giúp cho mặt lưng điện thoại nhẹ và mang lại cảm giác sang trọng hơn, đảm bảo được chất lượng độ bền tốt.@https://cdn.tgdd.vn/Products/Images/42/274721/oppo-reno7-4g-220422-055204.jpg@https://cdn.tgdd.vn/Products/Images/42/274721/oppo-reno7-4g-080422-022025.jpg@https://cdn.tgdd.vn/Products/Images/42/274721/oppo-reno7-4g-220422-061442.jpg@https://cdn.tgdd.vn/Products/Images/42/274721/oppo-reno7-4g-220422-061445.jpg', 6),
(85, 'Điện thoại OPPO A55  ', 2000000, '2022-05-31', 25, 'https://cdn.tgdd.vn/Products/Images/42/249944/Slider/oppo-a55-thumb-video-1020x570.jpg', 'Thông tin sản phẩm\r\nHứng thú với chất lượng selfie trên điện thoại tầm trung, ắt hẳn chẳng nên bỏ qua các phiên bản đẹp mắt của OPPO, trong đó có OPPO A55 4G với ngoại hình tinh tế, hiệu năng ổn định, cụm camera chất lượng cùng dung lượng pin tuyệt vời, thỏa mãn nhiều tiêu chí tìm kiếm mà bạn mong muốn.\r\nSức mạnh hiệu năng từ chip MediaTek Helio G35\r\nOPPO A55 4G được định hình sức mạnh đa nhiệm tốt nhờ chip MediaTek Helio G35 8 nhân có xung nhịp đạt 2.3 GHz, cho tốc độ xử lý đa tác vụ nhanh và ổn định trên các ứng dụng quen thuộc như đọc tin tức, xem video trên youtube hay lướt facebook.@https://cdn.tgdd.vn/Products/Images/42/249944/oppo-a55-4g-12.jpg@https://cdn.tgdd.vn/Products/Images/42/249944/oppo-a55-4g-14.jpg@https://cdn.tgdd.vn/Products/Images/42/249944/oppo-a55-4g-11.jpg@https://cdn.tgdd.vn/Products/Images/42/249944/oppo-a55-4g-1-1.jpg', 6),
(86, 'Điện thoại OPPO Find X5 Pro 5G ', 500000, '2022-05-31', 40, 'https://cdn.tgdd.vn/Products/Images/42/250622/Slider/oppo-find-x5-pro637872833395405029.jpg', 'Thông tin sản phẩm\r\nOPPO Find X5 Pro là một trong những sản phẩm cao cấp được OPPO tung ra thị trường với thiết kế thời thượng, màn hình 2K+ chất lượng cao, cấu hình mạnh mẽ,... hứa hẹn sẽ là một sản phẩm đáp ứng đầy đủ các tiêu chí của người dùng.\r\nMàn hình AMOLED kích thước lớn cho trải nghiệm giải trí ấn tượng\r\nOPPO trang bị cho điện thoại này màn hình AMOLED kích thước lên đến 6.7 inch cùng độ phân giải 2K+ (1440 x 3216 Pixels) giúp bạn có được trải nghiệm xem đã mắt với chất lượng hình ảnh hiển thị chân thực, sắc nét và màu sắc tái tạo tự nhiên, ngoài ra còn tiết kiệm điện năng đáng kể.\r\n\r\nMàn hình AMOLED trên OPPO Find X5 Pro có độ sâu màu 10 bit kết hợp cùng độ sáng 1300 nits mang lại chất lượng màu sắc rực rỡ hơn, đảm bảo vẫn thể hiện được những nội dung trên điện thoại với chất lượng màu sắc tự nhiên, chính xác trong môi trường nhiều ánh sáng và nắng gắt.\r\n\r\nMàn hình AMOLED kích thước lớn - OPPO Find X5 Pro \r\n\r\nFind X5 Pro được nâng cao khả năng chống trầy xước, va đập cho màn hình khi được trang bị kính cường lực Corning Gorilla Glass Victus với độ bền theo thời gian.\r\n\r\nThiết kế phong cách hiện đại\r\nOPPO thiết kế cho chiếc điện thoại này từ chất liệu gốm cùng những đường cong được bo tỉ mỉ, gọn gàng và để tạo nên một thiết kế hoàn thiện cao cấp thì thân máy được đánh bóng trong 14 quy trình hơn 269 phút để đạt được độ mịn tối đa. Ngoài ra, đường cong được tối ưu với độ dốc 75 độ để toàn thân của điện thoại được tỏa sáng dưới ánh nắng mặt trời hoặc trong bóng tối.\r\n\r\nThiết kế phong cách hiện đại - OPPO Find X5 Pro\r\n\r\nHiệu năng mạnh mẽ với chip Snapdragon 8 Gen 1 8 nhân\r\nVới bộ vi xử lý Qualcomm Snapdragon 8 thế hệ 1 hàng đầu có xung nhịp tối đa là 3 GHz tích hợp trên tiến trình 4 nm cùng RAM 12 GB mang lại hiệu năng mạnh mẽ vượt trội, khả năng xử lý đồ họa được nâng cao, có thể đáp ứng tốt các tác vụ cũng như chuyển đổi giữa các ứng dụng như: Trình duyệt Chrome, FaceBook, TikTok,... đa nhiệm rất nhanh. Đặc biệt, có thể đáp ứng tốt được cho những đối tượng đam mê chơi game có mức đồ họa cao. \r\n\r\nHiệu năng mạnh mẽ - OPPO Find X5 Pro \r\n\r\nNgoài ra, OPPO Find X5 này còn được trang bị bộ nhớ trong 256 GB cho bạn thoải mái lưu trữ các ứng dụng, tài liệu, hình ảnh, những bộ phim yêu thích,...\r\n\r\nCamera chuẩn nghệ thuật\r\nCamera có lẽ là một những điểm nổi bật trên chiếc điện thoại này với sự hợp tác cùng hãng máy ảnh Thụy Điển Hasselblad và sử dụng hai cảm biến Sony IMX766 50 MP cao cấp có kích thước 1/1.56 inch.\r\n\r\nCamera chuẩn nghệ thuật - OPPO Find X5 Pro\r\n\r\nĐiện thoại này được trang bị camera chính 50 MP có khẩu độ f/1.7 có khả năng thu sáng tốt, cho chất lượng hình ảnh sắc nét, chất màu ổn và camera góc siêu rộng 50 MP có khẩu độ f/2.2 cho góc nhìn rộng độ giúp bạn có thể bắt trọn những khung cảnh với góc nhìn tuyệt đẹp. Cuối cùng là một trang bị phổ biến trên nhiều flagship hiện nay có là camera tele 13 MP với khả năng zoom quang học 5x và zoom kỹ thuật số 20x.\r\n\r\nẢnh chụp trên OPPO Find X5 Pro\r\n\r\nViên pin lớn, công nghệ sạc siêu nhanh SuperVOOC\r\nĐiện thoại OPPO Find X5 Pro được trang bị viên pin Li-Po có dung lượng lên đến 5000 mAh, đây là một dung lượng pin khá khủng có thể đáp ứng cho bạn sử dụng bền bỉ cả ngày dài.\r\n\r\nĐồng thời cũng có hỗ trợ chế độ sạc nhanh có dây SuperVOOC 80 W và sạc nhanh không dây AirVOOC 50 W giúp bạn có thời gian sạc nhanh hơn.\r\n\r\nViên pin lớn, công nghệ sạc siêu nhanh SuperVOOC - OPPO Find X5 Pro\r\n\r\nNhìn chung, OPPO Find X5 Pro có nhiều ưu điểm vượt trội như có màn hình kích thước lớn hiển thị sắc nét, hiệu năng mạnh mẽ, dung lượng pin lớn,... đây là một sản phẩm sẽ đáp ứng tốt các nhu cầu của bạn, đáng để bạn cân nhắc lựa chọn.\r\n\r\n@https://cdn.tgdd.vn/Products/Images/42/250622/oppo-find-x5-pro-180422-081108.jpg@https://cdn.tgdd.vn/Products/Images/42/250622/oppo-find-x5-pro-200422-083619.jpg@https://cdn.tgdd.vn/Products/Images/42/250622/oppo-find-x5-pro-180422-081110.jpg@https://cdn.tgdd.vn/Products/Images/42/250622/oppo-find-x5-pro-180422-081106.jpg', 6),
(87, 'Điện thoại OPPO Reno6 5G    ', 19000000, '2022-05-31', 15, 'https://cdn.tgdd.vn/Products/Images/42/236186/Slider/oppo-reno6-5g-thumbv-1020x570.jpg', 'Thông tin sản phẩm\r\nOPPO Reno6 sẽ mang lại một làn gió mới cho phân khúc tầm trung khi sở hữu một thiết kế cao cấp, hệ thống camera thông minh cùng hiệu năng vô cùng ấn tượng, hứa hẹn sẽ mẫu điện thoại OPPO thu hút nhiều sự chú ý nhất người dùng trong năm 2021.\r\nChip xử lý MediaTek hoàn toàn mới\r\nOPPO Reno6 là sản phẩm được tích hợp bộ vi xử lý Dimensity 900 sản xuất trên tiến trình 6 nm, mang lại một hiệu năng khá ấn tượng hoàn toàn có thể đáp ứng các nhu cầu học tập, làm việc cũng như chơi một số game phổ biến như Liên Quân, PUBG Mobile đều ổn, chắc chắn sẽ đem đến cho người dùng những trải nghiệm ổn định nhất.@https://cdn.tgdd.vn/Products/Images/42/236186/Kit/oppo-reno6-n--3.jpg@https://cdn.tgdd.vn/Products/Images/42/236186/oppo-reno6-15.jpg@https://cdn.tgdd.vn/Products/Images/42/236186/oppo-reno6-17.jpg@https://cdn.tgdd.vn/Products/Images/42/236186/oppo-reno6-18.jpg', 6),
(88, 'Điện thoại Vivo Y15s', 60000, '2022-05-31', 10, 'https://cdn.tgdd.vn/Products/Images/42/249720/Slider/vivo-y15s-thumb-1020x570.jpeg', 'Thông tin sản phẩm\r\nVivo Y15s là chiếc điện thoại sở hữu nhiều ưu điểm nổi bật từ thiết kế màn hình lớn, vẻ ngoài thời trang, hiệu năng ổn định để sử dụng lâu dài và đi kèm với mức giá vô cùng tốt trong phân khúc, hứa hẹn sẽ đáp ứng tốt nhu cầu giải trí của bạn.\r\nThiết kế mỏng nhẹ thời thượng\r\nDù là thuộc phân khúc giá rẻ nhưng Vivo Y15s vẫn có thiết kế cao cấp, đậm chất riêng với kiểu dáng mỏng nhẹ linh hoạt khi cầm tay hoặc bỏ túi. Toàn bộ thân máy làm bằng vật liệu Polymer cao cấp, vát cong 3D với độ mỏng 8.28 mm và trọng lượng chỉ 179 g đem lại cảm giác cầm máy trong tay khá thoải mái.@https://cdn.tgdd.vn/Products/Images/42/249720/vivo-y15s-2021-301021-105506.jpg@https://cdn.tgdd.vn/Products/Images/42/249720/vivo-y15s-2021-301021-105457.jpg@https://cdn.tgdd.vn/Products/Images/42/249720/vivo-y15s-2021-261221-094658.jpg@https://cdn.tgdd.vn/Products/Images/42/249720/vivo-y15s-2021-301021-110702.jpg', 7),
(89, 'Điện thoại Vivo V21 5G ', 10000000, '2022-05-31', 15, 'https://cdn.tgdd.vn/Products/Images/42/238047/Slider/vivov215g-1020x570.jpg', 'Thông tin sản phẩm\r\nVivo V21 5G là một trong 3 mẫu điện thoại thuộc dòng V21 series của Vivo. Với thiết kế thời trang mỏng nhẹ, camera chụp đêm siêu xịn và kết nối 5G đa chuẩn hỗ trợ cả 2 sim, đây sẽ là mẫu điện thoại 5G rất đáng được đầu tư.\r\nThân máy mỏng và cao cấp\r\nVivo V21 5G có sự thay đổi về mặt thiết kế so với V20 (2021), phần khung nhựa bo cong giờ đây đã trở nên vuông vức hơn tạo nên sự cao cấp và sang trọng.@https://cdn.tgdd.vn/Products/Images/42/238047/vivo-v21-5g-004.jpg@https://cdn.tgdd.vn/Products/Images/42/238047/vivo-v21-5g-002.jpg@https://cdn.tgdd.vn/Products/Images/42/238047/vivo-v21-5g-007.jpg@https://cdn.tgdd.vn/Products/Images/42/238047/vivo-v21-5g-010.jpg', 7),
(90, 'Điện thoại Vivo V23e ', 1000000, '2022-05-31', 0, 'https://cdn.tgdd.vn/Products/Images/42/245607/Slider/Thumb-Video-Vivo-V23e-1020x570.jpg', 'Thông tin sản phẩm\r\nVivo V23e - là sản phẩm thuộc phân khúc tầm trung được Vivo cho ra mắt nhằm mang đến khả năng chụp ảnh, selfie một cách tốt hơn đến với người dùng bởi nhiều cải tiến vượt trội. Cùng với đó là một thiết kế vuông vức, hiệu suất mạnh mẽ trên chipset gaming đến từ nhà MediaTek khiến V23e trở thành tâm điểm trên thị trường công nghệ khi vừa được ra mắt.\r\nThiết kế tinh tế \r\nLấy cảm hứng từ các phiên bản tiền nhiệm thuộc Vivo V Series để mang đến một thiết kế vuông vắn cùng độ mỏng thân máy được tối ưu xuống còn 7.36 mm trên phiên bản màu đen và 7.41 mm trên phiên bản màu xanh hồng.@https://cdn.tgdd.vn/Products/Images/42/245607/vivo-v23e-271121-030257.jpg@https://cdn.tgdd.vn/Products/Images/42/245607/vivo-v23e-271121-030324.jpg@https://cdn.tgdd.vn/Products/Images/42/245607/vivo-v23e-271121-030326.jpg', 7),
(91, 'Điện thoại Vivo Y53s', 19000000, '2022-05-29', 10, 'https://cdn.tgdd.vn/Products/Images/42/240286/Slider/vi-vn-vivo-y53s-tongquan.jpg', 'Thông tin sản phẩm\r\nCông nghệ mở rộng RAM độc quyền trên smartphone hiện tại (06/2021) chỉ có trên Vivo và hãng đã tiếp nối sự thành công đó trên chiếc điện thoại Vivo Y53s. Vivo Y53s nổi bật trong phân khúc tầm trung với thiết kế đẹp mắt và những tính năng hiện đại.\r\nDáng vẻ của tuổi trẻ đầy năng động\r\nVivo Y53s tráng mặt lưng với 2 phiên bản màu: Xanh tím và đen huyền ảo, phủ lên đó là lớp gradient phản chiếu ánh sáng cho chiếc điện thoại dáng vẻ lung linh, nổi bật hơn.@https://cdn.tgdd.vn/Products/Images/42/240286/vivo-y53s-002.jpg@https://cdn.tgdd.vn/Products/Images/42/240286/vivo-y53s-007.jpg', 7),
(92, 'Điện thoại Xiaomi 11T 5G 128GB', 60000, '2022-05-25', 40, 'https://cdn.tgdd.vn/Products/Images/42/248293/Slider/xiaomi-11t-5g-thumb-1020x570.jpeg', 'Thông tin sản phẩm\r\nXiaomi đã trang bị hàng loạt tính năng đỉnh cao cho Xiaomi 11T như tần số quét màn hình 120 Hz, camera 108 MP cùng vi xử lý Dimensity 1200, chiếc smartphone này chắc chắn sẽ đem đến sự hài lòng dành cho bạn.\r\nẤn tượng trong từng bức ảnh với camera 108 MP\r\nHệ thống 3 camera sau gồm camera chính độ phân giải 108 MP, camera góc rộng 8 MP 120 độ và camera telemacro 5 MP kết hợp cùng phần cứng hiện đại được tích hợp bên trong cho khả năng chụp hình cực kỳ ấn tượng. Việc của bạn là đưa máy lên và nhấn chụp là đã có ngay bức ảnh đẹp với độ sáng vừa đủ, các chi tiết vô cùng sắc nét.@https://cdn.tgdd.vn/Products/Images/42/248293/xiaomi-11t-22.jpg@https://cdn.tgdd.vn/Products/Images/42/248293/xiaomi-11t-2.jpg@https://cdn.tgdd.vn/Products/Images/42/248293/xiaomi-11t-5.jpg', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `password` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `so_dien_thoai` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `loai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id_user`, `password`, `username`, `so_dien_thoai`, `email`, `dia_chi`, `hinhanh`, `loai`) VALUES
(15, '123', 'Test', '0366426402', 'thaibasang8@gmail.com', 'Da nang-phuong Hoa Quy-Quqn Ngu Hanh Son', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuI3QeqYJXfQ7QAvSnH1t_Wy5UxBdd6lLTW-MZxIPrE90-1IeYlQ&s', 1),
(19, '12345679', 'tru123', '1024645162', 'tru@gmail.com', 'tt', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuI3QeqYJXfQ7QAvSnH1t_Wy5UxBdd6lLTW-MZxIPrE90-1IeYlQ&s', 0),
(20, '12345679', 'tru1', '0123456791', 'tru@gmail.con', 'ádsasdasdsadasdas', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuI3QeqYJXfQ7QAvSnH1t_Wy5UxBdd6lLTW-MZxIPrE90-1IeYlQ&s', 0),
(21, '1', 'I', '0101010101', '1@gmail', '1', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuI3QeqYJXfQ7QAvSnH1t_Wy5UxBdd6lLTW-MZxIPrE90-1IeYlQ&s', 0),
(22, '12345679', 'tru9', '0123456799', 'tru2@gmail.com', 'áhjkfha', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuI3QeqYJXfQ7QAvSnH1t_Wy5UxBdd6lLTW-MZxIPrE90-1IeYlQ&s', 0),
(23, '123456', 'tru01', '0123456799', 'hkt@gmail.com', 'da nang', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuI3QeqYJXfQ7QAvSnH1t_Wy5UxBdd6lLTW-MZxIPrE90-1IeYlQ&s', 0),
(25, '123', 'admin', '0366426402', 'huynhkimtru@gmail.com', 'quang ngai', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuI3QeqYJXfQ7QAvSnH1t_Wy5UxBdd6lLTW-MZxIPrE90-1IeYlQ&s', 1),
(26, '12345679', 'tru11', '0123456799', 'huynhkimtru@gmail.com', 'cac', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuI3QeqYJXfQ7QAvSnH1t_Wy5UxBdd6lLTW-MZxIPrE90-1IeYlQ&s', 0),
(38, '12345679', 'tru44', '0123456797', 'tru@gmail.com', '04 le thanh nghi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuI3QeqYJXfQ7QAvSnH1t_Wy5UxBdd6lLTW-MZxIPrE90-1IeYlQ&s', 0),
(43, '123', 'shipper', '0366426403', 'abc@gmail.com', 'abc', '', 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bosuutap`
--
ALTER TABLE `bosuutap`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`stt`),
  ADD KEY `fk_chitiet` (`masanpham`),
  ADD KEY `fk_chitietdonhang` (`iddondathang`);

--
-- Chỉ mục cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD PRIMARY KEY (`Id_DanGgia`),
  ADD KEY `fk_danhgiamot` (`Id_SanPham`),
  ADD KEY `fk_danhgiauser` (`username`);

--
-- Chỉ mục cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`idgiohang`),
  ADD KEY `idsanpham` (`idsanpham`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phanloaitaikhoan`
--
ALTER TABLE `phanloaitaikhoan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `sanpham_ibfk_1` (`IDSP`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `loai` (`loai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bosuutap`
--
ALTER TABLE `bosuutap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `stt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  MODIFY `Id_DanGgia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `idgiohang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `phanloaitaikhoan`
--
ALTER TABLE `phanloaitaikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD CONSTRAINT `fk_danhgiamot` FOREIGN KEY (`Id_SanPham`) REFERENCES `sanpham` (`ID`),
  ADD CONSTRAINT `fk_danhgiauser` FOREIGN KEY (`username`) REFERENCES `user` (`username`);

--
-- Các ràng buộc cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `giohang_ibfk_1` FOREIGN KEY (`idsanpham`) REFERENCES `sanpham` (`ID`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`IDSP`) REFERENCES `loaisanpham` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`loai`) REFERENCES `phanloaitaikhoan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
