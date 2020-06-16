-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 04, 2019 lúc 05:24 PM
-- Phiên bản máy phục vụ: 10.1.32-MariaDB
-- Phiên bản PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `fshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `flower`
--

CREATE TABLE `flower` (
  `flowerID` int(8) NOT NULL,
  `flowername` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `flower`
--

INSERT INTO `flower` (`flowerID`, `flowername`, `price`) VALUES
(3, 'Bright Tomorrow', 150),
(4, 'Lucky Flower', 150),
(5, 'Prosperity', 150),
(6, 'Summer Song', 150),
(7, 'VICTORY', 150),
(8, 'Colorful Happiness', 150),
(9, 'Determination', 150),
(10, 'First moment', 150),
(11, 'Autumn', 150),
(12, 'Determination 2', 150),
(13, 'First moment 2', 150),
(14, 'Autumn 2', 150),
(15, 'Colorful Happiness 2', 150),
(16, 'Innocence', 150),
(17, 'Long distence love', 150),
(18, 'Melody of love', 150),
(19, 'Sweet Love', 150),
(20, 'A Thousand Words', 150),
(21, 'Trust And Hope', 150),
(22, 'Yesterday', 150),
(23, 'Tana', 150),
(24, 'Light At The Doorstep', 150),
(25, 'Love To Be Loved', 150),
(26, 'When The Sun Rises', 150),
(27, 'Auspicious', 150),
(28, 'Glorious Memories', 150),
(29, 'Good Luck', 150);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_infor`
--

CREATE TABLE `user_infor` (
  `ID` int(8) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `admin` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_infor`
--

INSERT INTO `user_infor` (`ID`, `email`, `name`, `admin`) VALUES
(1, 'sam@gmail.com', 'sam', 0),
(2, 'bao@gmail.com', 'Bao', 0),
(3, 'admin@gmail.com', 'admin', 1),
(4, 'tra@gmail.com', 'Tra', 0),
(5, 'giabao@gmail.com', 'giabao', 0),
(6, 'vivu@gmail.com', 'vivu', 0),
(7, 'tramanh@gmail.com', 'tramanh', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_pass`
--

CREATE TABLE `user_pass` (
  `UserID` int(8) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_pass`
--

INSERT INTO `user_pass` (`UserID`, `username`, `password`) VALUES
(1, 'sam', '56fafa8964024efa410773781a5f9e93'),
(2, 'Bao', 'b6c6cfe1a7ba5eac0f984f3ef97c8490'),
(3, 'admin', '0192023a7bbd73250516f069df18b500'),
(4, 'Tra', '25d85810a83f61794781f77018c516d9'),
(5, 'giabao', 'eb0a303b5fa57cb56e532b628d2712ed'),
(6, 'vivu', '1a8dd839748ca89a85c1ffa94997d0d3'),
(7, 'tramanh', 'ce534568f0923396a25b887655afeeb9');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `flower`
--
ALTER TABLE `flower`
  ADD PRIMARY KEY (`flowerID`);

--
-- Chỉ mục cho bảng `user_infor`
--
ALTER TABLE `user_infor`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `user_pass`
--
ALTER TABLE `user_pass`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `flower`
--
ALTER TABLE `flower`
  MODIFY `flowerID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `user_infor`
--
ALTER TABLE `user_infor`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `user_pass`
--
ALTER TABLE `user_pass`
  MODIFY `UserID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
