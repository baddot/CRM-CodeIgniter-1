-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 192.168.1.28
-- Generation Time: Jul 31, 2017 at 09:53 AM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cancels`
--

CREATE TABLE `cancels` (
  `id` int(10) UNSIGNED NOT NULL,
  `item` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uid` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cancels`
--

INSERT INTO `cancels` (`id`, `item`, `uid`, `message`, `type`, `created_at`, `updated_at`) VALUES
(34, 'CT_5938e35ef320a', '591d0ee4ea2f1', 'There is an error in the bill you generate last week', 'Ticket', '2017-06-08 05:40:47', '2017-06-08 05:40:47'),
(35, 'CT_593904358beb4', '591d0ca222d92', 'I am not able to create new bookings', 'Ticket', '2017-06-08 08:00:53', '2017-06-08 08:00:53'),
(36, 'CT_593909cad2a70', '591d0ca222d92', 'Unable to generate invoice.', 'Ticket', '2017-06-08 08:24:42', '2017-06-08 08:24:42'),
(95, 'CT_5938e35ef320a', '591d0ca222d92', 'The screenshot is not a valid bill. LOL', 'Ticket', '2017-06-16 10:10:09', '2017-06-16 10:10:09'),
(96, 'CT_5965b3ab5f403', '591d0ca222d92', 'Jfjdj', 'Ticket', '2017-07-12 05:29:15', '2017-07-12 05:29:15'),
(97, 'CT_5965bbcb95dde', '591d0ca222d92', 'Ce', 'Ticket', '2017-07-12 06:03:55', '2017-07-12 06:03:55'),
(98, 'CT_5965bbce2c5c7', '591d0ca222d92', 'Ce', 'Ticket', '2017-07-12 06:03:58', '2017-07-12 06:03:58');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `office_hours` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bonus` double DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_bonus` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `uid`, `about`, `website`, `office_hours`, `abn`, `description`, `bonus`, `created_at`, `updated_at`, `is_bonus`) VALUES
(1, '591c33ae3b526', 'We are not your everyday, run-of-the-mill, formulaic Company. And specifically so we are not your prescribed, conventional Mobile App development company. No! We are just something else! Packaged uniquely and presented differently, we are known as BIGAPP in the circles! We offer a range of Mobile App solutions befitting any or every business out there. Any business stems from a thought, an idea, or an opportunity, and that is how we align our thoughts and ideas to yours and devise an App that is all-encompassing and tailored just for you!\n\nWe are with you even after we have developed the Mobile App for you. We will be there behind the scenes, updating, fixing, upgrading, anticipating and pre-empting any issues that can arise when it comes to technology.\n\nYou can be rest assured that you are an esteemed customer of Next Web and updates, bugs, fixes, are our cup of tea and is not a spot of bother for you.', 'http://www.wheeliewaste.com.au/', '9 - 5 PM', '1211', 'http://www.wheeliewaste.com.au/', 50, '2017-05-17 06:00:02', '2017-05-30 06:23:27', 1),
(2, '591d0ca222d92', 'Next Web Technologies is an emergent App Design and Development Company in Australia. With a vision to create pioneering App Designs and Solutions, our core essence is ideas. Ideas are our standpoint. At Next Web, we believe in ideating and ideations. Ideas that you may have and we envision are seamlessly brought together and the wholesome culmination of thoughts and views will be visible in the perfectly designed, solution-based, and solution-perfected App that is just tailored for you and your business. \r\n\r\nWhen it comes to App Designing and Development, we offer \'perfectly\' engaging models. We help fashion in-tune software App designs and solutions on iOS and Android platforms. And what we set out to achieve is that our work and efforts should be consequential, its intention should impress upon our clients\' and yes once the App is released, it should do its deed, what it\'s intended for and deliver. And for this impact to be felt both by our clients\' and the target audience, we believe in offering the ultimate user experience so that users\' are drawn to the App by its sheer ease of use, navigability quotient, simplicity, minimalistic design, and intuitiveness.', 'https://www.nextweb.com.au/', '9 am - 5 pm', '1234', 'SEO - Search Engine Optimization markets your website to get your brand out there. By promoting your website you can get more visitors!\n\nWeb Design - UI or User interface design is basically designing of user interfaces for mobile devices, computers, Smartphones, software, and/or machines so as to make the most of the usability quotient and thus enhance user experience to the maximum. In a way, the UI specialist or designer foresees what users expect, need, or what they seek or may have to do and offer those features in the most lucid, simple and accessible manner. The user interface should have easy accessibility, navigability, and it should be easy to understand and use. UI or User Interface combines information architecture, visual designing, user experience and interaction design to arrive at the most intuitive and innovative solution when it comes to Apps interface. \n\nApp Development - At Next Web Technologies, our specialist App designers and developers have a couple criteria and principles in place which they follow to the hilt, which is to keep the core essence and functionality of the App simple and effortless. In accordance, we offer high-quality, engaging, specialized Apps on the iOS and Android platforms and as we think simple, we keep everything simple, and this is achievable only via a perfect blending of user interface design and technology. We want our clients\' and their users\', the target audience and user base to understand, grasp, and comprehend what the App is created for, its aim and uses and accordingly, make it the via medium to engage with the client for anything and everything.', 50, NULL, '2017-05-30 06:26:28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(10) UNSIGNED NOT NULL,
  `complaint_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('Sales','Technical','Billing') COLLATE utf8mb4_unicode_ci NOT NULL,
  `screenshots` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Opened','Closed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `complaint_id`, `from`, `to`, `title`, `type`, `screenshots`, `status`, `created_at`, `updated_at`) VALUES
(4, 'CT_593904358beb4', '591d0ca222d92', NULL, 'Booking', 'Technical', 'storage/images/screenshots/Bz2CEK9o2GlcMEkQ52OleIdTzgO7zOWCzdN4F2Cr.png,storage/images/screenshots/vKJtKM0l8SoEJVpmMZInGHlaVyFm1xtjAPKXsGjd.png', 'Opened', '2017-06-08 08:00:53', '2017-06-08 08:00:53'),
(5, 'CT_593909cad2a70', '591d0ca222d92', NULL, 'Invoice', 'Technical', 'storage/images/screenshots/WFjL43Nv7f5u77mYnLDhghGFlkNgx3AEeM2aPaU4.png,storage/images/screenshots/WRt4YaGyzZO0kgzah4JKpZqdFidyeTmnuKj156WZ.png', 'Closed', '2017-06-08 08:24:42', '2017-06-16 10:38:23'),
(6, 'CT_5965b3ab5f403', '591d0ca222d92', NULL, 'Hdh', 'Sales', 'storage/images/screenshots/ObZ7I5UaP81fS6nol0l01OurGJbL8sYTeA93ukHH.jpeg,storage/images/screenshots/2vblHCXMpZEvOB0wmT7TkLs5I8egtaqOfiuiPLac.jpeg', 'Opened', '2017-07-12 05:29:15', '2017-07-12 05:29:15'),
(7, 'CT_5965bbcb95dde', '591d0ca222d92', NULL, 'Test Ticket', 'Sales', 'storage/images/screenshots/WIFTuXpUe5mKd66f5otIsW6rggEyyKyl42QruuSI.jpeg,storage/images/screenshots/MME0Y8C4oqZBEQo4CbiaYlfbbOeEYPcE0pJRlR3W.jpeg', 'Opened', '2017-07-12 06:03:55', '2017-07-26 04:45:37');

-- --------------------------------------------------------

--
-- Table structure for table `crm_admin`
--

CREATE TABLE `crm_admin` (
  `id` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `time` datetime NOT NULL,
  `uid` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_admin`
--

INSERT INTO `crm_admin` (`id`, `email`, `password`, `name`, `admin`, `status`, `time`, `uid`) VALUES
(1, 'admin@nextweb.com.au', '$2y$10$VWq34t/uZUXv34tI3zwA1OkbZ6eiQNFxoKPRmsfaZVErnZ6Jtyn5y', 'Admin', 1, 1, '2017-07-03 00:00:00', 'diugasdf$_0#sgflshgfslhafgdjfbhasdgf6746+4ASDFASLFKJHLSDF65465');

-- --------------------------------------------------------

--
-- Table structure for table `crm_card_details`
--

CREATE TABLE `crm_card_details` (
  `card_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `name_on_card` varchar(50) NOT NULL,
  `card_number` varchar(50) NOT NULL,
  `exp_date` varchar(50) NOT NULL,
  `cvv` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_card_details`
--

INSERT INTO `crm_card_details` (`card_id`, `sales_id`, `name_on_card`, `card_number`, `exp_date`, `cvv`, `status`) VALUES
(2, 5, 'Sourav', '456465168465', '02/17', '654', 1),
(4, 7, 'qwerty', '14232136456', '12/12', '654', 1),
(5, 8, 'Paagla Sourav', '65442563845346464', '07/07', '654', 1);

-- --------------------------------------------------------

--
-- Table structure for table `crm_category`
--

CREATE TABLE `crm_category` (
  `cat_id` int(10) NOT NULL,
  `parent` int(10) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_category`
--

INSERT INTO `crm_category` (`cat_id`, `parent`, `value`) VALUES
(1, 0, 'Department'),
(3, 1, 'HR'),
(24, 0, 'Products'),
(25, 24, 'Domain name'),
(26, 25, 'Existing'),
(16, 1, 'Sales'),
(18, 1, 'SEO'),
(27, 24, 'Email Hosting'),
(28, 24, 'Web Hosting'),
(29, 25, 'New Domain'),
(39, 28, 'Normal'),
(31, 28, 'RWD'),
(32, 24, 'SEO'),
(33, 24, 'Adwords'),
(34, 24, 'Digital Marketing Services'),
(35, 24, 'E-Com Website'),
(36, 24, 'Web Applications'),
(37, 24, 'Mobile App'),
(40, 1, 'Accounts'),
(41, 0, 'Issue Type'),
(42, 41, 'Billing'),
(43, 41, 'Invoice'),
(44, 41, 'Domain'),
(45, 41, 'Technical'),
(46, 41, 'Sales'),
(2, 1, 'Development'),
(48, 1, 'Mobile App'),
(55, 1, 'Finance');

-- --------------------------------------------------------

--
-- Table structure for table `crm_comment`
--

CREATE TABLE `crm_comment` (
  `comment_id` int(11) NOT NULL,
  `sales_id` varchar(11) NOT NULL,
  `comment_by` varchar(1000) NOT NULL,
  `comment` text NOT NULL,
  `commented_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_comment`
--

INSERT INTO `crm_comment` (`comment_id`, `sales_id`, `comment_by`, `comment`, `commented_at`) VALUES
(64, '8', 'saurabh@nextweb.com.au', 'vsdfskvlshsdfvhsdvdsvsdf', '2017-07-26 05:43:14'),
(63, '7', 'saurabh@nextweb.com.au', 'kkkk', '2017-07-26 04:23:17'),
(62, '7', 'saurabh@nextweb.com.au', 'j', '2017-07-26 04:21:48'),
(61, '7', 'saurabh@nextweb.com.au', 'cascx', '2017-07-26 04:16:12'),
(60, '7', 'saurabh@nextweb.com.au', 'ghftrdtrd', '2017-07-26 04:05:22'),
(59, '7', 'saurabh@nextweb.com.au', 'test', '2017-07-26 04:04:56'),
(58, '7', 'saurabh@nextweb.com.au', 'hey', '2017-07-26 03:27:29'),
(57, '6', 'saurabh@nextweb.com.au', 'd', '2017-07-25 11:53:40'),
(56, '7', 'saurabh@nextweb.com.au', 'd', '2017-07-25 11:53:35'),
(55, '7', 'saurabh@nextweb.com.au', 'gggg', '2017-07-25 11:44:08'),
(54, '7', 'saurabh@nextweb.com.au', 'testing', '2017-07-25 11:40:10'),
(53, '7', 'saurabh@nextweb.com.au', 'test', '2017-07-25 11:38:32'),
(52, '7', 'saurabh@nextweb.com.au', 'hello', '2017-07-25 11:26:44'),
(51, '6', 'Bruce Wayne', 'adasdasdsad', '2017-07-25 05:22:27'),
(50, '6', 'Bruce Banner', 'test', '2017-07-25 05:22:07'),
(65, '8', 'Bruce Banner', 'sfdsdhfsdjklfs', '2017-07-26 05:44:15'),
(66, '8', 'saurabh@nextweb.com.au', 'hey', '2017-07-27 10:12:40'),
(67, '8', 'Bruce Banner', 'hey\r\n', '2017-07-28 05:09:54'),
(68, '8', 'Bruce Banner', 'test', '2017-07-28 05:10:45'),
(69, '9', 'Bruce Wayne', 'Hello', '2017-07-28 05:14:56'),
(70, '9', 'Tony Stark', 'SEO Manager', '2017-07-28 09:51:19'),
(71, '9', 'Tony Stark', 'test', '2017-07-28 10:26:23');

-- --------------------------------------------------------

--
-- Table structure for table `crm_project_forward`
--

CREATE TABLE `crm_project_forward` (
  `forward_id` int(11) NOT NULL,
  `emp_id` varchar(30) NOT NULL,
  `sales_id` varchar(30) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `read_flag` int(11) NOT NULL DEFAULT '0',
  `replied_flag` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_project_forward`
--

INSERT INTO `crm_project_forward` (`forward_id`, `emp_id`, `sales_id`, `time`, `read_flag`, `replied_flag`) VALUES
(1, '4', '9', '2017-07-28 07:43:04', 0, 0),
(2, '4', '7', '2017-07-28 08:15:24', 0, 0),
(3, '4', '8', '2017-07-28 08:27:11', 0, 0),
(4, '15', '6', '2017-07-28 09:57:52', 0, 0),
(5, '4', '6', '2017-07-28 09:58:59', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `crm_sales_update_table`
--

CREATE TABLE `crm_sales_update_table` (
  `sales_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `business_name` varchar(200) NOT NULL,
  `abn` varchar(20) NOT NULL,
  `business_type` varchar(20) NOT NULL,
  `business_address` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `areas` text NOT NULL,
  `services` text NOT NULL,
  `payment_type` varchar(10) NOT NULL,
  `domain` varchar(20) DEFAULT NULL,
  `domain_name` varchar(200) DEFAULT NULL,
  `domain_suggestions` text,
  `time_to_call` varchar(50) NOT NULL,
  `tc_sent` char(10) NOT NULL,
  `invoice_sent` char(10) NOT NULL,
  `product_type` varchar(20) NOT NULL,
  `template_sent` char(10) NOT NULL,
  `template_selected` char(10) NOT NULL,
  `questionnaire_sent` char(10) NOT NULL,
  `questionnaire_received` char(10) NOT NULL,
  `keyword_select` char(10) NOT NULL,
  `keyword_not_select_reason` text NOT NULL,
  `email_sent_for_login` char(10) NOT NULL,
  `login_credential_received` char(10) NOT NULL,
  `comments` text,
  `created_on` date NOT NULL,
  `time` datetime NOT NULL,
  `ac_manager_status` tinyint(1) NOT NULL DEFAULT '0',
  `sales_manager_status` tinyint(1) NOT NULL DEFAULT '0',
  `payment_done` tinyint(1) NOT NULL DEFAULT '0',
  `invoice_sent_flag` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_sales_update_table`
--

INSERT INTO `crm_sales_update_table` (`sales_id`, `user_id`, `customer_name`, `business_name`, `abn`, `business_type`, `business_address`, `phone`, `email_id`, `areas`, `services`, `payment_type`, `domain`, `domain_name`, `domain_suggestions`, `time_to_call`, `tc_sent`, `invoice_sent`, `product_type`, `template_sent`, `template_selected`, `questionnaire_sent`, `questionnaire_received`, `keyword_select`, `keyword_not_select_reason`, `email_sent_for_login`, `login_credential_received`, `comments`, `created_on`, `time`, `ac_manager_status`, `sales_manager_status`, `payment_done`, `invoice_sent_flag`) VALUES
(5, 1, 'Sourav Sarkar', 'Next Web', '12345', 'Web & Mobile Develop', '', 'wedw', 'demo@nextweb.com.au', '', '', 'Card', 'New Domain', '', '', '6:00 AM to 7:30 AM', 'YES', 'YES', 'Website', 'YES', 'YES', 'YES', 'YES', 'YES', '', 'YES', 'YES', '', '2017-07-18', '2017-07-18 11:07:37', 1, 1, 0, 0),
(6, 1, 'Sourav Sarkar', 'Next Web', '123456', 'Web & Mobile Develop', 'Business Address', 'wedw', 'demo@nextweb.com.au', '', '', 'EFT', 'New Domain', '', 'hey', '6:00 AM to 7:30 AM', 'YES', 'YES', 'Website', 'YES', 'YES', 'YES', 'YES', 'YES', '', 'YES', 'YES', '', '2017-07-18', '2017-07-18 11:07:37', 1, 1, 0, 0),
(7, 1, 'Sourav Sarkar SRV', 'Next Web', 'ghkjghjhy', '', '', '', 'admin@nextweb.com.au', '', '', 'Card', 'New Domain', '', 'google.com.audehjgcjyjy', '', 'YES', 'YES', 'Website', 'YES', 'YES', 'YES', 'YES', 'YES', '', 'YES', 'YES', '', '2017-07-25', '2017-07-25 05:07:58', 0, 1, 1, 0),
(8, 1, 'Bineeshsfsdf', 'abnsdsdacfsf', 'abn465314sfsdf', '', '', '', 'miaow@testing.com', '', '', 'Card', 'Existing Domain', 'hello', '', '', 'YES', 'YES', 'Website', 'YES', 'YES', 'YES', 'YES', 'YES', '', 'YES', 'YES', '', '2017-07-26', '2017-07-26 05:07:52', 1, 1, 1, 0),
(9, 14, 'sdbh', 'asbdcdh', 'hdhq', 'kjadcjka', 'hcakjlshajch', 'hcjashajh', 'mi@hello.com', 'cjaschasjk', 'hjslachajs', 'EFT', 'Existing Domain', 'sdcsdc', '', '', 'YES', 'YES', 'Website', 'YES', 'YES', 'YES', 'YES', 'YES', '', 'YES', 'YES', 'Hello', '2017-07-27', '2017-07-27 07:07:57', 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `crm_ticket`
--

CREATE TABLE `crm_ticket` (
  `id` int(10) UNSIGNED NOT NULL,
  `ticket_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `type` enum('Sales','Technical','Billing') COLLATE utf8mb4_unicode_ci NOT NULL,
  `screenshots` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Opened','Closed','Answered') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crm_ticket`
--

INSERT INTO `crm_ticket` (`id`, `ticket_id`, `from`, `title`, `description`, `type`, `screenshots`, `status`, `created_at`, `updated_at`) VALUES
(3, 'CT_5938e35ef320a', '591d0ee4ea2f1', 'Invoice', '', 'Billing', 'storage/images/screenshots/MMGLq3cosUFfWDiWQWpAJBX5PvyPDWKjFJXgTGOt.png,storage/images/screenshots/E4ZkI3XpVkJ8FaznVEsChevI6AY7dFwn4jo1KGOs.png', 'Opened', '2017-06-08 00:10:46', '2017-07-19 06:25:16'),
(4, 'CT_593904358beb4', '591d0ca222d92', 'Booking', NULL, 'Technical', 'storage/images/screenshots/Bz2CEK9o2GlcMEkQ52OleIdTzgO7zOWCzdN4F2Cr.png,storage/images/screenshots/vKJtKM0l8SoEJVpmMZInGHlaVyFm1xtjAPKXsGjd.png', 'Answered', '2017-06-08 02:30:53', '2017-06-08 02:30:53'),
(5, 'CT_593909cad2a70', '591d0ca222d92', 'Invoice', NULL, 'Technical', 'storage/images/screenshots/WFjL43Nv7f5u77mYnLDhghGFlkNgx3AEeM2aPaU4.png,storage/images/screenshots/WRt4YaGyzZO0kgzah4JKpZqdFidyeTmnuKj156WZ.png', 'Closed', '2017-06-08 02:54:42', '2017-06-16 05:08:23'),
(6, 'CT_5965b3ab5f403', '591d0ca222d92', 'Hdh', NULL, 'Sales', 'storage/images/screenshots/ObZ7I5UaP81fS6nol0l01OurGJbL8sYTeA93ukHH.jpeg,storage/images/screenshots/2vblHCXMpZEvOB0wmT7TkLs5I8egtaqOfiuiPLac.jpeg', 'Opened', '2017-07-11 23:59:15', '2017-07-11 23:59:15'),
(7, 'CT_5965bbcb95dde', '591d0ca222d92', 'Sz', 'Checking', 'Sales', 'storage/images/screenshots/WIFTuXpUe5mKd66f5otIsW6rggEyyKyl42QruuSI.jpeg,storage/images/screenshots/MME0Y8C4oqZBEQo4CbiaYlfbbOeEYPcE0pJRlR3W.jpeg', 'Opened', '2017-07-12 00:33:55', '2017-07-26 04:45:37'),
(8, 'CT_5965bbce2c5c7', '591d0ca222d92', 'Sz', NULL, 'Sales', 'storage/images/screenshots/k9aqInGbkTgGk1YV2Z7f0Uxa1EskKZIoMSuUtgjr.jpeg,storage/images/screenshots/X4ECi4XysgWjnSvHPKAPNsFCoe2DXJhUCJGdSHK5.jpeg', 'Answered', '2017-07-12 00:33:58', '2017-07-12 00:33:58');

-- --------------------------------------------------------

--
-- Table structure for table `crm_ticket_forward`
--

CREATE TABLE `crm_ticket_forward` (
  `forward_id` int(11) NOT NULL,
  `emp_id` varchar(30) NOT NULL,
  `ticket_id` varchar(30) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `read_flag` int(11) NOT NULL DEFAULT '0',
  `replied_flag` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_ticket_forward`
--

INSERT INTO `crm_ticket_forward` (`forward_id`, `emp_id`, `ticket_id`, `time`, `read_flag`, `replied_flag`) VALUES
(1, '1', 'CT_5965bbce2c5c7', '2017-07-26 07:58:35', 0, 0),
(12, '4', 'CT_593909cad2a70', '2017-07-28 11:15:45', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `crm_ticket_forward_reply`
--

CREATE TABLE `crm_ticket_forward_reply` (
  `forward_reply_id` int(11) NOT NULL,
  `replied_by` tinyint(4) DEFAULT NULL COMMENT '1-> seo manager end, 2 -> ac manager end',
  `ticket_id` varchar(30) NOT NULL,
  `reply` text NOT NULL,
  `reply_from` varchar(300) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_ticket_forward_reply`
--

INSERT INTO `crm_ticket_forward_reply` (`forward_reply_id`, `replied_by`, `ticket_id`, `reply`, `reply_from`, `time`) VALUES
(1, 1, 'CT_5965bbce2c5c7', 'hlo', 'Tony Stark', '2017-07-31 00:46:46'),
(2, 1, 'CT_5965bbce2c5c7', 'hi', 'Tony Stark', '2017-07-31 00:47:05'),
(3, 1, 'CT_593909cad2a70', 'hey', 'Tony Stark', '2017-07-31 00:49:12'),
(4, 2, 'CT_593909cad2a70', 'hlo', 'Bruce Banner', '2017-07-31 03:26:28'),
(5, 2, 'CT_593909cad2a70', 'hlo', 'Bruce Banner', '2017-07-31 03:26:28'),
(6, 2, 'CT_593909cad2a70', 'hi', 'Bruce Banner', '2017-07-31 03:29:25'),
(7, 1, 'CT_593909cad2a70', 'hello from seo', 'Tony Stark', '2017-07-31 03:29:55'),
(8, 2, 'CT_593909cad2a70', 'hi from ac', 'Bruce Banner', '2017-07-31 03:30:05'),
(9, 2, 'CT_5965bbce2c5c7', 'hry', 'Bruce Banner', '2017-07-31 03:36:54');

-- --------------------------------------------------------

--
-- Table structure for table `crm_user`
--

CREATE TABLE `crm_user` (
  `id` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `company_id` varchar(255) NOT NULL,
  `lead_type` tinyint(1) NOT NULL COMMENT '1 - manager, 0-employee',
  `manager_id` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_user`
--

INSERT INTO `crm_user` (`id`, `email`, `password`, `name`, `department`, `gender`, `company_id`, `lead_type`, `manager_id`, `status`, `time`) VALUES
(1, 'saurabh@nextweb.com.au', '$2y$10$z3/AbHGXs2TmYqWqZs2GrOuHRaNTT9Tfvfc/UmSVS2xbCsTe4yMw.', 'Saurabh Ghosh', '2', 'M', 'SG31081992', 0, 2, 1, '2017-07-13 06:32:14'),
(2, 'catwoman@dccomics.com', '$2y$10$iq8Bwxje.yUVa7RCR4zeKuZ3LuB26cE0copLFcfxlXAh0iaS5oRre', 'Selina Kyle', '16', 'F', 'SK14031976', 1, 0, 1, '2017-07-13 06:01:32'),
(3, 'darkNight@dccomics.com', '$2y$10$obR1KFUaqROpLQo5MZqQ1eSmPzWnHLS2c0Yn/.OSsX7egPa4WucpG', 'Bruce Wayne', '16', 'M', 'BW19021976', 1, 0, 1, '2017-07-13 06:03:17'),
(4, 'ironman@marvel.com', '$2y$10$URjHb6YW7r5VFfzUCSYh4.zwcZI6tvmk9qutXXJJ3rLcibvRod4lq', 'Tony Stark', '18', 'M', 'TS29051970', 1, 0, 1, '2017-07-13 06:05:51'),
(5, 'blackWidow@marvel.com', '$2y$10$UdoKjo4k0UiSgNyr6KdO9eGmbe4l9ethKlaj49C8CF015BxRRmVz.', 'Natasha Romanoff', '2', 'F', 'NR00001928', 0, 7, 0, '2017-07-13 06:07:26'),
(6, 'captainAmerica@marvel.com', '$2y$10$Ih4noipVzqnk6.nAxpBQwuvf5T/8diz7WEHIczhOE2X8unOjmUt8m', 'Steve Rogers', '3', 'M', 'SR04071918', 1, 0, 0, '2017-07-13 06:09:31'),
(7, 'hulk@marvel.com', '$2y$10$FVj2yjk70YwEv4V/kXCVCO8d9eGjfUh5BEjaZFlAESlkiEAxIsPVa', 'Bruce Banner', '40', 'M', 'BB18121969', 1, 0, 1, '2017-07-18 03:58:17'),
(14, 'test@testing.com', '$2y$10$C5zsLMt50NIfb3NSwMVjTupY83YH0S4AgyyHtZEctoRKcqldwHj.W', 'Testing', '16', 'M', '', 0, 3, 1, '2017-07-27 07:01:31'),
(15, 'abc@gmail.com', '$2y$10$fj0.xHRX3FHEkkT0a7st9.0xREKcPHuFbUy3wf8di98bXsL5i1GiC', 'ABC', '18', 'M', '', 0, 4, 1, '2017-07-28 05:24:52'),
(16, 'xyz@gmail.com', '$2y$10$Cu3n6pT8C9dj77ZOX.TeDOKmUA3CUPYL37/pa4Vste48PS5uK9XKq', 'XYZ', '18', 'F', '', 0, 4, 1, '2017-07-28 05:25:22'),
(17, 'fm@nextweb.com.au', '$2y$10$3yx0r1AehstT6H17QxpOCushopD18IZo9Ygt28eYzPeV9c3KqT/Hm', 'Finance Manager', '55', 'M', 'NW_9877934', 1, 0, 1, '2017-07-31 05:10:42');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_reply`
--

CREATE TABLE `ticket_reply` (
  `reply_id` int(10) NOT NULL,
  `ticket_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket_from` varchar(50) NOT NULL,
  `replied_by` tinyint(4) DEFAULT NULL COMMENT '1-> user end, 2 -> customer service',
  `reply_from` varchar(200) NOT NULL,
  `reply` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket_reply`
--

INSERT INTO `ticket_reply` (`reply_id`, `ticket_id`, `ticket_from`, `replied_by`, `reply_from`, `reply`, `created_at`) VALUES
(23, 'CT_593909cad2a70', 'Next Web', 2, 'Bruce Banner', 'hey', '2017-07-31 03:24:01'),
(22, 'CT_5965bbce2c5c7', 'Next Web', 2, 'Bruce Banner', 'hlo', '2017-07-31 03:12:18'),
(21, 'CT_5965bbce2c5c7', 'Next Web', 2, 'Bruce Banner', 'hey', '2017-07-31 03:11:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suburban` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT '0',
  `longitude` double DEFAULT '0',
  `type` enum('Admin','User','Client','Employee') COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` char(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` enum('Android','IOS') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `bonus` double NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uid`, `name`, `surname`, `mobile`, `email`, `image`, `city`, `suburban`, `address`, `latitude`, `longitude`, `type`, `password`, `api_token`, `os`, `status`, `bonus`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '591c331a158e1', 'Super', 'Admin', NULL, 'armego@nextweb.com.au', NULL, NULL, NULL, NULL, 0, 0, 'Admin', '$2y$10$iqGR9NflBFDsTK1E/ovMMu5LZYUQDmMQuV20mKwq5wwx5QmHBQV0a', 'd57131ba71bfe962587a3c84dec5fa0e', 'Android', 'active', 0, 'aELs1phu5MKxJXJCgoJAFtshepXk5afhoUOg2aPuZXrrBPfdGPqnoiKAXG36', '2017-05-17 11:25:14', '2017-05-17 11:25:14'),
(2, '591c33ae3b526', 'Wheelie', 'Waste', '1234567890', 'admin@example.com.au', 'storage/images/client/1495020462.png', 'Brisbane', 'QLD', 'Level 54, 111 Eagle Street,\r\nBrisbane, Queensland - 4000. Australia', -27.4676737, 153.0304022, 'Client', '$2y$10$N7272ZsEujZhUGv9lYM58O25k/sfBBTakW8GZkWXDgE7tnsLY6Fsa', '2a880ae34d24bfb918bf2ba603b4d92f', 'Android', 'active', 50, 'PmdJrHDbQisNWAPW1lfqY8Ch5RN2ZMxWNEbTvss2fmnoKfTt8RxP8clL0RQC', '2017-05-17 11:27:42', '2017-05-24 09:21:54'),
(3, '591d0ca222d92', 'Next', 'Web', '411797268', 'murali@nextweb.com.au', 'storage/images/client/1497512809.jpeg', 'Brisbane', 'QLD', 'Level 54, 111 Eagle Street, Brisbane, Queensland - 4000. Australia', -27.4676737, 153.0304022, 'Client', '$2y$10$SMlnXQ/soNAP7k5gtHixdOgqzfV9fEpbiSCIq.t9/inX8UJtyCZKq', '297954d507070075f0f09fafd85f1fb6', 'Android', 'active', 0, 'XaqWFb2R0ovwqZqfJShM648hrMCL1cIcAqPMddKle0sEPT09OF2mxr1GmplB', '2017-05-18 02:53:22', '2017-06-19 08:42:44'),
(4, '591d0e2a76dd5', 'Cynthia', 'Donne', '1234567891', 'cynthia@example.com', 'storage/images/user/1496662061.jpeg', 'Brisbane', 'QLD', 'Level 44, 111 Eagle Street, Brisbane,\r\nQueensland - 4000. Australia', 0, 0, 'User', '$2y$10$YKeptLOWwqgbX2Zt7kRd4eK1QDaq1ubDXRAWVfA5BZ0cCWQAXCBSO', 'd6d32c5e281d924baba126cd451ac31f', 'Android', 'active', 0, NULL, '2017-05-18 02:59:54', '2017-05-18 02:59:54'),
(5, '591d0ee4ea2f1', 'Sandra', 'Moore', '1234567893', 'susmitha@nextweb.com.au', 'storage/images/user/1497340880.jpeg', 'Brisbane', 'QLD', 'Level 30, 111 Eagle Street, Brisbane, Queensland - 4000. Australia', -27.4676737, 153.0304022, 'User', '$2y$10$BdziwgGGl9TwhcTOiCNMC..QSKr/qMar3DqZ3lV6rzSl7VehXyGUy', 'c1169d3a8faf03a7f332b6c6556e8e19', 'IOS', 'active', 50, NULL, '2017-05-18 03:03:01', '2017-06-20 05:26:11'),
(6, '591d12ceaaab0', 'Mary', 'Chung', '1234567894', 'mary@example.com', 'storage/images/employee/1489391411.png', 'Brisbane', 'QLD', 'Level 10, 111 Eagle Street, Brisbane, Queensland - 4000. Australia', -27.4676737, 153.0304022, 'Employee', '$2y$10$EKWbSE4zaGQ/YWQafH6UleuCPxvwLnLqwo5vtDJnsPjQ7EzGZGBse', 'f474b512757666c16f625627eb9ba598', 'IOS', 'active', 0, 'v1lIHzyJwYxraOpmyBTwsCFRiqhOApyOhAPL6Qq9Yrjz134qJCzGoHqgpGUj', '2017-05-18 03:19:42', '2017-06-06 07:22:07'),
(7, '594777b2e4673', 'A', 'C', '7847894567', 'armego@nextweb.com.au', NULL, 'Brisbane', 'asdasdf', 'sdfsg', 32.8303822, -96.98082180000002, 'User', '$2y$10$GXqwCLMGAL4r4FzEeE7rGu8gxS8GayKnNvnMj4gWgiynvUWKMRcLm', '1e709e12fbaf7aee9dd108c3bcddecc4', 'Android', 'active', 0, NULL, '2017-06-19 07:05:23', '2017-06-19 07:05:23'),
(8, '594a3e9a9f079', 'fefe', 'fefe', 'tht', 'feef@sd.ter', NULL, 'tht', 'ththth', 'htht', 29.0733429, 119.656141, 'Employee', '$2y$10$TDl4ttNPB3mcL4jjWmI4ceBPBMRfdW5h/lewP17AK5zRusYYXr.ca', 'e9c550224f183800d0436e0d55fa63e2', 'Android', 'active', 0, NULL, '2017-06-21 09:38:35', '2017-06-21 09:38:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cancels`
--
ALTER TABLE `cancels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clients_uid_foreign` (`uid`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_admin`
--
ALTER TABLE `crm_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_card_details`
--
ALTER TABLE `crm_card_details`
  ADD PRIMARY KEY (`card_id`),
  ADD KEY `card_details_ibfk_1` (`sales_id`);

--
-- Indexes for table `crm_category`
--
ALTER TABLE `crm_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `crm_comment`
--
ALTER TABLE `crm_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `crm_project_forward`
--
ALTER TABLE `crm_project_forward`
  ADD PRIMARY KEY (`forward_id`);

--
-- Indexes for table `crm_sales_update_table`
--
ALTER TABLE `crm_sales_update_table`
  ADD PRIMARY KEY (`sales_id`);

--
-- Indexes for table `crm_ticket`
--
ALTER TABLE `crm_ticket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_ticket_forward`
--
ALTER TABLE `crm_ticket_forward`
  ADD PRIMARY KEY (`forward_id`);

--
-- Indexes for table `crm_ticket_forward_reply`
--
ALTER TABLE `crm_ticket_forward_reply`
  ADD PRIMARY KEY (`forward_reply_id`);

--
-- Indexes for table `crm_user`
--
ALTER TABLE `crm_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_reply`
--
ALTER TABLE `ticket_reply`
  ADD PRIMARY KEY (`reply_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_uid_unique` (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cancels`
--
ALTER TABLE `cancels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `crm_admin`
--
ALTER TABLE `crm_admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `crm_card_details`
--
ALTER TABLE `crm_card_details`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `crm_category`
--
ALTER TABLE `crm_category`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `crm_comment`
--
ALTER TABLE `crm_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `crm_project_forward`
--
ALTER TABLE `crm_project_forward`
  MODIFY `forward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `crm_sales_update_table`
--
ALTER TABLE `crm_sales_update_table`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `crm_ticket_forward`
--
ALTER TABLE `crm_ticket_forward`
  MODIFY `forward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `crm_ticket_forward_reply`
--
ALTER TABLE `crm_ticket_forward_reply`
  MODIFY `forward_reply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `crm_user`
--
ALTER TABLE `crm_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `ticket_reply`
--
ALTER TABLE `ticket_reply`
  MODIFY `reply_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_uid_foreign` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);

--
-- Constraints for table `crm_card_details`
--
ALTER TABLE `crm_card_details`
  ADD CONSTRAINT `crm_card_details_ibfk_1` FOREIGN KEY (`sales_id`) REFERENCES `crm_sales_update_table` (`sales_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
