-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2025
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

-- Creating database
CREATE DATABASE IF NOT EXISTS `ohms`;

USE `ohms`;

-- Table structure for table `admin`
CREATE TABLE `admin` (
  `ad_id` varchar(30) NOT NULL,
  `firstName` varchar(30) DEFAULT NULL,
  `lastName` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL -- Increased password length to 255
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4; -- Changed charset to utf8mb4 for better support

-- Insert data into `admin`
INSERT INTO `admin` (`ad_id`, `firstName`, `lastName`, `email`, `password`) VALUES
('1', 'Asif', 'Samy', 'asifsamy@gmail.com', '12345');

-- Table structure for table `book`
CREATE TABLE `book` (
  `cs_id` varchar(30) DEFAULT NULL,
  `re_id` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insert data into `book`
INSERT INTO `book` (`cs_id`, `re_id`) VALUES
('1', 'RE-00001'),
('2', 'RE-00002'),
('3', 'RE-00003'),
('4', 'RE-00004'),
('3', 'RE-00005'),
('4', 'RE-00006'),
('2', 'RE-00007'),
('1', 'RE-00008'),
('1', 'RE-00009'),
('CS-00002', 'RE-00012');

-- Add primary key and indexes to `book`
ALTER TABLE `book`
  ADD PRIMARY KEY (`cs_id`, `re_id`),
  ADD INDEX `cs_id` (`cs_id`),
  ADD INDEX `re_id` (`re_id`);

-- Table structure for table `customer`
CREATE TABLE `customer` (
  `cs_id` varchar(30) NOT NULL,
  `firstName` varchar(30) DEFAULT NULL,
  `lastName` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL, -- Increased password length to 255
  `phone` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insert data into `customer`
INSERT INTO `customer` (`cs_id`, `firstName`, `lastName`, `email`, `password`, `phone`) VALUES
('1', 'Asif', 'Samy', 'asifsamy@gmail.com', '12345', '1234567890'),
('2', 'Samy', 'Asif', 'asifsamy@gmail.com', '12345', '1234567890'),
('3', 'Khalid', 'Yusuf', 'kh@gmail.com', '12345', '1234567890'),
('4', 'Yusuf', 'Khalid', 'kh@gmail.com', '12345', '1234567890'),
('CS-00001', 'Sakib', 'Sharar', 'sk@gmail.com', '12345', '01737887516'),
('CS-00002', 'Sohel', 'Tanvir', 'samy_ewu@yahoo.com', '12345', '01737887516');

-- Add primary key to `customer`
ALTER TABLE `customer` ADD PRIMARY KEY (`cs_id`);

-- Table structure for table `gen2_number`
CREATE TABLE `gen2_number` (
  `id` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, -- Auto-increment added
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insert data into `gen2_number`
INSERT INTO `gen2_number` (`id`, `name`) VALUES
(00001, 'Asif'),
(00002, 'Asif');

-- Table structure for table `gen_number`
CREATE TABLE `gen_number` (
  `id` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, -- Auto-increment added
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insert data into `gen_number`
INSERT INTO `gen_number` (`id`, `name`) VALUES
(00001, 'Asif'),
(00002, 'Asif'),
(00003, 'Asif'),
(00004, 'Asif'),
(00005, 'Asif'),
(00006, 'Asif'),
(00007, 'Asif'),
(00008, 'Asif'),
(00009, 'Asif'),
(00010, 'Asif'),
(00011, 'Asif'),
(00012, 'Asif');

-- Table structure for table `request`
CREATE TABLE `request` (
  `cs_id` varchar(30) DEFAULT NULL,
  `room_no` varchar(30) DEFAULT NULL -- Changed to varchar
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Table structure for table `reservation`
CREATE TABLE `reservation` (
  `re_id` varchar(30) NOT NULL,
  `c_in` date DEFAULT NULL,
  `c_out` date DEFAULT NULL,
  `re_date` date DEFAULT NULL,
  `stay` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insert data into `reservation`
INSERT INTO `reservation` (`re_id`, `c_in`, `c_out`, `re_date`, `stay`) VALUES
('RE-00001', '2017-04-21', '2017-04-22', '2017-04-21', 1),
('RE-00002', '2017-04-21', '2017-04-27', '2017-04-21', 6),
('RE-00003', '2017-04-21', '2017-04-23', '2017-04-21', 2),
('RE-00004', '2017-04-28', '2017-04-29', '2017-04-21', 1),
('RE-00005', '2017-04-22', '2017-04-23', '2017-04-22', 1),
('RE-00006', '2017-04-20', '2017-04-22', '2017-04-20', 2),
('RE-00007', '2017-04-17', '2017-04-19', '2017-04-15', 2),
('RE-00008', '2017-04-23', '2017-04-24', '2017-04-22', 1),
('RE-00009', '2017-04-26', '2017-04-28', '2017-04-22', 2),
('RE-00012', '2017-04-30', '2017-05-02', '2017-04-23', 2);

-- Table structure for table `reserve`
CREATE TABLE `reserve` (
  `re_id` varchar(30) DEFAULT NULL,
  `room_no` varchar(30) DEFAULT NULL, -- Changed to varchar
  `res_room` int(5) NOT NULL,
  `checked` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insert data into `reserve`
INSERT INTO `reserve` (`re_id`, `room_no`, `res_room`, `checked`) VALUES
('RE-00001', '100', 3, 1),
('RE-00002', '100', 3, 0),
('RE-00003', '101', 3, 1),
('RE-00004', '100', 1, 0),
('RE-00006', '101', 1, 2),
('RE-00005', '105', 1, 1),
('RE-00007', '105', 1, 2),
('RE-00008', '101', 1, 0),
('RE-00009', '100', 1, 0),
('RE-00012', '100', 1, 0);

-- Table structure for table `rooms`
CREATE TABLE `rooms` (
  `room_no` varchar(30) NOT NULL, -- Changed to varchar
  `type` varchar(50) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `max_adult` int(2) DEFAULT NULL,
  `max_child` int(2) DEFAULT NULL,
  `qty` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insert data into `rooms`
INSERT INTO `rooms` (`room_no`, `type`, `price`, `image`, `max_adult`, `max_child`, `qty`) VALUES
('100', 'Regular', '5059.00', 'image/reg.jpg', 2, 1, 12),
('101', 'Deluxe', '6166.00', 'image/del.jpg', 2, 1, 8),
('105', 'Suite', '12648.00', 'image/suit.jpg', 2, 1, 4);

-- Add primary key to `rooms`
ALTER TABLE `rooms` ADD PRIMARY KEY (`room_no`);

-- Add foreign key constraints to `book`, `request`, `reserve`
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`cs_id`) REFERENCES `customer` (`cs_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_ibfk_2` FOREIGN KEY (`re_id`) REFERENCES `reservation` (`re_id`) ON DELETE SET NULL;

ALTER TABLE `request`
  ADD CONSTRAINT `request_ibfk_1` FOREIGN KEY (`cs_id`) REFERENCES `customer` (`cs_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `request_ibfk_2` FOREIGN KEY (`room_no`) REFERENCES `rooms` (`room_no`) ON DELETE SET NULL;

ALTER TABLE `reserve`
  ADD CONSTRAINT `reserve_ibfk_1` FOREIGN KEY (`re_id`) REFERENCES `reservation` (`re_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reserve_ibfk_2` FOREIGN KEY (`room_no`) REFERENCES `rooms` (`room_no`) ON DELETE SET NULL;

-- Auto-increment settings for `gen2_number` and `gen_number`
ALTER TABLE `gen2_number` AUTO_INCREMENT = 3;
ALTER TABLE `gen_number` AUTO_INCREMENT = 13;
