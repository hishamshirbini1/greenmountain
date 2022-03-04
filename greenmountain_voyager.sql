-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2021 at 07:02 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `greenmountain_voyager`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2021-06-05 02:56:00', '2021-06-05 02:56:00'),
(2, NULL, 1, 'Category 2', 'category-2', '2021-06-05 02:56:00', '2021-06-05 02:56:00');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'jad shartouny', 'shartouny@outlook.com', 'Gqotp', 'asdasda', '2021-06-06 13:47:32', '2021-06-06 13:47:32'),
(2, 'jad shartouny', 'shartouny@outlook.com', 'Sales Subject', 'dfsdfsd', '2021-06-06 14:04:21', '2021-06-06 14:04:21'),
(3, 'test test', 'shartouny@outlook.com', 'adasd', 'asdasdafrg rg erg erger', '2021-06-06 14:06:38', '2021-06-06 14:06:38'),
(4, 'asdad', 'asdasdasd', 'asdasdas', 'dasdasdasdasd', '2021-06-06 14:07:15', '2021-06-06 14:07:15'),
(5, 'jad shartouny', 'shartouny@outlook.com', 'sdadsa', 'dasdasdasda sd a das da sd', '2021-06-06 14:08:33', '2021-06-06 14:08:33'),
(6, 'whatever', 'jad.shartouny@dowgroup.com', 'whatever subject', 'hello there im whatever how are you ?', '2021-06-06 14:44:40', '2021-06-06 14:44:40'),
(7, 'whatever', 'jad.shartouny@dowgroup.com', 'whatever subject', 'hello there im whatever how are you ?', '2021-06-06 14:45:42', '2021-06-06 14:45:42'),
(8, 'whatever', 'jad.shartouny@dowgroup.com', 'whatever subject', 'hello there im whatever how are you ?', '2021-06-06 14:47:06', '2021-06-06 14:47:06'),
(9, 'whatever', 'jad.shartouny@dowgroup.com', 'whatever subject', 'hello there im whatever how are you ?', '2021-06-06 14:48:15', '2021-06-06 14:48:15'),
(10, 'whatever', 'jad.shartouny@dowgroup.com', 'whatever subject', 'hello there im whatever how are you ?', '2021-06-06 14:49:10', '2021-06-06 14:49:10'),
(11, 'whatever', 'jad.shartouny@dowgroup.com', 'whatever subject', 'hello there im whatever how are you ?', '2021-06-06 14:49:29', '2021-06-06 14:49:29'),
(12, 'whatever', 'jad.shartouny@dowgroup.com', 'whatever subject', 'hello there im whatever how are you ?', '2021-06-06 14:49:50', '2021-06-06 14:49:50'),
(13, 'whatever', 'jad.shartouny@dowgroup.com', 'whatever subject', 'hello there im whatever how are you ?', '2021-06-06 14:51:37', '2021-06-06 14:51:37'),
(14, 'whatever', 'jad.shartouny@dowgroup.com', 'whatever subject', 'hello there im whatever how are you ?', '2021-06-06 14:52:21', '2021-06-06 14:52:21'),
(15, 'whatever', 'jad.shartouny@dowgroup.com', 'whatever subject', 'hello there im whatever how are you ?', '2021-06-06 14:52:32', '2021-06-06 14:52:32'),
(16, 'whatever', 'jad.shartouny@dowgroup.com', 'whatever subject', 'hello there im whatever how are you ?', '2021-06-06 14:52:43', '2021-06-06 14:52:43'),
(17, 'whatever', 'jad.shartouny@dowgroup.com', 'whatever subject', 'hello there im whatever how are you ?', '2021-06-06 14:52:55', '2021-06-06 14:52:55'),
(18, 'whatever', 'jad.shartouny@dowgroup.com', 'whatever subject', 'hello there im whatever how are you ?', '2021-06-06 14:53:11', '2021-06-06 14:53:11'),
(19, 'whatever', 'jad.shartouny@dowgroup.com', 'whatever subject', 'hello there im whatever how are you ?', '2021-06-06 14:53:45', '2021-06-06 14:53:45'),
(20, 'whatever', 'jad.shartouny@dowgroup.com', 'whatever subject', 'hello there im whatever how are you ?', '2021-06-06 14:53:56', '2021-06-06 14:53:56'),
(21, 'whatever', 'jad.shartouny@dowgroup.com', 'whatever subject', 'hello there im whatever how are you ?', '2021-06-06 14:54:16', '2021-06-06 14:54:16'),
(22, 'hello world', 'jad.shartouny@dowgroup.com', 'hello word baby', 'hey bro how you doing? im right here do you recognize me?', '2021-06-06 14:55:20', '2021-06-06 14:55:20'),
(23, 'hello world', 'jad.shartouny@dowgroup.com', 'hello word baby', 'hey bro how you doing? im right here do you recognize me?', '2021-06-06 14:55:41', '2021-06-06 14:55:41');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 10, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 10, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(59, 10, 'subtitle', 'text', 'Subtitle', 0, 1, 1, 1, 1, 1, '{}', 4),
(60, 10, 'button_text', 'text', 'Button Text', 0, 1, 1, 1, 1, 1, '{}', 5),
(61, 10, 'button_link', 'text', 'Button Link', 0, 1, 1, 1, 1, 1, '{}', 6),
(62, 10, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 7),
(63, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(64, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(65, 11, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(66, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(67, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(68, 11, 'show_in_home_page', 'checkbox', 'Show In Home Page', 1, 1, 1, 1, 1, 1, '{\"on\":\"yes\",\"off\":\"no\"}', 5),
(69, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(70, 13, 'icon', 'image', 'Icon', 0, 1, 1, 1, 1, 1, '{}', 2),
(71, 13, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(72, 13, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(73, 13, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(74, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(75, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(76, 15, 'breif', 'text', 'Breif', 1, 1, 1, 1, 1, 1, '{}', 2),
(77, 15, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(78, 15, 'short_description', 'text', 'Short Description', 1, 1, 1, 1, 1, 1, '{}', 4),
(79, 15, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{}', 5),
(80, 15, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 6),
(81, 15, 'specs', 'text', 'Specs', 1, 1, 1, 1, 1, 1, '{}', 8),
(82, 15, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 9),
(83, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(84, 15, 'icon', 'image', 'Icon', 0, 1, 1, 1, 1, 1, '{}', 7),
(85, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(86, 17, 'img_gallery', 'multiple_images', 'Img Gallery', 1, 1, 1, 1, 1, 1, '{}', 2),
(87, 17, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(88, 17, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{}', 4),
(89, 17, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(90, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(91, 17, 'product_belongstomany_my_category_relationship', 'relationship', 'my_categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\MyCategories\",\"table\":\"my_categories\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"my_categories_products\",\"pivot\":\"1\",\"taggable\":\"0\"}', 7),
(92, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(93, 18, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(94, 18, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(95, 18, 'subject', 'text', 'Subject', 1, 1, 1, 1, 1, 1, '{}', 4),
(96, 18, 'message', 'text', 'Message', 1, 1, 1, 1, 1, 1, '{}', 5),
(97, 18, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
(98, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(99, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(100, 20, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 2),
(101, 20, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(102, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-06-05 02:55:46', '2021-06-05 02:55:46'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-06-05 02:55:46', '2021-06-05 02:55:46'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-06-05 02:55:47', '2021-06-05 02:55:47'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2021-06-05 02:56:00', '2021-06-05 02:56:00'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2021-06-05 02:56:02', '2021-06-05 02:56:02'),
(10, 'header_sliders', 'header-sliders', 'Header Slider', 'Header Sliders', NULL, 'App\\Models\\HeaderSlider', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-06-05 05:27:04', '2021-06-05 05:27:04'),
(11, 'my_categories', 'my-categories', 'Category', 'Categories', NULL, 'App\\Models\\MyCategories', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-06-05 06:11:28', '2021-06-05 06:11:28'),
(13, 'why_chose_us', 'why-chose-us', 'Why Chose U', 'Why Chose Us', NULL, 'App\\Models\\WhyChoseUs', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-06-05 06:24:30', '2021-06-05 06:33:30'),
(15, 'services', 'services', 'Service', 'Services', NULL, 'App\\Models\\Services', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-06-05 06:41:13', '2021-06-05 06:47:04'),
(17, 'products', 'products', 'Product', 'Products', NULL, 'App\\Models\\Products', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-06-05 07:06:57', '2021-06-05 07:09:10'),
(18, 'contact_messages', 'contact-messages', 'Message', 'Messages', NULL, 'App\\Models\\ContactMessages', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-06-06 13:49:16', '2021-06-06 14:21:17'),
(20, 'subscribers', 'subscribers', 'Subscriber', 'Subscribers', 'voyager-heart', 'App\\Models\\Subscribers', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-06-06 14:20:43', '2021-06-06 14:20:43');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `header_sliders`
--

CREATE TABLE `header_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `header_sliders`
--

INSERT INTO `header_sliders` (`id`, `image`, `title`, `subtitle`, `button_text`, `button_link`, `created_at`, `updated_at`) VALUES
(1, 'header-sliders\\June2021\\JFjr4EI3UfOuSzwoPs0S.jpg', 'WATERING YOUR <br> LIFE BEST', 'GREEN MOUNTAINS HYGIENE', 'Read More', '#', '2021-06-05 05:29:18', '2021-06-06 05:17:08');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-06-05 02:55:48', '2021-06-05 02:55:48');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-06-05 02:55:48', '2021-06-06 05:10:44', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 11, '2021-06-05 02:55:48', '2021-06-06 14:20:57', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 10, '2021-06-05 02:55:48', '2021-06-06 14:20:57', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 9, '2021-06-05 02:55:48', '2021-06-06 14:20:57', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 14, '2021-06-05 02:55:48', '2021-06-06 14:20:58', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2021-06-05 02:55:48', '2021-06-05 05:27:22', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2021-06-05 02:55:48', '2021-06-05 05:27:22', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2021-06-05 02:55:48', '2021-06-05 05:27:22', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2021-06-05 02:55:48', '2021-06-05 05:27:22', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 15, '2021-06-05 02:55:48', '2021-06-06 14:20:58', 'voyager.settings.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 12, '2021-06-05 02:56:02', '2021-06-06 14:20:57', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 13, '2021-06-05 02:56:04', '2021-06-06 14:20:58', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2021-06-05 02:56:07', '2021-06-05 05:27:22', 'voyager.hooks', NULL),
(15, 1, 'Header Sliders', '', '_self', 'voyager-photos', '#000000', NULL, 2, '2021-06-05 05:27:05', '2021-06-06 05:10:44', 'voyager.header-sliders.index', 'null'),
(16, 1, 'Categories', '', '_self', 'voyager-categories', '#000000', NULL, 3, '2021-06-05 06:11:29', '2021-06-06 05:10:42', 'voyager.my-categories.index', 'null'),
(17, 1, 'Why Chose Us', '', '_self', 'voyager-lightbulb', '#000000', NULL, 5, '2021-06-05 06:24:30', '2021-06-06 05:13:38', 'voyager.why-chose-us.index', 'null'),
(18, 1, 'Services', '', '_self', 'voyager-certificate', '#000000', NULL, 6, '2021-06-05 06:41:14', '2021-06-06 05:15:38', 'voyager.services.index', 'null'),
(19, 1, 'Products', '', '_self', 'voyager-bag', '#000000', NULL, 4, '2021-06-05 07:06:57', '2021-06-06 05:11:57', 'voyager.products.index', 'null'),
(20, 1, 'Messages', '', '_self', 'voyager-bubble', '#000000', NULL, 7, '2021-06-06 13:49:16', '2021-06-06 14:21:36', 'voyager.contact-messages.index', 'null'),
(21, 1, 'Subscribers', '', '_self', 'voyager-heart', NULL, NULL, 8, '2021-06-06 14:20:43', '2021-06-06 14:20:57', 'voyager.subscribers.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_02_150520_create_services_table', 1),
(5, '2021_06_02_162220_create_products_table', 1),
(6, '2021_06_02_163055_create_my_categories_table', 1),
(7, '2021_06_02_183445_create_my_categories_products_table', 1),
(8, '2016_01_01_000000_add_voyager_user_fields', 2),
(9, '2016_01_01_000000_create_data_types_table', 2),
(10, '2016_05_19_173453_create_menu_table', 2),
(11, '2016_10_21_190000_create_roles_table', 2),
(12, '2016_10_21_190000_create_settings_table', 2),
(13, '2016_11_30_135954_create_permission_table', 2),
(14, '2016_11_30_141208_create_permission_role_table', 2),
(15, '2016_12_26_201236_data_types__add__server_side', 2),
(16, '2017_01_13_000000_add_route_to_menu_items_table', 2),
(17, '2017_01_14_005015_create_translations_table', 2),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 2),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 2),
(20, '2017_04_21_000000_add_order_to_data_rows_table', 2),
(21, '2017_07_05_210000_add_policyname_to_data_types_table', 2),
(22, '2017_08_05_000000_add_group_to_settings_table', 2),
(23, '2017_11_26_013050_add_user_role_relationship', 2),
(24, '2017_11_26_015000_create_user_roles_table', 2),
(25, '2018_03_11_000000_add_user_settings', 2),
(26, '2018_03_14_000000_add_details_to_data_types_table', 2),
(27, '2018_03_16_000000_make_settings_value_nullable', 2),
(28, '2016_01_01_000000_create_pages_table', 3),
(29, '2016_01_01_000000_create_posts_table', 3),
(30, '2016_02_15_204651_create_categories_table', 3),
(31, '2017_04_11_000000_alter_post_nullable_fields_table', 3),
(32, '2021_06_05_082434_create_header_sliders_table', 4),
(34, '2021_06_05_083801_add_showinhome_to_my_categories_table', 5),
(35, '2021_06_05_091457_create_why_chose_us_table', 6),
(36, '2021_06_05_094538_add_icon_to_services_table', 7),
(37, '2021_06_06_163621_create_contact_messages_table', 8),
(38, '2021_06_06_171825_create_subscribers_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `my_categories`
--

CREATE TABLE `my_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `show_in_home_page` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_categories`
--

INSERT INTO `my_categories` (`id`, `name`, `created_at`, `updated_at`, `show_in_home_page`) VALUES
(1, 'CHEMICALS', '2021-06-05 02:52:36', '2021-06-05 02:52:36', 0),
(2, 'ANTISEPTIC', '2021-06-05 02:52:36', '2021-06-05 02:52:36', 0),
(3, 'FLOOR CLEANER', '2021-06-05 02:52:36', '2021-06-05 02:52:36', 0),
(4, 'GLASS CLEANER', '2021-06-05 02:52:36', '2021-06-05 02:52:36', 0),
(5, 'DISH WASH', '2021-06-05 02:52:36', '2021-06-05 02:52:36', 0),
(6, 'TOILET CLEANER', '2021-06-05 02:52:36', '2021-06-05 02:52:36', 0),
(7, 'MULTIPURPOSE CLEANER', '2021-06-05 02:52:36', '2021-06-05 02:52:36', 0),
(8, 'HAND SANITIZER', '2021-06-05 02:52:37', '2021-06-05 06:11:50', 1),
(9, 'SHOWER GEL', '2021-06-05 02:52:37', '2021-06-05 02:52:37', 0),
(10, 'HAND SOAP', '2021-06-05 02:52:37', '2021-06-05 02:52:37', 0);

-- --------------------------------------------------------

--
-- Table structure for table `my_categories_products`
--

CREATE TABLE `my_categories_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `products_id` bigint(20) UNSIGNED DEFAULT NULL,
  `my_categories_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_categories_products`
--

INSERT INTO `my_categories_products` (`id`, `products_id`, `my_categories_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2021-06-05 02:56:04', '2021-06-05 02:56:04'),
(2, 1, 'GREEN MOUNTAINS HYGIENE', 'GREEN MOUNTAINS DESCRIPTION', '<div class=\"home_intro_p\" style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; margin: 0px; padding: 40px 0px; border: 0px; font-style: italic; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: 26px; font-family: Intelo; vertical-align: baseline; color: #999999; text-align: center;\">\r\n<p style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Green Mountains LLC, a leader in integrated waste management in the UAE market for over 30 years, has established Green Mountains Hygiene &amp; Disposable as as independent and specialized service division in 2016.</p>\r\n</div>\r\n<div class=\"about_green\" style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; margin: 0px; padding: 50px 0px 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: Intelo; vertical-align: baseline; display: flex; width: 1210px; align-items: end; color: #000000;\">&nbsp;</div>', NULL, 'homepage', 'Green Mountain Hygiene Home Page', 'Green Mountain Hygiene Home Page', 'ACTIVE', '2021-06-05 04:36:35', '2021-06-05 04:47:26'),
(3, 1, '<span>ABOUT GREEN MOUNTAINS</span> 				<h3>HYGIENE & DISPOSABLE</h3>', '<p><STRONG>Green Mountains Hygiene & Disposable offers an expert understanding of the practical and legislative issues regarding workplace hygienethat our customers face on adaily basis.</STRONG></p>\r\n				<p>We providea broad rangeof products and solutions across two key areas - hygiene and disposable - to help organizations protect occupant health andmanage theirenvironmentalimpact. Green Mountains Hygiene & Disposable is owned by Green Mountains LLC. the leading andlongest-serving provider of integrated waste managementinthe UAE.</p>', '<p>Green Mountains LLC, a leader in integrated waste management in the UAE market for over 30 years, has established Green Mountains Hygiene &amp; Disposable as as independent and specialized service division in 2016.</p>\r\n<p>Fresh and clean surroundings, and a healthy working environment are not only a legislative requirement, but also forms the basis for occupant well-being and productivity. Also, organizations are increasingly sharing one of the most significant long-term visions of the modern era, a zero-waste world.</p>\r\n<p>At Green Mountains Hygiene &amp; Disposable, we understand that washroom and healthcare waste can be a complex subject due to the requirements for compliance. Our comprehensive range of hygiene and waste disposal services are designed to help you manage your waste with environmental responsibility and in full compliance with the latest legislation. Also, our local team of waste disposal experts are dedicated to providing discreet, hygienic and reliable service that you can trust to keep your facilities accornmodated and running smoothly</p>', 'pages\\June2021\\o9sLBWNANaiaoVe64rxM.jpg', 'about-us', 'about-us', 'about-us', 'ACTIVE', '2021-06-05 04:54:27', '2021-06-05 05:01:58'),
(4, 1, 'Contact Us', 'CONNECT WITH US', '<p style=\"text-align: center;\">Our focus on sound environmental, safety and health operating practices is leading to decreased use of hazardous substances, reduced waste and emissions, improved energy and water conservation, greater reuse and recycling of materials, and prevention of accidents and injuries across our operations.</p>\r\n<p style=\"text-align: center;\">Our team of experts are ready to fulfill our promise of Green, Delivered for your organization.</p>', NULL, 'contact-us', 'contact-us', 'contact-us', 'ACTIVE', '2021-06-05 05:57:09', '2021-06-05 05:57:09'),
(5, 1, 'WHY CHOOSE US', 'WHY GREEN MOUNTAINS HYGIENE', '<div class=\"why_choose_left\" style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: Intelo; vertical-align: baseline; width: 400px; color: #000000;\">\r\n<p style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 15px; line-height: 24px; font-family: inherit; vertical-align: baseline; color: #999999;\">With an extensive range of products and network across the UAE,we\'re able to provide customers with a fast and highquality service. no matter the location.</p>\r\n</div>\r\n<div class=\"why_choose_right\" style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: Intelo; vertical-align: baseline; width: calc(100% - 430px); color: #000000;\">\r\n<ul style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; list-style: none; display: flex; flex-wrap: wrap; justify-content: space-between;\">\r\n<li style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; margin: 0px 0px 60px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: flex; width: 390px; align-items: flex-end;\">&nbsp;</li>\r\n</ul>\r\n</div>', NULL, 'why-us', 'why-us', 'why-us', 'ACTIVE', '2021-06-05 06:31:17', '2021-06-05 06:31:17');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-06-05 02:55:49', '2021-06-05 02:55:49'),
(2, 'browse_bread', NULL, '2021-06-05 02:55:49', '2021-06-05 02:55:49'),
(3, 'browse_database', NULL, '2021-06-05 02:55:49', '2021-06-05 02:55:49'),
(4, 'browse_media', NULL, '2021-06-05 02:55:49', '2021-06-05 02:55:49'),
(5, 'browse_compass', NULL, '2021-06-05 02:55:49', '2021-06-05 02:55:49'),
(6, 'browse_menus', 'menus', '2021-06-05 02:55:49', '2021-06-05 02:55:49'),
(7, 'read_menus', 'menus', '2021-06-05 02:55:49', '2021-06-05 02:55:49'),
(8, 'edit_menus', 'menus', '2021-06-05 02:55:49', '2021-06-05 02:55:49'),
(9, 'add_menus', 'menus', '2021-06-05 02:55:49', '2021-06-05 02:55:49'),
(10, 'delete_menus', 'menus', '2021-06-05 02:55:49', '2021-06-05 02:55:49'),
(11, 'browse_roles', 'roles', '2021-06-05 02:55:50', '2021-06-05 02:55:50'),
(12, 'read_roles', 'roles', '2021-06-05 02:55:50', '2021-06-05 02:55:50'),
(13, 'edit_roles', 'roles', '2021-06-05 02:55:50', '2021-06-05 02:55:50'),
(14, 'add_roles', 'roles', '2021-06-05 02:55:50', '2021-06-05 02:55:50'),
(15, 'delete_roles', 'roles', '2021-06-05 02:55:50', '2021-06-05 02:55:50'),
(16, 'browse_users', 'users', '2021-06-05 02:55:50', '2021-06-05 02:55:50'),
(17, 'read_users', 'users', '2021-06-05 02:55:50', '2021-06-05 02:55:50'),
(18, 'edit_users', 'users', '2021-06-05 02:55:50', '2021-06-05 02:55:50'),
(19, 'add_users', 'users', '2021-06-05 02:55:50', '2021-06-05 02:55:50'),
(20, 'delete_users', 'users', '2021-06-05 02:55:50', '2021-06-05 02:55:50'),
(21, 'browse_settings', 'settings', '2021-06-05 02:55:50', '2021-06-05 02:55:50'),
(22, 'read_settings', 'settings', '2021-06-05 02:55:50', '2021-06-05 02:55:50'),
(23, 'edit_settings', 'settings', '2021-06-05 02:55:50', '2021-06-05 02:55:50'),
(24, 'add_settings', 'settings', '2021-06-05 02:55:50', '2021-06-05 02:55:50'),
(25, 'delete_settings', 'settings', '2021-06-05 02:55:50', '2021-06-05 02:55:50'),
(31, 'browse_posts', 'posts', '2021-06-05 02:56:02', '2021-06-05 02:56:02'),
(32, 'read_posts', 'posts', '2021-06-05 02:56:02', '2021-06-05 02:56:02'),
(33, 'edit_posts', 'posts', '2021-06-05 02:56:02', '2021-06-05 02:56:02'),
(34, 'add_posts', 'posts', '2021-06-05 02:56:02', '2021-06-05 02:56:02'),
(35, 'delete_posts', 'posts', '2021-06-05 02:56:02', '2021-06-05 02:56:02'),
(36, 'browse_pages', 'pages', '2021-06-05 02:56:04', '2021-06-05 02:56:04'),
(37, 'read_pages', 'pages', '2021-06-05 02:56:04', '2021-06-05 02:56:04'),
(38, 'edit_pages', 'pages', '2021-06-05 02:56:04', '2021-06-05 02:56:04'),
(39, 'add_pages', 'pages', '2021-06-05 02:56:04', '2021-06-05 02:56:04'),
(40, 'delete_pages', 'pages', '2021-06-05 02:56:04', '2021-06-05 02:56:04'),
(41, 'browse_hooks', NULL, '2021-06-05 02:56:07', '2021-06-05 02:56:07'),
(42, 'browse_header_sliders', 'header_sliders', '2021-06-05 05:27:04', '2021-06-05 05:27:04'),
(43, 'read_header_sliders', 'header_sliders', '2021-06-05 05:27:04', '2021-06-05 05:27:04'),
(44, 'edit_header_sliders', 'header_sliders', '2021-06-05 05:27:04', '2021-06-05 05:27:04'),
(45, 'add_header_sliders', 'header_sliders', '2021-06-05 05:27:04', '2021-06-05 05:27:04'),
(46, 'delete_header_sliders', 'header_sliders', '2021-06-05 05:27:04', '2021-06-05 05:27:04'),
(47, 'browse_my_categories', 'my_categories', '2021-06-05 06:11:29', '2021-06-05 06:11:29'),
(48, 'read_my_categories', 'my_categories', '2021-06-05 06:11:29', '2021-06-05 06:11:29'),
(49, 'edit_my_categories', 'my_categories', '2021-06-05 06:11:29', '2021-06-05 06:11:29'),
(50, 'add_my_categories', 'my_categories', '2021-06-05 06:11:29', '2021-06-05 06:11:29'),
(51, 'delete_my_categories', 'my_categories', '2021-06-05 06:11:29', '2021-06-05 06:11:29'),
(52, 'browse_why_chose_us', 'why_chose_us', '2021-06-05 06:24:30', '2021-06-05 06:24:30'),
(53, 'read_why_chose_us', 'why_chose_us', '2021-06-05 06:24:30', '2021-06-05 06:24:30'),
(54, 'edit_why_chose_us', 'why_chose_us', '2021-06-05 06:24:30', '2021-06-05 06:24:30'),
(55, 'add_why_chose_us', 'why_chose_us', '2021-06-05 06:24:30', '2021-06-05 06:24:30'),
(56, 'delete_why_chose_us', 'why_chose_us', '2021-06-05 06:24:30', '2021-06-05 06:24:30'),
(57, 'browse_services', 'services', '2021-06-05 06:41:13', '2021-06-05 06:41:13'),
(58, 'read_services', 'services', '2021-06-05 06:41:13', '2021-06-05 06:41:13'),
(59, 'edit_services', 'services', '2021-06-05 06:41:13', '2021-06-05 06:41:13'),
(60, 'add_services', 'services', '2021-06-05 06:41:13', '2021-06-05 06:41:13'),
(61, 'delete_services', 'services', '2021-06-05 06:41:13', '2021-06-05 06:41:13'),
(62, 'browse_products', 'products', '2021-06-05 07:06:57', '2021-06-05 07:06:57'),
(63, 'read_products', 'products', '2021-06-05 07:06:57', '2021-06-05 07:06:57'),
(64, 'edit_products', 'products', '2021-06-05 07:06:57', '2021-06-05 07:06:57'),
(65, 'add_products', 'products', '2021-06-05 07:06:57', '2021-06-05 07:06:57'),
(66, 'delete_products', 'products', '2021-06-05 07:06:57', '2021-06-05 07:06:57'),
(67, 'browse_contact_messages', 'contact_messages', '2021-06-06 13:49:16', '2021-06-06 13:49:16'),
(68, 'read_contact_messages', 'contact_messages', '2021-06-06 13:49:16', '2021-06-06 13:49:16'),
(69, 'edit_contact_messages', 'contact_messages', '2021-06-06 13:49:16', '2021-06-06 13:49:16'),
(70, 'add_contact_messages', 'contact_messages', '2021-06-06 13:49:16', '2021-06-06 13:49:16'),
(71, 'delete_contact_messages', 'contact_messages', '2021-06-06 13:49:16', '2021-06-06 13:49:16'),
(72, 'browse_subscribers', 'subscribers', '2021-06-06 14:20:43', '2021-06-06 14:20:43'),
(73, 'read_subscribers', 'subscribers', '2021-06-06 14:20:43', '2021-06-06 14:20:43'),
(74, 'edit_subscribers', 'subscribers', '2021-06-06 14:20:43', '2021-06-06 14:20:43'),
(75, 'add_subscribers', 'subscribers', '2021-06-06 14:20:43', '2021-06-06 14:20:43'),
(76, 'delete_subscribers', 'subscribers', '2021-06-06 14:20:43', '2021-06-06 14:20:43');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts\\June2021\\28D7YKpIgO5Qfuku1PIA.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-06-05 02:56:02', '2021-06-06 05:03:42'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\r\n                <h2>We can use all kinds of format!</h2>\r\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-06-05 02:56:02', '2021-06-05 02:56:02'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-06-05 02:56:02', '2021-06-05 02:56:02'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\r\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\r\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-06-05 02:56:02', '2021-06-05 02:56:02');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img_gallery` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `img_gallery`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, '[\"products\\\\June2021\\\\KooijfJuKA8NvmE28UMb.jpg\",\"products\\\\June2021\\\\UjpLS67JrdCfqiUngRu8.jpg\",\"products\\\\June2021\\\\I5hZxOZL60K1fdtdgjyB.jpg\",\"products\\\\June2021\\\\XFxxEU9WWzZ1kwhmCpEj.jpg\",\"products\\\\June2021\\\\fnBaNFzbF3OxzhXfpIvy.jpg\"]', 'CHEMICALS & DETERGENTS', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book...</p>\r\n<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source</p>', '2021-06-05 02:52:36', '2021-06-05 07:15:50'),
(2, '', 'CHEMICALS & DETERGENTS', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book...</p><p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source</p>', '2021-06-05 02:52:36', '2021-06-05 02:52:36'),
(3, '', 'CHEMICALS & DETERGENTS', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book...</p><p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source</p>', '2021-06-05 02:52:36', '2021-06-05 02:52:36'),
(4, '', 'CHEMICALS & DETERGENTS', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book...</p><p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source</p>', '2021-06-05 02:52:36', '2021-06-05 02:52:36'),
(5, '', 'CHEMICALS & DETERGENTS', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book...</p><p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source</p>', '2021-06-05 02:52:36', '2021-06-05 02:52:36');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-06-05 02:55:49', '2021-06-05 02:55:49'),
(2, 'user', 'Normal User', '2021-06-05 02:55:49', '2021-06-05 02:55:49');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `breif` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `specs` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `breif`, `title`, `short_description`, `description`, `icon`, `specs`, `created_at`, `updated_at`, `image`) VALUES
(1, 'NEW AND BETTER', 'WASHROOM SERVICES', '<p>Hygienic and well equipped washroom facilities and services to keep your areas clean, dry and safe.</p><p>Our washroom services are designed to provide everything you need to keep your washrooms looking good, staying clean and minimising health risks. As specialists in washroom hygiene services we provide solutions for the hygiene, comfort and well-being to every user.</p>', '<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'services\\June2021\\B4iVIyHRjl9tAZvkXgDQ.png', '[\"Quality hygiene standards in a washroom\", \"Complete service management\" , \"Positive workplace image\", \"A fully-stocked washroom\" , \"A professional and valuable service to your staff and visitors\"]', '2021-06-05 02:52:36', '2021-06-05 06:49:06', 'services\\June2021\\jxaDjYQeIxyyJZja7AGa.jpg'),
(2, 'NEW AND BETTER', 'WASHROOM SERVICES', '<p>Hygienic and well equipped washroom facilities and services to keep your areas clean, dry and safe.</p><p>Our washroom services are designed to provide everything you need to keep your washrooms looking good, staying clean and minimising health risks. As specialists in washroom hygiene services we provide solutions for the hygiene, comfort and well-being to every user.</p>', '<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'services\\June2021\\GLwrlJZ9qapNIX2R8A1Q.png', '[\"Quality hygiene standards in a washroom\", \"Complete service management\" , \"Positive workplace image\", \"A fully-stocked washroom\" , \"A professional and valuable service to your staff and visitors\"]', '2021-06-05 02:52:36', '2021-06-05 06:43:36', NULL),
(3, 'NEW AND BETTER', 'WASHROOM SERVICES', '<p>Hygienic and well equipped washroom facilities and services to keep your areas clean, dry and safe.</p><p>Our washroom services are designed to provide everything you need to keep your washrooms looking good, staying clean and minimising health risks. As specialists in washroom hygiene services we provide solutions for the hygiene, comfort and well-being to every user.</p>', '<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'services\\June2021\\paZwc6e1liEGlXMHas8p.png', '[\"Quality hygiene standards in a washroom\", \"Complete service management\" , \"Positive workplace image\", \"A fully-stocked washroom\" , \"A professional and valuable service to your staff and visitors\"]', '2021-06-05 02:52:36', '2021-06-05 06:43:47', NULL),
(4, 'NEW AND BETTER', 'WASHROOM SERVICES', '<p>Hygienic and well equipped washroom facilities and services to keep your areas clean, dry and safe.</p><p>Our washroom services are designed to provide everything you need to keep your washrooms looking good, staying clean and minimising health risks. As specialists in washroom hygiene services we provide solutions for the hygiene, comfort and well-being to every user.</p>', '<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'services\\June2021\\LwhhFENfnYreap3Ohjqk.png', '[\"Quality hygiene standards in a washroom\", \"Complete service management\" , \"Positive workplace image\", \"A fully-stocked washroom\" , \"A professional and valuable service to your staff and visitors\"]', '2021-06-05 02:52:36', '2021-06-05 06:43:59', NULL),
(5, 'NEW AND BETTER', 'WASHROOM SERVICES', '<p>Hygienic and well equipped washroom facilities and services to keep your areas clean, dry and safe.</p><p>Our washroom services are designed to provide everything you need to keep your washrooms looking good, staying clean and minimising health risks. As specialists in washroom hygiene services we provide solutions for the hygiene, comfort and well-being to every user.</p>', '<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'services\\June2021\\9lfHE4yoDMC0QPJW0Mq9.png', '[\"Quality hygiene standards in a washroom\", \"Complete service management\" , \"Positive workplace image\", \"A fully-stocked washroom\" , \"A professional and valuable service to your staff and visitors\"]', '2021-06-05 02:52:36', '2021-06-05 06:44:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'greenmountain', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\June2021\\k58ycmQL96ggU020wFl7.png', '', 'image', 3, 'Site'),
(3, 'site.logo1', 'Site Logo1', 'settings\\June2021\\k58ycmQL96ggU020wFl7.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\June2021\\bky6K1yiBBn2Tlx39qYv.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'greenmountain', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Green Mountain Hygiene', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\June2021\\8X36gq8GYTImFOiuG85L.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\June2021\\9GnAY0mogHtLWutOqZS5.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.address', 'Address', 'Sector 13, MuABOUT USsaffah, Abu Dhabi', NULL, 'text', 6, 'Site'),
(12, 'site.phone', 'phone', '+971 2 555 9954', NULL, 'text', 7, 'Site'),
(13, 'site.fax', 'Fax', '+971 2 555 9974', NULL, 'text', 8, 'Site'),
(14, 'site.email', 'Email', 'sales.hygiene@greenmountains.ae', NULL, 'text', 9, 'Site'),
(15, 'site.facebook', 'Facebook', NULL, NULL, 'text', 10, 'Site'),
(16, 'site.twitter', 'Twitter Link', NULL, NULL, 'text', 11, 'Site'),
(17, 'site.instagram', 'Instagram Link', NULL, NULL, 'text', 12, 'Site'),
(18, 'site.youtube', 'Youtube Link', NULL, NULL, 'text', 13, 'Site'),
(19, 'site.linkedin', 'LinkedIn Link', NULL, NULL, 'text', 14, 'Site');


-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2021-06-05 02:56:04', '2021-06-05 02:56:04'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2021-06-05 02:56:04', '2021-06-05 02:56:04'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2021-06-05 02:56:05', '2021-06-05 02:56:05'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2021-06-05 02:56:05', '2021-06-05 02:56:05'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2021-06-05 02:56:05', '2021-06-05 02:56:05'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2021-06-05 02:56:05', '2021-06-05 02:56:05'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2021-06-05 02:56:05', '2021-06-05 02:56:05'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2021-06-05 02:56:05', '2021-06-05 02:56:05'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2021-06-05 02:56:05', '2021-06-05 02:56:05'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2021-06-05 02:56:05', '2021-06-05 02:56:05'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2021-06-05 02:56:05', '2021-06-05 02:56:05'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2021-06-05 02:56:05', '2021-06-05 02:56:05'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2021-06-05 02:56:05', '2021-06-05 02:56:05'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2021-06-05 02:56:05', '2021-06-05 02:56:05'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2021-06-05 02:56:05', '2021-06-05 02:56:05'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2021-06-05 02:56:05', '2021-06-05 02:56:05'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2021-06-05 02:56:05', '2021-06-05 02:56:05'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2021-06-05 02:56:05', '2021-06-05 02:56:05'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2021-06-05 02:56:06', '2021-06-05 02:56:06'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2021-06-05 02:56:06', '2021-06-05 02:56:06'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2021-06-05 02:56:06', '2021-06-05 02:56:06'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2021-06-05 02:56:06', '2021-06-05 02:56:06'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2021-06-05 02:56:06', '2021-06-05 02:56:06'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2021-06-05 02:56:06', '2021-06-05 02:56:06'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2021-06-05 02:56:06', '2021-06-05 02:56:06'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2021-06-05 02:56:06', '2021-06-05 02:56:06'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2021-06-05 02:56:06', '2021-06-05 02:56:06'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2021-06-05 02:56:06', '2021-06-05 02:56:06'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2021-06-05 02:56:06', '2021-06-05 02:56:06'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2021-06-05 02:56:06', '2021-06-05 02:56:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$hHkI4evGdUs1tt.qAUjfcuXIKBJSZ3gdgKhU2DiECKg63iTT6fhey', '9bRMPbEeW6HdUFNBgF0n8ngsLMbcFwAur3HNltq48P58ECHBQyZpN8bUEKN3', NULL, '2021-06-05 02:56:00', '2021-06-05 02:56:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `why_chose_us`
--

CREATE TABLE `why_chose_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `why_chose_us`
--

INSERT INTO `why_chose_us` (`id`, `icon`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'why-chose-us\\June2021\\oS3n1oAtDc5OJzHCsBWf.png', 'Available 24 hours a day,', '7 days a week, we\'ve designed a customer call center', '2021-06-05 06:28:21', '2021-06-06 13:34:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `header_sliders`
--
ALTER TABLE `header_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_categories`
--
ALTER TABLE `my_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_categories_products`
--
ALTER TABLE `my_categories_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `my_categories_products_products_id_foreign` (`products_id`),
  ADD KEY `my_categories_products_my_categories_id_foreign` (`my_categories_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Indexes for table `why_chose_us`
--
ALTER TABLE `why_chose_us`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `header_sliders`
--
ALTER TABLE `header_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `my_categories`
--
ALTER TABLE `my_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `my_categories_products`
--
ALTER TABLE `my_categories_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `why_chose_us`
--
ALTER TABLE `why_chose_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `my_categories_products`
--
ALTER TABLE `my_categories_products`
  ADD CONSTRAINT `my_categories_products_my_categories_id_foreign` FOREIGN KEY (`my_categories_id`) REFERENCES `my_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `my_categories_products_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
