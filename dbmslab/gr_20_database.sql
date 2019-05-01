-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 02, 2019 at 04:39 PM
-- Server version: 5.7.25-0ubuntu0.16.04.2
-- PHP Version: 7.1.27-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbmslab`
--

-- --------------------------------------------------------

--
-- Table structure for table `Applicant`
--

CREATE TABLE `Applicant` (
  `applicant_id` varchar(20) NOT NULL,
  `name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `dept` varchar(45) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Applicant`
--

INSERT INTO `Applicant` (`applicant_id`, `name`, `password`, `phone`, `email`, `dept`, `role`) VALUES
('CS10001', 'Aaryan Sanjay Sarupria', 'ea6af0485c97ea7093e322d7b552c5c1', 422220001, 'Aaryan@gmail.com', 'CS', 0),
('CS10002', 'Adarsha S L', '00db6e76340b67cff927da5c4ddd67b7', 422220002, 'Adarsha@gmail.com', 'CS', 0),
('CS10004', 'Aitipamula Aravind', '26c08789e35597430e7a4427514c92cb', 422220004, 'Aitipamula@gmail.com', 'CS', 0),
('CS10005', 'Ankit Kumar Gupta', '1de29bad5f201cd8a18d5e20987cb0d9', 422220005, 'Ankit@gmail.com', 'CS', 0),
('CS10009', 'Bhukya Raviteja', '0cdec018a5bf4b10c28fe7c60cc8d6e4', 422220009, 'Bhukya@gmail.com', 'CS', 0),
('CS10010', 'Boddu Mahesh', '190ececf94426bf1e9ef257cc735e051', 422220010, 'Boddu@gmail.com', 'CS', 0),
('CS10011', 'Boppana Susanth', 'bed8d70abb0c23c03d1811141de1cd2d', 422220011, 'Boppana@gmail.com', 'CS', 0),
('CS10012', 'Buddhapriya Ashwajit', 'bccc855cccd56e51842ace3c4d8b3ae7', 422220012, 'Buddhapriya@gmail.com', 'CS', 0),
('CS10014', 'Chilaparasetty Rajesh Khanna', '4e9edecc4994944d00ecc730c7d21ee1', 422220014, 'Chilaparasetty@gmail.com', 'CS', 0),
('CS10015', 'D Nachiketh Reddy', 'f4e2ca492d65c68e29bb139e24049ff4', 422220015, 'D@gmail.com', 'CS', 0),
('CS10016', 'Deepu Kumar', '4bfc98f629b171a25acc74bf3e631190', 422220016, 'Deepu@gmail.com', 'CS', 0),
('CS10017', 'Eslavath Jagadeesh', '89cd6788773d0c8278f7493b5b614955', 422220017, 'Eslavath@gmail.com', 'CS', 0),
('CS10018', 'G Rahul Kranti Kiran', 'a207dee29e283df4abf6ba153e1be9ef', 422220018, 'G@gmail.com', 'CS', 0),
('CS10019', 'Gangireddygari Nanda Kishore Reddy', 'f15e9bb65552d1951609de7459713e80', 422220019, 'Gangireddygari@gmail.com', 'CS', 0),
('CS10020', 'Gaurav Kumar Jha', 'eb4b93c6326b6a4e9c6620eb5d0c9b70', 422220020, 'Gaurav@gmail.com', 'CS', 0),
('CS10023', 'Goutami Nayak', '1d7ca44a934f6036dfd57b6759b780b5', 422220023, 'Goutami@gmail.com', 'CS', 0),
('CS10024', 'Govind Choudhary', 'db0dcfee8e22b8b11f86bd86c8fa6660', 422220024, 'Govind@gmail.com', 'CS', 0),
('CS10025', 'Gudipati Sai Anudeep', '2bc253e7983bcd9be7be450f16a72315', 422220025, 'Gudipati@gmail.com', 'CS', 0),
('CS10026', 'Himanshu Patankar', '8dc7f6affb2f2f8e32dd617cf0107a23', 422220026, 'Himanshu@gmail.com', 'CS', 0),
('CS10027', 'Inkulu Sampreeth', 'b82a77eb3de669ff0a2b3a670342493c', 422220027, 'Inkulu@gmail.com', 'CS', 0),
('CS10028', 'K Kundan Nag', '44351c3faa588df29369d7e52b459bcc', 422220028, 'K@gmail.com', 'CS', 0),
('CS10029', 'Kadaru Sai Ravi Teja', '1c98517083eafa3c0681e3d80502ce8e', 422220029, 'Kadaru@gmail.com', 'CS', 0),
('CS10030', 'Kadumuri Hari Prasad Raju', 'f86905dd466e469dceef64abb8018c4a', 422220030, 'Kadumuri@gmail.com', 'CS', 0),
('CS10031', 'Kalathoti Sandeep Kumar', 'd1f17453d31a90d8ca4e051895cf872a', 422220031, 'Kalathoti@gmail.com', 'CS', 0),
('CS10032', 'Kothapalli Vineeth', 'cfac7b7dfc574e1681093f19c3c6a4d9', 422220032, 'Kothapalli@gmail.com', 'CS', 0),
('CS10033', 'Lingam Vishal Reddy', '8dd79f19fbf032466f37f0eb36d3489d', 422220033, 'Lingam@gmail.com', 'CS', 0),
('CS10034', 'Mehul Kumar Nirala', '573e34b1d3470fcf6cf3c67b15103f71', 422220034, 'Mehul@gmail.com', 'CS', 0),
('CS10035', 'Mulumudy Vyshnav Rohith Reddy', '6fd8bc94ea1a477992df3135e0ab7230', 422220035, 'Mulumudy@gmail.com', 'CS', 0),
('CS10036', 'Nandha Vrajesh Ashwin', '04d6f5b04950049d0ac98b04c52cfd5b', 422220036, 'Nandha@gmail.com', 'CS', 0),
('CS10037', 'Nanduru Saismaran', '4e33ca092f7555799d2375e05e9b5f0a', 422220037, 'Nanduru@gmail.com', 'CS', 0),
('CS10038', 'Nimmala Divya Tejeswini', '31bf9d8f364ca9c8d93aef4117367502', 422220038, 'Nimmala@gmail.com', 'CS', 0),
('CS10039', 'Nishant Chandel', '2299ac946890a4ba98db5f3068ee79c9', 422220039, 'Nishant@gmail.com', 'CS', 0),
('CS10040', 'Nitish Kumar Rai', 'effb0476e7f943f465cdbe980946faa4', 422220040, 'Nitish@gmail.com', 'CS', 0),
('CS10041', 'Param Mangal', 'a8148af576175ee0d89967c68525db57', 422220041, 'Param@gmail.com', 'CS', 0),
('CS10042', 'Rahul Kumar', 'de07e6ba2ed49ff06d9c11f1ecc62441', 422220042, 'Rahul@gmail.com', 'CS', 0),
('CS10044', 'Rathi Piyush Nandkishor', 'fdd44a35d1c1b397204b623661bb3da6', 422220044, 'Rathi@gmail.com', 'CS', 0),
('CS10045', 'Ray Saurav Prabhakar', '76d686ed7768a39d6f88c605d3cf989b', 422220045, 'Ray@gmail.com', 'CS', 0),
('CS10047', 'Saurav Likhar', 'cd19edb458b5d8edc4806b643481f2b3', 422220047, 'Saurav@gmail.com', 'CS', 0),
('CS10050', 'Swatantra Kumar Mahato', 'c6742989b865177924e156ead7fd417c', 422220050, 'Swatantra@gmail.com', 'CS', 0),
('CS10052', 'Vallala Ajay', 'cfa562d2bdf9d558272fce2e0df913ef', 422220052, 'Vallala@gmail.com', 'CS', 0),
('CS10054', 'Vishal Mishra', '85a4946915cc9f5667a2cbb2abd872c1', 422220054, 'Vishal@gmail.com', 'CS', 0),
('CS20001', 'Shamik Sural', '31fff28d0f1e352dccf879d13e639b55', 442220001, 'ss@cse.iitkgp.ac.in', 'CS', 1),
('CS20002', 'Soumya K Ghosh', 'c7a316f8da68bc5c2d715676f94174d1', 442220002, 'skg@cse.iitkgp.ac.in', 'CS', 1),
('CS20003', 'Dipanwita Roychaudhury', '014220be4cd4ce7f35fd8eb29ffa5ce1', 442220003, 'drc@cse.iitkgp.ac.in', 'CS', 1),
('CS20004', 'Abhijit Das', '48b99d34295de3cb4f1593fec4c03973', 442220004, 'ad@cse.iitkgp.ac.in', 'CS', 1),
('CS20005', 'Partha Bhowmick', 'b3e71dee485f858707a8f0e40a26a1ae', 442220005, 'pb@cse.iitkgp.ac.in', 'CS', 1),
('CS20006', 'Indranil Sengupta', 'a874a72367f2cf044d83a46202ea9789', 442220006, 'isg@cse.iitkgp.ac.in', 'Dual', 1),
('CS20007', 'Animesh Mukherjee', '1a4229180f0ec4c580b539e5c5cfa9da', 442220007, 'am@cse.iitkgp.ac.in', 'Dual', 1),
('CS20008', 'Roger Mathews', '7b424b43a66df115e7bfce0fbf333e75', 442220008, 'rgm@cse.iitkgp.ac.in', 'Dual', 1),
('CS20009', 'Sudeshna Sarkar', 'f5cc9d73f7e1a6df4ee5655c3a31b3d9', 442220009, 'ss@cse.iitkgp.ac.in', 'Dual', 1),
('CS20010', 'Pawan Goyal', '1371a3b14aa3e5fb9f76331727a278a5', 442220010, 'pg@cse.iitkgp.ac.in', 'Dual', 1),
('CS30001', 'Aakash Naik', '541fc4e945bd191c61caba41df515650', 422220062, 'Aakash@gmail.com', 'Dual', 0),
('CS30002', 'Aman Bansal', '77f4baf827142df6918c9dae4396adc5', 422220063, 'Aman@gmail.com', 'Dual', 0),
('CS30003', 'Aman Kumar', '7d0d3853bb7a6d6ebb05c7ebb3962c31', 422220064, 'Aman@gmail.com', 'Dual', 0),
('CS30004', 'Appammagari Sravanthi Reddy', '0da5a1a1f01a7882eb083a665f438c94', 422220065, 'Appammagari@gmail.com', 'Dual', 0),
('CS30005', 'Arijit Kar', '1576574cb0de7c33e51f1c527c0e5b57', 422220066, 'Arijit@gmail.com', 'Dual', 0),
('CS30006', 'Ayan Zunaid', '81ec153920f5733b194434f2326d6ced', 422220067, 'Ayan@gmail.com', 'Dual', 0),
('CS30007', 'Ayush Mahajan', 'c89c2bc01b0766f754debc0fb12b641c', 422220068, 'Ayush@gmail.com', 'Dual', 0),
('CS30008', 'B Kushal', '41f7caaf88362fd713f13ba75e0d9da6', 422220069, 'B@gmail.com', 'Dual', 0),
('CS30009', 'Eeshan Gupta', 'ab5ff0ce5ddcdafc20cd0b9f16c7c532', 422220070, 'Eeshan@gmail.com', 'Dual', 0),
('CS30010', 'G Chandan Ritvik', '7ea032432615d82d61f484544131a451', 422220071, 'G@gmail.com', 'Dual', 0),
('CS30011', 'Ishan', '9286fd5a9a9334940c848ca46131af30', 422220072, 'Ishan@gmail.com', 'Dual', 0),
('CS30012', 'Ishwarkar Rohan Shankar', 'af4c7510c9f42c5acdb9a350f7d4cbb3', 422220073, 'Ishwarkar@gmail.com', 'Dual', 0),
('CS30013', 'Jagadeesh Killi', '5079c3812e85b074e438cd3a290933fd', 422220074, 'Jagadeesh@gmail.com', 'Dual', 0),
('CS30014', 'K Nikhil', 'a7d54ab22540a272716078d2e815e9e9', 422220075, 'K@gmail.com', 'Dual', 0),
('CS30015', 'Kemburu Sai Surya Teja', '1a7649ef3093e3f684d97d215d27ef4d', 422220076, 'Kemburu@gmail.com', 'Dual', 0),
('CS30016', 'Kethireddy Rishith Reddy', 'ebe81efb0dfae7e0bb074a21f20624e0', 422220077, 'Kethireddy@gmail.com', 'Dual', 0),
('CS30017', 'Kumar Aniket', '50417b740f4a33378819d27fa1e275df', 422220078, 'Kumar@gmail.com', 'Dual', 0),
('CS30018', 'Lakkam Sai Krishna Reddy', '0102ced62895375ba4a8c1e33789c256', 422220079, 'Lakkam@gmail.com', 'Dual', 0),
('CS30019', 'Manad Mishra', '601d843c9300392a193e3c958d62a137', 422220080, 'Manad@gmail.com', 'Dual', 0),
('CS30020', 'Manthan Parashar', '6c0365e024e5313968ed88726d19b375', 422220081, 'Manthan@gmail.com', 'Dual', 0),
('CS30021', 'Mareddy Aravind Reddy', '516cb91cbdc119f3215083e8bbe3fee9', 422220082, 'Mareddy@gmail.com', 'Dual', 0),
('CS30025', 'Paritosh Sinha', '9f87ebd435e041a79258890316d06414', 422220086, 'Paritosh@gmail.com', 'Dual', 0),
('CS30026', 'Peruri V S L Hari Chandana', 'af43c6996cdc04ce268278404f7e3d32', 422220087, 'Peruri@gmail.com', 'Dual', 0),
('CS30027', 'Potnuru Anusha', 'f7263b97588a47df860a6e1cbadfdd2c', 422220088, 'Potnuru@gmail.com', 'Dual', 0),
('CS30028', 'Pruthvi Sampath Chabathula', 'fce936b97fbf1e79554026f5a73db389', 422220089, 'Pruthvi@gmail.com', 'Dual', 0),
('CS30029', 'Sahare Prashik Siddharth', 'b89a7d4f66bc42f07fe021fad319e22e', 422220090, 'Sahare@gmail.com', 'Dual', 0),
('CS30031', 'Sankalp R', 'da4698d1afa02a4077271adbe57bfb74', 422220092, 'Sankalp@gmail.com', 'Dual', 0),
('CS30032', 'Seelaboyina Sasi Bhushan', '1dd6fa8c0bb724003c16ba8b700f7ebd', 422220093, 'Seelaboyina@gmail.com', 'Dual', 0),
('CS30034', 'Shashwata Mondal', '62aa7ebd0c7e1679b9161e5ee0998f1c', 422220095, 'Shashwata@gmail.com', 'Dual', 0),
('CS30035', 'Shubham Gautam', 'c245bd6ad39da1d5743acd1c2dd72148', 422220096, 'Shubham@gmail.com', 'Dual', 0),
('CS30037', 'Uppada Vishnu', '534ae7c6baf3092b117fcb5633ce4aeb', 422220098, 'Uppada@gmail.com', 'Dual', 0),
('CS30038', 'V Nikhil Reddy', '6bd41a6d4a3ad4b09f8ff1906be36b8e', 422220099, 'V@gmail.com', 'Dual', 0),
('CS30039', 'Veligeti Vineeth', '95406219dc4d6e2a8c08ad35e7b5936e', 422220100, 'Veligeti@gmail.com', 'Dual', 0),
('CS30041', 'Kayastha Dhruv', '0b07ebf91bd2944c624b8d72e1724916', 422220102, 'Kayastha@gmail.com', 'Dual', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Authority`
--

CREATE TABLE `Authority` (
  `emp_id` varchar(20) NOT NULL,
  `name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Authority`
--

INSERT INTO `Authority` (`emp_id`, `name`, `password`, `phone`, `email`) VALUES
('CS40003', 'Aditya Anand', 'b3414be122f6ba6c700e03cb06aa1709', 422220003, 'Aditya@gmail.com'),
('CS40030', 'Sai Saketh Aluru', '4d4b40a8fae85189362ab5d787b99575', 422220091, 'Sai@gmail.com'),
('CS40036', 'Sudutt Uday Harne', 'b892b49aac8e0ba765fe2f1ace9d3eb6', 422220097, 'Sudutt@gmail.com'),
('CS40043', 'Rakesh Bal', '82c91aea403cbe2aef1e78f4cad765e7', 422220043, 'Rakesh@gmail.com'),
('CS40045', 'Omar Eqbal', 'd389f7843bdb94e44e13a662be6bc246', 422220104, 'Omar@gmail.com'),
('CS40051', 'Vaibhav Poddar', '25ea3d20dcc13ce2f64abd42fde2f01d', 422220051, 'Vaibhav@gmail.com'),
('CS40056', 'Vignesh Viswanathan', '536791fcaf1b30fcb969e1adefdb4a7f', 422220056, 'Vignesh@gmail.com'),
('CS40057', 'Himanshu Mundhra', '0eaa83d0a0d8b5a31c5c2ec2323e53d2', 422220057, 'Himanshu@gmail.com'),
('CS40060', 'Swastika Dutta', '59dc69bbcaab19287eb1ddb3f4b9bcf9', 422220060, 'Swastika@gmail.com'),
('CS40061', 'G Vishal', '761225b224a3c8f3626643289b4afe10', 422220061, 'G@gmail.com'),
('PENDING', 'PENDING', 'c69f06e1a9b016d133907b4e5f5864d2', 0, 'PENDING'),
('REJECTED', 'REJECTED', '9cc8ad3d99798c6726d4af0bd14e49d2', 0, 'REJECTED');

-- --------------------------------------------------------

--
-- Table structure for table `AV_cell`
--

CREATE TABLE `AV_cell` (
  `emp_id` varchar(20) NOT NULL,
  `name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `building` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AV_cell`
--

INSERT INTO `AV_cell` (`emp_id`, `name`, `password`, `phone`, `email`, `building`) VALUES
('CS50006', 'Apoorva Kumar', '2b65f14046bd70359d5a2912028bb787', 422220006, 'Apoorva@gmail.com', 'Vikramshila'),
('CS50007', 'Arpit Jain', '2a6d69df56bb8bf73bea1da213b412a0', 422220007, 'Arpit@gmail.com', 'Nalanda'),
('CS50021', 'Gavali Harshad Abhiman', '237361d045e510820202d7b8db6b8d1d', 422220021, 'Gavali@gmail.com', 'Vikramshila'),
('CS50022', 'Goru Suresh', 'b8c1310ba5f4475fac76e73b50682477', 422220022, 'Goru@gmail.com', 'Vikramshila'),
('CS50033', 'Shaikh Moin Dastagir', 'cad1619e1157ee09273a3983e3ec5675', 422220094, 'Shaikh@gmail.com', 'Nalanda'),
('CS50040', 'Vivek Gupta', 'd62cfb94e47f2f578f628ce0d108ab22', 422220101, 'Vivek@gmail.com', 'Nalanda'),
('CS50042', 'Aditya Rastogi', '2041203d60f551cb1b7b8e8bf488b9b6', 422220103, 'Aditya@gmail.com', 'Nalanda'),
('CS50046', 'Rupak Kumar Thakur', '25b4956579e27b1d47110f44e6fdba53', 422220046, 'Rupak@gmail.com', 'Nalanda'),
('CS50049', 'Shubhanan Shriniket', '4f888f4bdfef9b491bb680c3a5907f49', 422220049, 'Shubhanan@gmail.com', 'Nalanda'),
('CS50053', 'Vedic Partap', 'a5766175147283943b3d2e539f16559d', 422220053, 'Vedic@gmail.com', 'Nalanda'),
('NA', 'NA', 'd4cd0dabcf4caa22ad92fab40844c786', 0, 'NA', 'NA'),
('PENDING', 'PENDING', 'c69f06e1a9b016d133907b4e5f5864d2', 0, 'PENDING', 'PENDING'),
('REJECTED', 'REJECTED', '9cc8ad3d99798c6726d4af0bd14e49d2', 0, 'REJECTED', 'REJECTED');

-- --------------------------------------------------------

--
-- Table structure for table `Booking`
--

CREATE TABLE `Booking` (
  `booking_id` int(11) NOT NULL,
  `room_id` varchar(20) NOT NULL,
  `applicant_id` varchar(20) NOT NULL,
  `dept` varchar(20) NOT NULL DEFAULT 'PENDING',
  `authority` varchar(20) NOT NULL DEFAULT 'PENDING',
  `security` varchar(20) NOT NULL DEFAULT 'PENDING',
  `av_cell` varchar(20) NOT NULL DEFAULT 'PENDING'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Booking_slot`
--

CREATE TABLE `Booking_slot` (
  `booking_id` int(11) NOT NULL,
  `room_id` varchar(45) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time_slot` varchar(45) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'ACCEPTED'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Dept_office`
--

CREATE TABLE `Dept_office` (
  `emp_id` varchar(20) NOT NULL,
  `name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `dept` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Dept_office`
--

INSERT INTO `Dept_office` (`emp_id`, `name`, `password`, `phone`, `email`, `dept`) VALUES
('CS60001', 'Javed Uppal', '02d011cc303fb02d72e1b846f47379ed', 876500001, 'javed@gmail.com', 'CS'),
('CS60002', 'Gajendra Golla', '3be9c597cf9a0fc22acbd8697905185b', 876500002, 'gg@iitkgp.ac.in', 'CS'),
('CS60003', 'Bimla De', '8ed43b5041e1828f789929ba74872e2e', 876500003, 'bimlaa@yahoo.com', 'CS'),
('CS60004', 'Chitranjan Sami', '3878769c94bbd92ec73c97a5a469bc9f', 876500004, 'cs@gmail.com', 'CS'),
('CS60006', 'Payal Subramanian', '32f11c56b8f390f8b240a8ac65f78eec', 876500006, 'ps@iitkgp.ac.in', 'CS'),
('CS60008', 'Ghanshyam Yadav', 'bdcdfd4c237dfb49c752ce17ee4781a6', 876500008, 'ghansyam@iitkgp.ac.in', 'Dual'),
('CS60009', 'Ratan Modi', '6a72635860dbd6f69cf0fb472de50fba', 876500009, 'ratan@iitkgp.ac.in', 'Dual'),
('CS60010', 'Maya Karan', 'dd29fee01d1fd1510b287b5b787fbe61', 876500010, 'mk@outlook.com', 'Dual'),
('CS60011', 'Anil Mehra', '40e05bb52d1bfc8d204e73b472a0c861', 876500011, 'anil@yahoo.com', 'Dual'),
('EC60005', 'Uday Shukla', 'c18fb4dc80cd9ebde2bd290c65a5233c', 876500005, 'us@outlook.com', 'EC'),
('EE60007', 'Kartik Bose', 'cb420c4d1152c33adb23d56f5243e155', 876500007, 'kb@gmail.com', 'EE'),
('NA', 'NA', 'd4cd0dabcf4caa22ad92fab40844c786', 0, 'NA', 'NA'),
('PENDING', 'PENDING', 'c69f06e1a9b016d133907b4e5f5864d2', 0, 'PENDING', 'PENDING'),
('REJECTED', 'REJECTED', '9cc8ad3d99798c6726d4af0bd14e49d2', 0, 'REJECTED', 'REJECTED');

-- --------------------------------------------------------

--
-- Table structure for table `Room`
--

CREATE TABLE `Room` (
  `room_id` varchar(20) NOT NULL,
  `floor` int(11) NOT NULL,
  `building` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Room`
--

INSERT INTO `Room` (`room_id`, `floor`, `building`) VALUES
('NC131', 1, 'Nalanda'),
('NC132', 1, 'Nalanda'),
('NC141', 1, 'Nalanda'),
('NC142', 1, 'Nalanda'),
('NC143', 1, 'Nalanda'),
('NC144', 1, 'Nalanda'),
('NC231', 2, 'Nalanda'),
('NC232', 2, 'Nalanda'),
('NC233', 2, 'Nalanda'),
('NC234', 2, 'Nalanda'),
('NC241', 2, 'Nalanda'),
('NC242', 2, 'Nalanda'),
('NC243', 2, 'Nalanda'),
('NC244', 2, 'Nalanda'),
('NC331', 3, 'Nalanda'),
('NC332', 3, 'Nalanda'),
('NC333', 3, 'Nalanda'),
('NC334', 3, 'Nalanda'),
('NC341', 3, 'Nalanda'),
('NC342', 3, 'Nalanda'),
('NC343', 3, 'Nalanda'),
('NC344', 3, 'Nalanda'),
('NC431', 4, 'Nalanda'),
('NC432', 4, 'Nalanda'),
('NC433', 4, 'Nalanda'),
('NC434', 4, 'Nalanda'),
('NC441', 4, 'Nalanda'),
('NC442', 4, 'Nalanda'),
('NC443', 4, 'Nalanda'),
('NC444', 4, 'Nalanda'),
('NR121', 1, 'Nalanda'),
('NR122', 1, 'Nalanda'),
('NR123', 1, 'Nalanda'),
('NR124', 1, 'Nalanda'),
('NR221', 2, 'Nalanda'),
('NR222', 2, 'Nalanda'),
('NR223', 2, 'Nalanda'),
('NR224', 2, 'Nalanda'),
('NR321', 3, 'Nalanda'),
('NR322', 3, 'Nalanda'),
('NR323', 3, 'Nalanda'),
('NR324', 3, 'Nalanda'),
('NR441', 4, 'Nalanda'),
('NR442', 4, 'Nalanda'),
('NR443', 4, 'Nalanda'),
('NR444', 4, 'Nalanda'),
('V1', 1, 'Vikramshila'),
('V2', 1, 'Vikramshila'),
('V3', 2, 'Vikramshila'),
('V4', 2, 'Vikramshila');

-- --------------------------------------------------------

--
-- Table structure for table `Security`
--

CREATE TABLE `Security` (
  `security_id` varchar(20) NOT NULL,
  `name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Security`
--

INSERT INTO `Security` (`security_id`, `name`, `password`, `phone`, `email`) VALUES
('CS70008', 'Arun Singh', '6c31ba59921dd1cac8b50b532dcd3072', 422220008, 'Arun@gmail.com'),
('CS70013', 'Chelsi Raheja', '81bb6cbae4a6fdc40dfe050eb400a227', 422220013, 'Chelsi@gmail.com'),
('CS70022', 'Nikhil Nayan Jha', '0cd593d3946ca6e8214f966f8cc1c192', 422220083, 'Nikhil@gmail.com'),
('CS70023', 'Nitesh Meena', '99c68f1e6c472479ce9f5bb17f7ace0a', 422220084, 'Nitesh@gmail.com'),
('CS70024', 'O S Raju Ganesh Nayaka', '7fad4695ddad6bcb94f18d37dc1ecd90', 422220085, 'O@gmail.com'),
('CS70044', 'Sarthak Chakraborty', 'ae9948e2ee1d5a6353a56cd19b98de80', 422220105, 'Sarthak@gmail.com'),
('CS70048', 'Sayan Sinha', '1390037829642064d103af1e2848fdf1', 422220048, 'Sayan@gmail.com'),
('CS70055', 'Vytla Dinesh Chandra', 'aba0ccd5b768e2bcbb2e444826ac3461', 422220055, 'Vytla@gmail.com'),
('CS70058', 'Lovish Chopra', 'f62579c6c94a4f0f7f0ae375315d6d65', 422220058, 'Lovish@gmail.com'),
('CS70059', 'Aurghya Maiti', '2c865daf882ec86c76afff1e80a87c37', 422220059, 'Aurghya@gmail.com'),
('PENDING', 'PENDING', 'c69f06e1a9b016d133907b4e5f5864d2', 0, 'PENDING'),
('REJECTED', 'REJECTED', '9cc8ad3d99798c6726d4af0bd14e49d2', 0, 'REJECTED');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Applicant`
--
ALTER TABLE `Applicant`
  ADD PRIMARY KEY (`applicant_id`);

--
-- Indexes for table `Authority`
--
ALTER TABLE `Authority`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `AV_cell`
--
ALTER TABLE `AV_cell`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `Booking`
--
ALTER TABLE `Booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `applicant_id` (`applicant_id`),
  ADD KEY `dept` (`dept`),
  ADD KEY `authority` (`authority`),
  ADD KEY `security` (`security`),
  ADD KEY `av_cell` (`av_cell`);

--
-- Indexes for table `Booking_slot`
--
ALTER TABLE `Booking_slot`
  ADD PRIMARY KEY (`booking_id`,`date`,`time_slot`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `Dept_office`
--
ALTER TABLE `Dept_office`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `Room`
--
ALTER TABLE `Room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `Security`
--
ALTER TABLE `Security`
  ADD PRIMARY KEY (`security_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Booking`
--
ALTER TABLE `Booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Booking`
--
ALTER TABLE `Booking`
  ADD CONSTRAINT `Booking_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `Room` (`room_id`),
  ADD CONSTRAINT `Booking_ibfk_2` FOREIGN KEY (`applicant_id`) REFERENCES `Applicant` (`applicant_id`),
  ADD CONSTRAINT `Booking_ibfk_3` FOREIGN KEY (`dept`) REFERENCES `Dept_office` (`emp_id`),
  ADD CONSTRAINT `Booking_ibfk_4` FOREIGN KEY (`authority`) REFERENCES `Authority` (`emp_id`),
  ADD CONSTRAINT `Booking_ibfk_5` FOREIGN KEY (`security`) REFERENCES `Security` (`security_id`),
  ADD CONSTRAINT `Booking_ibfk_6` FOREIGN KEY (`av_cell`) REFERENCES `AV_cell` (`emp_id`);

--
-- Constraints for table `Booking_slot`
--
ALTER TABLE `Booking_slot`
  ADD CONSTRAINT `Booking_slot_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `Booking` (`booking_id`),
  ADD CONSTRAINT `Booking_slot_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `Room` (`room_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
