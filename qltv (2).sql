-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th6 21, 2022 lúc 10:41 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qltv`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `email` varchar(25) NOT NULL,
  `pass` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `email`, `pass`) VALUES
(1, 'nguyen11@gmail.com', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `bookpic` varchar(25) NOT NULL,
  `bookname` varchar(25) NOT NULL,
  `bookdetail` varchar(110) NOT NULL,
  `bookaudor` varchar(25) NOT NULL,
  `bookpub` varchar(25) NOT NULL,
  `branch` varchar(110) NOT NULL,
  `bookprice` varchar(25) NOT NULL,
  `bookquantity` varchar(25) NOT NULL,
  `bookava` int(11) NOT NULL,
  `bookrent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `book`
--

INSERT INTO `book` (`id`, `bookpic`, `bookname`, `bookdetail`, `bookaudor`, `bookpub`, `branch`, `bookprice`, `bookquantity`, `bookava`, `bookrent`) VALUES
(4, 'arrow.jpg', 'Scott Gallagher', '1st edition', 'no idea', 'Suscipit', 'it', '756', '20', 16, 4),
(5, 'logo.png', 'Ferris Mclaughlin', 'Qui ex dolor fugiat ', 'Est voluptates offi', 'Dolorem earum accusa', 'electrical', '264', '157', 157, 0),
(6, 'arrow.png', 'harry', 'Ea quas nulla ration', 'Ut dolorem culpa ex', 'Eum proident quidem', 'it', '76', '3', 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `issuebook`
--

CREATE TABLE `issuebook` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `issuename` varchar(25) NOT NULL,
  `issuebook` varchar(25) NOT NULL,
  `issuetype` varchar(25) NOT NULL,
  `issuedays` int(11) NOT NULL,
  `issuedate` varchar(25) NOT NULL,
  `issuereturn` varchar(25) NOT NULL,
  `fine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `issuebook`
--

INSERT INTO `issuebook` (`id`, `userid`, `issuename`, `issuebook`, `issuetype`, `issuedays`, `issuedate`, `issuereturn`, `fine`) VALUES
(2, 1, 'salman', 'Rich daddy poor dady', 'student', 3, '30/03/2021', '02/04/2021', 1800),
(3, 2, 'Randall Burch', 'Scott Gallagher', 'teacher', 4, '30/03/2021', '03/04/2021', 0),
(6, 1, 'salman', 'Scott Gallagher', 'student', 7, '30/03/2021', '06/04/2021', 1800),
(10, 1, 'salman', 'Scott Gallagher', 'student', 7, '01/04/2021', '08/04/2021', 0),
(11, 1, 'salman', 'harry', 'student', 7, '01/04/2021', '08/04/2021', 0),
(12, 1, 'salman', 'Scott Gallagher', 'student', 3, '20/06/2022', '23/06/2022', 0),
(13, 2, 'Randall Burch', 'harry', 'teacher', 11, '21/06/2022', '02/07/2022', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `requestbook`
--

CREATE TABLE `requestbook` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `bookid` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `usertype` varchar(25) NOT NULL,
  `bookname` varchar(25) NOT NULL,
  `issuedays` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `userdata`
--

CREATE TABLE `userdata` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `pass` varchar(25) NOT NULL,
  `type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `userdata`
--

INSERT INTO `userdata` (`id`, `name`, `email`, `pass`, `type`) VALUES
(1, 'salman', 'idno22382@gmail.com', '123', 'student'),
(2, 'Randall Burch', 'voqo@mailinator.com', 'Ratione nulla dolore', 'teacher'),
(3, 'Gabriel Daugherty', 'bipacer@mailinator.com', 'Voluptas explicabo ', 'teacher'),
(5, 'nguyen', 'nguyen11@gmail.com', '123', 'student');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `issuebook`
--
ALTER TABLE `issuebook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pk_fk` (`userid`);

--
-- Chỉ mục cho bảng `requestbook`
--
ALTER TABLE `requestbook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pk_fk_book` (`bookid`),
  ADD KEY `pk_fk_users` (`userid`);

--
-- Chỉ mục cho bảng `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `issuebook`
--
ALTER TABLE `issuebook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `requestbook`
--
ALTER TABLE `requestbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `userdata`
--
ALTER TABLE `userdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `issuebook`
--
ALTER TABLE `issuebook`
  ADD CONSTRAINT `issuebook_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `userdata` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `requestbook`
--
ALTER TABLE `requestbook`
  ADD CONSTRAINT `requestbook_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `userdata` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `requestbook_ibfk_2` FOREIGN KEY (`bookid`) REFERENCES `book` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
