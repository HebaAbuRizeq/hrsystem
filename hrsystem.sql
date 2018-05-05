-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2018 at 08:24 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrations`
--

CREATE TABLE `administrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` double(10,6) DEFAULT NULL,
  `long` double(10,6) DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `governate_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `administrations`
--

INSERT INTO `administrations` (`id`, `name_ar`, `address_ar`, `phone`, `fax`, `mobile`, `email`, `lat`, `long`, `name_en`, `address_en`, `governate_id`, `created_at`, `updated_at`) VALUES
(1, 'السوق المفتوح الأول', 'عمان، الأردن مجمع الملك حسين للأعمال', '064643892', '064643892', '0797113425', 'info@oneonlinemarket.com', 31.971189, 35.835617, 'One Online Market', 'Amman, Jordan. King Hussein Business Park,', 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assistants`
--

CREATE TABLE `assistants` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `administration_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assistants`
--

INSERT INTO `assistants` (`id`, `name_ar`, `name_en`, `administration_id`, `created_at`, `updated_at`) VALUES
(1, 'مساعد المدير العام لشؤون التدريب', 'Director General Assistant for Training Affairs', 1, NULL, NULL),
(2, 'مساعد المدير العام للشؤون الادارية والمالية', 'Director General Assistant for Administrative and Financial Affairs', 1, NULL, NULL),
(3, 'مساعد المدير العام للشؤون الفنية', 'Director General Assistant for Technical Affairs', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`id`, `name_ar`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'الاولى', 'First', NULL, NULL),
(2, 'الثانية', 'Second', NULL, NULL),
(3, 'الثالثة', 'Third', NULL, NULL),
(4, 'العليا', 'Higher', NULL, NULL),
(5, 'العقود', 'Contracts', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cjobs`
--

CREATE TABLE `cjobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cjobs`
--

INSERT INTO `cjobs` (`id`, `name_ar`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'اداري', 'Administrative', NULL, NULL),
(2, 'منسق تدريب', 'Training Coordinator', NULL, NULL),
(3, 'ضابط تدريب', 'Training Officer', NULL, NULL),
(4, 'مدرب', 'Trainer', NULL, NULL),
(5, 'معلم', 'Teacher', NULL, NULL),
(6, 'مستخدم', 'User', NULL, NULL),
(7, 'فني', 'Technical', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cqualifications`
--

CREATE TABLE `cqualifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cqualifications`
--

INSERT INTO `cqualifications` (`id`, `name_ar`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'اقل من ثانوية عامة', 'Less than Secondary', NULL, NULL),
(2, 'ثانوية عامة', 'Secondary', NULL, NULL),
(3, 'كلية مجتمع', 'Community College', NULL, NULL),
(4, 'بكالوريس', 'Bachelor / BA', NULL, NULL),
(5, 'دراسات عليا', 'Postgraduate', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `degrees`
--

CREATE TABLE `degrees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `degrees`
--

INSERT INTO `degrees` (`id`, `name_ar`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'الاولى', 'First', NULL, NULL),
(2, 'الثانية', 'Second', NULL, NULL),
(3, 'الثالثة', 'Third', NULL, NULL),
(4, 'الرابعة', 'Fourth', NULL, NULL),
(5, 'الخامسة', 'Fifth', NULL, NULL),
(6, 'السادسة', 'Sixth', NULL, NULL),
(7, 'السابعة', 'Seventh', NULL, NULL),
(8, 'الثامنة', 'Eighth', NULL, NULL),
(9, 'التاسعة', 'Ninth', NULL, NULL),
(10, 'الخاصة', 'Advanced', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `directorate_id` int(10) UNSIGNED DEFAULT NULL,
  `region_id` int(10) UNSIGNED DEFAULT NULL,
  `assistant_id` int(10) UNSIGNED DEFAULT NULL,
  `administration_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name_ar`, `name_en`, `directorate_id`, `region_id`, `assistant_id`, `administration_id`, `created_at`, `updated_at`) VALUES
(1, 'الاعلام', 'Media', 6, NULL, NULL, 1, NULL, NULL),
(2, 'البرمجة', 'Programming', 2, NULL, 3, 1, NULL, NULL),
(3, 'التدريب', 'Training', 9, NULL, 2, 1, NULL, NULL),
(4, 'التسجيل والنتائج والشهادات', 'Registration Results and Certificates', 7, NULL, 1, 1, NULL, NULL),
(5, 'التعاون الدولي', 'International Cooperation', 12, NULL, NULL, 1, NULL, NULL),
(6, 'التفتيش المهني', 'Occupational Inspection', 10, NULL, 3, 1, NULL, NULL),
(7, 'التوجيه ومتابعة الخريجين', 'Guidance and Follow-up Graduates', 7, NULL, 1, 1, NULL, NULL),
(8, 'الحركة', 'Transportation', 9, NULL, 2, 1, NULL, NULL),
(9, 'الديوان', 'Bureau', NULL, 3, 1, 1, NULL, NULL),
(10, 'الديوان', 'Bureau', NULL, 1, 1, 1, NULL, NULL),
(11, 'الديوان المركزي', 'Central Bureau', 9, NULL, 2, 1, NULL, NULL),
(12, 'الشبكات', 'Networks', 2, NULL, 3, 1, NULL, NULL),
(13, 'الصيانة', 'Maintenance', 2, NULL, 3, 1, NULL, NULL),
(14, 'العلاقات العامة', 'Public Relations', 6, NULL, NULL, 1, NULL, NULL),
(15, 'القطاعات المهنية', 'Occupational sectors', 11, NULL, 3, 1, NULL, NULL),
(16, 'المتابعة القانونية', 'Legal Follow-up', 10, NULL, NULL, 1, NULL, NULL),
(17, 'المسابقة المهنية', 'Skill Competition', NULL, NULL, NULL, 1, NULL, NULL),
(18, 'الموارد البشرية والتشكيلات', 'Human Resources and Vacancies', 9, NULL, 2, 1, NULL, NULL),
(19, 'النشاطات', 'Activities', 7, NULL, 1, 1, NULL, NULL),
(20, 'الوحدة الادارية / ماركا', 'Administrative Unit / Marka', NULL, 2, 1, 1, NULL, NULL),
(21, 'امانة سر الفرق الوطنية', 'Secretariat of National Teams', 3, NULL, 3, 1, NULL, NULL),
(22, 'تصنيف المحلات', 'Classification of Shops', 10, NULL, 3, 1, NULL, NULL),
(23, 'خدمات الابنية', 'Building Services', 8, NULL, 2, 1, NULL, NULL),
(24, 'شؤون المتدربين', 'Trainees Affairs', 7, NULL, 1, 1, NULL, NULL),
(25, 'شؤون الموظفين', 'Personnel', 9, NULL, 2, 1, NULL, NULL),
(26, 'شؤون الموظفين', 'Personnel', NULL, 1, 1, 1, NULL, NULL),
(27, 'قسم الامانات والسلف', 'Department of Guarantees and Advances', 1, NULL, 2, 1, NULL, NULL),
(28, 'قسم البرامج والمناهج', 'Programs and Curricula Section', NULL, NULL, NULL, 1, NULL, NULL),
(29, 'قسم التخطيط والتعاون الدولي', 'Department of Planning and International Cooperation', 4, NULL, 3, 1, NULL, NULL),
(30, 'قسم التدقيق والرقابة الادارية', 'Audit and Administrative Control Section', 5, NULL, NULL, 1, NULL, NULL),
(31, 'قسم التدقيق والرقابة المالية', 'Audit and Financial Control Section', 5, NULL, NULL, 1, NULL, NULL),
(32, 'قسم التدقيق ورقابة اللوازم', 'Audit and Supplies Control Section', 5, NULL, NULL, 1, NULL, NULL),
(33, 'قسم الدراسات', 'Studies Department', 4, NULL, 3, 1, NULL, NULL),
(34, 'قسم الرواتب والاجور', 'Salaries and Wages Department', 1, NULL, 2, 1, NULL, NULL),
(35, 'قسم الصندوق', 'Fund Section', 1, NULL, 2, 1, NULL, NULL),
(36, 'قسم المستودعات', 'Warehouse Section', 8, NULL, 2, 1, NULL, NULL),
(37, 'قسم المشتريات', 'Procurement Department', 8, NULL, 2, 1, NULL, NULL),
(38, 'قسم الموازنة', 'Budget Section', 1, NULL, 2, 1, NULL, NULL),
(39, 'قسم النفقات والايرادات', 'Expenditure and Revenue Section', 1, NULL, 2, 1, NULL, NULL),
(40, 'مشروع التدريب السياحي', 'Tourism Training Project', NULL, NULL, NULL, 1, NULL, NULL),
(41, 'مشروع تعزيز مشاركة الاناث', 'Promotion of Female Participation Project', NULL, NULL, NULL, 1, NULL, NULL),
(42, 'وحدة ادارة التغيير', 'Change Management Unit', NULL, NULL, NULL, 1, NULL, NULL),
(43, 'وحدة الاستشارة القانونية', 'Legal Consultation Unit', NULL, NULL, NULL, 1, NULL, NULL),
(44, 'وحدة التدقيق المالي', 'Financial Audit Unit', 1, NULL, 2, 1, NULL, NULL),
(45, 'وحدة الحكومة الالكترونية', 'E Government Unit', 2, NULL, 3, 1, NULL, NULL),
(46, 'وحدة تشغيل الخريجين', 'Alumni Employment Unit', NULL, NULL, NULL, 1, NULL, NULL),
(47, 'وحدة تطوير الاداء المؤسسي', 'Institutional Performance Development Unit', 4, NULL, 3, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directorates`
--

CREATE TABLE `directorates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assistant_id` int(10) UNSIGNED DEFAULT NULL,
  `administration_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `directorates`
--

INSERT INTO `directorates` (`id`, `name_ar`, `name_en`, `assistant_id`, `administration_id`, `created_at`, `updated_at`) VALUES
(1, 'المديرية المالية', 'Financial Directorate', 2, 1, NULL, NULL),
(2, 'مديرية الاتصالات وتكنولوجيا المعلومات', 'Communication and Information Technology Directorate', 3, 1, NULL, NULL),
(3, 'مديرية البرامج والاختبارات ومصادر التعلم', 'Programs Tests and Learnining Resources Directorate', 3, 1, NULL, NULL),
(4, 'مديرية التخطيط والتعاون الدولي', 'Planning and International Cooperation Directorate', 3, 1, NULL, NULL),
(5, 'مديرية الرقابة الادارية والمالية', 'Administrative and Financial Directorate', NULL, 1, NULL, NULL),
(6, 'مديرية العلاقات العامة والاعلام', 'Media and Public Relations Directorate', NULL, 1, NULL, NULL),
(7, 'مديرية القبول والتسجيل', 'Registration and Admission Directorate', 1, 1, NULL, NULL),
(8, 'مديرية اللوازم', 'Procurement Directorate', 2, 1, NULL, NULL),
(9, 'مديرية الموارد البشرية', 'Human Resources Directorate', 2, 1, NULL, NULL),
(10, 'مديرية تنظيم العمل المهني', 'Occupational Work Organization Directorate', 3, 1, NULL, NULL),
(11, 'مديرية ضبط الجودة', 'Quality Assurance Directorate', 3, 1, NULL, NULL),
(12, 'مديرية مكتب المدير العام', 'Director General Directorate', NULL, 1, NULL, NULL),
(13, 'المديرية المالية', 'Financial Directorate', 2, 1, NULL, NULL),
(14, 'مديرية الاتصالات وتكنولوجيا المعلومات', 'Communication and Information Technology Directorate', 3, 1, NULL, NULL),
(15, 'مديرية البرامج والاختبارات ومصادر التعلم', 'Programs Tests and Learnining Resources Directorate', 3, 1, NULL, NULL),
(16, 'مديرية التخطيط والتعاون الدولي', 'Planning and International Cooperation Directorate', 3, 1, NULL, NULL),
(17, 'مديرية الرقابة الادارية والمالية', 'Administrative and Financial Directorate', NULL, 1, NULL, NULL),
(18, 'مديرية العلاقات العامة والاعلام', 'Media and Public Relations Directorate', NULL, 1, NULL, NULL),
(19, 'مديرية القبول والتسجيل', 'Registration and Admission Directorate', 1, 1, NULL, NULL),
(20, 'مديرية اللوازم', 'Procurement Directorate', 2, 1, NULL, NULL),
(21, 'مديرية الموارد البشرية', 'Human Resources Directorate', 2, 1, NULL, NULL),
(22, 'مديرية تنظيم العمل المهني', 'Occupational Work Organization Directorate', 3, 1, NULL, NULL),
(23, 'مديرية ضبط الجودة', 'Quality Assurance Directorate', 3, 1, NULL, NULL),
(24, 'مديرية مكتب المدير العام', 'Director General Directorate', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `emp_no` int(10) UNSIGNED NOT NULL,
  `sn` double UNSIGNED NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname_ar` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondname_ar` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thirdname_ar` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname_ar` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname_en` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondname_en` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thirdname_en` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname_en` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ext` int(10) UNSIGNED DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL,
  `dateofhiring` date DEFAULT NULL,
  `yearofdegree` int(11) DEFAULT NULL,
  `job_id` int(10) UNSIGNED NOT NULL,
  `rjob_id` int(10) UNSIGNED NOT NULL,
  `cjob_id` int(10) UNSIGNED NOT NULL,
  `qualification_id` int(10) UNSIGNED DEFAULT NULL,
  `cqualification_id` int(10) UNSIGNED DEFAULT NULL,
  `specialization_id` int(10) UNSIGNED DEFAULT NULL,
  `status_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `degree_id` int(10) UNSIGNED DEFAULT NULL,
  `recruitmen_id` int(10) UNSIGNED DEFAULT NULL,
  `gender_id` int(10) UNSIGNED DEFAULT NULL,
  `department_id` int(10) UNSIGNED DEFAULT NULL,
  `directorate_id` int(10) UNSIGNED DEFAULT NULL,
  `institute_id` int(10) UNSIGNED DEFAULT NULL,
  `region_id` int(10) UNSIGNED DEFAULT NULL,
  `assistant_id` int(10) UNSIGNED DEFAULT NULL,
  `administration_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `emp_no`, `sn`, `username`, `picture`, `firstname_ar`, `secondname_ar`, `thirdname_ar`, `lastname_ar`, `firstname_en`, `secondname_en`, `thirdname_en`, `lastname_en`, `ext`, `mobile`, `email`, `dateofbirth`, `dateofhiring`, `yearofdegree`, `job_id`, `rjob_id`, `cjob_id`, `qualification_id`, `cqualification_id`, `specialization_id`, `status_id`, `category_id`, `degree_id`, `recruitmen_id`, `gender_id`, `department_id`, `directorate_id`, `institute_id`, `region_id`, `assistant_id`, `administration_id`, `created_at`, `updated_at`) VALUES
(1, 1001, 9822020001, 'diab', 'avatars/avatar.png', 'ابتسام', 'ابراهيم', 'عبدالجابر', 'الحاج ابراهيم', 'ABBAS', 'METLAQ', 'HELAL', 'DIAB', 100, '795900001', 'diab@oneonlinemarket', '1970-01-01', '1986-01-02', NULL, 141, 141, 4, 12, 3, 207, 9, 2, 2, 1, 1, NULL, NULL, 1, 2, 1, 1, NULL, NULL),
(2, 1002, 9822020002, 'monira', 'avatars/avatar2.png', 'ابتهاج', 'احمد', 'صبح', 'عبيدالله', 'ABD RAHMAN', 'ABEDAL-RAHMAN', 'JIHAD', 'MONIRA', 101, '795900002', 'monira@oneonlinemark', '1961-10-28', '1983-11-12', NULL, 165, 165, 4, 8, 2, 134, 9, 2, 5, 1, 1, NULL, NULL, 13, 3, 1, 1, NULL, NULL),
(3, 1003, 9822020003, 'ibrahem', 'avatars/avatar3.png', 'ابتهال', 'انيس', 'جمعه', 'الحاج خليل', 'ABDAL MALK', 'ABDELAZIZ', 'HMED', 'IBRAHEM', 102, '795900003', 'ibrahem@oneonlinemar', '1959-09-22', '1991-01-17', NULL, 141, 144, 4, 12, 3, 111, 9, 2, 2, 1, 1, NULL, NULL, 8, 2, 1, 1, NULL, NULL),
(4, 1004, 9822020004, 'saif', 'avatars/avatar04.png', 'ابراهيم', 'خلف', 'رضوان', 'عرابي', 'ABDALAZIZ', 'ABDEL-RAHMAN', 'MYASAR', 'SAIF', 103, '795900004', 'saif@oneonlinemarket', '1960-08-28', '1984-04-16', NULL, 240, 240, 1, 12, 3, 160, 9, 2, 1, 1, 1, 31, 5, NULL, NULL, NULL, 1, NULL, NULL),
(5, 1005, 9822020005, 'abdalrhem', 'avatars/avatar5.png', 'احلام', 'سليمان', 'محسن', 'تيسير', 'ABDALKAREEM', 'ABDALLA', 'MOHAMMAD ALI', 'ABDALRHEM', 104, '795900005', 'abdalrhem@oneonlinem', '1958-11-25', '1986-09-20', NULL, 224, 224, 4, 12, 3, 168, 9, 2, 5, 1, 1, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(6, 1006, 9822020006, 'rmithan', 'avatars/1006.jpg', 'احمد', 'عبد الله', 'ماهر', 'عطالله', 'ABDALLA', 'ABDELQADER', 'FAREED', 'RMITHAN', 105, '795900006', 'rmithan@oneonlinemar', '1960-05-23', '1984-09-01', NULL, 108, 108, 1, 12, 3, 132, 9, 2, 1, 1, 2, 11, 9, NULL, NULL, 2, 1, NULL, NULL),
(7, 1007, 9822020007, 'abedullah', 'avatars/1007.jpg', 'اخلاص', 'عبدالله', 'فتحي', 'سعود', 'ABDALLAH', 'ABDELJALIL', 'SALIH', 'ABEDULLAH', 106, '795900007', 'abedullah@oneonlinem', '1959-12-13', '1984-09-10', NULL, 275, 275, 7, 12, 3, 168, 9, 2, 1, 1, 1, NULL, NULL, 5, 1, 1, 1, NULL, NULL),
(8, 1008, 9822020008, 'nedam', 'avatars/1008.jpg', 'ارشيد', 'ابراهيم', 'ربحي', 'جفال', 'ABDALMAJED', 'ABED ALATEEF', 'ABU DAYAH', 'NEDAM', 107, '795900008', 'nedam@oneonlinemarke', '1961-02-13', '1984-09-02', NULL, 46, 46, 1, 12, 3, 160, 9, 2, 1, 1, 1, 38, 1, NULL, NULL, 2, 1, NULL, NULL),
(9, 1009, 9822020009, 'nasir', 'avatars/1009.jpg', 'اروى', 'ابراهيم', 'باسل', 'حنا', 'ABDALMAJEED', 'ABDELMUHSEN', 'ABEDALKAREM', 'NASIR', 108, '795900009', 'nasir@oneonlinemarke', '1960-04-18', '1984-09-10', NULL, 224, 41, 4, 12, 3, 168, 9, 2, 1, 1, 1, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(10, 1010, 9822020010, 'abdel hamid', 'avatars/1010.jpg', 'اسامة', 'اثنيان', 'العبدالرحمن', 'حسام', 'ABDALMUHDIA', 'YUSUF', 'SALWA', 'ABDEL HAMID', 109, '795900010', 'abdelhamid@oneonline', '1984-09-16', '1961-06-01', NULL, 276, 276, 7, 4, 1, 170, 9, 2, 1, 1, 1, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(11, 1011, 9822020011, 'abedalah', 'avatars/1011.jpg', 'اسامه', 'احمد', 'فيصل', 'حسام', 'ABDALQADER', 'ABDFATTAH', 'SALIM', 'ABEDALAH', 110, '795900011', 'abedalah@oneonlinema', '1961-01-02', '1984-10-01', NULL, 275, 275, 7, 12, 3, 168, 9, 2, 1, 1, 1, NULL, NULL, 4, 1, 1, 1, NULL, NULL),
(12, 1012, 9822020012, 'firas', 'avatars/1012.jpg', 'اسراء', 'احم', 'امبدي', 'الخلف', 'ABDALRAHMAN', 'AL-HAJJ', 'HBRAHIM', 'FIRAS', 111, '795900012', 'firas@oneonlinemarke', '1962-10-17', '1989-06-01', NULL, 141, 141, 4, 12, 3, 111, 9, 2, 4, 1, 1, NULL, NULL, 5, 2, 1, 1, NULL, NULL),
(13, 1013, 9822020013, 'yaseen', 'avatars/1013.jpg', 'اسعد', 'احمد سليم', 'ذياب', 'فرج', 'ABDALRHAMAN', 'ABDEL-KAREEM', 'YACOUB', 'YAQUB', 112, '795900013', 'yaseen@oneonlinemark', '1960-02-01', '1984-11-01', NULL, 300, 300, 2, 13, 4, 166, 9, 1, 1, 1, 1, NULL, 10, NULL, NULL, 3, 1, NULL, NULL),
(14, 1014, 9822020014, 'yacoub', 'avatars/1014.jpg', 'اسلام', 'ارحيل', 'عدلي', 'مرعي', 'ABDALRHEM', 'BADRAN', 'WALID', 'WLEED', 113, '795900014', 'yacoub@oneonlinemark', '1963-10-31', '1985-08-12', NULL, 297, 297, 2, 13, 4, 207, 9, 1, 3, 1, 1, 15, 11, NULL, NULL, 3, 1, NULL, NULL),
(15, 1015, 9822020015, 'forjeh', 'avatars/1015.jpg', 'اسماء', 'ارفيع', 'اعبيد', 'حموده', 'ABDALSALAM', 'AMEEN', 'HEBA', 'FORJEH', 114, '795900015', 'forjeh@oneonlinemark', '1962-12-29', '1985-09-01', NULL, 141, 141, 4, 8, 2, 134, 9, 2, 2, 1, 1, NULL, NULL, 5, 2, 1, 1, NULL, NULL),
(16, 1016, 9822020016, 'akram', 'avatars/1016.jpg', 'اسماعيل', 'اسحاق', 'زارع', 'جادالله', 'ABDEL HADI', 'ABDEL HAMID', 'DALAL', 'AKRAM', 115, '795900016', 'akram@oneonlinemarke', '1959-08-04', '1985-09-15', NULL, 86, 86, 6, 12, 3, 84, 9, 3, 3, 2, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(17, 1017, 9822020017, 'aida', 'avatars/1017.jpg', 'اسمهان', 'اسحق', 'عبدالرحيم', 'حميدة', 'ABDEL HAKEEM', 'ABDELWAHAB', 'HUSSEIN', 'AIDA', 116, '795900017', 'aida@oneonlinemarket', '1960-11-11', '1985-12-01', NULL, 141, 145, 4, 12, 3, 87, 9, 2, 1, 1, 1, NULL, NULL, 8, 2, 1, 1, NULL, NULL),
(18, 1018, 9822020018, 'feryal', 'avatars/1018.jpg', 'اسمى', 'اسعد', 'عبد الجليل', 'مسيعد', 'ABDEL HAMID', 'ABDALMAJED', 'HASHEM', 'FERYAL', 117, '795900018', 'feryal@oneonlinemark', '1958-12-10', '1986-03-01', NULL, 138, 138, 4, 12, 3, 168, 9, 3, 2, 2, 1, NULL, NULL, 5, 2, 1, 1, NULL, NULL),
(19, 1019, 9822020019, 'bassem', 'avatars/1019.jpg', 'اشرف', 'اسعيد', 'عواد', 'شريقي', 'ABDEL RAHMAN', 'ABDEL HAKEEM', 'HAZEM', 'BASSEM', 118, '795900019', 'bassem@oneonlinemark', '1959-07-04', '1994-10-04', NULL, 141, 141, 4, 4, 1, 87, 9, 2, 2, 1, 1, NULL, NULL, 14, 2, 1, 1, NULL, NULL),
(20, 1020, 9822020020, 'bataineh', 'avatars/1020.jpg', 'اعتزاز', 'اسماعيل', 'سامي', 'عبدالواحد', 'ABDELAZIZ', 'ABDEL RAHMAN', 'HISHAM', 'BATAINEH', 119, '795900020', 'bataineh@oneonlinema', '1959-09-01', '1986-05-03', NULL, 144, 144, 4, 12, 3, 207, 9, 2, 3, 1, 1, NULL, NULL, 14, 2, 1, 1, NULL, NULL),
(21, 1021, 9822020021, 'michael', 'avatars/1021.jpg', 'اعقاب', 'اشتيان', 'صادق', 'صبحي', 'ABDELFATTAH', 'ABDELRAHEEM', 'MOHMAD', 'MICHAEL', 120, '795900021', 'michael@oneonlinemar', '1960-06-21', '1986-06-01', NULL, 228, 228, 4, 12, 3, 169, 9, 2, 1, 1, 1, NULL, NULL, 11, 3, 1, 1, NULL, NULL),
(22, 1022, 9822020022, 'subhi', 'avatars/1022.jpg', 'اكرم', 'اعبيد', 'عتيق', 'بركات', 'ABDELGHAFFAR', 'ABDALMAJEED', 'SOUD', 'SUBHI', 121, '795900022', 'subhi@oneonlinemarke', '1958-12-24', '1986-09-01', NULL, 288, 288, 2, 13, 4, 200, 9, 1, 1, 1, 1, NULL, 8, NULL, NULL, 2, 1, NULL, NULL),
(23, 1023, 9822020023, 'mousa', 'avatars/1023.jpg', 'الاء', 'اعمير', 'كوكب', 'يحيى', 'ABDEL-HALIM', 'ABDEL-HALIM', 'NATHEER', 'MOUSA', 122, '795900023', 'mousa@oneonlinemarke', '1959-11-22', '1986-10-04', NULL, 254, 254, 7, 13, 4, 22, 9, 1, 1, 1, 1, NULL, NULL, 13, 3, 1, 1, NULL, NULL),
(24, 1024, 9822020024, 'salim', 'avatars/1024.jpg', 'العباس', 'افليح', 'احمد', 'عبدالرؤوف', 'ABDELJALIL', 'AL KHDOUR', 'NAIF', 'SALIM', 123, '795900024', 'salim@oneonlinemarke', '1962-07-25', '1986-11-01', NULL, 245, 245, 7, 13, 4, 191, 9, 1, 1, 1, 1, 46, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(25, 1025, 9822020025, 'alabdelrahman', 'avatars/1025.jpg', 'الفت', 'الحاج ابراهيم', 'احم', 'فرحان', 'ABDEL-KAREEM', 'AZZAM', 'HMOUD', 'ALABDELRAHMAN', 124, '795900025', 'alabdelrahman@oneonl', '1963-10-18', '1986-11-02', NULL, 144, 144, 4, 4, 1, 111, 9, 2, 3, 1, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(26, 1026, 9822020026, 'feda\'\'', 'avatars/1026.jpg', 'اماني', 'الحاج خليل', 'جدعان', 'بسيم', 'ABDELLAH', 'ABU SWAN', 'BASEM', 'FEDA\'\'', 125, '795900026', 'feda\'\'@oneonlinemark', '1962-01-01', '1986-12-01', NULL, 76, 76, 3, 13, 4, 199, 9, 1, 1, 1, 1, NULL, NULL, 5, 2, 1, 1, NULL, NULL),
(27, 1027, 9822020027, 'hsan', 'avatars/1027.jpg', 'امتثال', 'الحسين', 'جمعة', 'عبد السميع', 'ABDEL-LATIF', 'BASHEER', 'MOHAMMAD ODEH', 'HSAN', 126, '795900027', 'hsan@oneonlinemarket', '1963-12-12', '1987-01-03', NULL, 224, 224, 4, 12, 3, 168, 9, 2, 2, 1, 1, NULL, NULL, 8, 2, 1, 1, NULL, NULL),
(28, 1028, 9822020028, 'jafar', 'avatars/1028.jpg', 'امجد', 'الخلف', 'خالد', 'تيسير', 'ABDELMAHDI', 'ASA\'\'D', 'MADALLAH', 'JAFAR', 127, '795900028', 'jafar@oneonlinemarke', '1963-02-01', '1987-01-01', NULL, 213, 213, 4, 4, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(29, 1029, 9822020029, 'feras', 'avatars/1029.jpg', 'امل', 'الشراري', 'ديب', 'فؤاد', 'ABDELMAJEED', 'ADLI', 'GHAZI', 'FERAS', 128, '795900029', 'feras@oneonlinemarke', '1962-04-04', '1987-03-01', NULL, 126, 126, 1, 12, 3, 160, 9, 2, 1, 1, 1, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(30, 1030, 9822020030, 'heyam', 'avatars/1030.jpg', 'امنة', 'الشواف', 'رشاد', 'معروف', 'ABDELMON\'\'EM', 'FAWAZ', 'HAYAT', 'HEYAM', 129, '795900030', 'heyam@oneonlinemarke', '1966-02-04', '1987-03-03', NULL, 138, 138, 4, 7, 1, NULL, 9, 2, 3, 1, 1, NULL, NULL, 8, 2, 1, 1, NULL, NULL),
(31, 1031, 9822020031, 'sufyan', 'avatars/1031.jpg', 'امنه', 'العبد', 'سلام', 'منيزل', 'ABDELMO\'\'TI', 'ABDEL HADI', 'SUAD', 'SUFYAN', 130, '795900031', 'sufyan@oneonlinemark', '1959-05-19', '1987-04-19', NULL, 288, 288, 2, 13, 4, 90, 9, 1, 2, 1, 1, 46, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(32, 1032, 9822020032, 'haitham', 'avatars/1032.jpg', 'امير', 'العبدالرحمن', 'عايد', 'عقاب', 'ABDELMUHSEN', 'BATAINEH', 'MONIRA', 'HAITHAM', 131, '795900032', 'haitham@oneonlinemar', '1964-01-20', '1987-05-03', NULL, 231, 231, 4, 4, 1, 170, 9, 2, 2, 1, 1, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(33, 1033, 9822020033, 'ramadan', 'avatars/1033.jpg', 'امينة', 'امبدي', 'عبد القادر', 'مسعود', 'ABDELNASSER', 'AMEN', 'ETHNIAN', 'RAMADAN', 132, '795900033', 'ramadan@oneonlinemar', '1962-12-30', '1987-06-01', NULL, 93, 93, 7, 4, 1, 113, 9, 3, 3, 2, 1, 20, NULL, NULL, 2, 1, 1, NULL, NULL),
(34, 1034, 9822020034, 'yaqub', 'avatars/1034.jpg', 'امينه', 'امحيسن', 'عماد', 'انيس', 'ABDELQADER', 'ALIA', 'WLEED', 'YAHYA', 133, '795900034', 'yaqub@oneonlinemarke', '1962-11-20', '1987-09-01', NULL, 299, 299, 2, 13, 4, 5, 9, 1, 1, 1, 1, 46, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(35, 1035, 9822020035, 'dalal', 'avatars/1035.jpg', 'انتصار', 'امطير', 'قاسم', 'عليان', 'ABDELRAHEEM', 'ADEL', 'MOJAHED', 'DALAL', 134, '795900035', 'dalal@oneonlinemarke', '1962-02-14', '1987-09-01', NULL, 231, 231, 4, 4, 1, 170, 9, 2, 2, 1, 1, NULL, NULL, 14, 2, 1, 1, NULL, NULL),
(36, 1036, 9822020036, 'jameel', 'avatars/1036.jpg', 'انس', 'امين', 'كايد', 'تحسين', 'ABDELRAHMAN', 'BASIL', 'NITHAL', 'JAMEEL', 135, '795900036', 'jameel@oneonlinemark', '1963-12-20', '1987-10-05', NULL, 254, 254, 7, 13, 4, 191, 9, 1, 1, 1, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(37, 1037, 9822020037, 'esam', 'avatars/1037.jpg', 'انشراح', 'انور', 'مزيد', 'سامي', 'ABDEL-RAHMAN', 'EMAD', 'ADEEL', 'ESAM', 136, '795900037', 'esam@oneonlinemarket', '1965-03-26', '1987-10-01', NULL, 13, 51, 1, 12, 3, 141, 9, 2, 2, 1, 2, NULL, NULL, 3, 2, 1, 1, NULL, NULL),
(38, 1038, 9822020038, 'faleh', 'avatars/1038.jpg', 'انعام', 'انيس', 'هايل', 'سلمان', 'ABDELRA\'\'UOF', 'DAWOD', 'HASSAN', 'FALEH', 137, '795900038', 'faleh@oneonlinemarke', '1964-05-14', '1987-10-04', NULL, 138, 138, 4, 7, 1, NULL, 9, 2, 2, 1, 1, NULL, NULL, 3, 2, 1, 1, NULL, NULL),
(39, 1039, 9822020039, 'alia', 'avatars/1039.jpg', 'انوار', 'ايوب', 'هزيم', 'طالب', 'ABDELWAHAB', 'ABDALRAHMAN', 'MOHMD', 'ALIA', 138, '795900039', 'alia@oneonlinemarket', '1959-01-15', '1987-10-24', NULL, 230, 230, 4, 12, 3, NULL, 9, 2, 2, 1, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(40, 1040, 9822020040, 'natheer', 'avatars/1040.jpg', 'انور', 'باجس', 'بسام', 'ايوب', 'ABDFATTAH', 'ABDALAZIZ', 'ABEDULLAH', 'NATHEER', 139, '795900040', 'natheer@oneonlinemar', '1958-10-25', '1987-10-20', NULL, 43, 43, 1, 12, 3, 160, 9, 2, 1, 1, 1, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(41, 1041, 9822020041, 'naser', 'avatars/1041.jpg', 'ايات', 'باسل', 'باجس', 'عقله', 'ABDILROHMAN', 'FAKHRE', 'ABEDALATEF', 'NASER', 140, '795900041', 'naser@oneonlinemarke', '1965-09-07', '1987-10-17', NULL, 39, 39, 7, 12, 3, 81, 9, 2, 1, 1, 1, 13, 2, NULL, NULL, 3, 1, NULL, NULL),
(42, 1042, 9822020042, 'wleed', 'avatars/1042.jpg', 'اياد', 'بخيت', 'امين', 'عبد ربه', 'ABDULLAH', 'ABU SAA', 'WALEED', 'WASFI', 141, '795900042', 'wleed@oneonlinemarke', '1961-12-04', '1987-10-17', NULL, 297, 297, 2, 13, 4, 181, 9, 1, 1, 1, 1, NULL, NULL, NULL, 2, 1, 1, NULL, NULL),
(43, 1043, 9822020043, 'shareif', 'avatars/1043.jpg', 'ايمان', 'بدر', 'مصول', 'منيب', 'ABDULRAHMAN', 'FARIS', 'ROJINA', 'SHAREIF', 142, '795900043', 'shareif@oneonlinemar', '1965-11-14', '1987-12-02', NULL, 261, 261, 1, 18, 5, 207, 9, 1, 1, 1, 1, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL),
(44, 1044, 9822020044, 'al-hajj', 'avatars/1044.jpg', 'ايمن', 'بركات', 'فضيل', 'عقيل', 'ABED', 'EIED', 'JUMAH', 'AL-HAJJ', 143, '795900044', 'al-hajj@oneonlinemar', '1965-02-09', '1987-12-01', NULL, 165, 165, 4, 4, 1, 119, 9, 2, 3, 1, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(45, 1045, 9822020045, 'shabab', 'avatars/1045.jpg', 'ايناس', 'بسام', 'جبر', 'دخل الله', 'ABED ALATEEF', 'ABED', 'NEDAM', 'SHABAB', 144, '795900045', 'shabab@oneonlinemark', '1961-02-05', '1987-12-19', NULL, 254, 254, 7, 13, 4, 200, 9, 1, 1, 1, 1, NULL, NULL, NULL, 2, 1, 1, NULL, NULL),
(46, 1046, 9822020046, 'salem', 'avatars/1046.jpg', 'ايهاب', 'بسيم', 'حمزه', 'حماد', 'ABED ALHAMEED', 'ADDALLAH', 'NAEMA', 'SALEM', 145, '795900046', 'salem@oneonlinemarke', '1962-02-01', '1988-01-09', NULL, 245, 245, 7, 17, 5, 120, 9, 1, 1, 1, 1, NULL, NULL, NULL, 3, 1, 1, NULL, NULL),
(47, 1047, 9822020047, 'sha\'\'aban', 'avatars/1047.jpg', 'ايوب', 'بشير', 'عبدالحافظ', 'منذر', 'ABED ALKAREEM', 'AKRAM', 'NASSER', 'SHA\'\'ABAN', 146, '795900047', 'sha\'\'aban@oneonlinem', '1962-07-03', '1988-01-17', NULL, 251, 251, 1, 13, 4, 200, 9, 1, 1, 1, 1, 15, 11, NULL, NULL, 3, 1, NULL, NULL),
(48, 1048, 9822020048, 'ratib', 'avatars/1048.jpg', 'أميره', 'بلال', 'عقله', 'مناور', 'ABED RABOH', 'ABED RABOH', 'FAHED', 'RATIB', 147, '795900048', 'ratib@oneonlinemarke', '1961-06-01', '1988-02-01', NULL, 102, 102, 7, 13, 4, 200, 9, 1, 10, 1, 1, NULL, NULL, NULL, 2, 1, 1, NULL, NULL),
(49, 1049, 9822020049, 'abed raboh', 'avatars/1049.jpg', 'باسل', 'تحسين', 'محمد', 'مبارك', 'ABEDALAH', 'D\'\'YAB', 'SALEM', 'ABED RABOH', 148, '795900049', 'abedraboh@oneonlinem', '1964-10-11', '1988-02-21', NULL, 273, 273, 7, 12, 3, 111, 9, 2, 2, 1, 1, NULL, NULL, 4, 1, 1, 1, NULL, NULL),
(50, 1050, 9822020050, 'hesham', 'avatars/1050.jpg', 'باسم', 'تركي', 'انور', 'هلال', 'ABEDALATEF', 'AYYOUB', 'HABIS', 'HESHAM', 149, '795900050', 'hesham@oneonlinemark', '1963-08-18', '1988-03-01', NULL, 126, 126, 1, 12, 3, 160, 9, 2, 1, 1, 1, NULL, NULL, 8, 2, 1, 1, NULL, NULL),
(51, 1051, 9822020051, 'salih', 'avatars/1051.jpg', 'باسمة', 'توفيق', 'ايوب', 'افليح', 'ABEDALKAREM', 'AIMAN', 'NAFEZ', 'SALIH', 150, '795900051', 'salih@oneonlinemarke', '1962-06-19', '1988-07-09', NULL, 245, 245, 7, 13, 4, 5, 9, 1, 10, 1, 1, NULL, 2, NULL, NULL, 3, 1, NULL, NULL),
(52, 1052, 9822020052, 'hisham', 'avatars/1052.jpg', 'بدر', 'تيسير', 'خلف', 'عبد', 'ABEDALQADER', 'ABDALSALAM', 'HEYAM', 'HISHAM', 151, '795900052', 'hisham@oneonlinemark', '1959-04-09', '1988-10-03', NULL, 143, 143, 4, 8, 2, 143, 9, 2, 3, 1, 2, NULL, NULL, 8, 2, 1, 1, NULL, NULL),
(53, 1053, 9822020053, 'neamat', 'avatars/1053.jpg', 'بدران', 'تيم', 'اعمير', 'اعمير', 'ABEDAL-RAHMAN', 'ATEF', 'ABRAHIM', 'NEAMAT', 152, '795900053', 'neamat@oneonlinemark', '1963-03-20', '1988-11-02', NULL, 45, 45, 1, 12, 3, 160, 9, 2, 2, 1, 1, 18, 9, NULL, NULL, 2, 1, NULL, NULL),
(54, 1054, 9822020054, 'najeeb', 'avatars/1054.jpg', 'براءه', 'ثلجي', 'جفال', 'جبر', 'ABEDULLAH', 'ABDULLAH', 'ABED ALKAREEM', 'NAJEEB', 153, '795900054', 'najeeb@oneonlinemark', '1961-01-10', '1989-01-01', NULL, 34, 34, 7, 13, 4, 200, 9, 1, 1, 1, 1, NULL, 5, NULL, NULL, NULL, 1, NULL, NULL),
(55, 1055, 9822020055, 'sofian', 'avatars/1055.jpg', 'برائه', 'جابر', 'حميده', 'شحادة', 'ABEER', 'GHASAP', 'SHEHADEH', 'SOFIAN', 154, '795900055', 'sofian@oneonlinemark', '1966-09-01', '1989-01-04', NULL, 284, 284, 7, 12, 3, 123, 9, 2, 5, 1, 1, 6, 10, NULL, NULL, 3, 1, NULL, NULL),
(56, 1056, 9822020056, 'abed alhameed', 'avatars/1056.jpg', 'برق', 'جادالله', 'خليفه', 'نواش', 'ABRAHIM', 'ABDULRAHMAN', 'NEAMAT', 'ABED ALHAMEED', 155, '795900056', 'abedalhameed@oneonli', '1961-01-11', '1989-06-06', NULL, 254, 254, 7, 13, 4, 200, 9, 1, 1, 1, 1, NULL, NULL, 4, 1, 1, 1, NULL, NULL),
(57, 1057, 9822020057, 'moustafa', 'avatars/1057.jpg', 'بسام', 'جاسر', 'عارف', 'امطير', 'ABU DAYAH', 'AMANI', 'SAEED', 'MOUSTAFA', 156, '795900057', 'moustafa@oneonlinema', '1962-12-22', '1989-06-01', NULL, 270, 270, 1, 12, 3, 123, 9, 2, 3, 1, 1, NULL, NULL, 13, 3, 1, 1, NULL, NULL),
(58, 1058, 9822020058, 'esood', 'avatars/1058.jpg', 'بسمه', 'جباره', 'عايش', 'مخلص', 'ABU SAA', 'ALMANSI', 'FEHMI', 'ESOOD', 157, '795900058', 'esood@oneonlinemarke', '1962-11-23', '1989-09-02', NULL, 123, 123, 6, 2, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 3, 2, 1, 1, NULL, NULL),
(59, 1059, 9822020059, 'saadi', 'avatars/1059.jpg', 'بشار', 'جبر', 'عبد', 'زكريا', 'ABU SWAN', 'ABDELMAJEED', 'GHASSAN', 'SAADI', 158, '795900059', 'saadi@oneonlinemarke', '1960-03-03', '1989-09-23', NULL, 126, 126, 1, 12, 3, 5, 9, 2, 2, 1, 2, 36, 8, NULL, NULL, 2, 1, NULL, NULL),
(60, 1060, 9822020060, 'walid', 'avatars/1060.jpg', 'بشير', 'جبرائيل', 'عبد الرحمن', 'شاكر', 'ADDALLAH', 'FALAH', 'WAFA\'\'A', 'WALEED', 159, '795900060', 'walid@oneonlinemarke', '1965-09-07', '1989-09-23', NULL, 296, 296, 2, 13, 4, 6, 21, 1, 2, 1, 1, 40, NULL, NULL, NULL, 1, 1, NULL, NULL),
(61, 1061, 9822020061, 'abdelghaffar', 'avatars/1061.jpg', 'بكر', 'جبريل', 'عبدالكريم', 'جمعه', 'ADDEL-AL-QADIR', 'HAMZEH', 'ABDALMAJED', 'ABDELGHAFFAR', 160, '795900061', 'abdelghaffar@oneonli', '1967-03-03', '1989-09-23', NULL, 6, 6, 1, 12, 3, 96, 9, 2, 2, 1, 2, NULL, NULL, 2, 1, 1, 1, NULL, NULL),
(62, 1062, 9822020062, 'adnan', 'avatars/1062.jpg', 'بلال', 'جبور', 'كرم', 'نصر الدين', 'ADEEL', 'HAMMOUDEH', 'MTAWH', 'ADNAN', 161, '795900062', 'adnan@oneonlinemarke', '1967-03-02', '1989-09-23', NULL, 233, 233, 4, 11, 3, 85, 9, 2, 3, 1, 2, NULL, NULL, 7, 2, 1, 1, NULL, NULL),
(63, 1063, 9822020063, 'aysheh', 'avatars/1063.jpg', 'بنان', 'جبورة', 'يعقوب', 'انيس', 'ADEL', 'ABDEL-LATIF', 'BADER', 'AYSHEH', 162, '795900063', 'aysheh@oneonlinemark', '1960-02-09', '1989-09-24', NULL, 72, 72, 3, 13, 4, 200, 9, 1, 2, 1, 1, NULL, NULL, 13, 2, 1, 1, NULL, NULL),
(64, 1064, 9822020064, 'sami', 'avatars/1064.jpg', 'بندر', 'جدعان', 'بسام', 'فخري', 'ADI', 'DAWD', 'NAJIH', 'SAMI', 163, '795900064', 'sami@oneonlinemarket', '1964-05-03', '1989-10-21', NULL, 246, 246, 7, 14, 5, 57, 9, 1, 10, 1, 1, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(65, 1065, 9822020065, 'jamil', 'avatars/1065.jpg', 'بهاء', 'جديع', 'ايوب', 'حسين', 'ADLI', 'ABDELMAHDI', 'REBHE', 'JAMIL', 164, '795900065', 'jamil@oneonlinemarke', '1960-02-19', '1989-11-18', NULL, 258, 258, 1, 13, 4, 142, 9, 1, 2, 1, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(66, 1066, 9822020066, 'falah', 'avatars/1066.jpg', 'بهاء الدين', 'جراد', 'احمد', 'عياده', 'ADNAN', 'KHAIRIEH', 'HANI', 'FALAH', 165, '795900066', 'falah@oneonlinemarke', '1968-11-16', '1989-12-02', NULL, 134, 134, 4, 8, 2, 134, 9, 3, 3, 2, 1, NULL, NULL, 4, 2, 1, 1, NULL, NULL),
(67, 1067, 9822020067, 'rajie', 'avatars/1067.jpg', 'بيان', 'جريد', 'عبدالجبار', 'قسيم', 'AHMAD', 'DKAILALLAH', 'ESSAM', 'RAJIE', 166, '795900067', 'rajie@oneonlinemarke', '1964-10-08', '1989-12-05', NULL, 92, 92, 7, 12, 3, 105, 9, 2, 4, 1, 1, NULL, 3, NULL, NULL, 3, 1, NULL, NULL),
(68, 1068, 9822020068, 'waleed', 'avatars/1068.jpg', 'بيتر', 'جزاع', 'فريد', 'عبد الرازق', 'AHMAD\\\\ED', 'AYSHEH', 'WAFA\'\'', 'WAJDI', 167, '795900068', 'waleed@oneonlinemark', '1963-08-13', '1990-01-01', NULL, 296, 296, 2, 13, 4, 13, 9, 1, 2, 1, 1, 40, NULL, NULL, NULL, 1, 1, NULL, NULL),
(69, 1069, 9822020069, 'soud', 'avatars/1069.jpg', 'تحرير', 'جفال', 'روحي', 'وليد', 'AHMED', 'ATTALLAH', 'SOFYAN', 'SOUD', 168, '795900069', 'soud@oneonlinemarket', '1963-05-10', '1990-01-01', NULL, 286, 286, 2, 13, 4, 207, 9, 1, 10, 1, 1, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL),
(70, 1070, 9822020070, 'ebraheem', 'avatars/1070.jpg', 'تغريد', 'جليل', 'اسحق', 'عودة', 'AIDA', 'AWNI', 'MONEER', 'EBRAHEEM', 169, '795900070', 'ebraheem@oneonlinema', '1963-06-12', '1990-04-01', NULL, 231, 231, 4, 13, 4, 11, 9, 1, 3, 1, 1, NULL, NULL, 1, 2, 1, 1, NULL, NULL),
(71, 1071, 9822020071, 'abdallah', 'avatars/1071.jpg', 'تمارا', 'جمال', 'رأفت', 'بسيم', 'AIMAN', 'HABIS', 'FIRAS', 'ABDALLAH', 170, '795900071', 'abdallah@oneonlinema', '1966-09-19', '1990-06-09', NULL, 123, 123, 6, 8, 2, 143, 9, 3, 3, 2, 1, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(72, 1072, 9822020072, 'ghazi', 'avatars/1072.jpg', 'تماضر', 'جمعة', 'مفلح', 'نايل', 'AINE LHAYA', 'ABDELRAHMAN', 'MOAMAD', 'GHAZI', 171, '795900072', 'ghazi@oneonlinemarke', '1960-08-20', '1992-12-01', NULL, 220, 220, 4, 12, 3, 149, 9, 2, 1, 1, 1, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(73, 1073, 9822020073, 'ameen', 'avatars/1073.jpg', 'توفيق', 'جمعة', 'محمد', 'امحيسن', 'AKRAM', 'FARISS', 'ABDALKAREEM', 'AMEEN', 172, '795900073', 'ameen@oneonlinemarke', '1965-12-04', '1990-10-08', NULL, 279, 6, 5, 12, 3, 127, 9, 2, 3, 1, 1, NULL, NULL, 10, 2, 1, 1, NULL, NULL),
(74, 1074, 9822020074, 'shehadeh', 'avatars/1074.jpg', 'تيسير', 'جمعه', 'لؤي', 'احمد سليم', 'AL KHDOUR', 'HALAF', 'SAMI', 'SHEHADEH', 173, '795900074', 'shehadeh@oneonlinema', '1966-10-04', '1990-10-08', NULL, 279, 279, 5, 12, 3, 127, 9, 2, 2, 1, 1, 36, 8, NULL, NULL, 2, 1, NULL, NULL),
(75, 1075, 9822020075, 'bassam', 'avatars/1075.jpg', 'جابر', 'جميل', 'زيدان', 'ثلجي', 'AL RAJA', 'HASSAN', 'HAMED', 'BASSAM', 174, '795900075', 'bassam@oneonlinemark', '1967-09-06', '1990-10-08', NULL, 279, 126, 5, 13, 4, 127, 9, 1, 3, 1, 1, NULL, NULL, 14, 2, 1, 1, NULL, NULL),
(76, 1076, 9822020076, 'derar', 'avatars/1076.jpg', 'جبور', 'حابس', 'مطلق', 'رزق', 'ALABDELRAHMAN', 'HARB', 'SAMIH', 'DERAR', 175, '795900076', 'derar@oneonlinemarke', '1967-08-25', '1990-10-08', NULL, 279, 279, 5, 12, 3, 127, 9, 2, 2, 1, 1, NULL, NULL, 14, 2, 1, 1, NULL, NULL),
(77, 1077, 9822020077, 'hamd', 'avatars/1077.jpg', 'جعفر', 'حازم', 'عبدالجليل', 'هايل', 'AL-HAJJ', 'HANAN', 'SA\'\'EED', 'HAMD', 176, '795900077', 'hamd@oneonlinemarket', '1967-08-03', '1990-10-08', NULL, 270, 270, 1, 13, 4, 164, 9, 1, 2, 1, 1, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(78, 1078, 9822020078, 'mohammad adnan', 'avatars/1078.jpg', 'جلال', 'حافظ', 'مطير', 'فليح', 'ALI', 'ALLAH', 'NISREEN', 'MOHAMMAD ADNAN', 177, '795900078', 'mohammadadnan@oneonl', '1962-11-22', '1990-10-08', NULL, 254, 254, 7, 12, 3, 17, 9, 2, 2, 1, 1, NULL, NULL, 12, 3, 1, 1, NULL, NULL),
(79, 1079, 9822020079, 'nawaf', 'avatars/1079.jpg', 'جمال', 'حامد', 'حرب', 'خلف', 'ALIA', 'FARRIS', 'ABEER', 'NAWAF', 178, '795900079', 'nawaf@oneonlinemarke', '1966-01-01', '1990-10-08', NULL, 43, 43, 1, 13, 4, 149, 9, 1, 2, 1, 1, NULL, NULL, NULL, 3, 1, 1, NULL, NULL),
(80, 1080, 9822020080, 'abbas', 'avatars/1080.jpg', 'جمانة', 'حرب', 'عبداللطيف', 'رضوان', 'ALLAH', 'ZAINAB', 'ABDALQADER', 'ABBAS', 179, '795900080', 'abbas@oneonlinemarke', '1990-10-08', '1958-06-02', NULL, 6, 6, 1, 12, 3, 21, 9, 2, 2, 1, 1, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(81, 1081, 9822020081, 'aine lhaya', 'avatars/1081.jpg', 'جميل', 'حسام', 'محيسن', 'محسن', 'ALMANSI', 'CHALEB', 'ABDALAZIZ', 'AINE LHAYA', 180, '795900081', 'ainelhaya@oneonlinem', '1964-02-09', '1990-10-08', NULL, 6, 6, 1, 12, 3, 14, 9, 2, 3, 1, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(82, 1082, 9822020082, 'shavege', 'avatars/1082.jpg', 'جهاد', 'حسن', 'اثنيان', 'نعيم', 'AMAL', 'ABEDALAH', 'SAAD', 'SHAVEGE', 181, '795900082', 'shavege@oneonlinemar', '1961-06-02', '1992-12-01', NULL, 264, 264, 7, 13, 4, 205, 9, 1, 1, 1, 1, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(83, 1083, 9822020083, 'yaser', 'avatars/1083.jpg', 'جودت', 'حسني', 'نصرالله', 'موسى', 'AMANI', 'ADI', 'YAHYA', 'YASEEN', 182, '795900083', 'yaser@oneonlinemarke', '1962-03-04', '1990-10-20', NULL, 300, 300, 2, 13, 4, 207, 9, 1, 1, 1, 1, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(84, 1084, 9822020084, 'dina', 'avatars/1084.jpg', 'جيهان', 'حسين', 'عطا الله', 'عبد السلام', 'AMEEN', 'HASHEM', 'HUSSIN', 'DINA', 183, '795900084', 'dina@oneonlinemarket', '1967-09-02', '1990-10-20', NULL, 146, 146, 4, 12, 3, 111, 21, 2, 2, 1, 1, NULL, NULL, 1, 2, 1, 1, NULL, NULL),
(85, 1085, 9822020085, 'fariss', 'avatars/1085.jpg', 'حاتم', 'حلمي', 'جديع', 'طايل', 'AMEN', 'AHMAD\\\\ED', 'REDA', 'FARISS', 184, '795900085', 'fariss@oneonlinemark', '1962-04-15', '1991-03-01', NULL, 258, 258, 1, 17, 5, 29, 9, 1, 1, 1, 1, NULL, NULL, 4, 2, 1, 1, NULL, NULL),
(86, 1086, 9822020086, 'suleman', 'avatars/1086.jpg', 'حاتم', 'حماد', 'درويش', 'عصري', 'AMER', 'BASSAM', 'SULAIMAN', 'SULEMAN', 185, '795900086', 'suleman@oneonlinemar', '1964-01-10', '1990-12-15', NULL, 288, 288, 2, 17, 5, 200, 9, 1, 1, 1, 1, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(87, 1087, 9822020087, 'daoud', 'avatars/1087.jpg', 'حازم', 'حمتو', 'عبد الحليم', 'انور', 'AMJAD', 'ABEDALQADER', 'NIDAL', 'DAOUD', 186, '795900087', 'daoud@oneonlinemarke', '1961-09-03', '1990-12-17', NULL, 254, 254, 7, 13, 4, 207, 9, 1, 1, 1, 1, NULL, NULL, 14, 2, 1, 1, NULL, NULL),
(88, 1088, 9822020088, 'sultan', 'avatars/1088.jpg', 'حبيب', 'حمد', 'عبدالودود', 'عوض الله', 'AMNEH', 'DINA', 'SULEIMAN', 'SULTAN', 187, '795900088', 'sultan@oneonlinemark', '1964-09-10', '1990-12-17', NULL, 288, 288, 2, 13, 4, 13, 9, 1, 1, 1, 1, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(89, 1089, 9822020089, 'mohmd', 'avatars/1089.jpg', 'حرب', 'حمدان', 'بسيم', 'صويلح', 'ANWAR', 'DIAB', 'SAIF', 'MOHMD', 188, '795900089', 'mohmd@oneonlinemarke', '1964-09-03', '1991-01-01', NULL, 272, 272, 7, 12, 3, 123, 9, 2, 2, 1, 1, NULL, NULL, 13, 3, 1, 1, NULL, NULL),
(90, 1090, 9822020090, 'abdel hakeem', 'avatars/1090.jpg', 'حسام', 'حمدي', 'منور', 'نظير', 'ARAFAT', 'HMOUD', 'SALMAN', 'ABDEL HAKEEM', 189, '795900090', 'abdelhakeem@oneonlin', '1967-12-10', '1991-01-05', NULL, 275, 275, 7, 12, 3, 167, 9, 2, 2, 1, 1, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(91, 1091, 9822020091, 'dhyab', 'avatars/1091.jpg', 'حسام الدين', 'حمزه', 'سعدي', 'مضفي', 'ASA\'\'D', 'IBRAHEEM', 'SEHAM', 'DHYAB', 190, '795900091', 'dhyab@oneonlinemarke', '1968-02-03', '1991-01-19', NULL, 279, 279, 5, 13, 4, 127, 9, 1, 2, 1, 1, NULL, NULL, 14, 2, 1, 1, NULL, NULL),
(92, 1092, 9822020092, 'hatim', 'avatars/1092.jpg', 'حسان', 'حمود', 'هويشل', 'حسن', 'ASMA', 'MAHER', 'MOHAMAD', 'HATIM', 191, '795900092', 'hatim@oneonlinemarke', '1969-05-15', '1992-12-01', NULL, 220, 220, 4, 8, 2, 134, 9, 2, 3, 1, 1, NULL, NULL, 7, 2, 1, 1, NULL, NULL),
(93, 1093, 9822020093, 'musleh', 'avatars/1093.jpg', 'حسن', 'حموده', 'بركات', 'حسني', 'ATA', 'JUMA\'\'H', 'ABDELLAH', 'MUSLEH', 192, '795900093', 'musleh@oneonlinemark', '1968-09-04', '1991-01-20', NULL, 279, 13, 5, 12, 3, 22, 9, 2, 1, 1, 1, 10, NULL, NULL, 1, 1, 1, NULL, NULL),
(94, 1094, 9822020094, 'mamoun', 'avatars/1094.jpg', 'حسني', 'حميدة', 'حمدان', 'عبد المهدي', 'ATALLAH', 'ABDELMO\'\'TI', 'NAWAF', 'MAMOUN', 193, '795900094', 'mamoun@oneonlinemark', '1960-04-05', '1991-01-19', NULL, 254, 254, 7, 13, 4, 199, 9, 1, 1, 1, 1, NULL, NULL, 11, 3, 1, 1, NULL, NULL),
(95, 1095, 9822020095, 'mohammad ali', 'avatars/1095.jpg', 'حسنيه', 'حميده', 'رداد', 'عبده', 'ATEF', 'EAD', 'SAADI', 'MOHAMMAD ALI', 194, '795900095', 'mohammadali@oneonlin', '1964-11-06', '1991-02-02', NULL, 267, 267, 7, 13, 4, 207, 9, 1, 1, 1, 1, NULL, NULL, 12, 3, 1, 1, NULL, NULL),
(96, 1096, 9822020096, 'rizq', 'avatars/1096.jpg', 'حسين', 'حنا', 'صبري', 'زهير', 'ATTALLAH', 'ABDELNASSER', 'FARAJ', 'RIZQ', 195, '795900096', 'rizq@oneonlinemarket', '1960-05-05', '1992-12-31', NULL, 108, 108, 1, 12, 3, 3, 9, 2, 3, 1, 2, 11, 9, NULL, NULL, 2, 1, NULL, NULL),
(97, 1097, 9822020097, 'mansour', 'avatars/1097.jpg', 'حكمت', 'خالد', 'غنام', 'عبدالجبار', 'ATTIA', 'MOED', 'AMANI', 'MANSOUR', 196, '795900097', 'mansour@oneonlinemar', '1970-03-01', '1992-09-01', NULL, 58, 58, 6, 2, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 11, 3, 1, 1, NULL, NULL),
(98, 1098, 9822020098, 'adi', 'avatars/1098.jpg', 'حليمه', 'خشمان', 'رضا', 'هاشم', 'AWAD', 'FAYIZ', 'MUHAMMAD', 'ADI', 197, '795900098', 'adi@oneonlinemarket', '1966-03-18', '1992-09-01', NULL, 234, 234, 4, 12, 3, 132, 9, 3, 3, 2, 2, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(99, 1099, 9822020099, 'muhammad', 'avatars/1099.jpg', 'حمد', 'خضر', 'سيف', 'طعمه', 'AWNI', 'GHANMMA', 'FALAH', 'MUHAMMAD', 198, '795900099', 'muhammad@oneonlinema', '1966-08-01', '1993-07-01', NULL, 104, 104, 1, 13, 4, 141, 9, 1, 6, 3, 1, NULL, NULL, 14, 3, 1, 1, NULL, NULL),
(100, 1100, 9822020100, 'abdalrhaman', 'avatars/1100.jpg', 'حمزة', 'خلف', 'جزاع', 'فايز', 'AWWAD', 'ABDALQADER', 'MASHOUR', 'ABDALRHAMAN', 199, '795900100', 'abdalrhaman@oneonlin', '1959-01-07', '1991-05-06', NULL, 218, 218, 4, 12, 3, 200, 9, 2, 3, 1, 1, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(101, 1101, 9822020101, 'hanadah', 'avatars/1101.jpg', 'حمزه', 'خليفه', 'راشد', 'سلامة', 'AYMAN', 'HAMAD', 'JAFAR', 'HANADAH', 200, '795900101', 'hanadah@oneonlinemar', '1966-10-10', '1992-09-01', NULL, 162, 162, 4, 8, 2, 134, 9, 3, 3, 2, 1, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(102, 1102, 9822020102, 'numan', 'avatars/1102.jpg', 'حمودة', 'خليل', 'انيس', 'كرم', 'AYSHEH', 'GHALIB', 'ADNAN', 'NUMAN', 201, '795900102', 'numan@oneonlinemarke', '1966-07-14', '1991-09-01', NULL, 52, 52, 1, 12, 3, 160, 9, 2, 3, 1, 1, NULL, NULL, NULL, 3, 1, 1, NULL, NULL),
(103, 1103, 9822020103, 'radad', 'avatars/1103.jpg', 'حنان', 'خميس', 'سامح', 'بسيم', 'AYYOUB', 'FAREED', 'ATEF', 'RADAD', 202, '795900103', 'radad@oneonlinemarke', '1965-11-01', '1992-12-01', NULL, 60, 60, 3, 12, 3, 10, 9, 2, 4, 1, 1, 40, NULL, NULL, NULL, 1, 1, NULL, NULL),
(104, 1104, 9822020104, 'mojahed', 'avatars/1104.jpg', 'حنين', 'خير', 'كامل', 'كريم', 'AZMI', 'ESSAM', 'HATIM', 'MOJAHED', 203, '795900104', 'mojahed@oneonlinemar', '1965-06-03', '1992-09-01', NULL, 138, 138, 4, 12, 3, 145, 9, 3, 3, 2, 1, NULL, NULL, 14, 3, 1, 1, NULL, NULL),
(105, 1105, 9822020105, 'hassan', 'avatars/1105.jpg', 'حياه', 'داود', 'علي ابراهيم', 'امين', 'AZZAM', 'HMED', 'MAJEDAH', 'HASSAN', 204, '795900105', 'hassan@oneonlinemark', '1967-12-02', '1992-01-01', NULL, 215, 215, 4, 12, 3, 8, 9, 2, 3, 1, 1, NULL, NULL, 7, 2, 1, 1, NULL, NULL),
(106, 1106, 9822020106, 'said', 'avatars/1106.jpg', 'خالد', 'دخل الله', 'نوفان', 'عطا', 'BADER', 'JAWHAR', 'MUTLAG', 'SAID', 205, '795900106', 'said@oneonlinemarket', '1968-08-02', '1992-01-06', NULL, 239, 239, 1, 13, 4, 5, 9, 1, 2, 1, 1, 36, 8, NULL, NULL, 2, 1, NULL, NULL),
(107, 1107, 9822020107, 'abdalmuhdia', 'avatars/1107.jpg', 'ختام', 'دخيل الله', 'بسيم', 'كنعان', 'BADRAN', 'KHALIL', 'HUSEIN', 'ABDALMUHDIA', 206, '795900107', 'abdalmuhdia@oneonlin', '1968-12-29', '1992-02-02', NULL, 144, 144, 4, 12, 3, 111, 9, 2, 5, 1, 1, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(108, 1108, 9822020108, 'heba', 'avatars/1108.jpg', 'خضر', 'درويش', 'ناجي', 'ناجي', 'BAJES', 'KALIL', 'BASIL', 'HEBA', 207, '795900108', 'heba@oneonlinemarket', '1968-09-17', '1992-02-03', NULL, 76, 76, 3, 13, 4, 199, 9, 1, 5, 1, 1, NULL, NULL, 8, 2, 1, 1, NULL, NULL),
(109, 1109, 9822020109, 'hussin', 'avatars/1109.jpg', 'خلدون', 'ديب', 'راجي', 'غنام', 'BAKER', 'AMAL', 'AYMAN', 'HUSSIN', 208, '795900109', 'hussin@oneonlinemark', '1962-12-08', '1992-02-03', NULL, 67, 67, 3, 13, 4, 207, 9, 1, 2, 1, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(110, 1110, 9822020110, 'suleiman', 'avatars/1110.jpg', 'خلف', 'ديك', 'كومال', 'مطيع', 'BANAN', 'AMNEH', 'SUHAD', 'SULEIMAN', 209, '795900110', 'suleiman@oneonlinema', '1963-01-13', '1992-02-06', NULL, 288, 288, 2, 13, 4, 193, 9, 1, 1, 1, 1, 15, 11, NULL, NULL, 3, 1, NULL, NULL),
(111, 1111, 9822020111, 'abdel hadi', 'avatars/1111.jpg', 'خلود', 'ذياب', 'جمال', 'عبد المجيد', 'BASEM', 'IBRAHIM', 'OMER', 'ABDEL HADI', 210, '795900111', 'abdelhadi@oneonlinem', '1968-03-05', '1992-02-02', NULL, 254, 254, 7, 13, 4, 200, 9, 1, 3, 1, 1, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(112, 1112, 9822020112, 'ra\'\'eda', 'avatars/1112.jpg', 'خليل', 'ذيب', 'بسام', 'ارحيل', 'BASHEER', 'HISHAM', 'DAHKLLAL', 'RA\'\'EDA', 211, '795900112', 'ra\'\'eda@oneonlinemar', '1967-11-26', '1992-09-01', NULL, 85, 85, 6, 4, 1, NULL, 9, 3, 3, 2, 2, 29, 4, NULL, NULL, 3, 1, NULL, NULL),
(113, 1113, 9822020113, 'masoud', 'avatars/1113.jpg', 'خوله', 'رابح', 'غدير', 'عبدالرسول', 'BASIL', 'MOHAMMAD AZIZ', 'KALIL', 'MASOUD', 212, '795900113', 'masoud@oneonlinemark', '1970-04-30', '1992-09-21', NULL, 171, 171, 4, 4, 1, 111, 9, 3, 3, 2, 1, NULL, NULL, 11, 3, 1, 1, NULL, NULL),
(114, 1114, 9822020114, 'seham', 'avatars/1114.jpg', 'خيريه', 'راتب', 'ناصر', 'جبور', 'BASSAM', 'ABDALRHAMAN', 'NASSAR', 'SEHAM', 213, '795900114', 'seham@oneonlinemarke', '1959-03-05', '1992-10-03', NULL, 249, 249, 1, 13, 4, 34, 9, 1, 1, 1, 1, NULL, 8, NULL, NULL, 2, 1, NULL, NULL),
(115, 1115, 9822020115, 'rashrash', 'avatars/1115.jpg', 'دانيه', 'راجح', 'سالم', 'عطيه', 'BASSEL', 'ABED ALKAREEM', 'FADWA', 'RASHRASH', 214, '795900115', 'rashrash@oneonlinema', '1961-05-20', '1992-10-03', NULL, 102, 102, 7, 13, 4, 199, 9, 1, 10, 1, 1, NULL, 10, NULL, NULL, 3, 1, NULL, NULL),
(116, 1116, 9822020116, 'saleh', 'avatars/1116.jpg', 'دحمان', 'راجي', 'ارحيل', 'راجح', 'BASSEM', 'ABEDALATEF', 'NAEL', 'SALEH', 215, '795900116', 'saleh@oneonlinemarke', '1961-06-30', '1992-10-03', NULL, 245, 245, 7, 13, 4, 12, 9, 1, 1, 1, 2, 41, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(117, 1117, 9822020117, 'wasfi', 'avatars/1117.jpg', 'دعاء', 'راشد', 'جادالله', 'جباره', 'BATAINEH', 'ABEER', 'WAJDI', 'WALID', 216, '795900117', 'wasfi@oneonlinemarke', '1961-11-04', '1992-10-03', NULL, 297, 297, 2, 13, 4, 207, 9, 1, 2, 1, 1, 15, 11, NULL, NULL, 3, 1, NULL, NULL),
(118, 1118, 9822020118, 'nithal', 'avatars/1118.jpg', 'دلال', 'راضي', 'جميل', 'عبد', 'BELAL', 'HEYAM', 'ADEL', 'NITHAL', 217, '795900118', 'nithal@oneonlinemark', '1967-11-15', '1992-10-03', NULL, 51, 51, 1, 12, 3, 129, 9, 2, 5, 3, 2, 4, 7, NULL, NULL, 1, 1, NULL, NULL),
(119, 1119, 9822020119, 'abdilrohman', 'avatars/1119.jpg', 'دينا', 'راغب', 'شريف', 'سالم', 'CHALEB', 'HUSNI', 'CHALEB', 'ABDILROHMAN', 218, '795900119', 'abdilrohman@oneonlin', '1968-01-06', '1992-10-18', NULL, 84, 84, 3, 13, 4, 101, 9, 1, 4, 1, 1, NULL, NULL, 4, 1, 1, 1, NULL, NULL),
(120, 1120, 9822020120, 'myasar', 'avatars/1120.jpg', 'رافت', 'رافع', 'صابر', 'عماد', 'DAHKLLAL', 'KHALED', 'ABDELRAHMAN', 'MYASAR', 219, '795900120', 'myasar@oneonlinemark', '1968-11-25', '1992-10-03', NULL, 17, 17, 1, 12, 3, 160, 9, 2, 2, 1, 1, NULL, 1, NULL, NULL, 2, 1, NULL, NULL),
(121, 1121, 9822020121, 'ghasap', 'avatars/1121.jpg', 'راكنة', 'رأفت', 'عبدالسلام', 'فضل', 'DALAL', 'MADALLAH', 'MEDIAN', 'GHASAP', 220, '795900121', 'ghasap@oneonlinemark', '1969-05-01', '1992-10-03', NULL, 218, 218, 4, 12, 3, 157, 9, 2, 5, 1, 1, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(122, 1122, 9822020122, 'nael', 'avatars/1122.jpg', 'رامي', 'رباح', 'فياض', 'بسام', 'DAOUD', 'JAMIL', 'ABDULLAH', 'NAEL', 221, '795900122', 'nael@oneonlinemarket', '1968-07-20', '1992-10-03', NULL, 26, 26, 1, 12, 3, 129, 9, 2, 8, 4, 2, 4, 7, NULL, NULL, 1, 1, NULL, NULL),
(123, 1123, 9822020123, 'sofyan', 'avatars/1123.jpg', 'راني', 'ربحي', 'بخيت', 'حمود', 'DAWD', 'MASHOOR', 'SMMOR', 'SOFYAN', 222, '795900123', 'sofyan@oneonlinemark', '1969-11-12', '1992-10-17', NULL, 284, 284, 7, 12, 3, 123, 9, 2, 3, 1, 1, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(124, 1124, 9822020124, 'abu swan', 'avatars/1124.jpg', 'رانيا', 'ربيع', 'هزيم', 'راشد', 'DAWOD', 'FERAS', 'AZZAM', 'ABU SWAN', 223, '795900124', 'abuswan@oneonlinemar', '1966-04-16', '1992-10-03', NULL, 71, 71, 3, 13, 4, 36, 9, 1, 3, 1, 2, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(125, 1125, 9822020125, 'nesreen', 'avatars/1125.jpg', 'رانيه', 'رجا', 'باسل', 'حميده', 'DEEP', 'JAFAR', 'ABU SAA', 'NESREEN', 224, '795900125', 'nesreen@oneonlinemar', '1968-07-11', '1992-10-03', NULL, 47, 47, 1, 13, 4, 6, 9, 1, 4, 3, 1, 7, 7, NULL, NULL, 1, 1, NULL, NULL),
(126, 1126, 9822020126, 'essam', 'avatars/1126.jpg', 'رائد', 'رجب', 'خشمان', 'فواز', 'DERAR', 'DHYAB', 'HASAN', 'ESSAM', 225, '795900126', 'essam@oneonlinemarke', '1964-06-13', '1992-10-03', NULL, 137, 137, 4, 12, 3, 13, 9, 2, 2, 1, 1, NULL, NULL, 3, 2, 1, 1, NULL, NULL),
(127, 1127, 9822020127, 'mihammad', 'avatars/1127.jpg', 'رائدة', 'رخيص', 'فاضل', 'غالب', 'DHYAB', 'EIHAB', 'MOSTAFA', 'MIHAMMAD', 226, '795900127', 'mihammad@oneonlinema', '1965-02-20', '1992-10-03', NULL, 231, 231, 4, 12, 3, 123, 9, 2, 2, 1, 1, NULL, NULL, 11, 3, 1, 1, NULL, NULL),
(128, 1128, 9822020128, 'fakhre', 'avatars/1128.jpg', 'رائده', 'رداد', 'عيسى', 'فهد', 'DIAA AL-DIN', '\'\'MOHAMMAD NATHMI\'\'', 'SALAMEH', 'FAKHRE', 227, '795900128', 'fakhre@oneonlinemark', '1970-05-15', '1992-10-03', NULL, 272, 272, 7, 12, 3, 8, 9, 2, 3, 1, 1, NULL, NULL, 3, 2, 1, 1, NULL, NULL),
(129, 1129, 9822020129, 'hammad', 'avatars/1129.jpg', 'رباب', 'رزق', 'خليل', 'راجي', 'DIA\'\'ALDEEN', 'IMAD', 'BASHEER', 'HAMMAD', 228, '795900129', 'hammad@oneonlinemark', '1968-04-21', '1992-10-03', NULL, 76, 76, 3, 13, 4, 200, 9, 1, 2, 1, 1, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(130, 1130, 9822020130, 'mohannad', 'avatars/1130.jpg', 'ربيع', 'رشاد', 'مسلم', 'نزال', 'DIAB', 'MOHAMAD', 'MERA\'\'I', 'MOHANNAD', 229, '795900130', 'mohannad@oneonlinema', '1970-03-04', '1992-10-03', NULL, 218, 218, 4, 12, 3, 113, 9, 2, 3, 1, 1, NULL, NULL, 13, 3, 1, 1, NULL, NULL),
(131, 1131, 9822020131, 'abdel-latif', 'avatars/1131.jpg', 'رجاء', 'رشدي', 'سعيد', 'ذيب', 'DINA', 'MAZEN', 'MOHAMED', 'ABDEL-LATIF', 230, '795900131', 'abdel-latif@oneonlin', '1969-12-01', '1994-07-01', NULL, 220, 220, 4, 13, 4, 120, 9, 1, 4, 3, 1, NULL, NULL, 2, 1, 1, 1, NULL, NULL),
(132, 1132, 9822020132, 'abdel rahman', 'avatars/1132.jpg', 'رجائي', 'رشراش', 'طه', 'ساكت', 'DKAILALLAH', 'MOHAMMAD ODEH', 'SHABAB', 'ABDEL RAHMAN', 231, '795900132', 'abdelrahman@oneonlin', '1970-05-19', '1994-09-21', NULL, 279, 279, 5, 13, 4, 116, 9, 1, 4, 3, 1, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(133, 1133, 9822020133, 'shafiq', 'avatars/1133.jpg', 'رحاب', 'رشيد', 'كريم', 'بدر', 'D\'\'YAB', 'AMER', 'RA\'\'EDA', 'SHAFIQ', 232, '795900133', 'shafiq@oneonlinemark', '1963-01-01', '1992-10-11', NULL, 255, 255, 6, 4, 1, 170, 9, 3, 3, 2, 1, 11, 9, NULL, NULL, 2, 1, NULL, NULL),
(134, 1134, 9822020134, 'mohmmad', 'avatars/1134.jpg', 'رحمه', 'رضا', 'بشير', 'سليم', 'EAD', 'HANADAH', 'SALAMA', 'MOHMMAD', 233, '795900134', 'mohmmad@oneonlinemar', '1967-04-05', '1992-11-18', NULL, 272, 272, 7, 12, 3, 111, 9, 2, 2, 1, 1, NULL, NULL, 13, 3, 1, 1, NULL, NULL),
(135, 1135, 9822020135, 'saleem', 'avatars/1135.jpg', 'رشا', 'رضوان', 'انور', 'ظاهر', 'EBRAHEEM', 'ABDALLAH', 'NAEF', 'SALEEM', 234, '795900135', 'saleem@oneonlinemark', '1958-12-01', '1994-02-03', NULL, 243, 243, 7, 13, 4, 196, 9, 1, 1, 1, 1, NULL, 9, NULL, NULL, 2, 1, NULL, NULL),
(136, 1136, 9822020136, 'halaf', 'avatars/1136.jpg', 'رشاد', 'رفعت', 'راتب', 'بلال', 'EBTISAM', 'GHASSAN', 'NUSTAFA', 'HALAF', 235, '795900136', 'halaf@oneonlinemarke', '1966-09-01', '1992-11-18', NULL, 254, 254, 7, 13, 4, 207, 9, 1, 1, 1, 1, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(137, 1137, 9822020137, 'abdalsalam', 'avatars/1137.jpg', 'رضا', 'رفيق', 'عبدالله', 'غنيم', 'EHAB', 'LUAI', 'MOUFFAQ', 'ABDALSALAM', 236, '795900137', 'abdalsalam@oneonline', '1969-04-22', '1992-11-18', NULL, 231, 231, 4, 12, 3, 96, 9, 2, 3, 1, 1, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(138, 1138, 9822020138, 'mohmoud', 'avatars/1138.jpg', 'رغدة', 'رمزي', 'انور', 'ايوب', 'EIAD', 'MAHMOOD', 'HAMMOUDEH', 'MOHMOUD', 237, '795900138', 'mohmoud@oneonlinemar', '1969-05-19', '1992-11-18', NULL, 126, 126, 1, 17, 5, 127, 9, 1, 1, 1, 1, NULL, NULL, 14, 3, 1, 1, NULL, NULL),
(139, 1139, 9822020139, 'abdelrahman', 'avatars/1139.jpg', 'رغده', 'رمضان', 'محمد', 'محمد', 'EID', 'ABDELFATTAH', 'MAHMOUD', 'ABDELRAHMAN', 238, '795900139', 'abdelrahman@oneonlin', '1959-10-01', '1992-11-18', NULL, 215, 215, 4, 12, 3, 150, 9, 2, 3, 1, 1, NULL, NULL, 3, 1, 1, 1, NULL, NULL),
(140, 1140, 9822020140, 'wael', 'avatars/1140.jpg', 'رقية', 'رميثان', 'عبد الحميد', 'نواف', 'EIED', 'FAHID', 'TAYSEER', 'TURKY', 239, '795900140', 'wael@oneonlinemarket', '1965-08-02', '1994-02-07', NULL, 293, 293, 2, 13, 4, 199, 9, 1, 1, 1, 1, 15, 11, NULL, NULL, 3, 1, NULL, NULL),
(141, 1141, 9822020141, 'nassar', 'avatars/1141.jpg', 'رماح', 'روحي', 'بركات', 'محمد', 'EIHAB', 'KHAMIS', 'ABEDALQADER', 'NASSAR', 240, '795900141', 'nassar@oneonlinemark', '1969-01-13', '1993-02-17', NULL, 41, 41, 1, 12, 3, 23, 9, 2, 3, 1, 1, NULL, NULL, NULL, 3, 1, 1, NULL, NULL),
(142, 1142, 9822020142, 'sumaia', 'avatars/1142.jpg', 'رمزي', 'رياض', 'رجا', 'توفيق', 'ELAYYAN', 'KHAIR', 'SULEMAN', 'SUMAIA', 241, '795900142', 'sumaia@oneonlinemark', '1968-11-01', '1993-02-17', NULL, 288, 288, 2, 13, 4, 5, 9, 1, 3, 1, 1, NULL, NULL, NULL, 3, 1, 1, NULL, NULL),
(143, 1143, 9822020143, 'allah', 'avatars/1143.jpg', 'رمضان', 'زارع', 'كمال', 'عبدالمالك', 'EMAD', 'KARAM', 'MOHMMAD', 'ALLAH', 242, '795900143', 'allah@oneonlinemarke', '1968-10-24', '1993-09-01', NULL, 230, 230, 4, 12, 3, 75, 9, 2, 4, 1, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(144, 1144, 9822020144, 'almansi', 'avatars/1144.jpg', 'رنا', 'زايد', 'تركي', 'عزام', 'ENSHIRAH', 'MARAM', 'MOHMMAD JMAL', 'ALMANSI', 243, '795900144', 'almansi@oneonlinemar', '1969-09-15', '1993-09-01', NULL, 230, 230, 4, 12, 3, 45, 9, 2, 3, 1, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(145, 1145, 9822020145, 'minwer', 'avatars/1145.jpg', 'رنا', 'زبن', 'سليمان', 'رابح', 'ENTESAR', 'MEDIAN', 'RAFAT', 'MINWER', 244, '795900145', 'minwer@oneonlinemark', '1969-12-15', '1993-09-02', NULL, 225, 255, 4, 12, 3, 45, 9, 2, 3, 1, 1, NULL, NULL, 11, 3, 1, 1, NULL, NULL),
(146, 1146, 9822020146, 'fayez', 'avatars/1146.jpg', 'رهام', 'زكريا', 'قسيم', 'ماهر', 'EQAB', 'ADNAN', 'ABDAL MALK', 'FAYEZ', 245, '795900146', 'fayez@oneonlinemarke', '1962-04-07', '1993-09-02', NULL, 6, 6, 1, 13, 4, 144, 9, 1, 2, 1, 1, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(147, 1147, 9822020147, 'moamad', 'avatars/1147.jpg', 'روان', 'زهير', 'مسعود', 'شتيان', 'ESAM', 'HUSSIN', 'SAUD', 'MOAMAD', 246, '795900147', 'moamad@oneonlinemark', '1968-02-01', '1993-09-02', NULL, 279, 279, 5, 13, 4, 144, 9, 1, 2, 1, 1, NULL, NULL, 11, 3, 1, 1, NULL, NULL),
(148, 1148, 9822020148, 'abdalmajeed', 'avatars/1148.jpg', 'روبين', 'زيدان', 'عبد الله', 'كوكب', 'ESOOD', 'FEDA\'\'', 'HOEMEL', 'ABDALMAJEED', 247, '795900148', 'abdalmajeed@oneonlin', '1966-03-18', '1993-09-02', NULL, 144, 144, 4, 12, 3, 111, 9, 2, 3, 1, 1, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(149, 1149, 9822020149, 'fares', 'avatars/1149.jpg', 'روجينا', 'زيدون', 'ممدوح', 'نهار', 'ESSA', 'KHALEED', 'MAZEN', 'FARES', 248, '795900149', 'fares@oneonlinemarke', '1968-11-26', '1993-09-04', NULL, 218, 218, 4, 12, 3, 157, 9, 2, 3, 1, 1, NULL, NULL, 4, 2, 1, 1, NULL, NULL),
(150, 1150, 9822020150, 'samih', 'avatars/1150.jpg', 'روديكا', 'ساكت', 'مناور', 'يوسف', 'ESSAM', 'ABDAL MALK', 'NASER', 'SAMIH', 249, '795900150', 'samih@oneonlinemarke', '1958-10-13', '1993-09-01', NULL, 247, 247, 7, 17, 5, 133, 9, 1, 10, 1, 1, NULL, 6, NULL, NULL, NULL, 1, NULL, NULL),
(151, 1151, 9822020151, 'harb', 'avatars/1151.jpg', 'روعه', 'سالم', 'عطيه', 'عبدالرحيم', 'ETHNIAN', 'MUSTAFA', 'ABDEL RAHMAN', 'HARB', 250, '795900151', 'harb@oneonlinemarket', '1972-05-15', '1993-09-20', NULL, 11, 11, 1, 8, 2, 16, 9, 3, 3, 2, 1, NULL, NULL, 7, 2, 1, 1, NULL, NULL),
(152, 1152, 9822020152, 'rebhe', 'avatars/1152.jpg', 'رولا', 'سامح', 'عبدالمولى', 'عبدالمولى', 'EZAT', 'NAFEZ', 'FAHME', 'REBHE', 251, '795900152', 'rebhe@oneonlinemarke', '1972-08-08', '1993-10-02', NULL, 102, 102, 7, 13, 4, 199, 9, 1, 3, 1, 1, NULL, NULL, NULL, 3, 1, 1, NULL, NULL),
(153, 1153, 9822020153, 'mohammed', 'avatars/1153.jpg', 'رياض', 'سامى', 'حلمي', 'بلال', 'FADIA', 'MTAWH', 'HAMZEH', 'MOHAMMED', 252, '795900153', 'mohammed@oneonlinema', '1971-11-29', '1993-10-02', NULL, 126, 126, 1, 12, 3, 160, 9, 2, 3, 1, 1, NULL, NULL, 13, 3, 1, 1, NULL, NULL),
(154, 1154, 9822020154, 'salama', 'avatars/1154.jpg', 'ريم', 'سامي', 'انيس', 'وحيد', 'FADWA', 'IBTISAM', 'NABIL', 'SALAMA', 253, '795900154', 'salama@oneonlinemark', '1968-04-02', '1993-10-04', NULL, 240, 240, 1, 12, 3, 160, 9, 2, 1, 1, 1, 34, 1, NULL, NULL, 2, 1, NULL, NULL),
(155, 1155, 9822020155, 'wafa\'\'a', 'avatars/1155.jpg', 'زكريا', 'سرور', 'سرور', 'باسل', 'FAHED', 'ATA', 'WAEL', 'WAFA\'\'', 254, '795900155', 'wafa\'\'a@oneonlinemar', '1963-02-11', '1993-10-02', NULL, 295, 295, 2, 12, 3, 123, 9, 2, 3, 1, 1, 15, 11, NULL, NULL, 3, 1, NULL, NULL),
(156, 1156, 9822020156, 'mariam', 'avatars/1156.jpg', 'زهر', 'سعدي', 'طعمه', 'جميل', 'FAHID', 'ABEDALKAREM', 'DAOUD', 'MARIAM', 255, '795900156', 'mariam@oneonlinemark', '1961-08-03', '1993-10-03', NULL, 86, 86, 6, 7, 1, 216, 9, 3, 3, 2, 1, NULL, NULL, 11, 3, 1, 1, NULL, NULL),
(157, 1157, 9822020157, 'noufan', 'avatars/1157.jpg', 'زهير', 'سعود', 'عبد الكريم', 'عبد الرحمن', 'FAHME', 'NAEL', 'ADLI', 'NOUFAN', 256, '795900157', 'noufan@oneonlinemark', '1972-07-14', '1993-10-16', NULL, 51, 51, 1, 12, 3, 168, 9, 2, 3, 1, 1, NULL, NULL, NULL, 3, 1, 1, NULL, NULL),
(158, 1158, 9822020158, 'soliman', 'avatars/1158.jpg', 'زياد', 'سعيد', 'عطالله', 'كومال', 'FAHMI', 'MOHMMAD JMAL', 'SOFIAN', 'SOLIMAN', 257, '795900158', 'soliman@oneonlinemar', '1971-04-29', '1993-10-23', NULL, 284, 284, 7, 12, 3, 168, 9, 2, 3, 1, 1, NULL, 10, NULL, NULL, 3, 1, NULL, NULL),
(159, 1159, 9822020159, 'ghada', 'avatars/1159.jpg', 'زيد', 'سلام', 'زهير', 'انيس', 'FAIMA', 'KHALAF', 'KHAIR', 'GHADA', 258, '795900159', 'ghada@oneonlinemarke', '1968-11-16', '1993-10-11', NULL, 192, 192, 4, 8, 2, 134, 9, 3, 3, 2, 1, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(160, 1160, 9822020160, 'dawd', 'avatars/1160.jpg', 'زيدان', 'سلامة', 'انيس', 'جليل', 'FAKHRE', 'NAIF', 'RAGHDA', 'DAWD', 259, '795900160', 'dawd@oneonlinemarket', '1972-10-25', '1993-11-06', NULL, 255, 255, 6, 2, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 14, 2, 1, 1, NULL, NULL),
(161, 1161, 9822020161, 'amjad', 'avatars/1161.jpg', 'زيدون', 'سلامه', 'سمور', 'فيصل', 'FALAH', 'MAHMOUD', 'ABDALRAHMAN', 'AMJAD', 260, '795900161', 'amjad@oneonlinemarke', '1969-05-21', '1993-11-09', NULL, 7, 7, 1, 8, 2, 84, 9, 3, 3, 2, 2, NULL, NULL, 11, 2, 1, 1, NULL, NULL),
(162, 1162, 9822020162, 'abdel-kareem', 'avatars/1162.jpg', 'زين', 'سلطي', 'مجول', 'خلف', 'FALEH', 'BASSEL', 'HALAF', 'ABDEL-KAREEM', 261, '795900162', 'abdel-kareem@oneonli', '1964-01-18', '1993-11-20', NULL, 126, 126, 1, 12, 3, 149, 9, 2, 2, 1, 2, NULL, NULL, 2, 1, 1, 1, NULL, NULL),
(163, 1163, 9822020163, 'turky', 'avatars/1163.jpg', 'زينب', 'سلمان', 'محمد', 'عبد الفتاح', 'FARAJ', 'ASMA', 'TAYEL', 'THEIF-ALLAH', 262, '795900163', 'turky@oneonlinemarke', '1963-02-10', '1993-12-06', NULL, 291, 291, 2, 13, 4, 192, 9, 1, 1, 1, 1, 15, 11, NULL, NULL, 3, 1, NULL, NULL),
(164, 1164, 9822020164, 'mohmad', 'avatars/1164.jpg', 'ساجده', 'سليم', 'مصطفي', 'حافظ', 'FAREED', 'ABED ALHAMEED', 'NESREEN', 'MOHMAD', 263, '795900164', 'mohmad@oneonlinemark', '1961-02-20', '1998-03-17', NULL, 254, 254, 7, 13, 4, 207, 9, 1, 10, 3, 1, NULL, NULL, 13, 3, 1, 1, NULL, NULL),
(165, 1165, 9822020165, 'saud', 'avatars/1165.jpg', 'ساره', 'سليمان', 'ربيع', 'بسام', 'FARES', 'FALEH', 'NASIR', 'SAUD', 264, '795900165', 'saud@oneonlinemarket', '1965-09-19', '1993-12-04', NULL, 248, 248, 1, 17, 5, 20, 9, 1, 3, 1, 1, 19, 7, NULL, NULL, 1, 1, NULL, NULL),
(166, 1166, 9822020166, 'suhad', 'avatars/1166.jpg', 'سالم', 'سمر', 'سلامه', 'عبدالعزيز', 'FARIS', 'ABU DAYAH', 'SUFYAN', 'SUHAD', 265, '795900166', 'suhad@oneonlinemarke', '1961-11-26', '1993-12-20', NULL, 288, 288, 2, 13, 4, 207, 9, 1, 1, 1, 1, NULL, NULL, NULL, 2, 1, 1, NULL, NULL),
(167, 1167, 9822020167, 'abed', 'avatars/1167.jpg', 'سامر', 'سمور', 'نمر', 'مشافي', 'FARISS', 'ESAM', 'JUMA\'\'H', 'ABED', 266, '795900167', 'abed@oneonlinemarket', '1965-05-01', '1993-12-08', NULL, 166, 166, 4, 12, 3, 123, 9, 2, 3, 1, 2, NULL, NULL, 4, 1, 1, 1, NULL, NULL),
(168, 1168, 9822020168, 'mutlag', 'avatars/1168.jpg', 'سامي', 'سميح', 'ظريف', 'عايد', 'FARRIS', 'MOHAMMAD WALLED', 'ABDELQADER', 'MUTLAG', 267, '795900168', 'mutlag@oneonlinemark', '1970-06-18', '1994-01-29', NULL, 15, 15, 1, 8, 2, 24, 9, 3, 3, 2, 1, 8, 9, NULL, NULL, 2, 1, NULL, NULL),
(169, 1169, 9822020169, 'suad', 'avatars/1169.jpg', 'ساميا', 'سيف', 'عادل', 'ماجد', 'FATEH', 'ABD RAHMAN', 'SOLIMAN', 'SUAD', 268, '795900169', 'suad@oneonlinemarket', '1958-04-22', '1994-02-03', NULL, 288, 288, 2, 17, 5, 86, 9, 1, 1, 1, 1, 15, 11, NULL, NULL, 3, 1, NULL, NULL),
(170, 1170, 9822020170, 'azzam', 'avatars/1170.jpg', 'سائد', 'شاكر', 'عبدالله', 'صادق', 'FATEN', 'MASHOUR', 'FAHMI', 'AZZAM', 269, '795900170', 'azzam@oneonlinemarke', '1969-11-12', '1994-02-03', NULL, 13, 103, 1, 13, 4, 70, 9, 1, 2, 1, 1, NULL, NULL, 13, 2, 1, 1, NULL, NULL),
(171, 1171, 9822020171, 'nabil', 'avatars/1171.jpg', 'سحر', 'شاهر', 'رميثان', 'كايد', 'FATHI', 'MARIAM', 'ABDELRA\'\'UOF', 'NABIL', 270, '795900171', 'nabil@oneonlinemarke', '1969-10-17', '1994-02-03', NULL, 21, 21, 7, 13, 4, 23, 9, 1, 2, 1, 1, NULL, 3, NULL, NULL, 3, 1, NULL, NULL),
(172, 1172, 9822020172, 'atallah', 'avatars/1172.jpg', 'سحر', 'شتيان', 'عزت', 'محمد', 'FATIMA', 'HUSAIN', 'OMAR', 'ATALLAH', 271, '795900172', 'atallah@oneonlinemar', '1967-12-23', '1994-02-03', NULL, 254, 254, 7, 15, 5, 83, 9, 1, 2, 1, 2, NULL, NULL, 11, 2, 1, 1, NULL, NULL),
(173, 1173, 9822020173, 'abdelraheem', 'avatars/1173.jpg', 'سعاد', 'شحادة', 'مخلص', 'شريف', 'FATIMEH', 'MUSALLAM', 'DIAA AL-DIN', 'ABDELRAHEEM', 272, '795900173', 'abdelraheem@oneonlin', '1972-04-24', '1995-05-02', NULL, 86, 86, 6, 8, 2, 84, 9, 3, 3, 2, 2, NULL, NULL, 3, 1, 1, 1, NULL, NULL),
(174, 1174, 9822020174, 'izideen', 'avatars/1174.jpg', 'سعد', 'شحاده', 'بسيم', 'عطية', 'FAWAZ', 'ETHNIAN', 'SALAH', 'IZIDEEN', 273, '795900174', 'izideen@oneonlinemar', '1965-07-11', '1994-03-16', NULL, 272, 272, 7, 12, 3, 123, 9, 2, 2, 1, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL);
INSERT INTO `employees` (`id`, `emp_no`, `sn`, `username`, `picture`, `firstname_ar`, `secondname_ar`, `thirdname_ar`, `lastname_ar`, `firstname_en`, `secondname_en`, `thirdname_en`, `lastname_en`, `ext`, `mobile`, `email`, `dateofbirth`, `dateofhiring`, `yearofdegree`, `job_id`, `rjob_id`, `cjob_id`, `qualification_id`, `cqualification_id`, `specialization_id`, `status_id`, `category_id`, `degree_id`, `recruitmen_id`, `gender_id`, `department_id`, `directorate_id`, `institute_id`, `region_id`, `assistant_id`, `administration_id`, `created_at`, `updated_at`) VALUES
(175, 1175, 9822020175, 'husain', 'avatars/1175.jpg', 'سعديه', 'شريف', 'خير', 'غازي', 'FAWZI', 'ISMAEL', 'MOHAMMAD WALLED', 'HUSAIN', 274, '795900175', 'husain@oneonlinemark', '1968-05-25', '1994-03-16', NULL, 224, 224, 4, 12, 3, 168, 9, 2, 3, 1, 1, NULL, NULL, 8, 2, 1, 1, NULL, NULL),
(176, 1176, 9822020176, 'moh\'\'d omran', 'avatars/1176.jpg', 'سعود', 'شريقي', 'جريد', 'عتيق', 'FAYEZ', 'HSAN', 'ABDELJALIL', 'MOH\'\'D OMRAN', 275, '795900176', 'moh\'\'domran@oneonlin', '1967-12-17', '1994-03-16', NULL, 13, 13, 1, 12, 3, 32, 9, 2, 4, 1, 1, NULL, NULL, 13, 3, 1, 1, NULL, NULL),
(177, 1177, 9822020177, 'abdel-rahman', 'avatars/1177.jpg', 'سعيد', 'شعبان', 'معجل', 'كوكب', 'FAYIZ', 'MARAZOUQ', 'ABDELMAHDI', 'ABDEL-RAHMAN', 276, '795900177', 'abdel-rahman@oneonli', '1969-09-27', '1994-03-16', NULL, 13, 13, 1, 12, 3, 32, 9, 2, 3, 1, 1, NULL, NULL, 4, 1, 1, 1, NULL, NULL),
(178, 1178, 9822020178, 'wafa', 'avatars/1178.jpg', 'سفيان', 'شفيق', 'باجس', 'عبدالنور', 'FEDA\'\'', 'KHALEEL', 'THEIF-ALLAH', 'WAEL', 277, '795900178', 'wafa@oneonlinemarket', '1968-12-03', '1994-03-16', NULL, 293, 293, 2, 13, 4, NULL, 9, 1, 2, 1, 1, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(179, 1179, 9822020179, 'fahmi', 'avatars/1179.jpg', 'سكينه', 'شكري', 'نواش', 'عبد العزيز', 'FEHMI', 'MUHAMMAD', 'MANSOUR', 'FAHMI', 278, '795900179', 'fahmi@oneonlinemarke', '1971-12-14', '1994-03-16', NULL, 215, 215, 4, 12, 3, 8, 9, 2, 3, 1, 1, NULL, NULL, 3, 2, 1, 1, NULL, NULL),
(180, 1180, 9822020180, 'rafat', 'avatars/1180.jpg', 'سلامه', 'شلاش', 'نجيب', 'صابر', 'FERAS', 'IYAD', 'DHYAB', 'RAFAT', 279, '795900180', 'rafat@oneonlinemarke', '1968-06-15', '1994-03-16', NULL, 86, 86, 6, 12, 3, 129, 9, 2, 3, 1, 1, 20, NULL, NULL, 2, 1, 1, NULL, NULL),
(181, 1181, 9822020181, 'basheer', 'avatars/1181.jpg', 'سلطان', 'شوال', 'عبدالمعطي', 'رداد', 'FERYAL', 'IBRAHEM', 'AWNI', 'BASHEER', 280, '795900181', 'basheer@oneonlinemar', '1968-02-23', '1994-03-16', NULL, 65, 65, 3, 13, 4, 190, 9, 1, 5, 1, 1, NULL, NULL, 14, 2, 1, 1, NULL, NULL),
(182, 1182, 9822020182, 'wajdi', 'avatars/1182.jpg', 'سلمان', 'صابر', 'باجس', 'رفعت', 'FIRAS', 'FAWZI', 'WAFA', 'WAFA\'\'A', 281, '795900182', 'wajdi@oneonlinemarke', '1966-02-26', '1994-03-16', NULL, 295, 295, 2, 12, 3, 123, 9, 2, 3, 1, 1, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL),
(183, 1183, 9822020183, 'mohammad yehya', 'avatars/1183.jpg', 'سلوى', 'صادق', 'ماجد', 'احمد', 'FORJEH', 'MOJAHED', 'ABDELMAJEED', 'MOHAMMAD YEHYA', 282, '795900183', 'mohammadyehya@oneonl', '1971-07-27', '1994-03-16', NULL, 13, 13, 1, 12, 3, 5, 9, 2, 4, 1, 1, NULL, NULL, 13, 3, 1, 1, NULL, NULL),
(184, 1184, 9822020184, 'habis', 'avatars/1184.jpg', 'سليم', 'صالح', 'شوال', 'عسود', 'FRYAL', 'HAITHAM', 'MOHAMMAD SALIM', 'HABIS', 283, '795900184', 'habis@oneonlinemarke', '1966-10-01', '1994-03-16', NULL, 224, 224, 4, 12, 3, 168, 9, 2, 3, 1, 1, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(185, 1185, 9822020185, 'essa', 'avatars/1185.jpg', 'سليمان', 'صبح', 'فؤاد', 'فريح', 'FUAD', 'IQAB', 'HARB', 'ESSA', 284, '795900185', 'essa@oneonlinemarket', '1968-05-01', '1994-03-16', NULL, 136, 136, 4, 12, 3, 8, 9, 2, 3, 1, 1, NULL, NULL, 3, 2, 1, 1, NULL, NULL),
(186, 1186, 9822020186, 'hoemel', 'avatars/1186.jpg', 'سماهر', 'صبحي', 'هلال', 'ارفيع', 'GHADA', 'ALI', '\'\'MOHAMMAD NATHMI\'\'', 'HOEMEL', 285, '795900186', 'hoemel@oneonlinemark', '1962-11-02', '1994-03-16', NULL, 224, 224, 4, 12, 3, 168, 9, 2, 4, 1, 1, NULL, NULL, 8, 2, 1, 1, NULL, NULL),
(187, 1187, 9822020187, 'muyassar', 'avatars/1187.jpg', 'سمر', 'صبري', 'زكريا', 'عبد القادر', 'GHALIB', 'FAHED', 'ABDELRAHEEM', 'MUYASSAR', 286, '795900187', 'muyassar@oneonlinema', '1965-07-31', '1994-03-16', NULL, 16, 16, 1, 12, 3, 129, 9, 2, 2, 1, 2, 11, 9, NULL, NULL, 2, 1, NULL, NULL),
(188, 1188, 9822020188, 'ata', 'avatars/1188.jpg', 'سمية', 'صلاح', 'ايوب', 'باجس', 'GHANMMA', 'ENTESAR', 'MURAD', 'ATA', 287, '795900188', 'ata@oneonlinemarket', '1965-04-06', '1994-03-16', NULL, 236, 236, 4, 12, 3, 31, 9, 2, 4, 1, 2, NULL, NULL, 11, 2, 1, 1, NULL, NULL),
(189, 1189, 9822020189, 'asma', 'avatars/1189.jpg', 'سميحه', 'صويلح', 'بلال', 'حمدي', 'GHASAP', 'MYASAR', 'MUNIB', 'ASMA', 288, '795900189', 'asma@oneonlinemarket', '1972-05-29', '1994-03-16', NULL, 235, 235, 4, 12, 3, 95, 9, 2, 4, 1, 2, NULL, NULL, 11, 2, 1, 1, NULL, NULL),
(190, 1190, 9822020190, 'musa', 'avatars/1190.jpg', 'سمير', 'ضيف الله', 'خلف', 'احم', 'GHASSAN', 'ABEDULLAH', 'ABDELFATTAH', 'MUSA', 289, '795900190', 'musa@oneonlinemarket', '1961-11-01', '1994-03-05', NULL, 13, 13, 1, 12, 3, 118, 9, 2, 2, 1, 1, 20, NULL, NULL, 2, 1, 1, NULL, NULL),
(191, 1191, 9822020191, 'husam', 'avatars/1191.jpg', 'سميه', 'طارق', 'عوض', 'عبد الله', 'GHAZI', 'MOHAMMAD SALIM', 'MOHAMMD', 'HUSAM', 290, '795900191', 'husam@oneonlinemarke', '1970-06-13', '1994-03-05', NULL, 224, 224, 4, 4, 1, 155, 9, 3, 3, 2, 1, NULL, NULL, 8, 2, 1, 1, NULL, NULL),
(192, 1192, 9822020192, 'hmoud', 'avatars/1192.jpg', 'سناء', 'طالب', 'طلال', 'عبدالفتاح', 'HABIS', 'ABDALRHEM', 'MOHAMMAD AZIZ', 'HMOUD', 291, '795900192', 'hmoud@oneonlinemarke', '1959-03-23', '1994-03-05', NULL, 224, 224, 4, 2, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 8, 2, 1, 1, NULL, NULL),
(193, 1193, 9822020193, 'faris', 'avatars/1193.jpg', 'سندس', 'طاهر', 'حمتو', 'ماهر', 'HAITHAM', 'MAJID', 'MOHAMMAD YEHYA', 'FARIS', 292, '795900193', 'faris@oneonlinemarke', '1969-08-08', '1994-03-05', NULL, 224, 224, 4, 2, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 4, 2, 1, 1, NULL, NULL),
(194, 1194, 9822020194, 'hmed', 'avatars/1194.jpg', 'سها', 'طايل', 'كنعان', 'عبدالقادر', 'HALAF', 'FADWA', 'MAHMOOD', 'HMED', 293, '795900194', 'hmed@oneonlinemarket', '1965-07-25', '1993-07-22', NULL, 214, 214, 4, 2, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 8, 2, 1, 1, NULL, NULL),
(195, 1195, 9822020195, 'ali', 'avatars/1195.jpg', 'سهاد', 'طاهر', 'رباح', 'مثقال', 'HAMAD', 'JIHAD', 'KHALEED', 'ALI', 294, '795900195', 'ali@oneonlinemarket', '1968-08-15', '1994-03-05', NULL, 196, 196, 4, 5, 1, 107, 9, 3, 3, 2, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(196, 1196, 9822020196, 'ead', 'avatars/1196.jpg', 'سهام', 'طعمه', 'عادي', 'سامى', 'HAMD', 'ABBAS', 'MOHAMMAD ADNAN', 'EAD', 295, '795900196', 'ead@oneonlinemarket', '1958-04-02', '1994-03-05', NULL, 224, 224, 4, 4, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 1, 2, 1, 1, NULL, NULL),
(197, 1197, 9822020197, 'asa\'\'d', 'avatars/1197.jpg', 'سهى', 'طلال', 'عوني', 'بخيت', 'HAMED', 'FAYEZ', 'MOED', 'ASA\'\'D', 296, '795900197', 'asa\'\'d@oneonlinemark', '1966-03-03', '1997-12-01', NULL, 220, 220, 4, 7, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 11, 2, 1, 1, NULL, NULL),
(198, 1198, 9822020198, 'raeid', 'avatars/1198.jpg', 'سوزان', 'طلب', 'شحاده', 'عبدالسلام', 'HAMIDAH', 'DAHKLLAL', 'DAWD', 'RAEID', 297, '795900198', 'raeid@oneonlinemarke', '1964-02-20', '1994-11-01', NULL, 86, 86, 6, 7, 1, NULL, 9, 3, 3, 2, 2, NULL, 5, NULL, NULL, NULL, 1, NULL, NULL),
(199, 1199, 9822020199, 'helal', 'avatars/1199.jpg', 'سوسن', 'طه', 'عبد الحفيظ', 'خير', 'HAMMAD', 'REBHE', 'FRYAL', 'HELAL', 298, '795900199', 'helal@oneonlinemarke', '1975-02-07', '1994-06-14', NULL, 123, 123, 6, 7, 1, NULL, 9, 3, 2, 2, 1, NULL, NULL, 8, 2, 1, 1, NULL, NULL),
(200, 1200, 9822020200, 'hbrahim', 'avatars/1200.jpg', 'سيف الدين', 'ظاهر', 'عياده', 'عدنان', 'HAMMOUDEH', 'BANAN', 'MASOUD', 'HBRAHIM', 299, '795900200', 'hbrahim@oneonlinemar', '1963-11-18', '1994-09-01', NULL, 218, 218, 4, 12, 3, 157, 9, 2, 2, 1, 1, NULL, NULL, 7, 2, 1, 1, NULL, NULL),
(201, 1201, 9822020201, 'rajab', 'avatars/1201.jpg', 'شادي', 'ظريف', 'فريح', 'سليمان', 'HAMZEH', 'FAHMI', 'ESSA', 'RAJAB', 300, '795900201', 'rajab@oneonlinemarke', '1965-08-18', '1994-09-01', NULL, 90, 90, 7, 11, 3, 124, 9, 3, 3, 2, 1, 13, 2, NULL, NULL, 3, 1, NULL, NULL),
(202, 1202, 9822020202, 'osama', 'avatars/1202.jpg', 'شاديه', 'عاتق', 'فواز', 'فريد', 'HANADAH', 'AL RAJA', 'AKRAM', 'OSAMA', 301, '795900202', 'osama@oneonlinemarke', '1962-08-10', '1994-09-01', NULL, 58, 58, 6, 2, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(203, 1203, 9822020203, 'mohamad', 'avatars/1203.jpg', 'شرحبيل', 'عادل', 'مسيعد', 'بشير', 'HANAH', 'KHLOUD', 'ELAYYAN', 'MOHAMAD', 302, '795900203', 'mohamad@oneonlinemar', '1969-02-03', '1994-09-17', NULL, 88, 88, 6, 1, 1, NULL, 9, 3, 3, 2, 2, NULL, NULL, 12, 3, 1, 1, NULL, NULL),
(204, 1204, 9822020204, 'muhsen', 'avatars/1204.jpg', 'شروق', 'عادي', 'معروف', 'فهمي', 'HANAN', 'KHLEEL', 'YASER', 'MUHSEN', 303, '795900204', 'muhsen@oneonlinemark', '1969-01-17', '1994-11-01', NULL, 302, 302, 2, 13, 4, 5, 9, 1, 2, 1, 1, NULL, 9, 14, NULL, 2, 1, NULL, NULL),
(205, 1205, 9822020205, 'fatima', 'avatars/1205.jpg', 'شفق', 'عارف', 'سلمان', 'شفيق', 'HANI', 'EHAB', 'HESHAM', 'FATIMA', 304, '795900205', 'fatima@oneonlinemark', '1965-01-03', '1994-10-31', NULL, 142, 142, 4, 12, 3, 105, 9, 2, 2, 1, 1, NULL, NULL, 5, 2, 1, 1, NULL, NULL),
(206, 1206, 9822020206, 'najih', 'avatars/1206.jpg', 'شهرزاد', 'عارف', 'كريم', 'عبدالحافظ', 'HARB', 'ABDALMUHDIA', 'ABEDALAH', 'NAJIH', 305, '795900206', 'najih@oneonlinemarke', '1959-01-01', '1994-11-12', NULL, 36, 36, 7, 13, 4, 198, 9, 1, 1, 1, 2, 12, 2, NULL, NULL, 3, 1, NULL, NULL),
(207, 1207, 9822020207, 'al raja', 'avatars/1207.jpg', 'شهناز', 'عاطف', 'الحاج ابراهيم', 'عوض', 'HASAN', 'LAMIA', 'HAMMAD', 'AL RAJA', 306, '795900207', 'alraja@oneonlinemark', '1969-04-12', '1994-11-13', NULL, 126, 126, 1, 12, 3, 160, 9, 2, 3, 1, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(208, 1208, 9822020208, 'salah', 'avatars/1208.jpg', 'شهيره', 'عايد', 'الحاج خليل', 'ضيف الله', 'HASHEM', 'EIAD', 'MYSTAFA', 'SALAH', 307, '795900208', 'salah@oneonlinemarke', '1965-01-14', '1994-11-15', NULL, 240, 240, 1, 12, 3, 149, 9, 2, 3, 1, 1, 34, 1, NULL, NULL, 2, 1, NULL, NULL),
(209, 1209, 9822020209, 'salwa', 'avatars/1209.jpg', 'شوقي', 'عايش', 'الخلف', 'لطفي', 'HASSAN', 'FRYAL', 'NAJEEB', 'SALWA', 308, '795900209', 'salwa@oneonlinemarke', '1966-05-28', '1994-11-19', NULL, 245, 245, 7, 14, 5, 57, 9, 1, 1, 1, 1, NULL, 4, NULL, NULL, 3, 1, NULL, NULL),
(210, 1210, 9822020210, 'wafa\'\'', 'avatars/1210.jpg', 'شيرين', 'عباس', 'حموده', 'طلب', 'HATIM', 'ABDELMON\'\'EM', 'TURKY', 'WAFA', 309, '795900210', 'wafa\'\'@oneonlinemark', '1960-03-22', '1994-11-19', NULL, 294, 294, 2, 13, 4, 207, 9, 1, 1, 1, 1, 15, 11, NULL, NULL, 3, 1, NULL, NULL),
(211, 1211, 9822020211, 'sharif', 'avatars/1211.jpg', 'صالح', 'عبد', 'حميدة', 'طاهر', 'HAYAT', 'ENSHIRAH', 'RUMZI', 'SHARIF', 310, '795900211', 'sharif@oneonlinemark', '1965-04-02', '1994-11-19', NULL, 263, 263, 7, 17, 5, 19, 9, 1, 10, 1, 1, NULL, NULL, NULL, NULL, 3, 1, NULL, NULL),
(212, 1212, 9822020212, 'suha', 'avatars/1212.jpg', 'صباح', 'عبد', 'شريقي', 'بشير', 'HAZEM', 'ABDELGHAFFAR', 'SUBHI', 'SUHA', 311, '795900212', 'suha@oneonlinemarket', '1959-10-23', '1994-11-19', NULL, 288, 288, 2, 13, 4, 207, 9, 1, 1, 1, 1, 15, 11, NULL, NULL, 3, 1, NULL, NULL),
(213, 1213, 9822020213, 'mostafa', 'avatars/1213.jpg', 'صدام', 'عبد الجليل', 'شفيق', 'العبد', 'HBRAHIM', 'ADDEL-AL-QADIR', 'MOHAMMAD KHDEER', 'MOSTAFA', 312, '795900213', 'mostafa@oneonlinemar', '1962-02-03', '1994-11-19', NULL, 224, 224, 4, 12, 3, 167, 9, 2, 3, 1, 1, NULL, NULL, 14, 3, 1, 1, NULL, NULL),
(214, 1214, 9822020214, 'amal', 'avatars/1214.jpg', 'صفاء', 'عبد الحفيظ', 'عبد', 'سمر', 'HEBA', 'ELAYYAN', 'NOUFAN', 'AMAL', 313, '795900214', 'amal@oneonlinemarket', '1965-02-28', '1994-11-19', NULL, 254, 254, 7, 13, 4, 193, 9, 1, 2, 1, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(215, 1215, 9822020215, 'sa\'\'ed', 'avatars/1215.jpg', 'صقر', 'عبد الحليم', 'عبدالواحد', 'مبارك', 'HELAL', 'DIA\'\'ALDEEN', 'MOSA', 'SA\'\'ED', 314, '795900215', 'sa\'\'ed@oneonlinemark', '1964-07-26', '1994-11-19', NULL, 231, 231, 4, 12, 3, 123, 9, 2, 4, 1, 1, 1, 6, NULL, NULL, NULL, 1, NULL, NULL),
(216, 1216, 9822020216, 'fahid', 'avatars/1216.jpg', 'صلاح', 'عبد الحميد', 'فرحان', 'عديل', 'HESHAM', 'KHALLEL', 'MAMOUN', 'FAHID', 315, '795900216', 'fahid@oneonlinemarke', '1969-01-02', '1994-11-19', NULL, 215, 215, 4, 12, 3, 8, 9, 2, 3, 1, 1, NULL, NULL, 3, 2, 1, 1, NULL, NULL),
(217, 1217, 9822020217, 'mazen', 'avatars/1217.jpg', 'صهيب', 'عبد الرازق', 'كنعان', 'رخيص', 'HEYAM', 'AYMAN', 'MAJD', 'MAZEN', 316, '795900217', 'mazen@oneonlinemarke', '1963-07-10', '1994-11-19', NULL, 215, 215, 4, 12, 3, 10, 9, 2, 3, 1, 1, NULL, NULL, 11, 3, 1, 1, NULL, NULL),
(218, 1218, 9822020218, 'mashoor', 'avatars/1218.jpg', 'ضرار', 'عبد الرحمن', 'كوكب', 'محسن', 'HISHAM', 'HANI', 'HSAN', 'MASHOOR', 317, '795900218', 'mashoor@oneonlinemar', '1967-08-10', '1994-11-19', NULL, 144, 144, 4, 12, 3, 111, 9, 2, 3, 1, 1, NULL, NULL, 11, 3, 1, 1, NULL, NULL),
(219, 1219, 9822020219, 'deep', 'avatars/1219.jpg', 'ضياءالدين', 'عبد الرحيم', 'محسن', 'عوده', 'HMED', 'MOUSTAFA', 'SALEEM', 'DEEP', 318, '795900219', 'deep@oneonlinemarket', '1971-11-16', '1994-11-19', NULL, 272, 272, 7, 13, 4, 13, 9, 1, 4, 1, 1, NULL, NULL, 14, 2, 1, 1, NULL, NULL),
(220, 1220, 9822020220, 'maher', 'avatars/1220.jpg', 'طارق', 'عبد الرزاق', 'مفضي', 'مفضي', 'HMOUD', 'HBRAHIM', 'HUSAIN', 'MAHER', 319, '795900220', 'maher@oneonlinemarke', '1967-10-05', '1994-11-19', NULL, 144, 144, 4, 12, 3, 111, 9, 2, 4, 1, 1, NULL, NULL, 10, 3, 1, 1, NULL, NULL),
(221, 1221, 9822020221, 'adel', 'avatars/1221.jpg', 'طالب', 'عبد السلام', 'عارف', 'مجول', 'HOEMEL', 'JAMAL', 'MAJID', 'ADEL', 320, '795900221', 'adel@oneonlinemarket', '1968-07-17', '1994-11-19', NULL, 215, 215, 4, 12, 3, 8, 9, 2, 4, 1, 1, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(222, 1222, 9822020222, 'median', 'avatars/1222.jpg', 'طاهر', 'عبد السميع', 'عبدالحليم', 'لؤي', 'HSAN', 'FARES', 'MAJED', 'MEDIAN', 321, '795900222', 'median@oneonlinemark', '1965-11-01', '1994-11-19', NULL, 215, 215, 4, 12, 3, 10, 9, 2, 3, 1, 1, NULL, NULL, 11, 3, 1, 1, NULL, NULL),
(223, 1223, 9822020223, 'nimer', 'avatars/1223.jpg', 'طلال', 'عبد العزيز', 'عبد السلام', 'عارف', 'HUSAIN', 'MOHAMMAD ADNAN', 'ADDALLAH', 'NIMER', 322, '795900223', 'nimer@oneonlinemarke', '1970-04-01', '1994-12-01', NULL, 49, 49, 7, 13, 4, 207, 9, 1, 1, 1, 1, 21, 3, NULL, NULL, 3, 1, NULL, NULL),
(224, 1224, 9822020224, 'saed', 'avatars/1224.jpg', 'طه', 'عبد الفتاح', 'هاني', 'تحسين', 'HUSAM', 'HOEMEL', 'KHOLOUD', 'SAED', 323, '795900224', 'saed@oneonlinemarket', '1967-12-14', '1999-10-01', NULL, 204, 204, 4, 8, 2, 24, 9, 3, 3, 2, 1, NULL, 3, NULL, NULL, 3, 1, NULL, NULL),
(225, 1225, 9822020225, 'mera\'\'i', 'avatars/1225.jpg', 'عادل', 'عبد الفتاح', 'حابس', 'جمعة', 'HUSEIN', 'HASAN', 'METLAQ', 'MERA\'\'I', 324, '795900225', 'mera\'\'i@oneonlinemar', '1967-08-25', '1994-12-04', NULL, 219, 219, 4, 6, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 11, 3, 1, 1, NULL, NULL),
(226, 1226, 9822020226, 'ismail', 'avatars/1226.jpg', 'عارف', 'عبد القادر', 'عباس', 'شلاش', 'HUSNI', 'NITHAL', 'RAJA', 'ISMAIL', 325, '795900226', 'ismail@oneonlinemark', '1973-06-05', '1994-12-07', NULL, 255, 255, 6, 2, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(227, 1227, 9822020227, 'nidal', 'avatars/1227.jpg', 'عاطف', 'عبد الكريم', 'علي', 'خليفه', 'HUSSEIN', 'FORJEH', 'ABU SWAN', 'NIDAL', 326, '795900227', 'nidal@oneonlinemarke', '1966-05-23', '1995-01-15', NULL, 48, 48, 1, 12, 3, 149, 9, 2, 2, 1, 1, 39, 1, NULL, NULL, 2, 1, NULL, NULL),
(228, 1228, 9822020228, 'metlaq', 'avatars/1228.jpg', 'عاليه', 'عبد الله', 'عبدالغني', 'رشدي', 'HUSSIN', 'MOHAMMED', 'MOH\'\'D JAWAD', 'METLAQ', 327, '795900228', 'metlaq@oneonlinemark', '1970-08-02', '1995-01-16', NULL, 226, 226, 4, 12, 3, 5, 9, 2, 3, 1, 1, NULL, NULL, 12, 3, 1, 1, NULL, NULL),
(229, 1229, 9822020229, 'yasmeen', 'avatars/1229.jpg', 'عامر', 'عبد المجيد', 'هيشان', 'مقبل', 'HYA', 'ARAFAT', 'YAQUB', 'YASER', 328, '795900229', 'yasmeen@oneonlinemar', '1963-01-28', '1995-04-01', NULL, 302, 302, 2, 13, 4, 5, 9, 1, 1, 1, 1, NULL, NULL, NULL, 3, 1, 1, NULL, NULL),
(230, 1230, 9822020230, 'adeel', 'avatars/1230.jpg', 'عايده', 'عبد المهدي', 'عبدربه', 'نواف', 'IBRAHEEM', 'KHLID', 'KAMAL', 'ADEEL', 329, '795900230', 'adeel@oneonlinemarke', '1969-01-18', '1995-04-26', NULL, 176, 176, 4, 12, 3, 95, 9, 3, 3, 2, 2, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(231, 1231, 9822020231, 'attia', 'avatars/1231.jpg', 'عايشه', 'عبد ربه', 'عوان', 'محمد', 'IBRAHEM', 'EBTISAM', 'FARRIS', 'ATTIA', 330, '795900231', 'attia@oneonlinemarke', '1964-12-18', '1995-09-02', NULL, 120, 120, 6, 8, 2, 24, 9, 3, 3, 2, 1, NULL, NULL, 12, 2, 1, 1, NULL, NULL),
(232, 1232, 9822020232, 'bader', 'avatars/1232.jpg', 'عائدة', 'عبدالجابر', 'فوزي', 'ربيع', 'IBRAHIM', 'SALEH', 'FAYEZ', 'BADER', 331, '795900232', 'bader@oneonlinemarke', '1976-03-12', '1995-09-10', NULL, 122, 122, 6, 7, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 13, 2, 1, 1, NULL, NULL),
(233, 1233, 9822020233, 'hya', 'avatars/1233.jpg', 'عباده', 'عبدالجبار', 'باسل', 'انور', 'IBTEHAL', 'FATEH', 'EIAD', 'HYA', 332, '795900233', 'hya@oneonlinemarket', '1966-01-01', '1995-09-17', NULL, 88, 88, 6, 1, 1, NULL, 9, 3, 3, 2, 2, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(234, 1234, 9822020234, 'luai', 'avatars/1234.jpg', 'عبد الحميد', 'عبدالجليل', 'تركي', 'روحي', 'IBTISAM', 'OTHMAN', 'ANWAR', 'LUAI', 333, '795900234', 'luai@oneonlinemarket', '1973-09-05', '1995-09-20', NULL, 58, 58, 6, 2, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 11, 3, 1, 1, NULL, NULL),
(235, 1235, 9822020235, 'rogayah', 'avatars/1235.jpg', 'عبد الرحمن', 'عبدالحافظ', 'جبرائيل', 'سمور', 'IMAD', 'MURAD', 'FARIS', 'ROGAYAH', 334, '795900235', 'rogayah@oneonlinemar', '1972-03-29', '2003-07-10', NULL, 114, 114, 1, 8, 2, 143, 9, 2, 4, 3, 1, 18, 9, NULL, NULL, 2, 1, NULL, NULL),
(236, 1236, 9822020236, 'fareed', 'avatars/1236.jpg', 'عبد الله', 'عبدالحليم', 'جبورة', 'ناظم', 'IQAB', 'FERYAL', 'KHALIL', 'FAREED', 335, '795900236', 'fareed@oneonlinemark', '1966-05-06', '1995-11-15', NULL, 200, 200, 4, 12, 3, 200, 9, 2, 2, 3, 1, NULL, NULL, 4, 2, 1, 1, NULL, NULL),
(237, 1237, 9822020237, 'musallam', 'avatars/1237.jpg', 'عبد المجيد', 'عبدالحميد', 'راغب', 'جدعان', 'ISAM', 'ESOOD', 'ABDELGHAFFAR', 'MUSALLAM', 336, '795900237', 'musallam@oneonlinema', '1965-05-01', '1995-11-15', NULL, 13, 13, 1, 12, 3, 129, 9, 2, 3, 3, 2, 11, 9, NULL, NULL, 2, 1, NULL, NULL),
(238, 1238, 9822020238, 'abeer', 'avatars/1238.jpg', 'عبد الناصر', 'عبدالرحمن', 'شاهر', 'فتحي', 'ISMAEL', 'JABER', 'ABDALMAJEED', 'ABEER', 337, '795900238', 'abeer@oneonlinemarke', '1968-06-18', '1995-11-15', NULL, 6, 6, 1, 12, 3, 14, 9, 2, 2, 3, 1, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(239, 1239, 9822020239, 'mustafa', 'avatars/1239.jpg', 'عبدالجبار', 'عبدالرحيم', 'سلامة', 'سلام', 'ISMAIL', 'EZAT', 'ABDELNASSER', 'MUSTAFA', 338, '795900239', 'mustafa@oneonlinemar', '1965-07-20', '1995-11-15', NULL, 14, 14, 1, 12, 3, 5, 9, 2, 2, 3, 1, 20, NULL, NULL, 2, 1, 1, NULL, NULL),
(240, 1240, 9822020240, 'awni', 'avatars/1240.jpg', 'عبدالحكيم', 'عبدالرزاق', 'رمضان', 'طلال', 'ISSA', 'FIRAS', 'HAMD', 'AWNI', 339, '795900240', 'awni@oneonlinemarket', '1966-05-20', '1995-12-16', NULL, 126, 126, 1, 13, 4, 160, 9, 1, 3, 3, 2, NULL, NULL, 12, 2, 1, 1, NULL, NULL),
(241, 1241, 9822020241, 'abdeljalil', 'avatars/1241.jpg', 'عبدالرحمن', 'عبدالرسول', 'هاشم', 'علي ابراهيم', 'IYAD', 'ISMAIL', 'BAKER', 'ABDELJALIL', 340, '795900241', 'abdeljalil@oneonline', '1968-06-02', '1995-12-16', NULL, 74, 74, 3, 13, 4, 160, 9, 1, 2, 3, 2, NULL, NULL, 2, 1, 1, 1, NULL, NULL),
(242, 1242, 9822020242, 'iyad', 'avatars/1242.jpg', 'عبدالرحيم', 'عبدالرؤوف', 'نوفان', 'هلال', 'IZIDEEN', 'MUNIB', 'RASHRASH', 'IYAD', 341, '795900242', 'iyad@oneonlinemarket', '1972-02-23', '1995-12-04', NULL, 257, 257, 6, 5, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(243, 1243, 9822020243, 'nustafa', 'avatars/1243.jpg', 'عبدالغفار', 'عبدالسلام', 'داود', 'يعقوب', 'JABER', 'RIZQ', 'AHMAD', 'NUSTAFA', 342, '795900243', 'nustafa@oneonlinemar', '1975-02-15', '1995-12-13', NULL, 52, 52, 1, 13, 4, 120, 9, 1, 4, 3, 1, 26, NULL, NULL, 1, 1, 1, NULL, NULL),
(244, 1244, 9822020244, 'lamia', 'avatars/1244.jpg', 'عبدالفتاح', 'عبدالعزيز', 'طارق', 'اسحق', 'JAFAR', 'HUSAM', 'ALIA', 'LAMIA', 343, '795900244', 'lamia@oneonlinemarke', '1968-01-01', '1996-03-10', NULL, 58, 58, 6, 7, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 11, 3, 1, 1, NULL, NULL),
(245, 1245, 9822020245, 'rojina', 'avatars/1245.jpg', 'عبدالقادر', 'عبدالغني', 'عبيدالله', 'مجول', 'JAMAL', 'SAHAR', 'FARISS', 'ROJINA', 344, '795900245', 'rojina@oneonlinemark', '1975-10-25', '1996-03-21', NULL, 117, 117, 6, 8, 2, 24, 9, 3, 3, 2, 1, 11, 9, NULL, NULL, 2, 1, NULL, NULL),
(246, 1246, 9822020246, 'basem', 'avatars/1246.jpg', 'عبدالكريم', 'عبدالفتاح', 'عقيل', 'حمدان', 'JAMEEL', 'AINE LHAYA', 'AWAD', 'BASEM', 345, '795900246', 'basem@oneonlinemarke', '1962-06-27', '1996-01-24', NULL, 64, 64, 3, 13, 4, NULL, 9, 1, 1, 3, 1, NULL, NULL, 14, 2, 1, 1, NULL, NULL),
(247, 1247, 9822020247, 'raida', 'avatars/1247.jpg', 'عبداللطيف', 'عبدالقادر', 'مشافي', 'راتب', 'JAMIL', 'HANAH', 'EIED', 'RAIDA', 346, '795900247', 'raida@oneonlinemarke', '1967-08-01', '1996-08-15', NULL, 88, 88, 6, 2, 1, NULL, 9, 3, 3, 2, 2, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(248, 1248, 9822020248, 'qasem', 'avatars/1248.jpg', 'عبدالله', 'عبدالكريم', 'رشيد', 'رأفت', 'JAWHAR', 'MASOUD', 'ALMANSI', 'QASEM', 347, '795900248', 'qasem@oneonlinemarke', '1969-11-20', '1996-09-12', NULL, 58, 58, 6, 2, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, NULL, 3, 1, 1, NULL, NULL),
(249, 1249, 9822020249, 'fehmi', 'avatars/1249.jpg', 'عبدالمنعم', 'عبداللطيف', 'عبدالرسول', 'سلامه', 'JEHAD', 'MOUSA', 'FATIMA', 'FEHMI', 348, '795900249', 'fehmi@oneonlinemarke', '1971-11-08', '1996-10-13', NULL, 122, 122, 6, 8, 2, 24, 9, 3, 3, 2, 1, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(250, 1250, 9822020250, 'elayyan', 'avatars/1250.jpg', 'عبدالناصر', 'عبدالله', 'نواف', 'جريد', 'JIHAD', 'ROGAYAH', 'FUAD', 'ELAYYAN', 349, '795900250', 'elayyan@oneonlinemar', '1975-03-10', '1996-10-26', NULL, 123, 123, 6, 2, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 2, 2, 1, 1, NULL, NULL),
(251, 1251, 9822020251, 'raja', 'avatars/1251.jpg', 'عبدالهادي', 'عبدالمالك', 'مرزوق', 'تركي', 'JUMAH', 'NASIR', 'ESOOD', 'RAJA', 350, '795900251', 'raja@oneonlinemarket', '1973-01-10', '1996-11-09', NULL, 89, 89, 1, 13, 4, 141, 9, 1, 4, 3, 1, 37, 8, NULL, NULL, 2, 1, NULL, NULL),
(252, 1252, 9822020252, 'yousef', 'avatars/1252.jpg', 'عبير', 'عبدالمجيد', 'انيس', 'اسعيد', 'JUMA\'\'H', 'RAJIE', 'YASMEEN', 'YOUNES', 351, '795900252', 'yousef@oneonlinemark', '1974-09-01', '1996-11-09', NULL, 302, 302, 2, 17, 5, 5, 9, 1, 2, 3, 1, 46, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(253, 1253, 9822020253, 'anwar', 'avatars/1253.jpg', 'عثمان', 'عبدالمحسن', 'اسحاق', 'حمتو', 'JUMANA', 'FARAJ', 'HAMAD', 'ANWAR', 352, '795900253', 'anwar@oneonlinemarke', '1965-09-27', '1996-11-13', NULL, 126, 126, 1, 12, 3, 160, 9, 2, 3, 3, 1, NULL, NULL, 11, 2, 1, 1, NULL, NULL),
(254, 1254, 9822020254, 'noman', 'avatars/1254.jpg', 'عدنان', 'عبدالمعطي', 'تيم', 'عبدالكريم', 'KALIL', 'JEHAD', 'ADI', 'NOMAN', 353, '795900254', 'noman@oneonlinemarke', '1968-08-05', '1996-11-23', NULL, 51, 51, 1, 12, 3, 5, 9, 2, 4, 3, 2, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(255, 1255, 9822020255, 'yusuf', 'avatars/1255.jpg', 'عدي', 'عبدالمغني', 'عبدالوالي', 'عبدالمغني', 'KAMAL', 'MYSTAFA', 'YOUSEF SHEHADAH', 'YUNIS', 354, '795900255', 'yusuf@oneonlinemarke', '1972-06-01', '1996-11-12', NULL, 303, 303, 2, 13, 4, 5, 9, 1, 5, 3, 2, NULL, 4, NULL, NULL, 3, 1, NULL, NULL),
(256, 1256, 9822020256, 'abedal-rahman', 'avatars/1256.jpg', 'عرفات', 'عبدالمهدي', 'غصاب', 'بسيم', 'KARAM', 'MERA\'\'I', 'OTHMAN', 'ABEDAL-RAHMAN', 355, '795900256', 'abedal-rahman@oneonl', '1969-12-16', '1996-12-16', NULL, 254, 254, 7, 18, 5, 207, 9, 1, 1, 3, 1, NULL, NULL, 5, 1, 1, 1, NULL, NULL),
(257, 1257, 9822020257, 'moh\'\'d jawad', 'avatars/1257.jpg', 'عريب', 'عبدالمولى', 'مثقال', 'ربحي', 'KHAIR', 'QASEM', 'ABDALMUHDIA', 'MOH\'\'D JAWAD', 356, '795900257', 'moh\'\'djawad@oneonlin', '1973-09-10', '1997-01-27', NULL, 6, 6, 1, 12, 3, 21, 9, 2, 4, 3, 1, NULL, NULL, 13, 3, 1, 1, NULL, NULL),
(258, 1258, 9822020258, 'abdelmuhsen', 'avatars/1258.jpg', 'عزالدين', 'عبدالنور', 'لاشين', 'فالح', 'KHAIRIEH', 'RAAFAT', 'SAID', 'ABDELMUHSEN', 357, '795900258', 'abdelmuhsen@oneonlin', '1973-12-05', '1997-03-10', NULL, 270, 270, 1, 12, 3, 158, 9, 3, 3, 2, 2, NULL, NULL, 2, 1, 1, 1, NULL, NULL),
(259, 1259, 9822020259, 'zakari', 'avatars/1259.jpg', 'عزام', 'عبدالهادي', 'مطاوع', 'حمد', 'KHALAF', 'NUSTAFA', 'YUSRI', 'YUSUF', 358, '795900259', 'zakari@oneonlinemark', '1973-07-27', '1997-08-19', NULL, 304, 304, 2, 13, 4, 142, 9, 1, 2, 3, 2, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(260, 1260, 9822020260, 'manal', 'avatars/1260.jpg', 'عزمي', 'عبدالواحد', 'ناظم', 'جمعة', 'KHALDOUN', 'NAJAH', 'ABDELMON\'\'EM', 'MANAL', 359, '795900260', 'manal@oneonlinemarke', '1972-10-26', '1997-08-27', NULL, 13, 13, 1, 13, 4, 5, 9, 1, 4, 3, 1, NULL, NULL, 12, 3, 1, 1, NULL, NULL),
(261, 1261, 9822020261, 'qassem', 'avatars/1261.jpg', 'عصام', 'عبدالوالي', 'الحسين', 'مفلح', 'KHALED', 'RAMADAN', 'ASA\'\'D', 'QASSEM', 360, '795900261', 'qassem@oneonlinemark', '1974-09-19', '1997-12-03', NULL, 58, 58, 6, 3, 1, NULL, 9, 3, 3, 2, 1, 20, NULL, NULL, 2, 1, 1, NULL, NULL),
(262, 1262, 9822020262, 'badran', 'avatars/1262.jpg', 'عصمت', 'عبدالودود', 'حازم', 'كنعان', 'KHALEED', 'JAMEEL', 'HAMIDAH', 'BADRAN', 361, '795900262', 'badran@oneonlinemark', '1968-07-17', '1998-02-01', NULL, 126, 126, 1, 12, 3, 160, 9, 2, 4, 3, 1, NULL, NULL, 13, 2, 1, 1, NULL, NULL),
(263, 1263, 9822020263, 'raed', 'avatars/1263.jpg', 'عطا الله', 'عبدالوهاب', 'دخيل الله', 'ناصر', 'KHALEEL', 'HYA', 'BELAL', 'RAED', 362, '795900263', 'raed@oneonlinemarket', '1968-02-01', '1998-09-05', NULL, 83, 83, 3, 17, 5, 5, 9, 1, 3, 3, 1, NULL, NULL, NULL, 3, 1, 1, NULL, NULL),
(264, 1264, 9822020264, 'sulaiman', 'avatars/1264.jpg', 'عطاالله', 'عبدربه', 'طاهر', 'ابراهيم', 'KHALID', 'AMJAD', 'SUHA', 'SULAIMAN', 363, '795900264', 'sulaiman@oneonlinema', '1963-01-07', '1998-09-01', NULL, 288, 288, 2, 13, 4, 203, 9, 1, 10, 1, 1, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(265, 1265, 9822020265, 'najah', 'avatars/1265.jpg', 'عفيف', 'عبده', 'اسعد', 'فضيل', 'KHALIL', 'MOHAMMAD', 'ABED ALHAMEED', 'NAJAH', 364, '795900265', 'najah@oneonlinemarke', '1970-03-11', '1999-03-03', NULL, 33, 33, 1, 17, 5, 153, 9, 1, 2, 3, 1, 30, 5, NULL, NULL, NULL, 1, NULL, NULL),
(266, 1266, 9822020266, 'naif', 'avatars/1266.jpg', 'عقاب', 'عبيدالله', 'تحسين', 'مصول', 'KHALLEL', 'GHAZI', 'ABED ALATEEF', 'NAIF', 365, '795900266', 'naif@oneonlinemarket', '1966-09-01', '1999-04-21', NULL, 32, 32, 1, 13, 4, 160, 9, 1, 2, 3, 1, 31, 5, NULL, NULL, NULL, 1, NULL, NULL),
(267, 1267, 9822020267, 'othman', 'avatars/1267.jpg', 'علا', 'عتيق', 'بخيت', 'محمد', 'KHAMIS', 'DALAL', 'ALABDELRAHMAN', 'OTHMAN', 366, '795900267', 'othman@oneonlinemark', '1964-03-27', '1999-10-01', NULL, 58, 58, 6, 8, 2, 24, 9, 3, 3, 2, 1, 8, 9, NULL, NULL, 2, 1, NULL, NULL),
(268, 1268, 9822020268, 'mosa', 'avatars/1268.jpg', 'علاء', 'عثمان', 'ابراهيم', 'الحسين', 'KHETAM', 'NESREEN', 'KHALLEL', 'MOSA', 367, '795900268', 'mosa@oneonlinemarket', '1973-03-17', '1999-10-01', NULL, 200, 200, 4, 12, 3, 124, 9, 3, 3, 2, 1, NULL, NULL, 14, 3, 1, 1, NULL, NULL),
(269, 1269, 9822020269, 'hammoudeh', 'avatars/1269.jpg', 'علاء الدين', 'عدلي', 'مصطفى', 'فياض', 'KHLEEL', 'SULEIMAN', 'EAD', 'HAMMOUDEH', 368, '795900269', 'hammoudeh@oneonlinem', '1978-04-02', '2000-02-28', NULL, 86, 86, 6, 2, 1, NULL, 9, 3, 3, 2, 2, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(270, 1270, 9822020270, 'hashem', 'avatars/1270.jpg', 'علاءالدين', 'عدنان', 'تيسير', 'بخيت', 'KHLID', 'TAHA', 'EBRAHEEM', 'HASHEM', 369, '795900270', 'hashem@oneonlinemark', '1978-07-27', '2000-02-28', NULL, 86, 86, 6, 8, 2, 84, 9, 3, 3, 2, 2, NULL, NULL, 7, 2, 1, 1, NULL, NULL),
(271, 1271, 9822020271, 'nafez', 'avatars/1271.jpg', 'علي', 'عديل', 'شكري', 'امين', 'KHLOUD', 'AHMAD', 'ABED', 'NAFEZ', 370, '795900271', 'nafez@oneonlinemarke', '1962-04-12', '2000-02-28', NULL, 30, 30, 7, 17, 5, 5, 9, 1, 4, 3, 1, NULL, 10, NULL, NULL, 3, 1, NULL, NULL),
(272, 1272, 9822020272, 'mufleh', 'avatars/1272.jpg', 'علي', 'عرابي', 'عبدالقادر', 'لؤي', 'KHOLOUD', 'FAHME', 'ALI', 'MUFLEH', 371, '795900272', 'mufleh@oneonlinemark', '1965-08-13', '2000-02-29', NULL, 58, 58, 6, 8, 2, 24, 9, 3, 3, 2, 1, NULL, NULL, 14, 3, 1, 1, NULL, NULL),
(273, 1273, 9822020273, 'ra\'\'fat', 'avatars/1273.jpg', 'عليا', 'عزام', 'امين', 'هزيم', 'LAMIA', 'RA\'\'FAT', 'DIAB', 'RA\'\'FAT', 372, '795900273', 'ra\'\'fat@oneonlinemar', '1974-05-06', '2000-02-29', NULL, 86, 86, 6, 8, 2, 24, 9, 3, 3, 2, 1, NULL, 10, NULL, NULL, 3, 1, NULL, NULL),
(274, 1274, 9822020274, 'fayiz', 'avatars/1274.jpg', 'علياء', 'عزت', 'محمد', 'زيدان', 'LUAI', 'FADIA', 'AL-HAJJ', 'FAYIZ', 373, '795900274', 'fayiz@oneonlinemarke', '1965-07-24', '2000-02-29', NULL, 58, 58, 6, 7, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(275, 1275, 9822020275, 'rumzi', 'avatars/1275.jpg', 'عماد', 'عزمي', 'عبد العزيز', 'نمر', 'MADALLAH', 'ABDALKAREEM', 'FATEN', 'RUMZI', 374, '795900275', 'rumzi@oneonlinemarke', '1958-11-09', '2000-03-01', NULL, 122, 122, 6, 7, 1, NULL, 9, 3, 3, 2, 1, 11, 9, NULL, NULL, 2, 1, NULL, NULL),
(276, 1276, 9822020276, 'abdelnasser', 'avatars/1276.jpg', 'عمار', 'عسود', 'عديل', 'مطلق', 'MAHER', 'ATALLAH', 'AL RAJA', 'ABDELNASSER', 375, '795900276', 'abdelnasser@oneonlin', '1963-03-01', '2000-03-01', NULL, 58, 58, 6, 2, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 3, 1, 1, 1, NULL, NULL),
(277, 1277, 9822020277, 'saber', 'avatars/1277.jpg', 'عمر', 'عصري', 'رخيص', 'حازم', 'MAHMOOD', 'MARWAN', 'KHETAM', 'SABER', 376, '795900277', 'saber@oneonlinemarke', '1969-11-02', '2000-03-01', NULL, 203, 203, 4, 7, 1, NULL, 9, 3, 3, 2, 1, 20, NULL, NULL, 2, 1, 1, NULL, NULL),
(278, 1278, 9822020278, 'dkailallah', 'avatars/1278.jpg', 'عمر', 'عطا', 'مجول', 'دخيل الله', 'MAHMOUD', 'MICHAEL', 'KHLEEL', 'DKAILALLAH', 377, '795900278', 'dkailallah@oneonline', '1970-01-04', '2000-03-01', NULL, 203, 203, 4, 8, 2, 24, 9, 3, 3, 2, 1, NULL, NULL, 1, 2, 1, 1, NULL, NULL),
(279, 1279, 9822020279, 'ghanmma', 'avatars/1279.jpg', 'عمران', 'عطا الله', 'لؤي', 'طاهر', 'MAJD', 'AHMED', 'KHAMIS', 'GHANMMA', 378, '795900279', 'ghanmma@oneonlinemar', '1962-05-05', '2000-03-01', NULL, 203, 203, 4, 11, 3, 81, 9, 3, 3, 2, 1, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(280, 1280, 9822020280, 'qasim', 'avatars/1280.jpg', 'عنان', 'عطاالله', 'الشراري', 'عبدالجليل', 'MAJED', 'RADAD', 'ARAFAT', 'QASIM', 379, '795900280', 'qasim@oneonlinemarke', '1974-01-10', '2000-03-07', NULL, 58, 58, 6, 4, 1, 168, 9, 3, 3, 2, 1, 9, NULL, NULL, 3, 1, 1, NULL, NULL),
(281, 1281, 9822020281, 'abdellah', 'avatars/1281.jpg', 'عواد', 'عطالله', 'بدر', 'لاشين', 'MAJEDAH', 'MAJED', 'KHALID', 'ABDELLAH', 380, '795900281', 'abdellah@oneonlinema', '1969-06-29', '2000-03-12', NULL, 198, 198, 4, 12, 3, 96, 9, 2, 4, 3, 2, NULL, NULL, 2, 1, 1, 1, NULL, NULL),
(282, 1282, 9822020282, 'ahmad', 'avatars/1282.jpg', 'عوده', 'عطية', 'توفيق', 'هاني', 'MAJID', 'HESHAM', 'MUSA', 'AHMAD', 381, '795900282', 'ahmad@oneonlinemarke', '1967-11-14', '2000-03-20', NULL, 236, 236, 4, 12, 3, NULL, 9, 2, 3, 3, 2, NULL, NULL, 7, 2, 1, 1, NULL, NULL),
(283, 1283, 9822020283, 'khlid', 'avatars/1283.jpg', 'عوض', 'عطيه', 'زيدون', 'عبدالهادي', 'MAMOUN', 'ISAM', 'OSAMA', 'KHLID', 382, '795900283', 'khlid@oneonlinemarke', '1968-05-07', '2000-03-26', NULL, 254, 254, 7, 15, 5, 121, 9, 1, 4, 3, 2, NULL, NULL, 10, 3, 1, 1, NULL, NULL),
(284, 1284, 9822020284, 'sahar', 'avatars/1284.jpg', 'عوني', 'عقاب', 'عبدالرحمن', 'فلاح', 'MANAL', 'FATHI', 'MUSTAFA', 'SAHAR', 383, '795900284', 'sahar@oneonlinemarke', '1966-01-13', '2000-03-28', NULL, 239, 239, 1, 12, 3, 5, 9, 2, 4, 3, 1, 36, 8, NULL, NULL, 2, 1, NULL, NULL),
(285, 1285, 9822020285, 'raafat', 'avatars/1285.jpg', 'عيد', 'عقله', 'علي', 'منور', 'MANSOUR', 'EID', 'ATA', 'RAAFAT', 384, '795900285', 'raafat@oneonlinemark', '1965-01-25', '2000-03-28', NULL, 60, 60, 3, 13, 4, 198, 9, 1, 1, 3, 1, 37, 8, NULL, NULL, 2, 1, NULL, NULL),
(286, 1286, 9822020286, 'husein', 'avatars/1286.jpg', 'عيسى', 'عقيل', 'فايز', 'فارس', 'MARAM', 'HATIM', 'OLA', 'HUSEIN', 385, '795900286', 'husein@oneonlinemark', '1967-09-11', '2000-03-28', NULL, 254, 254, 7, 13, 4, 186, 9, 1, 3, 3, 1, NULL, NULL, 8, 2, 1, 1, NULL, NULL),
(287, 1287, 9822020287, 'abdelra\'\'uof', 'avatars/1287.jpg', 'عين الحياة', 'علي', 'فضل', 'مزيد', 'MARAZOUQ', 'MOSA', 'ABDELWAHAB', 'ABDELRA\'\'UOF', 386, '795900287', 'abdelra\'\'uof@oneonli', '1971-10-04', '2000-03-28', NULL, 23, 23, 7, 13, 4, 203, 9, 5, NULL, 7, 1, NULL, NULL, 4, 1, 1, 1, NULL, NULL),
(288, 1288, 9822020288, 'naema', 'avatars/1288.jpg', 'غادة', 'علي', 'نزال', 'باجس', 'MARIAM', 'BASSEM', 'ABDULRAHMAN', 'NAEMA', 387, '795900288', 'naema@oneonlinemarke', '1964-01-19', '2000-03-28', NULL, 29, 29, 7, 13, 4, 147, 9, 1, 5, 3, 1, NULL, 3, NULL, NULL, 3, 1, NULL, NULL),
(289, 1289, 9822020289, 'sameer', 'avatars/1289.jpg', 'غاده', 'علي ابراهيم', 'نهار', 'اسماعيل', 'MARWAN', 'NAEMA', 'NAJI', 'SAMEER', 388, '795900289', 'sameer@oneonlinemark', '1972-08-02', '2000-03-29', NULL, 245, 245, 7, 18, 5, 65, 9, 1, 2, 3, 1, NULL, 5, NULL, NULL, NULL, 1, NULL, NULL),
(290, 1290, 9822020290, 'naef', 'avatars/1290.jpg', 'غازي', 'عليان', 'عدنان', 'هزيم', 'MASHOOR', 'HAMMAD', 'ABDILROHMAN', 'NAEF', 389, '795900290', 'naef@oneonlinemarket', '1967-02-07', '2000-03-29', NULL, 25, 25, 1, 13, 4, 160, 9, 1, 3, 3, 1, 44, 1, NULL, NULL, 2, 1, NULL, NULL),
(291, 1291, 9822020291, 'ahmad\\\\ed', 'avatars/1291.jpg', 'غالب', 'عماد', 'جمعة', 'رضا', 'MASHOUR', 'MAJD', 'AYYOUB', 'AHMAD\\\\ED', 390, '795900291', 'ahmad\\\\ed@oneonlinem', '1969-06-04', '2000-03-29', NULL, 69, 69, 3, 13, 4, 198, 9, 1, 2, 3, 1, NULL, NULL, 8, 2, 1, 1, NULL, NULL),
(292, 1292, 9822020292, 'faten', 'avatars/1292.jpg', 'غسان', 'عمر', 'سليمان', 'خالد', 'MASOUD', 'HUSEIN', 'ABDEL-KAREEM', 'FATEN', 391, '795900292', 'faten@oneonlinemarke', '1968-01-01', '2000-03-29', NULL, 13, 13, 1, 13, 4, 160, 9, 1, 2, 3, 1, NULL, NULL, 5, 2, 1, 1, NULL, NULL),
(293, 1293, 9822020293, 'sai\'\'d', 'avatars/1293.jpg', 'غفران', 'عناد', 'عبد الرزاق', 'عبد الرحيم', 'MAZEN', 'QASIM', 'MUYASSAR', 'SAI\'\'D', 392, '795900293', 'sai\'\'d@oneonlinemark', '1973-10-26', '2000-03-30', NULL, 239, 239, 1, 13, 4, 158, 9, 1, 3, 3, 1, 37, 8, NULL, NULL, 2, 1, NULL, NULL),
(294, 1294, 9822020294, 'khallel', 'avatars/1294.jpg', 'غنما', 'عواد', 'صلاح', 'قويدر', 'MEDIAN', 'ALABDELRAHMAN', 'NIMER', 'KHALLEL', 393, '795900294', 'khallel@oneonlinemar', '1962-09-03', '2000-04-01', NULL, 254, 254, 7, 13, 4, 207, 9, 1, 1, 3, 1, NULL, NULL, 10, 3, 1, 1, NULL, NULL),
(295, 1295, 9822020295, 'muin', 'avatars/1295.jpg', 'غيداء', 'عوان', 'نايل', 'صبح', 'MERA\'\'I', 'MOHMMAD', 'ABD RAHMAN', 'MUIN', 394, '795900295', 'muin@oneonlinemarket', '1971-03-22', '2000-04-02', NULL, 5, 5, 1, 18, 5, 5, 9, 1, 3, 3, 1, 29, 4, NULL, NULL, 3, 1, NULL, NULL),
(296, 1296, 9822020296, 'abu saa', 'avatars/1296.jpg', 'فاتن', 'عودة', 'حسن', 'سيف', 'METLAQ', 'IBTEHAL', 'AYSHEH', 'ABU SAA', 395, '795900296', 'abusaa@oneonlinemark', '1968-04-01', '2000-04-02', NULL, 69, 69, 3, 13, 4, 147, 9, 1, 2, 3, 1, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(297, 1297, 9822020297, 'muhannad', 'avatars/1297.jpg', 'فادي', 'عوده', 'ذيب', 'راضي', 'MICHAEL', 'EQAB', 'NUMAN', 'MUHANNAD', 396, '795900297', 'muhannad@oneonlinema', '1965-04-24', '2000-03-20', NULL, 254, 254, 7, 13, 4, 36, 9, 1, 5, 3, 2, NULL, 9, 14, NULL, 2, 1, NULL, NULL),
(298, 1298, 9822020298, 'shawqi', 'avatars/1298.jpg', 'فادية', 'عوض', 'بخيت', 'بركات', 'MIHAMMAD', 'NIMER', 'SAMEER', 'SHAWQI', 397, '795900298', 'shawqi@oneonlinemark', '1973-04-18', '2000-03-28', NULL, 277, 277, 7, 8, 2, 84, 9, 3, 3, 2, 2, NULL, 3, NULL, NULL, 3, 1, NULL, NULL),
(299, 1299, 9822020299, 'abedalqader', 'avatars/1299.jpg', 'فاديه', 'عوض الله', 'مشهور', 'عزمي', 'MINWER', 'MANSOUR', 'MUHSEN', 'ABEDALQADER', 398, '795900299', 'abedalqader@oneonlin', '1969-09-10', '2000-05-08', NULL, 235, 235, 4, 12, 3, 95, 9, 2, 5, 3, 2, NULL, NULL, 5, 1, 1, 1, NULL, NULL),
(300, 1300, 9822020300, 'amer', 'avatars/1300.jpg', 'فارس', 'عوني', 'تيسير', 'باسل', 'MOAMAD', 'HAMED', 'ABDALLAH', 'AMER', 399, '795900300', 'amer@oneonlinemarket', '1967-01-23', '2000-06-18', NULL, 6, 6, 1, 13, 4, 5, 9, 1, 3, 3, 1, NULL, NULL, 11, 2, 1, 1, NULL, NULL),
(301, 1301, 9822020301, 'tareq', 'avatars/1301.jpg', 'فاطمة', 'عياده', 'حنا', 'مطر', 'MOED', 'TAWFIQ', 'TALAL', 'TAREQ', 400, '795900301', 'tareq@oneonlinemarke', '1979-01-03', '2000-06-22', NULL, 288, 288, 2, 13, 4, 214, 9, 1, 4, 3, 1, NULL, NULL, NULL, 3, 1, 1, NULL, NULL),
(302, 1302, 9822020302, 'ebtisam', 'avatars/1302.jpg', 'فاطمه', 'عيد', 'عبد السميع', 'عبدالمحسن', 'MOHAMAD', 'DERAR', 'NOMAN', 'EBTISAM', 401, '795900302', 'ebtisam@oneonlinemar', '1964-06-02', '2000-07-10', NULL, 254, 254, 7, 13, 4, 207, 9, 1, 2, 3, 1, NULL, NULL, 1, 2, 1, 1, NULL, NULL),
(303, 1303, 9822020303, 'radi', 'avatars/1303.jpg', 'فالح', 'عيسى', 'غازي', 'سعدي', 'MOHAMED', 'NOUFAN', 'ATTALLAH', 'RADI', 402, '795900303', 'radi@oneonlinemarket', '1973-07-17', '2000-08-10', NULL, 60, 60, 3, 13, 4, 203, 9, 1, 2, 3, 1, NULL, 3, NULL, NULL, 3, 1, NULL, NULL),
(304, 1304, 9822020304, 'younes', 'avatars/1304.jpg', 'فايز', 'غازي', 'عسود', 'عبدالوهاب', 'MOHAMMAD', 'EBRAHEEM', 'YASEEN', 'YASMEEN', 403, '795900304', 'younes@oneonlinemark', '1964-12-02', '2000-08-20', NULL, 302, 302, 2, 13, 4, NULL, 9, 1, 2, 3, 1, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL),
(305, 1305, 9822020305, 'abdelaziz', 'avatars/1305.jpg', 'فايزه', 'غالب', 'ارفيع', 'نبهان', 'MOHAMMAD ADNAN', 'THEIF-ALLAH', 'SHARIF', 'ABDELAZIZ', 404, '795900305', 'abdelaziz@oneonlinem', '1979-03-07', '2000-09-05', NULL, 280, 280, 5, 12, 3, 99, 9, 2, 5, 3, 1, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(306, 1306, 9822020306, 'basil', 'avatars/1306.jpg', 'فتح الله', 'غدير', 'عبد الله', 'معجل', 'MOHAMMAD ALI', 'SHAWQI', 'GHANMMA', 'BASIL', 405, '795900306', 'basil@oneonlinemarke', '1977-06-23', '2001-02-12', NULL, 123, 123, 6, 2, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 14, 2, 1, 1, NULL, NULL),
(307, 1307, 9822020307, 'khalil', 'avatars/1307.jpg', 'فتحي', 'غصاب', 'عبدالفتاح', 'مطير', 'MOHAMMAD AZIZ', 'KHOLOUD', 'ALLAH', 'KHALIL', 406, '795900307', 'khalil@oneonlinemark', '1969-04-09', '2001-02-12', NULL, 58, 58, 6, 2, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 10, 3, 1, 1, NULL, NULL),
(308, 1308, 9822020308, 'abdelwahab', 'avatars/1308.jpg', 'فداء', 'غنام', 'ماهر', 'حرب', 'MOHAMMAD KHDEER', 'MOH\'\'DWALID', 'AMEEN', 'ABDELWAHAB', 407, '795900308', 'abdelwahab@oneonline', '1970-10-25', '2001-02-12', NULL, 58, 58, 6, 8, 2, 24, 9, 3, 3, 2, 1, NULL, NULL, 4, 1, 1, 1, NULL, NULL),
(309, 1309, 9822020309, 'abd rahman', 'avatars/1309.jpg', 'فدوه', 'غنيم', 'سامى', 'عبداللطيف', '\'\'MOHAMMAD NATHMI\'\'', 'MOAMAD', 'AMAL', 'ABD RAHMAN', 408, '795900309', 'abdrahman@oneonlinem', '1970-02-15', '2001-02-12', NULL, 58, 58, 6, 8, 2, 84, 9, 3, 3, 2, 1, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(310, 1310, 9822020310, 'mohammad khdeer', 'avatars/1310.jpg', 'فدوى', 'فارس', 'العبد', 'محيسن', 'MOHAMMAD ODEH', 'ABDILROHMAN', 'AINE LHAYA', 'MOHAMMAD KHDEER', 409, '795900310', 'mohammadkhdeer@oneon', '1961-01-06', '2001-02-12', NULL, 58, 58, 6, 2, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 12, 3, 1, 1, NULL, NULL),
(311, 1311, 9822020311, 'hani', 'avatars/1311.jpg', 'فراس', 'فارع', 'امين', 'عثمان', 'MOHAMMAD SALIM', 'SHA\'\'ABAN', 'RAJIE', 'HANI', 410, '795900311', 'hani@oneonlinemarket', '1977-01-07', '2001-02-14', NULL, 255, 255, 6, 8, 2, 24, 9, 3, 3, 2, 1, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(312, 1312, 9822020312, 'hussein', 'avatars/1312.jpg', 'فرجة', 'فاضل', 'خضر', 'ذياب', 'MOHAMMAD WALLED', 'NATHEER', 'ABDALSALAM', 'HUSSEIN', 411, '795900312', 'hussein@oneonlinemar', '1973-02-07', '2001-02-19', NULL, 9, 9, 6, 8, 2, 24, 31, 3, 3, 2, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(313, 1313, 9822020313, 'abdalkareem', 'avatars/1313.jpg', 'فرح', 'فالح', 'ديك', 'باسل', 'MOHAMMAD YEHYA', 'RAMI', 'DINA', 'ABDALKAREEM', 412, '795900313', 'abdalkareem@oneonlin', '1974-10-01', '2001-02-26', NULL, 86, 86, 6, 8, 2, 24, 9, 3, 3, 2, 2, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(314, 1314, 9822020314, 'abedalatef', 'avatars/1314.jpg', 'فريال', 'فاليرا', 'رابح', 'غدير', 'MOHAMMD', 'AZMI', 'BATAINEH', 'ABEDALATEF', 413, '795900314', 'abedalatef@oneonline', '1963-08-31', '2001-02-07', NULL, 82, 82, 3, 13, 4, 207, 9, 1, 1, 3, 1, NULL, NULL, 5, 1, 1, 1, NULL, NULL),
(315, 1315, 9822020315, 'hanah', 'avatars/1315.jpg', 'فريد', 'فايز', 'رشدي', 'مرزوق', 'MOHAMMED', 'SAADI', 'KARAM', 'HANAH', 414, '795900315', 'hanah@oneonlinemarke', '1975-05-22', '2001-03-13', NULL, 185, 185, 4, 8, 2, 16, 9, 3, 3, 2, 1, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(316, 1316, 9822020316, 'rana', 'avatars/1316.jpg', 'فصايل', 'فتحي', 'رفيق', 'ممدوح', 'MOHANNAD', 'MOHAMED', 'FADIA', 'RANA', 415, '795900316', 'rana@oneonlinemarket', '1970-03-04', '2001-02-25', NULL, 99, 99, 1, 13, 4, 173, 9, 1, 5, 3, 1, 3, 9, NULL, NULL, 2, 1, NULL, NULL),
(317, 1317, 9822020317, 'jaber', 'avatars/1317.jpg', 'فكري', 'فخري', 'رياض', 'عبدالرزاق', 'MOH\'\'D', 'NAJIH', 'SHAVEGE', 'JABER', 416, '795900317', 'jaber@oneonlinemarke', '1972-12-07', '2001-02-25', NULL, 281, 281, 5, 12, 3, 159, 9, 2, 4, 3, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(318, 1318, 9822020318, 'smmor', 'avatars/1318.jpg', 'فلحا', 'فرج', 'صبحي', 'اشتيان', 'MOH\'\'D JAWAD', 'MOHANNAD', 'SHAFIQ', 'SMMOR', 417, '795900318', 'smmor@oneonlinemarke', '1970-09-02', '2001-02-25', NULL, 279, 279, 5, 12, 3, 127, 9, 2, 4, 3, 1, NULL, 3, NULL, NULL, 3, 1, NULL, NULL),
(319, 1319, 9822020319, 'banan', 'avatars/1319.jpg', 'فهد', 'فرحان', 'طالب', 'عبد الحفيظ', 'MOH\'\'D OMRAN', 'MAJEDAH', 'ABDEL-LATIF', 'BANAN', 418, '795900319', 'banan@oneonlinemarke', '1969-08-04', '2001-02-26', NULL, 130, 13, 4, 12, 3, 144, 9, 2, 5, 3, 1, NULL, NULL, 14, 2, 1, 1, NULL, NULL),
(320, 1320, 9822020320, 'fawzi', 'avatars/1320.jpg', 'فهمي', 'فريح', 'عبدالمالك', 'رافع', 'MOH\'\'DWALID', 'ABRAHIM', 'ZAINAB', 'FAWZI', 419, '795900320', 'fawzi@oneonlinemarke', '1961-11-24', '2001-02-27', NULL, 305, 305, 7, 13, 4, 196, 9, 1, 2, 3, 1, NULL, NULL, 5, 2, 1, 1, NULL, NULL),
(321, 1321, 9822020321, 'talal', 'avatars/1321.jpg', 'فواز', 'فريد', 'عزام', 'معرف', 'MOHMAD', 'RAJAB', 'TAHER', 'TALAL', 420, '795900321', 'talal@oneonlinemarke', '1974-08-16', '2001-02-28', NULL, 288, 288, 2, 17, 5, 47, 9, 1, 3, 3, 2, 41, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(322, 1322, 9822020322, 'fateh', 'avatars/1322.jpg', 'فوزي', 'فضل', 'عقاب', 'رشراش', 'MOHMD', 'MOHAMMAD KHDEER', 'SHA\'\'ABAN', 'FATEH', 421, '795900322', 'fateh@oneonlinemarke', '1970-05-06', '2001-02-28', NULL, 279, 279, 5, 12, 3, 127, 9, 2, 5, 3, 1, NULL, NULL, 4, 2, 1, 1, NULL, NULL),
(323, 1323, 9822020323, 'awad', 'avatars/1323.jpg', 'فؤاد', 'فضيل', 'عليان', 'باجس', 'MOHMMAD', 'FUAD', 'FERYAL', 'AWAD', 422, '795900323', 'awad@oneonlinemarket', '1966-06-18', '2001-04-02', NULL, 123, 123, 6, 2, 1, NULL, 9, 3, 2, 2, 1, NULL, NULL, 12, 2, 1, 1, NULL, NULL),
(324, 1324, 9822020324, 'emad', 'avatars/1324.jpg', 'فيصل', 'فلاح', 'عودة', 'عوني', 'MOHMMAD JMAL', 'TALAL', 'HANAN', 'EMAD', 423, '795900324', 'emad@oneonlinemarket', '1978-12-17', '2001-04-12', NULL, 127, 127, 1, 12, 3, 160, 9, 3, 3, 2, 2, NULL, NULL, 2, 2, 1, 1, NULL, NULL),
(325, 1325, 9822020325, 'naji', 'avatars/1325.jpg', 'قاسم', 'فليح', 'غالب', 'حمزه', 'MOHMOUD', 'MOSTAFA', 'ABED RABOH', 'NAJI', 424, '795900325', 'naji@oneonlinemarket', '1971-10-08', '2001-04-15', NULL, 35, 35, 1, 13, 4, 160, 9, 1, 2, 3, 1, 34, 1, NULL, NULL, 2, 1, NULL, NULL),
(326, 1326, 9822020326, 'rawhi', 'avatars/1326.jpg', 'قصي', 'فهد', 'غنيم', 'حلمي', 'MOJAHED', 'MOHAMMAD YEHYA', 'FAHID', 'RAWHI', 425, '795900326', 'rawhi@oneonlinemarke', '1970-07-01', '2001-04-15', NULL, 102, 102, 7, 17, 5, 47, 9, 1, 2, 3, 1, NULL, 3, NULL, NULL, 3, 1, NULL, NULL),
(327, 1327, 9822020327, 'abdal malk', 'avatars/1327.jpg', 'قيس', 'فهمي', 'مبارك', 'هويشل', 'MONEER', 'ESSA', 'ATALLAH', 'ABDAL MALK', 426, '795900327', 'abdalmalk@oneonlinem', '1965-05-21', '2001-04-18', NULL, 60, 60, 3, 13, 4, 207, 9, 1, 2, 3, 1, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(328, 1328, 9822020328, 'talib', 'avatars/1328.jpg', 'كاتبه', 'فواز', 'محمود', 'حامد', 'MONIRA', 'SUMAIA', 'TAISEER', 'TALIB', 427, '795900328', 'talib@oneonlinemarke', '1978-07-13', '2001-05-21', NULL, 288, 288, 2, 13, 4, 117, 9, 1, 3, 3, 1, NULL, NULL, NULL, 2, 1, 1, NULL, NULL),
(329, 1329, 9822020329, 'khairieh', 'avatars/1329.jpg', 'كريستين', 'فوزي', 'مسخر', 'مثقال', 'MOSA', 'RAWHI', 'QASSEM', 'KHAIRIEH', 428, '795900329', 'khairieh@oneonlinema', '1975-02-01', '2001-07-10', NULL, 254, 254, 7, 13, 4, 207, 9, 1, 2, 3, 1, NULL, NULL, 9, 3, 1, 1, NULL, NULL),
(330, 1330, 9822020330, 'reda', 'avatars/1330.jpg', 'كريمان', 'فؤاد', 'منير', 'عبد الكريم', 'MOSTAFA', 'NADIA', 'FALEH', 'REDA', 429, '795900330', 'reda@oneonlinemarket', '1972-06-20', '2001-08-15', NULL, 106, 106, 1, 13, 4, 160, 9, 1, 2, 3, 1, NULL, 1, NULL, NULL, 2, 1, NULL, NULL),
(331, 1331, 9822020331, 'abdelfattah', 'avatars/1331.jpg', 'كفاح', 'فياض', 'نصر الدين', 'محمد', 'MOUFFAQ', 'BAKER', 'SHAWQI', 'ABDELFATTAH', 430, '795900331', 'abdelfattah@oneonlin', '1963-11-17', '2001-08-26', NULL, 282, 282, 5, 12, 3, 81, 9, 2, 4, 3, 1, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(332, 1332, 9822020332, 'moh\'\'d', 'avatars/1332.jpg', 'كفايه', 'فيصل', 'نضال', 'محمود', 'MOUSA', 'ADEEL', 'MOHMOUD', 'MOH\'\'D', 431, '795900332', 'moh\'\'d@oneonlinemark', '1962-02-03', '2001-11-01', NULL, 231, 231, 4, 2, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 13, 3, 1, 1, NULL, NULL),
(333, 1333, 9822020333, 'mohammd', 'avatars/1333.jpg', 'كلوديا', 'قاسم', 'هويمل', 'ظريف', 'MOUSTAFA', 'SUAD', 'FAYIZ', 'MOHAMMD', 432, '795900333', 'mohammd@oneonlinemar', '1977-12-14', '2001-11-01', NULL, 122, 122, 6, 2, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 13, 3, 1, 1, NULL, NULL),
(334, 1334, 9822020334, 'abdalmajed', 'avatars/1334.jpg', 'كمال', 'قسيم', 'بدر', 'رباح', 'MSLAM', 'BADER', 'HAITHAM', 'ABDALMAJED', 433, '795900334', 'abdalmajed@oneonline', '1963-10-20', '2002-02-04', NULL, 126, 126, 1, 12, 3, 160, 9, 2, 5, 3, 1, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(335, 1335, 9822020335, '\'\'mohammad nathmi\'\'', 'avatars/1335.jpg', 'لبنى', 'قويدر', 'هاشم', 'عبدالجابر', 'MTAWH', 'TAYSEER', 'ABBAS', '\'\'MOHAMMAD NATHMI\'\'', 434, '795900335', '\'mohammadnathmi\'\'@on', '1979-01-31', '2002-02-12', NULL, 4, 4, 1, 13, 4, 159, 9, 1, 5, 3, 2, NULL, NULL, 13, 3, 1, 1, NULL, NULL),
(336, 1336, 9822020336, 'mohammad salim', 'avatars/1336.jpg', 'لطيفه', 'كامل', 'حمدي', 'نواش', 'MUFLEH', 'HAMIDAH', 'FORJEH', 'MOHAMMAD SALIM', 435, '795900336', 'mohammadsalim@oneonl', '1967-02-01', '2002-02-12', NULL, 123, 123, 6, 2, 1, NULL, 9, 3, 3, 2, 2, NULL, NULL, 13, 3, 1, 1, NULL, NULL),
(337, 1337, 9822020337, 'mohammad walled', 'avatars/1337.jpg', 'لما', 'كايد', 'عزمي', 'عدلي', 'MUHAB', 'RASHRASH', 'ABDEL HAKEEM', 'MOHAMMAD WALLED', 436, '795900337', 'mohammadwalled@oneon', '1974-11-11', '2002-02-12', NULL, 9, 9, 6, 2, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 13, 3, 1, 1, NULL, NULL),
(338, 1338, 9822020338, 'issa', 'avatars/1338.jpg', 'لميا', 'كرم', 'فاليرا', 'زايد', 'MUHAMMAD', 'HEBA', 'RAMI', 'ISSA', 437, '795900338', 'issa@oneonlinemarket', '1967-10-09', '2002-02-14', NULL, 257, 257, 6, 8, 2, 24, 9, 3, 3, 2, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(339, 1339, 9822020339, 'mahmoud', 'avatars/1339.jpg', 'لمياء', 'كريم', 'زبن', 'رفيق', 'MUHAMMAD ZAID', 'SUBHI', 'MOH\'\'DWALID', 'MAHMOUD', 438, '795900339', 'mahmoud@oneonlinemar', '1977-12-22', '2002-02-18', NULL, 226, 226, 4, 13, 4, 91, 9, 1, 6, 2, 1, NULL, NULL, 11, 3, 1, 1, NULL, NULL),
(340, 1340, 9822020340, 'ahmed', 'avatars/1340.jpg', 'لميه', 'كمال', 'كمال', 'مصطفي', 'MUHANNAD', 'SHABAB', 'FATEH', 'AHMED', 439, '795900340', 'ahmed@oneonlinemarke', '1977-01-15', '2002-02-28', NULL, 120, 120, 6, 2, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 8, 2, 1, 1, NULL, NULL),
(341, 1341, 9822020341, 'mtawh', 'avatars/1341.jpg', 'لؤي', 'كنعان', 'باجس', 'اثنيان', 'MUHSEN', 'ABDELRA\'\'UOF', 'AIMAN', 'MTAWH', 440, '795900341', 'mtawh@oneonlinemarke', '1960-09-11', '2002-03-03', NULL, 58, 58, 6, 2, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 14, 3, 1, 1, NULL, NULL),
(342, 1342, 9822020342, 'bassel', 'avatars/1342.jpg', 'ليالي', 'كوكب', 'هاني', 'شحاده', 'MUIN', 'ISSA', 'HANAH', 'BASSEL', 441, '795900342', 'bassel@oneonlinemark', '1968-06-10', '2002-04-15', NULL, 127, 127, 1, 12, 3, 160, 9, 2, 6, 3, 1, NULL, NULL, 14, 2, 1, 1, NULL, NULL),
(343, 1343, 9822020343, 'ismael', 'avatars/1343.jpg', 'ليث', 'كومال', 'لاشين', 'سليمان', 'MUNIB', 'SOFIAN', 'MICHAEL', 'ISMAEL', 442, '795900343', 'ismael@oneonlinemark', '1977-08-01', '2002-04-16', NULL, 219, 219, 4, 12, 3, 155, 9, 2, 5, 3, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(344, 1344, 9822020344, 'khaleed', 'avatars/1344.jpg', 'ليزا', 'لاشين', 'خميس', 'عطاالله', 'MURAD', 'SA\'\'EED', 'ROGAYAH', 'KHALEED', 443, '795900344', 'khaleed@oneonlinemar', '1975-10-14', '2002-04-16', NULL, 258, 258, 1, 13, 4, 142, 9, 1, 4, 3, 1, NULL, NULL, 9, 3, 1, 1, NULL, NULL),
(345, 1345, 9822020345, 'jamal', 'avatars/1345.jpg', 'ليلى', 'لطفي', 'عطا', 'شكري', 'MUSA', 'JUMAH', 'MAHER', 'JAMAL', 444, '795900345', 'jamal@oneonlinemarke', '1968-09-02', '2002-04-16', NULL, 213, 213, 4, 12, 3, 136, 9, 2, 4, 3, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(346, 1346, 9822020346, 'munib', 'avatars/1346.jpg', 'لينا', 'لؤي', 'فلاح', 'العبدالرحمن', 'MUSALLAM', 'FEHMI', 'ABDALLA', 'MUNIB', 445, '795900346', 'munib@oneonlinemarke', '1966-04-01', '2002-04-17', NULL, 6, 6, 1, 12, 3, 81, 9, 2, 4, 3, 1, 36, 8, NULL, NULL, 2, 1, NULL, NULL),
(347, 1347, 9822020347, 'hamed', 'avatars/1347.jpg', 'ليندا', 'ماجد', 'عبد الرحيم', 'ديب', 'MUSLEH', 'NAWAF', 'ABDELMUHSEN', 'HAMED', 446, '795900347', 'hamed@oneonlinemarke', '1973-02-15', '2002-04-17', NULL, 13, 13, 1, 12, 3, 71, 9, 2, 5, 3, 1, NULL, NULL, 7, 2, 1, 1, NULL, NULL),
(348, 1348, 9822020348, 'mahmood', 'avatars/1348.jpg', 'ماجد', 'ماهر', 'عرابي', 'رمضان', 'MUSTAFA', 'YAQUB', 'JEHAD', 'MAHMOOD', 447, '795900348', 'mahmood@oneonlinemar', '1980-08-03', '2002-04-18', NULL, 163, 163, 4, 12, 3, 105, 9, 2, 6, 3, 1, NULL, NULL, 11, 3, 1, 1, NULL, NULL);
INSERT INTO `employees` (`id`, `emp_no`, `sn`, `username`, `picture`, `firstname_ar`, `secondname_ar`, `thirdname_ar`, `lastname_ar`, `firstname_en`, `secondname_en`, `thirdname_en`, `lastname_en`, `ext`, `mobile`, `email`, `dateofbirth`, `dateofhiring`, `yearofdegree`, `job_id`, `rjob_id`, `cjob_id`, `qualification_id`, `cqualification_id`, `specialization_id`, `status_id`, `category_id`, `degree_id`, `recruitmen_id`, `gender_id`, `department_id`, `directorate_id`, `institute_id`, `region_id`, `assistant_id`, `administration_id`, `created_at`, `updated_at`) VALUES
(349, 1349, 9822020349, 'd\'\'yab', 'avatars/1349.jpg', 'ماجدة', 'مبارك', 'وحيد', 'عبد الرزاق', 'MUTLAG', 'YACOUB', 'MINWER', 'D\'\'YAB', 448, '795900349', 'd\'\'yab@oneonlinemark', '1980-06-30', '2002-04-18', NULL, 219, 219, 4, 12, 3, 155, 9, 2, 5, 3, 1, NULL, NULL, 1, 2, 1, 1, NULL, NULL),
(350, 1350, 9822020350, 'nasser', 'avatars/1350.jpg', 'مازن', 'مثقال', 'ضيف الله', 'انور', 'MUYASSAR', 'HAZEM', 'ABEDAL-RAHMAN', 'NASSER', 449, '795900350', 'nasser@oneonlinemark', '1967-09-26', '2002-06-05', NULL, 42, 42, 7, 12, 3, 5, 9, 2, 4, 3, 1, NULL, 4, NULL, NULL, 3, 1, NULL, NULL),
(351, 1351, 9822020351, 'tayel', 'avatars/1351.jpg', 'مالك', 'مجول', 'بشير', 'عبد الفتاح', 'MYASAR', 'WASFI', 'TAREQ', 'TAYEL', 450, '795900351', 'tayel@oneonlinemarke', '1980-05-24', '2002-06-16', NULL, 288, 288, 2, 13, 4, 199, 9, 1, 4, 3, 1, NULL, NULL, NULL, 3, 1, 1, NULL, NULL),
(352, 1352, 9822020352, 'ghassan', 'avatars/1352.jpg', 'مامون', 'محسن', 'ظاهر', 'صلاح', 'MYSTAFA', 'SOFYAN', 'MIHAMMAD', 'GHASSAN', 451, '795900352', 'ghassan@oneonlinemar', '1977-08-07', '2002-11-01', NULL, 219, 219, 4, 12, 3, 155, 9, 2, 6, 3, 1, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(353, 1353, 9822020353, 'amneh', 'avatars/1353.jpg', 'ماهر', 'محمد', 'عبدالرؤوف', 'خشمان', 'NABIL', 'YASEEN', 'EBTISAM', 'AMNEH', 452, '795900353', 'amneh@oneonlinemarke', '1980-08-21', '2002-12-31', NULL, 86, 86, 6, 8, 2, 143, 9, 3, 3, 2, 2, NULL, NULL, 11, 2, 1, 1, NULL, NULL),
(354, 1354, 9822020354, 'moed', 'avatars/1354.jpg', 'مجاهد', 'محمد', 'حماد', 'فاضل', 'NADIA', 'NASSER', 'DIA\'\'ALDEEN', 'MOED', 453, '795900354', 'moed@oneonlinemarket', '1973-02-02', '2002-12-31', NULL, 86, 86, 6, 8, 2, 24, 9, 3, 3, 2, 2, NULL, NULL, 12, 3, 1, 1, NULL, NULL),
(355, 1355, 9822020355, 'husni', 'avatars/1355.jpg', 'مجد', 'محمد', 'افليح', 'مصلح', 'NAEF', 'SAMI', 'SA\'\'ED', 'HUSNI', 454, '795900355', 'husni@oneonlinemarke', '1976-12-21', '2002-12-31', NULL, 269, 269, 1, 8, 2, 84, 9, 2, 7, 3, 2, NULL, NULL, 8, 2, 1, 1, NULL, NULL),
(356, 1356, 9822020356, 'moh\'\'dwalid', 'avatars/1356.jpg', 'محمد', 'محمد', 'راجح', 'عيسى', 'NAEL', 'FAIMA', 'DEEP', 'MOH\'\'DWALID', 455, '795900356', 'moh\'\'dwalid@oneonlin', '1965-09-05', '2002-12-31', NULL, 86, 86, 6, 2, 1, NULL, 9, 3, 3, 2, 2, NULL, NULL, 13, 3, 1, 1, NULL, NULL),
(357, 1357, 9822020357, 'ola', 'avatars/1357.jpg', 'محمد', 'كريم', 'لطفي', 'بسام', 'NAEMA', 'SHAREIF', 'AHMAD\\\\ED', 'OLA', 456, '795900357', 'ola@oneonlinemarket', '1977-04-24', '2002-12-31', NULL, 52, 52, 1, 17, 5, 5, 9, 1, 4, 3, 2, 25, 9, NULL, NULL, 2, 1, NULL, NULL),
(358, 1358, 9822020358, 'abdullah', 'avatars/1358.jpg', 'محمد خضر', 'كمال', 'اسماعيل', 'خليل', 'NAFEZ', 'HAMD', 'DERAR', 'ABDULLAH', 457, '795900358', 'abdullah@oneonlinema', '1966-10-27', '2002-12-31', NULL, 86, 86, 6, 8, 2, 24, 9, 3, 3, 2, 2, NULL, NULL, 4, 1, 1, 1, NULL, NULL),
(359, 1359, 9822020359, 'jihad', 'avatars/1359.jpg', 'محمد زيد', 'كنعان', 'جراد', 'مسلم', 'NAIF', 'YOUSEF', 'EHAB', 'JIHAD', 458, '795900359', 'jihad@oneonlinemarke', '1981-03-22', '2002-12-31', NULL, 86, 86, 6, 8, 2, 85, 9, 3, 3, 2, 2, NULL, NULL, 9, 3, 1, 1, NULL, NULL),
(360, 1360, 9822020360, 'madallah', 'avatars/1360.jpg', 'محمد علي', 'كوكب', 'فخري', 'نجيب', 'NAJAH', 'SAUD', 'GHALIB', 'MADALLAH', 459, '795900360', 'madallah@oneonlinema', '1977-01-01', '2002-12-31', NULL, 123, 123, 6, 1, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 11, 3, 1, 1, NULL, NULL),
(361, 1361, 9822020361, 'kholoud', 'avatars/1361.jpg', 'محمد عيد', 'كومال', 'يوسف', 'اعبيد', 'NAJEEB', 'OMER', 'ABDEL HADI', 'KHOLOUD', 460, '795900361', 'kholoud@oneonlinemar', '1973-08-06', '2002-12-31', NULL, 9, 9, 6, 2, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 11, 3, 1, 1, NULL, NULL),
(362, 1362, 9822020362, 'baker', 'avatars/1362.jpg', 'محمد قصي', 'لاشين', 'بسام', 'زارع', 'NAJI', 'MIHAMMAD', 'ABDALRHEM', 'BAKER', 461, '795900362', 'baker@oneonlinemarke', '1970-01-22', '2002-12-31', NULL, 9, 9, 6, 2, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 14, 2, 1, 1, NULL, NULL),
(363, 1363, 9822020363, 'eid', 'avatars/1363.jpg', 'محمد وليد', 'لطفي', 'جبور', 'عبد الجليل', 'NAJIH', 'TAREQ', 'ABDELAZIZ', 'EID', 462, '795900363', 'eid@oneonlinemarket', '1978-12-28', '2002-12-31', NULL, 11, 11, 1, 8, 2, NULL, 9, 3, 3, 2, 1, NULL, NULL, 2, 2, 1, 1, NULL, NULL),
(364, 1364, 9822020364, 'dawod', 'avatars/1364.jpg', 'محمدامين', 'لؤي', 'منذر', 'عاتق', 'NASER', 'MSLAM', 'RANA', 'DAWOD', 463, '795900364', 'dawod@oneonlinemarke', '1971-11-27', '2002-12-31', NULL, 257, 257, 6, 8, 2, 24, 9, 3, 3, 2, 1, NULL, NULL, 14, 2, 1, 1, NULL, NULL),
(365, 1365, 9822020365, 'marwan', 'avatars/1365.jpg', 'محمديحيى', 'ماجد', 'يحيى', 'عبدالمعطي', 'NASIR', 'ROJINA', 'GHADA', 'MARWAN', 464, '795900365', 'marwan@oneonlinemark', '1975-04-01', '2002-12-01', NULL, 123, 123, 6, 2, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 12, 3, 1, 1, NULL, NULL),
(366, 1366, 9822020366, 'adli', 'avatars/1366.jpg', 'محمود', 'ماهر', 'تحسين', 'عبدالله', 'NASSAR', 'SAMEER', 'EQAB', 'ADLI', 465, '795900366', 'adli@oneonlinemarket', '1976-12-01', '2002-12-31', NULL, 88, 88, 6, 2, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 7, 2, 1, 1, NULL, NULL),
(367, 1367, 9822020367, 'majed', 'avatars/1367.jpg', 'مخلد', 'مبارك', 'دخل الله', 'نصرالله', 'NASSER', 'MUHAB', 'AMER', 'MAJED', 466, '795900367', 'majed@oneonlinemarke', '1971-12-07', '2002-12-31', NULL, 58, 58, 6, 2, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 11, 3, 1, 1, NULL, NULL),
(368, 1368, 9822020368, 'amani', 'avatars/1368.jpg', 'مدالله', 'مثقال', 'نواش', 'لطفي', 'NATHEER', 'NAJEEB', 'RAIDA', 'AMANI', 467, '795900368', 'amani@oneonlinemarke', '1972-10-29', '2002-12-31', NULL, 255, 255, 6, 2, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(369, 1369, 9822020369, 'mohammad odeh', 'avatars/1369.jpg', 'مدين', 'مجول', 'فليح', 'عادل', 'NAWAF', 'SAI\'\'D', 'FAWZI', 'MOHAMMAD ODEH', 468, '795900369', 'mohammadodeh@oneonli', '1975-12-25', '2002-12-31', NULL, 122, 122, 6, 8, 2, 24, 9, 3, 3, 2, 1, NULL, NULL, 13, 3, 1, 1, NULL, NULL),
(370, 1370, 9822020370, 'saad', 'avatars/1370.jpg', 'مراد', 'محسن', 'انور', 'باجس', 'NEAMAT', 'YOUSEF SHEHADAH', 'GHASAP', 'SAAD', 469, '795900370', 'saad@oneonlinemarket', '1982-01-05', '2002-12-31', NULL, 123, 123, 6, 2, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(371, 1371, 9822020371, 'fatimeh', 'avatars/1371.jpg', 'مرام', 'محمد', 'عبد المهدي', 'ياسين', 'NEDAM', 'MONIRA', 'RA\'\'FAT', 'FATIMEH', 470, '795900371', 'fatimeh@oneonlinemar', '1971-09-14', '2002-12-31', NULL, 255, 255, 6, 2, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 5, 2, 1, 1, NULL, NULL),
(372, 1372, 9822020372, 'eihab', 'avatars/1372.jpg', 'مروان', 'محمد', 'عبد المجيد', 'عبدالله', 'NESREEN', 'QASSEM', 'FATIMEH', 'EIHAB', 471, '795900372', 'eihab@oneonlinemarke', '1973-11-01', '2002-12-01', NULL, 122, 122, 6, 8, 2, NULL, 9, 3, 3, 2, 1, NULL, NULL, 2, 2, 1, 1, NULL, NULL),
(373, 1373, 9822020373, 'juma\'\'h', 'avatars/1373.jpg', 'مروى', 'محمد', 'بلال', 'ماجد', 'NIDAL', 'FATIMA', 'FERAS', 'JUMA\'\'H', 472, '795900373', 'juma\'\'h@oneonlinemar', '1966-02-01', '2002-12-31', NULL, 123, 123, 6, 2, 1, NULL, 9, 3, 3, 2, 2, NULL, NULL, 10, 3, 1, 1, NULL, NULL),
(374, 1374, 9822020374, 'khaldoun', 'avatars/1374.jpg', 'مريم', 'محمود', 'حافظ', 'شعبان', 'NIMER', 'WALID', 'RATIB', 'KHALDOUN', 473, '795900374', 'khaldoun@oneonlinema', '1980-03-16', '2002-12-31', NULL, 257, 257, 6, 8, 2, 24, 9, 3, 3, 2, 1, NULL, NULL, 10, 3, 1, 1, NULL, NULL),
(375, 1375, 9822020375, 'khalaf', 'avatars/1375.jpg', 'مشهور', 'محيسن', 'محمد', 'يونس', 'NISREEN', 'KHALDOUN', 'RAEID', 'KHALAF', 474, '795900375', 'khalaf@oneonlinemark', '1968-11-23', '2002-12-31', NULL, 255, 255, 6, 2, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 10, 3, 1, 1, NULL, NULL),
(376, 1376, 9822020376, 'fathi', 'avatars/1376.jpg', 'مصطفى', 'مخلص', 'سمر', 'شوال', 'NITHAL', 'RATIB', 'FAWAZ', 'FATHI', 475, '795900376', 'fathi@oneonlinemarke', '1975-01-08', '2002-12-31', NULL, 123, 122, 6, 7, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 5, 2, 1, 1, NULL, NULL),
(377, 1377, 9822020377, 'hamad', 'avatars/1377.jpg', 'معاذ', 'مرزوق', 'بسيم', 'بخيت', 'NOMAN', 'RUMZI', 'RAJAB', 'HAMAD', 476, '795900377', 'hamad@oneonlinemarke', '1975-04-08', '2002-12-31', NULL, 255, 255, 6, 2, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(378, 1378, 9822020378, 'maram', 'avatars/1378.jpg', 'معتصم', 'مرعي', 'عبدالهادي', 'عطا الله', 'NOUFAN', 'MUHAMMAD ZAID', 'AMJAD', 'MARAM', 477, '795900378', 'maram@oneonlinemarke', '1972-01-01', '2002-12-31', NULL, 58, 58, 6, 2, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 12, 3, 1, 1, NULL, NULL),
(379, 1379, 9822020379, 'atef', 'avatars/1379.jpg', 'معمر', 'مزيد', 'فارس', 'عواد', 'NUMAN', 'MOHMOUD', 'ABDEL HAMID', 'ATEF', 478, '795900379', 'atef@oneonlinemarket', '1971-06-01', '2002-12-31', NULL, 11, 11, 1, 7, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 12, 2, 1, 1, NULL, NULL),
(380, 1380, 9822020380, 'abrahim', 'avatars/1380.jpg', 'معن', 'مسخر', 'قويدر', 'جديع', 'NUSTAFA', 'ANWAR', 'AL KHDOUR', 'ABRAHIM', 479, '795900380', 'abrahim@oneonlinemar', '1963-01-22', '2002-12-31', NULL, 58, 58, 6, 2, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(381, 1381, 9822020381, 'jawhar', 'avatars/1381.jpg', 'معين', 'مسعود', 'راضي', 'درويش', 'OLA', 'MUYASSAR', 'AMNEH', 'JAWHAR', 480, '795900381', 'jawhar@oneonlinemark', '1972-05-23', '2002-12-31', NULL, 58, 58, 6, 2, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 10, 3, 1, 1, NULL, NULL),
(382, 1382, 9822020382, 'abu dayah', 'avatars/1382.jpg', 'ملكه', 'مسلم', 'عبدالمحسن', 'عبد الحليم', 'OMAR', 'SABRI', 'ASMA', 'ABU DAYAH', 481, '795900382', 'abudayah@oneonlinema', '1975-08-14', '2002-12-31', NULL, 58, 58, 6, 5, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(383, 1383, 9822020383, 'hamidah', 'avatars/1383.jpg', 'ممدوح', 'مسيعد', 'مثقال', 'عبدالودود', 'OMER', 'MOHMAD', 'AMEN', 'HAMIDAH', 482, '795900383', 'hamidah@oneonlinemar', '1970-11-29', '2002-12-31', NULL, 58, 58, 6, 8, 2, 84, 9, 3, 3, 2, 1, NULL, NULL, 7, 2, 1, 1, NULL, NULL),
(384, 1384, 9822020384, 'raghda', 'avatars/1384.jpg', 'منار', 'مشافي', 'رجب', 'سعيد', 'OSAMA', 'SALWA', 'D\'\'YAB', 'RAGHDA', 483, '795900384', 'raghda@oneonlinemark', '1976-10-29', '2002-12-31', NULL, 86, 86, 6, 8, 2, 24, 9, 3, 3, 2, 2, 9, NULL, NULL, 3, 1, 1, NULL, NULL),
(385, 1385, 9822020385, 'enshirah', 'avatars/1385.jpg', 'منال', 'مشهور', 'بدر', 'هاني', 'OTHMAN', 'SALAMA', 'HYA', 'ENSHIRAH', 484, '795900385', 'enshirah@oneonlinema', '1976-02-12', '2003-06-01', NULL, 149, 149, 4, 8, 2, 85, 9, 2, 5, 3, 2, NULL, NULL, 2, 2, 1, 1, NULL, NULL),
(386, 1386, 9822020386, 'khetam', 'avatars/1386.jpg', 'منتصر', 'مصطفى', 'منصور', 'نضال', 'QASEM', 'BELAL', 'MSLAM', 'KHETAM', 485, '795900386', 'khetam@oneonlinemark', '1964-02-01', '2002-12-31', NULL, 233, 233, 4, 2, 1, NULL, 9, 3, 3, 2, 2, NULL, NULL, 10, 3, 1, 1, NULL, NULL),
(387, 1387, 9822020387, 'khleel', 'avatars/1387.jpg', 'منتهى', 'مصطفي', 'جاسر', 'فاليرا', 'QASIM', 'KAMAL', 'MUHANNAD', 'KHLEEL', 486, '795900387', 'khleel@oneonlinemark', '1968-10-01', '2002-12-31', NULL, 235, 235, 4, 8, 2, 36, 9, 3, 3, 2, 2, NULL, NULL, 10, 3, 1, 1, NULL, NULL),
(388, 1388, 9822020388, 'faraj', 'avatars/1388.jpg', 'منذر', 'مصلح', 'صالح', 'اسحاق', 'QASSEM', 'MOH\'\'D', 'KHALAF', 'FARAJ', 487, '795900388', 'faraj@oneonlinemarke', '1970-09-08', '2002-12-31', NULL, 193, 193, 4, 12, 3, 94, 9, 3, 3, 2, 2, NULL, NULL, 4, 2, 1, 1, NULL, NULL),
(389, 1389, 9822020389, 'khair', 'avatars/1389.jpg', 'منصور', 'مصول', 'ابراهيم', 'هويمل', 'RAAFAT', 'RADWAN', 'MUHAB', 'KHAIR', 488, '795900389', 'khair@oneonlinemarke', '1974-02-03', '2002-12-31', NULL, 233, 233, 4, 8, 2, 24, 9, 3, 3, 2, 2, NULL, NULL, 10, 3, 1, 1, NULL, NULL),
(390, 1390, 9822020390, 'mouffaq', 'avatars/1390.jpg', 'منوة', 'مضفي', 'نصار', 'امين', 'RADAD', 'SOLIMAN', 'MOHANNAD', 'MOUFFAQ', 489, '795900390', 'mouffaq@oneonlinemar', '1977-09-06', '2002-12-31', NULL, 224, 224, 4, 5, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 14, 3, 1, 1, NULL, NULL),
(391, 1391, 9822020391, 'rami', 'avatars/1391.jpg', 'منى', 'مطاوع', 'بدر', 'عبد الله', 'RADI', 'HAYAT', 'EZAT', 'RAMI', 490, '795900391', 'rami@oneonlinemarket', '1967-09-18', '2002-12-31', NULL, 93, 93, 7, 2, 1, NULL, 9, 3, 3, 2, 1, 20, NULL, NULL, 2, 1, 1, NULL, NULL),
(392, 1392, 9822020392, 'mohamed', 'avatars/1392.jpg', 'منيرة', 'مطر', 'جليل', 'بدر', 'RADWAN', 'KHALID', 'MUFLEH', 'MOHAMED', 491, '795900392', 'mohamed@oneonlinemar', '1968-12-19', '2002-12-31', NULL, 233, 233, 4, 8, 2, 24, 9, 3, 3, 2, 2, NULL, NULL, 12, 3, 1, 1, NULL, NULL),
(393, 1393, 9822020393, 'majid', 'avatars/1393.jpg', 'منيره', 'مطلق', 'شلاش', 'زبن', 'RAED', 'AWAD', 'MUHAMMAD ZAID', 'MAJID', 492, '795900393', 'majid@oneonlinemarke', '1963-06-05', '2002-12-31', NULL, 235, 235, 4, 2, 1, NULL, 9, 3, 3, 2, 2, NULL, NULL, 11, 3, 1, 1, NULL, NULL),
(394, 1394, 9822020394, 'karam', 'avatars/1394.jpg', 'مها', 'مطير', 'عثمان', 'مسخر', 'RA\'\'EDA', 'RAED', 'MOUSA', 'KARAM', 493, '795900394', 'karam@oneonlinemarke', '1974-02-16', '2002-12-31', NULL, 231, 231, 4, 5, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 10, 3, 1, 1, NULL, NULL),
(395, 1395, 9822020395, 'mohammad', 'avatars/1395.jpg', 'مهاب', 'مطيع', 'لطفي', 'كمال', 'RAEID', 'MOH\'\'D OMRAN', 'MUIN', 'MOHAMMAD', 494, '795900395', 'mohammad@oneonlinema', '1970-10-20', '2002-12-31', NULL, 235, 235, 4, 8, 2, 24, 9, 3, 3, 2, 2, NULL, NULL, 12, 3, 1, 1, NULL, NULL),
(396, 1396, 9822020396, 'sabri', 'avatars/1396.jpg', 'مهند', 'معجل', 'ياسين', 'اسعد', 'RAFAT', 'MOUFFAQ', 'KHLID', 'SABRI', 495, '795900396', 'sabri@oneonlinemarke', '1971-10-24', '2002-12-31', NULL, 203, 203, 4, 8, 2, 143, 9, 3, 3, 2, 1, 20, NULL, NULL, 2, 1, 1, NULL, NULL),
(397, 1397, 9822020397, 'aiman', 'avatars/1397.jpg', 'موسى', 'معرف', 'يونس', 'ابراهيم', 'RA\'\'FAT', 'MUIN', 'LAMIA', 'AIMAN', 496, '795900397', 'aiman@oneonlinemarke', '1972-02-06', '2002-12-31', NULL, 208, 208, 4, 8, 2, 128, 9, 3, 2, 2, 1, NULL, NULL, 8, 2, 1, 1, NULL, NULL),
(398, 1398, 9822020398, 'mohmmad jmal', 'avatars/1398.jpg', 'موفق', 'معروف', 'بخيت', 'انور', 'RAGHDA', 'RAIDA', 'ENTESAR', 'MOHMMAD JMAL', 497, '795900398', 'mohmmadjmal@oneonlin', '1974-06-05', '2002-12-31', NULL, 88, 88, 6, 7, 1, NULL, 9, 3, 3, 2, 2, NULL, NULL, 14, 3, 1, 1, NULL, NULL),
(399, 1399, 9822020399, 'dia\'\'aldeen', 'avatars/1399.jpg', 'مؤيد', 'مفضي', 'عناد', 'رميثان', 'RAIDA', 'DEEP', 'FATHI', 'DIA\'\'ALDEEN', 498, '795900399', 'dia\'\'aldeen@oneonlin', '1964-06-01', '2002-12-01', NULL, 122, 122, 6, 2, 1, NULL, 9, 3, 3, 2, 2, NULL, NULL, 1, 2, 1, 1, NULL, NULL),
(400, 1400, 9822020400, 'ibraheem', 'avatars/1400.jpg', 'ميثاء', 'مفلح', 'هلال', 'محمد', 'RAJA', 'YUNIS', 'ESAM', 'IBRAHEEM', 499, '795900400', 'ibraheem@oneonlinema', '1982-04-28', '2002-12-31', NULL, 88, 88, 6, 3, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(401, 1401, 9822020401, 'khamis', 'avatars/1401.jpg', 'ميرفت', 'مقبل', 'زايد', 'عبد الحميد', 'RAJAB', 'NABIL', 'ENSHIRAH', 'KHAMIS', 500, '795900401', 'khamis@oneonlinemark', '1972-06-06', '2002-12-31', NULL, 88, 88, 6, 2, 1, NULL, 9, 3, 3, 2, 2, NULL, NULL, 10, 3, 1, 1, NULL, NULL),
(402, 1402, 9822020402, 'al khdour', 'avatars/1402.jpg', 'ميس', 'ممدوح', 'عاتق', 'بركات', 'RAJIE', 'FATEN', 'EID', 'AL KHDOUR', 501, '795900402', 'alkhdour@oneonlinema', '1966-01-01', '2002-12-31', NULL, 88, 88, 6, 2, 1, NULL, 9, 3, 3, 2, 2, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(403, 1403, 9822020403, 'abdalla', 'avatars/1403.jpg', 'ميساء', 'مناور', 'شعبان', 'رجا', 'RAMADAN', 'KHETAM', 'EIHAB', 'ABDALLA', 502, '795900403', 'abdalla@oneonlinemar', '1969-01-13', '2002-12-31', NULL, 88, 88, 6, 2, 1, NULL, 9, 3, 3, 2, 2, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(404, 1404, 9822020404, 'jumah', 'avatars/1404.jpg', 'ميسر', 'منذر', 'الشواف', 'كمال', 'RAMI', 'MAMOUN', 'EMAD', 'JUMAH', 503, '795900404', 'jumah@oneonlinemarke', '1969-08-21', '2002-12-31', NULL, 88, 88, 6, 2, 1, NULL, 9, 3, 3, 2, 2, NULL, NULL, 10, 3, 1, 1, NULL, NULL),
(405, 1405, 9822020405, 'chaleb', 'avatars/1405.jpg', 'ميسون', 'منصور', 'حسين', 'بخيت', 'RANA', 'ABDELLAH', 'KHLOUD', 'CHALEB', 504, '795900405', 'chaleb@oneonlinemark', '1960-02-08', '2002-12-31', NULL, 204, 204, 4, 7, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 14, 2, 1, 1, NULL, NULL),
(406, 1406, 9822020406, 'abedalkarem', 'avatars/1406.jpg', 'ميشيل', 'منور', 'طايل', 'مطاوع', 'RASHRASH', 'DAOUD', 'KHALEEL', 'ABEDALKAREM', 505, '795900406', 'abedalkarem@oneonlin', '1964-04-01', '2002-12-31', NULL, 198, 198, 4, 8, 2, 24, 9, 3, 3, 2, 2, NULL, NULL, 5, 1, 1, 1, NULL, NULL),
(407, 1407, 9822020407, 'majedah', 'avatars/1407.jpg', 'ميلاد', 'منيب', 'عطاالله', 'طه', 'RATIB', 'RMITHAN', 'DKAILALLAH', 'MAJEDAH', 506, '795900407', 'majedah@oneonlinemar', '1975-03-01', '2002-12-31', NULL, 86, 86, 6, 8, 2, 84, 9, 3, 3, 2, 2, NULL, NULL, 11, 3, 1, 1, NULL, NULL),
(408, 1408, 9822020408, 'ehab', 'avatars/1408.jpg', 'ناجح', 'منير', 'نايف', 'الشواف', 'RAWHI', 'YUSRI', 'RAWHI', 'EHAB', 507, '795900408', 'ehab@oneonlinemarket', '1984-07-19', '2002-12-31', NULL, 257, 257, 6, 8, 2, 134, 9, 3, 3, 2, 1, NULL, NULL, 1, 2, 1, 1, NULL, NULL),
(409, 1409, 9822020409, 'addallah', 'avatars/1409.jpg', 'ناجى', 'منيزل', 'نصر', 'عزت', 'REBHE', 'YASMEEN', 'FEDA\'\'', 'ADDALLAH', 508, '795900409', 'addallah@oneonlinema', '1980-11-17', '2002-12-31', NULL, 122, 122, 6, 7, 1, NULL, 9, 3, 3, 2, 2, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(410, 1410, 9822020410, 'shahera', 'avatars/1410.jpg', 'نادر', 'مهدي', 'منيب', 'عناد', 'REDA', 'TURKY', 'RAMADAN', 'SHAHERA', 509, '795900410', 'shahera@oneonlinemar', '1979-03-07', '2002-12-31', NULL, 255, 255, 6, 2, 1, NULL, 9, 3, 3, 2, 1, 36, 8, NULL, NULL, 2, 1, NULL, NULL),
(411, 1411, 9822020411, 'amen', 'avatars/1411.jpg', 'ناديا', 'موسى', 'طاهر', 'رجب', 'RIZQ', 'MUFLEH', 'QASIM', 'AMEN', 510, '795900411', 'amen@oneonlinemarket', '1971-12-05', '2003-01-25', NULL, 254, 254, 7, 13, 4, 5, 9, 1, 3, 3, 2, NULL, NULL, 10, 2, 1, 1, NULL, NULL),
(412, 1412, 9822020412, 'radwan', 'avatars/1412.jpg', 'نادين', 'ناجي', 'نعيم', 'صبري', 'RMITHAN', 'WLEED', 'AWWAD', 'RADWAN', 511, '795900412', 'radwan@oneonlinemark', '1980-06-20', '2003-01-25', NULL, 66, 66, 3, 13, 4, 149, 9, 1, 5, 3, 2, 15, 11, NULL, NULL, 3, 1, NULL, NULL),
(413, 1413, 9822020413, 'eiad', 'avatars/1413.jpg', 'نارت', 'ناصر', 'عبده', 'عبدالمجيد', 'ROGAYAH', 'MUTLAG', 'SHAHERA', 'EIAD', 512, '795900413', 'eiad@oneonlinemarket', '1972-05-22', '2003-01-25', NULL, 279, 279, 5, 12, 3, 159, 9, 2, 5, 3, 1, NULL, NULL, 1, 2, 1, 1, NULL, NULL),
(414, 1414, 9822020414, 'ibtehal', 'avatars/1414.jpg', 'ناريمان', 'ناظم', 'عبدالحميد', 'هاشم', 'ROJINA', 'SOUD', 'JAMEEL', 'IBTEHAL', 513, '795900414', 'ibtehal@oneonlinemar', '1977-10-05', '2003-01-25', NULL, 163, 163, 4, 12, 3, 81, 9, 2, 5, 3, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(415, 1415, 9822020415, 'majd', 'avatars/1415.jpg', 'ناصر', 'نايف', 'مصلح', 'بدر', 'RUMZI', 'SUHA', 'RADWAN', 'MAJD', 514, '795900415', 'majd@oneonlinemarket', '1978-02-03', '2003-01-25', NULL, 254, 254, 7, 13, 4, 207, 9, 1, 4, 3, 1, NULL, NULL, 11, 3, 1, 1, NULL, NULL),
(416, 1416, 9822020416, 'abdalaziz', 'avatars/1416.jpg', 'نافذ', 'نايل', NULL, 'جزاع', 'SAAD', 'SHAHERA', 'AZMI', 'ABDALAZIZ', 515, '795900416', 'abdalaziz@oneonlinem', '1977-03-20', '2003-04-01', NULL, 69, 69, 3, 17, 5, 5, 9, 1, 3, 3, 1, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(417, 1417, 9822020417, 'yusri', 'avatars/1417.jpg', 'نافز', 'نبهان', 'جبريل', 'عبدالمهدي', 'SAADI', 'SAED', 'YOUSEF', 'YOUSEF SHEHADAH', 516, '795900417', 'yusri@oneonlinemarke', '1975-08-22', '2003-04-01', NULL, 301, 302, 2, 13, 4, 177, 9, 1, 2, 3, 1, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(418, 1418, 9822020418, 'entesar', 'avatars/1418.jpg', 'ناهد', 'نبيل', 'نبيل', 'منصور', 'SABAH', 'SULTAN', 'RAED', 'ENTESAR', 517, '795900418', 'entesar@oneonlinemar', '1978-06-04', '2003-04-01', NULL, 254, 254, 7, 13, 4, 159, 1, 1, 3, 3, 2, NULL, NULL, 2, 2, 1, 1, NULL, NULL),
(419, 1419, 9822020419, 'eqab', 'avatars/1419.jpg', 'نايفه', 'نجيب', 'امطير', 'نايف', 'SABER', 'MOH\'\'D JAWAD', 'RIZQ', 'EQAB', 518, '795900419', 'eqab@oneonlinemarket', '1970-10-05', '2003-04-01', NULL, 258, 258, 1, 13, 4, 142, 9, 1, 3, 3, 2, NULL, NULL, 2, 2, 1, 1, NULL, NULL),
(420, 1420, 9822020420, 'nisreen', 'avatars/1420.jpg', 'نائل', 'نزال', 'هايل', 'عايش', 'SABRI', 'RA\'\'EDA', 'ADDEL-AL-QADIR', 'NISREEN', 519, '795900420', 'nisreen@oneonlinemar', '1974-03-01', '2003-04-01', NULL, 50, 50, 7, 13, 4, 120, 9, 1, 3, 3, 1, 22, 10, NULL, NULL, 3, 1, NULL, NULL),
(421, 1421, 9822020421, 'yunis', 'avatars/1421.jpg', 'نبيل', 'نصار', 'فالح', 'عيد', 'SAED', 'SAAD', 'YOUNES', 'YOUSEF', 520, '795900421', 'yunis@oneonlinemarke', '1975-05-16', '2003-04-01', NULL, 302, 302, 2, 13, 4, 158, 9, 1, 3, 3, 2, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL),
(422, 1422, 9822020422, 'hanan', 'avatars/1422.jpg', 'نجاة', 'نصر', 'بدر', 'جاسر', 'SA\'\'ED', 'SALAH', 'RADAD', 'HANAN', 521, '795900422', 'hanan@oneonlinemarke', '1976-01-01', '2003-04-01', NULL, 254, 254, 7, 13, 4, 177, 9, 1, 3, 3, 1, NULL, NULL, 7, 2, 1, 1, NULL, NULL),
(423, 1423, 9822020423, 'omar', 'avatars/1423.jpg', 'نجاح', 'نصر الدين', 'سلطي', 'ايوب', 'SAEED', 'SUHAD', 'AHMED', 'OMAR', 522, '795900423', 'omar@oneonlinemarket', '1978-03-20', '2003-04-01', NULL, 54, 54, 7, 13, 4, 198, 9, 1, 1, 1, 1, 19, 7, NULL, NULL, 1, 1, NULL, NULL),
(424, 1424, 9822020424, 'omer', 'avatars/1424.jpg', 'نجود', 'نصرالله', 'صويلح', 'احمد', 'SA\'\'EED', 'SULEMAN', 'AIDA', 'OMER', 523, '795900424', 'omer@oneonlinemarket', '1978-05-01', '2003-04-01', NULL, 57, 57, 7, 13, 4, 198, 9, 1, 3, 3, 1, NULL, 2, NULL, NULL, 3, 1, NULL, NULL),
(425, 1425, 9822020425, 'marazouq', 'avatars/1425.jpg', 'نجوى', 'نضال', 'فهد', 'كومال', 'SAHAR', 'GHADA', 'BASSAM', 'MARAZOUQ', 524, '795900425', 'marazouq@oneonlinema', '1966-06-26', '2003-04-01', NULL, 77, 77, 3, 13, 4, 177, 9, 1, 2, 3, 1, NULL, NULL, 12, 3, 1, 1, NULL, NULL),
(426, 1426, 9822020426, 'jumana', 'avatars/1426.jpg', 'نذير', 'نظير', 'سليم', 'عادي', 'SAID', 'SALIH', 'HANADAH', 'JUMANA', 525, '795900426', 'jumana@oneonlinemark', '1976-05-01', '2003-04-01', NULL, 126, 126, 1, 13, 4, 160, 9, 1, 4, 3, 2, NULL, NULL, 10, 3, 1, 1, NULL, NULL),
(427, 1427, 9822020427, 'murad', 'avatars/1427.jpg', 'نسرين', 'نعيم', 'عطية', 'امبدي', 'SAI\'\'D', 'RAGHDA', 'ABDALRHAMAN', 'MURAD', 526, '795900427', 'murad@oneonlinemarke', '1974-05-11', '2003-04-01', NULL, 7, 7, 1, 13, 4, 133, 9, 1, 4, 3, 1, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(428, 1428, 9822020428, 'zainab', 'avatars/1428.jpg', 'نصار', 'نمر', 'عوده', 'فارع', 'SAIF', 'HUSSEIN', 'YUNIS', 'YUSRI', 527, '795900428', 'zainab@oneonlinemark', '1968-01-24', '2003-04-01', NULL, 304, 304, 2, 13, 4, 139, 9, 1, 4, 3, 2, NULL, NULL, NULL, 3, 1, 1, NULL, NULL),
(429, 1429, 9822020429, 'nadia', 'avatars/1429.jpg', 'نصر', 'نهار', 'باسل', 'هايل', 'SALAH', 'SEHAM', 'ABDFATTAH', 'NADIA', 528, '795900429', 'nadia@oneonlinemarke', '1977-01-01', '2003-04-01', NULL, 24, 24, 1, 18, 5, 5, 9, 1, 3, 3, 1, 32, 5, NULL, NULL, NULL, 1, NULL, NULL),
(430, 1430, 9822020430, 'taha', 'avatars/1430.jpg', 'نصر الدين', 'نواش', 'مبارك', 'عمر', 'SALAMA', 'MANAL', 'SULTAN', 'TAHA', 529, '795900430', 'taha@oneonlinemarket', '1969-08-30', '2003-04-01', NULL, 288, 288, 2, 13, 4, 30, 9, 1, 2, 3, 2, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL),
(431, 1431, 9822020431, 'khaleel', 'avatars/1431.jpg', 'نضال', 'نواف', 'سعود', 'بدر', 'SALAMEH', 'RAEID', 'SAI\'\'D', 'KHALEEL', 530, '795900431', 'khaleel@oneonlinemar', '1974-03-06', '2003-04-01', NULL, 270, 270, 1, 13, 4, 82, 9, 1, 3, 3, 1, NULL, NULL, 10, 3, 1, 1, NULL, NULL),
(432, 1432, 9822020432, 'salman', 'avatars/1432.jpg', 'نظام', 'نوفان', 'حسام', 'جراد', 'SALEEM', 'BASEM', 'NAJAH', 'SALMAN', 531, '795900432', 'salman@oneonlinemark', '1963-12-01', '2003-04-01', NULL, 245, 245, 7, 13, 4, 203, 9, 1, 2, 3, 1, 40, NULL, NULL, NULL, 1, 1, NULL, NULL),
(433, 1433, 9822020433, 'attallah', 'avatars/1433.jpg', 'نعمان', 'هاشم', 'نظير', 'انيس', 'SALEH', 'REDA', 'FAIMA', 'ATTALLAH', 532, '795900433', 'attallah@oneonlinema', '1975-02-08', '2003-05-01', NULL, 103, 103, 7, 13, 4, 6, 9, 1, 5, 3, 1, NULL, NULL, 12, 2, 1, 1, NULL, NULL),
(434, 1434, 9822020434, 'isam', 'avatars/1434.jpg', 'نعمت', 'هاني', NULL, 'علي', 'SALEM', 'SAID', 'MASHOOR', 'ISAM', 533, '795900434', 'isam@oneonlinemarket', '1975-12-08', '2003-05-01', NULL, 216, 216, 4, 12, 3, 8, 9, 2, 4, 3, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(435, 1435, 9822020435, 'ayyoub', 'avatars/1435.jpg', 'نعمه', 'هايل', 'بركات', 'بسام', 'SALIH', 'SALMAN', 'BASSEM', 'AYYOUB', 534, '795900435', 'ayyoub@oneonlinemark', '1976-08-22', '2003-05-01', NULL, 80, 80, 3, 13, 4, 13, 9, 1, 5, 3, 1, NULL, NULL, 13, 2, 1, 1, NULL, NULL),
(436, 1436, 9822020436, 'belal', 'avatars/1436.jpg', 'نعيمه', 'هزيم', 'بخيت', 'تيم', 'SALIM', 'OLA', 'KHALDOUN', 'BELAL', 535, '795900436', 'belal@oneonlinemarke', '1973-07-27', '2003-05-01', NULL, 193, 193, 4, 8, 2, 24, 9, 2, 6, 3, 1, NULL, NULL, 14, 2, 1, 1, NULL, NULL),
(437, 1437, 9822020437, 'iqab', 'avatars/1437.jpg', 'نغم', 'هلال', 'امحيسن', 'الشراري', 'SALMAN', 'WALEED', 'MARWAN', 'IQAB', 536, '795900437', 'iqab@oneonlinemarket', '1980-03-06', '2003-05-01', NULL, 215, 215, 4, 8, 2, 150, 9, 2, 6, 3, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(438, 1438, 9822020438, 'hazem', 'avatars/1438.jpg', 'نفين', 'هويشل', 'احمد سليم', 'عارف', 'SALWA', 'HELAL', 'HUSAM', 'HAZEM', 537, '795900438', 'hazem@oneonlinemarke', '1967-11-05', '2003-05-01', NULL, 144, 144, 4, 12, 3, 111, 9, 2, 4, 3, 1, NULL, NULL, 7, 2, 1, 1, NULL, NULL),
(439, 1439, 9822020439, 'ayman', 'avatars/1439.jpg', 'نمر', 'هويمل', 'ثلجي', 'بدر', 'SAMEER', 'NEAMAT', 'MARAM', 'AYMAN', 538, '795900439', 'ayman@oneonlinemarke', '1973-02-20', '2003-05-01', NULL, 215, 215, 4, 11, 3, 10, 9, 2, 5, 3, 1, NULL, NULL, 12, 2, 1, 1, NULL, NULL),
(440, 1440, 9822020440, 'faima', 'avatars/1440.jpg', 'نهال', 'هيشان', 'رزق', 'صالح', 'SAMI', 'SALEEM', 'RADI', 'FAIMA', 539, '795900440', 'faima@oneonlinemarke', '1976-02-15', '2003-05-01', NULL, 254, 254, 7, 13, 4, 6, 9, 1, 4, 3, 1, NULL, NULL, 3, 2, 1, 1, NULL, NULL),
(441, 1441, 9822020441, 'hasan', 'avatars/1441.jpg', 'نهى', 'وحيد', 'مضفي', 'نوفان', 'SAMIH', 'MUSLEH', 'BANAN', 'HASAN', 540, '795900441', 'hasan@oneonlinemarke', '1972-05-12', '2003-05-01', NULL, 75, 75, 3, 13, 4, 146, 9, 1, 4, 3, 1, NULL, NULL, 7, 2, 1, 1, NULL, NULL),
(442, 1442, 9822020442, 'abed alateef', 'avatars/1442.jpg', 'نوال', 'وليد', 'حسني', 'مشهور', 'SAUD', 'SALIM', 'MOHAMMAD', 'ABED ALATEEF', 541, '795900442', 'abedalateef@oneonlin', '1976-05-03', '2003-05-01', NULL, 220, 220, 4, 13, 4, 26, 9, 1, 5, 3, 1, NULL, NULL, 4, 1, 1, 1, NULL, NULL),
(443, 1443, 9822020443, 'abdfattah', 'avatars/1443.jpg', 'نور', 'ياسين', 'ساكت', 'سامح', 'SEHAM', 'NAEF', 'BAJES', 'ABDFATTAH', 542, '795900443', 'abdfattah@oneonlinem', '1972-07-03', '2003-05-01', NULL, 73, 73, 3, 13, 4, 35, 9, 1, 4, 3, 1, NULL, NULL, 4, 1, 1, 1, NULL, NULL),
(444, 1444, 9822020444, 'ibtisam', 'avatars/1444.jpg', 'نور الدين', 'يحيى', 'شتيان', 'توفيق', 'SHA\'\'ABAN', 'RAFAT', 'MARAZOUQ', 'IBTISAM', 543, '795900444', 'ibtisam@oneonlinemar', '1974-03-13', '2003-05-01', NULL, 215, 215, 4, 13, 4, 13, 9, 1, 5, 3, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(445, 1445, 9822020445, 'ezat', 'avatars/1445.jpg', 'هادي', 'يعقوب', 'اشتيان', 'علي', 'SHABAB', 'SHEHADEH', 'IBTISAM', 'EZAT', 544, '795900445', 'ezat@oneonlinemarket', '1977-06-28', '2003-05-01', NULL, 153, 153, 4, 12, 3, 8, 9, 2, 5, 3, 1, NULL, NULL, 3, 2, 1, 1, NULL, NULL),
(446, 1446, 9822020446, 'fahme', 'avatars/1446.jpg', 'هاشم', 'يوسف', 'رشراش', 'زيدون', 'SHAFIQ', 'MOHAMMAD ALI', 'MANAL', 'FAHME', 545, '795900446', 'fahme@oneonlinemarke', '1970-04-11', '2003-05-01', NULL, 215, 215, 4, 11, 3, 8, 9, 2, 4, 3, 1, NULL, NULL, 3, 2, 1, 1, NULL, NULL),
(447, 1447, 9822020447, 'diaa al-din', 'avatars/1447.jpg', 'هاني', 'يونس', 'عبدالمجيد', 'جمال', 'SHAHERA', 'WAJDI', 'BASSEL', 'DIAA AL-DIN', 546, '795900447', 'diaaal-din@oneonline', '1980-02-17', '2003-05-01', NULL, 77, 77, 3, 13, 4, 207, 9, 1, 5, 3, 1, NULL, NULL, 1, 2, 1, 1, NULL, NULL),
(448, 1448, 9822020448, 'bajes', 'avatars/1448.jpg', 'هبه', 'انور', 'بركات', 'مصطفى', 'SHAREIF', 'MUSA', 'LUAI', 'BAJES', 547, '795900448', 'bajes@oneonlinemarke', '1972-04-14', '2003-05-01', NULL, 209, 209, 4, 12, 3, 124, 9, 2, 4, 3, 1, NULL, NULL, 13, 2, 1, 1, NULL, NULL),
(449, 1449, 9822020449, 'fryal', 'avatars/1449.jpg', 'هبه الله', 'انيس', 'نبهان', 'شاهر', 'SHARIF', 'BAJES', 'JABER', 'FRYAL', 548, '795900449', 'fryal@oneonlinemarke', '1963-11-13', '2003-05-01', NULL, 161, 161, 4, 12, 3, 44, 9, 2, 4, 3, 1, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(450, 1450, 9822020450, 'ibrahim', 'avatars/1450.jpg', 'هديل', 'ايوب', 'عبدالرزاق', 'فوزي', 'SHAVEGE', 'TAHER', 'ISMAEL', 'IBRAHIM', 549, '795900450', 'ibrahim@oneonlinemar', '1978-11-11', '2003-05-01', NULL, 156, 156, 4, 13, 4, 101, 9, 1, 4, 3, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(451, 1451, 9822020451, 'fuad', 'avatars/1451.jpg', 'هشام', 'باجس', 'محمد', 'نوفان', 'SHAWQI', 'ATTIA', 'JAMAL', 'FUAD', 550, '795900451', 'fuad@oneonlinemarket', '1963-05-25', '2003-05-01', NULL, 163, 163, 4, 12, 3, 81, 9, 2, 4, 3, 1, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(452, 1452, 9822020452, 'abdelqader', 'avatars/1452.jpg', 'هلال', 'باسل', 'شحادة', 'كامل', 'SHEHADEH', 'MUHSEN', 'BADRAN', 'ABDELQADER', 551, '795900452', 'abdelqader@oneonline', '1972-01-19', '2003-05-01', NULL, 73, 73, 3, 13, 4, 140, 9, 1, 4, 3, 1, NULL, NULL, 3, 1, 1, 1, NULL, NULL),
(453, 1453, 9822020453, 'hayat', 'avatars/1453.jpg', 'همام', 'بخيت', 'حمود', 'ابراهيم', 'SMMOR', 'SA\'\'ED', 'RAAFAT', 'HAYAT', 552, '795900453', 'hayat@oneonlinemarke', '1975-09-06', '2003-05-01', NULL, 254, 254, 7, 13, 4, 26, 9, 1, 5, 3, 1, NULL, NULL, 7, 2, 1, 1, NULL, NULL),
(454, 1454, 9822020454, 'ghalib', 'avatars/1454.jpg', 'هنا', 'بدر', 'كومال', 'عبدالوالي', 'SOFIAN', 'AWWAD', 'KHAIRIEH', 'GHALIB', 553, '795900454', 'ghalib@oneonlinemark', '1963-06-28', '2003-05-01', NULL, 193, 193, 4, 12, 3, 205, 9, 2, 6, 3, 1, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(455, 1455, 9822020455, 'fahed', 'avatars/1455.jpg', 'هناده', 'بركات', 'وليد', 'غصاب', 'SOFYAN', 'SUFYAN', 'KHALED', 'FAHED', 554, '795900455', 'fahed@oneonlinemarke', '1978-01-18', '2003-05-01', NULL, 193, 193, 4, 8, 2, 131, 9, 2, 6, 3, 1, NULL, NULL, 3, 2, 1, 1, NULL, NULL),
(456, 1456, 9822020456, 'abdalqader', 'avatars/1456.jpg', 'هيا', 'بسام', 'بركات', 'تركي', 'SOLIMAN', 'OSAMA', 'ISSA', 'ABDALQADER', 555, '795900456', 'abdalqader@oneonline', '1973-09-01', '2003-05-01', NULL, 157, 157, 4, 13, 4, 140, 9, 1, 5, 3, 1, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(457, 1457, 9822020457, 'moneer', 'avatars/1457.jpg', 'هيام', 'بسيم', 'منيزل', 'جبرائيل', 'SOUD', 'NISREEN', 'ISMAIL', 'MONEER', 556, '795900457', 'moneer@oneonlinemark', '1973-05-22', '2003-05-01', NULL, 157, 157, 4, 11, 3, 127, 9, 2, 6, 3, 1, NULL, NULL, 14, 3, 1, 1, NULL, NULL),
(458, 1458, 9822020458, 'abdelmahdi', 'avatars/1458.jpg', 'هيثم', 'محمد', 'عصري', 'رياض', 'SUAD', 'RADI', 'MOH\'\'D OMRAN', 'ABDELMAHDI', 557, '795900458', 'abdelmahdi@oneonline', '1974-01-19', '2003-05-01', NULL, 226, 226, 4, 12, 3, 94, 9, 2, 4, 3, 2, NULL, NULL, 2, 1, 1, 1, NULL, NULL),
(459, 1459, 9822020459, 'yahya', 'avatars/1459.jpg', 'وائل', 'محمد', 'عوض الله', 'مهدي', 'SUBHI', 'WAFA\'\'A', 'WASFI', 'YACOUB', 558, '795900459', 'yahya@oneonlinemarke', '1979-11-30', '2003-05-01', NULL, 298, 298, 2, 13, 4, 36, 9, 1, 5, 3, 2, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(460, 1460, 9822020460, 'abdelmo\'\'ti', 'avatars/1460.jpg', 'وجدي', 'باسل', 'مطيع', NULL, 'SUFYAN', 'NUMAN', 'SABRI', 'ABDELMO\'\'TI', 559, '795900460', 'abdelmo\'\'ti@oneonlin', '1973-07-18', '2003-05-01', NULL, 269, 269, 1, 12, 3, 122, 9, 2, 5, 3, 2, NULL, NULL, 2, 1, 1, 1, NULL, NULL),
(461, 1461, 9822020461, 'abdelmajeed', 'avatars/1461.jpg', 'وداد', 'بخيت', 'توفيق', 'منير', 'SUHA', 'NOMAN', 'MOUSTAFA', 'ABDELMAJEED', 560, '795900461', 'abdelmajeed@oneonlin', '1973-06-22', '2003-05-01', NULL, 232, 232, 4, 6, 1, NULL, 9, 2, 5, 3, 2, NULL, NULL, 2, 1, 1, 1, NULL, NULL),
(462, 1462, 9822020462, 'abed alkareem', 'avatars/1462.jpg', 'وسام', 'بدر', 'عبدالعزيز', 'جبريل', 'SUHAD', 'NAJI', 'SABER', 'ABED ALKAREEM', 561, '795900462', 'abedalkareem@oneonli', '1972-12-01', '2003-05-01', NULL, 269, 269, 1, 12, 3, 122, 9, 2, 5, 3, 2, NULL, NULL, 4, 1, 1, 1, NULL, NULL),
(463, 1463, 9822020463, 'abdel-halim', 'avatars/1463.jpg', 'وصفي', 'بركات', 'ماجد', 'بخيت', 'SULAIMAN', 'FATIMEH', 'ABDEL-HALIM', 'ABDEL-HALIM', 562, '795900463', 'abdel-halim@oneonlin', '1966-02-01', '2003-05-01', NULL, 278, 13, 5, 12, 3, 159, 9, 2, 3, 3, 2, NULL, NULL, 2, 1, 1, 1, NULL, NULL),
(464, 1464, 9822020464, 'azmi', 'avatars/1464.jpg', 'وفاء', 'نواش', 'بشير', 'كريم', 'SULEIMAN', 'DIAA AL-DIN', 'DAWOD', 'AZMI', 563, '795900464', 'azmi@oneonlinemarket', '1964-07-01', '2003-05-01', NULL, 86, 86, 6, 12, 3, 149, 9, 2, 5, 3, 2, NULL, NULL, 13, 2, 1, 1, NULL, NULL),
(465, 1465, 9822020465, 'khloud', 'avatars/1465.jpg', 'وليد', 'نواف', 'ابراهيم', 'بركات', 'SULEMAN', 'OMAR', 'SHAREIF', 'KHLOUD', 564, '795900465', 'khloud@oneonlinemark', '1973-08-01', '2003-05-01', NULL, 279, 279, 5, 12, 3, 159, 9, 2, 5, 3, 2, NULL, NULL, 10, 3, 1, 1, NULL, NULL),
(466, 1466, 9822020466, 'fadwa', 'avatars/1466.jpg', 'يارا', 'نوفان', 'مطر', 'عبدالغني', 'SULTAN', 'YOUNES', 'IQAB', 'FADWA', 565, '795900466', 'fadwa@oneonlinemarke', '1980-11-18', '2003-05-01', NULL, 153, 153, 4, 12, 3, 13, 9, 2, 5, 3, 1, NULL, NULL, 3, 2, 1, 1, NULL, NULL),
(467, 1467, 9822020467, 'fadia', 'avatars/1467.jpg', 'ياسر', 'هاشم', 'معرف', 'هيشان', 'SUMAIA', 'SMMOR', 'IMAD', 'FADIA', 566, '795900467', 'fadia@oneonlinemarke', '1977-07-07', '2003-05-01', NULL, 153, 153, 4, 12, 3, 8, 9, 2, 5, 3, 1, NULL, NULL, 3, 2, 1, 1, NULL, NULL),
(468, 1468, 9822020468, 'sabah', 'avatars/1468.jpg', 'ياسمين', 'هاني', 'حامد', 'داود', 'TAHA', 'WAFA\'\'', 'JAWHAR', 'SABAH', 567, '795900468', 'sabah@oneonlinemarke', '1979-08-14', '2003-05-01', NULL, 163, 163, 4, 17, 5, 115, 9, 1, 5, 3, 1, NULL, 3, NULL, NULL, 3, 1, NULL, NULL),
(469, 1469, 9822020469, 'mystafa', 'avatars/1469.jpg', 'ياسين', 'هايل', 'عبد الفتاح', 'قاسم', 'TAHER', 'YAHYA', 'ABDEL-RAHMAN', 'MYSTAFA', 568, '795900469', 'mystafa@oneonlinemar', '1980-07-07', '2003-05-01', NULL, 19, 19, 7, 13, 4, 109, 9, 1, 5, 3, 1, NULL, 6, NULL, NULL, NULL, 1, NULL, NULL),
(470, 1470, 9822020470, 'abdalrahman', 'avatars/1470.jpg', 'يحيى', 'هزيم', 'عمر', 'جبورة', 'TAISEER', 'SAMIH', 'IYAD', 'ABDALRAHMAN', 569, '795900470', 'abdalrahman@oneonlin', '1976-12-31', '2003-05-01', NULL, 157, 157, 4, 13, 4, 140, 9, 1, 5, 3, 1, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(471, 1471, 9822020471, 'abdulrahman', 'avatars/1471.jpg', 'يزن', 'هلال', 'سميح', 'عبدالحليم', 'TALAL', 'MOHMD', 'HUSNI', 'ABDULRAHMAN', 570, '795900471', 'abdulrahman@oneonlin', '1971-02-18', '2003-05-01', NULL, 144, 144, 4, 12, 3, 111, 9, 2, 5, 3, 1, NULL, NULL, 4, 1, 1, 1, NULL, NULL),
(472, 1472, 9822020472, 'saeed', 'avatars/1472.jpg', 'يسرى', 'امين', 'ايوب', 'لاشين', 'TALIB', 'WAFA', 'MUSALLAM', 'SAEED', 571, '795900472', 'saeed@oneonlinemarke', '1979-07-26', '2003-05-01', NULL, 236, 236, 4, 12, 3, 59, 9, 2, 2, 1, 1, 24, 7, NULL, NULL, 1, 1, NULL, NULL),
(473, 1473, 9822020473, 'mslam', 'avatars/1473.jpg', 'يسري', 'انور', 'جابر', 'باسل', 'TAREQ', 'SULAIMAN', 'SALEH', 'MSLAM', 572, '795900473', 'mslam@oneonlinemarke', '1978-04-01', '2003-05-01', NULL, 272, 272, 7, 12, 3, 111, 9, 2, 6, 3, 1, NULL, NULL, 14, 3, 1, 1, NULL, NULL),
(474, 1474, 9822020474, 'salameh', 'avatars/1474.jpg', 'يوسف', 'انيس', 'عاطف', 'بشير', 'TAWFIQ', 'YASER', 'NADIA', 'SALAMEH', 573, '795900474', 'salameh@oneonlinemar', '1980-11-07', '2003-05-01', NULL, 241, 241, 1, 13, 4, 160, 9, 1, 5, 3, 1, 44, 1, NULL, NULL, 2, 1, NULL, NULL),
(475, 1475, 9822020475, 'eied', 'avatars/1475.jpg', 'يونس', 'ايوب', 'عبد الفتاح', 'رشاد', 'TAYEL', 'NASER', 'ABDELMO\'\'TI', 'EIED', 574, '795900475', 'eied@oneonlinemarket', '1973-01-01', '2003-05-01', NULL, 13, 13, 1, 13, 4, 23, 9, 1, 4, 3, 2, NULL, NULL, 2, 2, 1, 1, NULL, NULL),
(476, 1476, 9822020476, 'tayseer', 'avatars/1476.jpg', 'امين', 'باجس', 'نواف', 'عاطف', 'TAYSEER', 'SAIF', 'TAWFIQ', 'TAYSEER', 575, '795900476', 'tayseer@oneonlinemar', '1975-12-30', '2003-05-01', NULL, 290, 290, 2, 13, 4, 198, 9, 1, 4, 3, 1, 15, 11, NULL, NULL, 3, 1, NULL, NULL),
(477, 1477, 9822020477, 'khaled', 'avatars/1477.jpg', 'انور', 'باسل', 'عبدالنور', 'نصر', 'THEIF-ALLAH', 'NEDAM', 'RMITHAN', 'KHALED', 576, '795900477', 'khaled@oneonlinemark', '1973-03-02', '2003-05-01', NULL, 258, 258, 1, 12, 3, 58, 9, 2, 4, 3, 2, NULL, NULL, 10, 3, 1, 1, NULL, NULL),
(478, 1478, 9822020478, 'muhammad zaid', 'avatars/1478.jpg', 'انيس', 'بخيت', 'طلب', 'انيس', 'TURKY', 'MONEER', 'FARES', 'MUHAMMAD ZAID', 577, '795900478', 'muhammadzaid@oneonli', '1971-08-08', '2003-05-01', NULL, 110, 110, 1, 13, 4, 5, 9, 1, 5, 3, 1, NULL, NULL, 14, 3, 1, 1, NULL, NULL),
(479, 1479, 9822020479, 'mashour', 'avatars/1479.jpg', 'ايوب', 'بدر', 'باسل', 'راغب', 'WAEL', 'MOHAMMD', 'IZIDEEN', 'MASHOUR', 578, '795900479', 'mashour@oneonlinemar', '1970-07-26', '2003-05-01', NULL, 158, 158, 4, 12, 3, 186, 9, 2, 5, 3, 1, NULL, NULL, 12, 3, 1, 1, NULL, NULL),
(480, 1480, 9822020480, 'muhab', 'avatars/1480.jpg', 'باجس', 'بركات', 'رفعت', 'سرور', 'WAFA', 'SAEED', 'FAKHRE', 'MUHAB', 579, '795900480', 'muhab@oneonlinemarke', '1975-10-01', '2003-05-01', NULL, 103, 103, 7, 13, 4, 149, 9, 1, 4, 3, 1, NULL, NULL, 14, 3, 1, 1, NULL, NULL),
(481, 1481, 9822020481, 'fawaz', 'avatars/1481.jpg', 'باسل', 'بسام', 'شاكر', 'عبدالحميد', 'WAFA\'\'', 'AIDA', 'SABAH', 'FAWAZ', 580, '795900481', 'fawaz@oneonlinemarke', '1962-05-24', '2003-05-01', NULL, 268, 268, 1, 12, 3, 5, 9, 2, 4, 3, 1, NULL, NULL, 5, 2, 1, 1, NULL, NULL),
(482, 1482, 9822020482, 'farris', 'avatars/1482.jpg', 'بخيت', 'بسيم', 'عبد الرازق', 'نبيل', 'WAFA\'\'A', 'SABAH', 'SAED', 'FARRIS', 581, '795900482', 'farris@oneonlinemark', '1975-07-08', '2003-05-01', NULL, 269, 269, 1, 13, 4, 5, 9, 1, 5, 3, 1, NULL, NULL, 4, 2, 1, 1, NULL, NULL),
(483, 1483, 9822020483, 'mohammad aziz', 'avatars/1483.jpg', 'بدر', 'بشير', 'مرعي', 'سلطي', 'WAJDI', 'IZIDEEN', 'SAHAR', 'MOHAMMAD AZIZ', 582, '795900483', 'mohammadaziz@oneonli', '1968-06-15', '2003-05-01', NULL, 270, 270, 1, 12, 3, 3, 9, 2, 5, 3, 2, NULL, NULL, 12, 3, 1, 1, NULL, NULL),
(484, 1484, 9822020484, 'kalil', 'avatars/1484.jpg', 'بركات', 'بلال', 'عبد ربه', 'رشيد', 'WALEED', 'JUMANA', 'JUMANA', 'KALIL', 583, '795900484', 'kalil@oneonlinemarke', '1968-09-10', '2003-05-01', NULL, 166, 166, 4, 12, 3, 95, 9, 2, 5, 3, 2, NULL, NULL, 10, 3, 1, 1, NULL, NULL),
(485, 1485, 9822020485, 'addel-al-qadir', 'avatars/1485.jpg', 'بسام', 'تحسين', 'جباره', 'طارق', 'WALID', 'TAYEL', 'JAMIL', 'ADDEL-AL-QADIR', 584, '795900485', 'addel-al-qadir@oneon', '1979-01-30', '2003-05-01', NULL, 163, 163, 4, 12, 3, 81, 9, 2, 5, 3, 2, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(486, 1486, 9822020486, 'zakaria', 'avatars/1486.jpg', 'بسيم', 'تركي', 'مهدي', 'رمزي', 'WASFI', 'SABER', 'YUSUF', 'ZAINAB', 585, '795900486', 'zakaria@oneonlinemar', '1975-08-05', '2003-05-01', NULL, 304, 304, 2, 12, 3, 100, 9, 2, 4, 3, 2, NULL, NULL, NULL, 2, 1, 1, NULL, NULL),
(487, 1487, 9822020487, 'sa\'\'eed', 'avatars/1487.jpg', 'بشير', 'توفيق', 'انيس', 'خميس', 'WLEED', 'RAJA', 'MUSLEH', 'SA\'\'EED', 586, '795900487', 'sa\'\'eed@oneonlinemar', '1974-08-01', '2003-05-01', NULL, 237, 237, 4, 11, 3, 5, 9, 2, 4, 3, 2, NULL, 12, NULL, NULL, NULL, 1, NULL, NULL),
(488, 1488, 9822020488, 'arafat', 'avatars/1488.jpg', 'بلال', 'تيسير', 'فرج', 'حابس', 'YACOUB', 'SALAMEH', 'IBRAHEEM', 'ARAFAT', 587, '795900488', 'arafat@oneonlinemark', '1976-02-13', '2003-05-01', NULL, 149, 149, 4, 8, 2, 85, 9, 2, 5, 3, 2, NULL, NULL, 11, 2, 1, 1, NULL, NULL),
(489, 1489, 9822020489, 'kamal', 'avatars/1489.jpg', 'تحسين', 'امين', 'موسى', 'خضر', 'YAHYA', 'TALIB', 'MOH\'\'D', 'KAMAL', 588, '795900489', 'kamal@oneonlinemarke', '1978-12-24', '2003-05-01', NULL, 224, 224, 4, 12, 3, 168, 9, 2, 6, 3, 1, NULL, NULL, 10, 3, 1, 1, NULL, NULL),
(490, 1490, 9822020490, 'abdelmon\'\'em', 'avatars/1490.jpg', 'تركي', 'انور', 'عبدالمهدي', 'نصار', 'YAQUB', 'MINWER', 'QASEM', 'ABDELMON\'\'EM', 589, '795900490', 'abdelmon\'\'em@oneonli', '1970-02-07', '2003-05-01', NULL, 254, 254, 7, 13, 4, 90, 9, 1, 4, 3, 2, NULL, NULL, 2, 1, 1, 1, NULL, NULL),
(491, 1491, 9822020491, 'hamzeh', 'avatars/1491.jpg', 'توفيق', 'انيس', 'فهمي', 'عباس', 'YASEEN', 'SHARIF', 'IBRAHEM', 'HAMZEH', 590, '795900491', 'hamzeh@oneonlinemark', '1977-06-20', '2003-05-01', NULL, 151, 151, 4, 8, 2, 134, 9, 2, 7, 3, 1, NULL, NULL, 7, 2, 1, 1, NULL, NULL),
(492, 1492, 9822020492, 'taiseer', 'avatars/1492.jpg', 'تيسير', 'ايوب', 'مقبل', 'سميح', 'YASER', 'NIDAL', 'TAHA', 'TAISEER', 591, '795900492', 'taiseer@oneonlinemar', '1973-04-10', '2003-05-01', NULL, 288, 288, 2, 13, 4, 13, 9, 1, 5, 3, 1, 15, 11, NULL, NULL, 3, 1, NULL, NULL),
(493, 1493, 9822020493, 'ethnian', 'avatars/1493.jpg', 'امين', 'باجس', 'اسعيد', 'عبدربه', 'YASMEEN', 'SHAFIQ', 'IBRAHIM', 'ETHNIAN', 592, '795900493', 'ethnian@oneonlinemar', '1977-02-01', '2003-05-01', NULL, 153, 153, 4, 12, 3, 8, 9, 2, 6, 3, 1, NULL, NULL, 3, 2, 1, 1, NULL, NULL),
(494, 1494, 9822020494, 'awwad', 'avatars/1494.jpg', 'انور', 'باسل', 'عبدالوهاب', 'عوان', 'YOUNES', 'SHAVEGE', 'IBTEHAL', 'AWWAD', 593, '795900494', 'awwad@oneonlinemarke', '1977-06-22', '2003-05-01', NULL, 153, 153, 4, 12, 3, 8, 9, 2, 5, 3, 1, NULL, NULL, 12, 2, 1, 1, NULL, NULL),
(495, 1495, 9822020495, 'imad', 'avatars/1495.jpg', 'انيس', 'بخيت', 'عيد', 'عبدالرحمن', 'YOUSEF', 'TAISEER', 'MARIAM', 'IMAD', 594, '795900495', 'imad@oneonlinemarket', '1978-11-29', '2003-05-01', NULL, 215, 215, 4, 12, 3, 8, 9, 2, 5, 3, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(496, 1496, 9822020496, 'tawfiq', 'avatars/1496.jpg', 'ايوب', 'بدر', 'عبدالمغني', 'ايوب', 'YOUSEF SHEHADAH', 'WAEL', 'TALIB', 'TAWFIQ', 595, '795900496', 'tawfiq@oneonlinemark', '1979-07-10', '2003-05-01', NULL, 288, 288, 2, 13, 4, 5, 9, 1, 5, 3, 2, 15, 11, NULL, NULL, 3, 1, NULL, NULL),
(497, 1497, 9822020497, 'jehad', 'avatars/1497.jpg', 'باجس', 'بركات', 'حمد', 'بركات', 'YUNIS', 'SALEM', 'ATTIA', 'JEHAD', 596, '795900497', 'jehad@oneonlinemarke', '1976-04-01', '2003-05-01', NULL, 60, 60, 3, 17, 5, 20, 9, 1, 4, 3, 1, NULL, NULL, 10, 3, 1, 1, NULL, NULL),
(498, 1498, 9822020498, 'taher', 'avatars/1498.jpg', 'باسل', 'بسام', 'فارع', 'جابر', 'YUSRI', 'NASSAR', 'SUMAIA', 'TAHER', 597, '795900498', 'taher@oneonlinemarke', '1973-01-15', '2003-05-01', NULL, 288, 288, 2, 13, 4, 207, 9, 1, 4, 3, 1, NULL, NULL, NULL, 3, 1, 1, NULL, NULL),
(499, 1499, 9822020499, 'dahkllal', 'avatars/1499.jpg', 'بخيت', 'بسيم', 'رمزي', 'ديك', 'YUSUF', 'RANA', 'MOHAMMED', 'DAHKLLAL', 598, '795900499', 'dahkllal@oneonlinema', '1974-10-05', '2003-05-01', NULL, 224, 224, 4, 4, 1, 168, 9, 2, 6, 3, 1, NULL, NULL, 14, 2, 1, 1, NULL, NULL),
(500, 1500, 9822020500, 'khalid', 'avatars/1500.jpg', 'بدر', 'بشير', 'رافع', 'باسل', 'ZAINAB', 'MUHANNAD', 'ISAM', 'KHALID', 599, '795900500', 'khalid@oneonlinemark', '1972-01-01', '2003-05-01', NULL, 156, 156, 4, 12, 3, 168, 9, 2, 5, 3, 1, NULL, NULL, 10, 3, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `name_ar`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'ذكر', 'Male', NULL, NULL),
(2, 'أنثى', 'Female', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `governates`
--

CREATE TABLE `governates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_ar` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `governates`
--

INSERT INTO `governates` (`id`, `name_ar`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'اربد', 'Irbid', NULL, NULL),
(2, 'عجلون', 'Ajloun', NULL, NULL),
(3, 'جرش', 'Jerash', NULL, NULL),
(4, 'المفرق', 'Mafraq', NULL, NULL),
(5, 'العاصمة', 'Capital', NULL, NULL),
(6, 'الزرقاء', 'Zarqa', NULL, NULL),
(7, 'البلقاء', 'Balqaa', NULL, NULL),
(8, 'مادبا', 'Madaba', NULL, NULL),
(9, 'الكرك', 'Karak', NULL, NULL),
(10, 'الطفيلة', 'Tafielah', NULL, NULL),
(11, 'معان', 'Maan', NULL, NULL),
(12, 'العقبة', 'Aqaba', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `institutes`
--

CREATE TABLE `institutes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `neighborhood_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `neighborhood_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bulding` int(11) DEFAULT NULL,
  `lat` double(10,6) DEFAULT NULL,
  `long` double(10,6) DEFAULT NULL,
  `governate_id` int(10) UNSIGNED NOT NULL,
  `region_id` int(10) UNSIGNED DEFAULT NULL,
  `directorate_id` int(10) UNSIGNED DEFAULT NULL,
  `assistant_id` int(10) UNSIGNED DEFAULT NULL,
  `administration_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `institutes`
--

INSERT INTO `institutes` (`id`, `name_ar`, `address_ar`, `phone`, `fax`, `mobile`, `email`, `name_en`, `address_en`, `neighborhood_ar`, `neighborhood_en`, `street_ar`, `street_en`, `bulding`, `lat`, `long`, `governate_id`, `region_id`, `directorate_id`, `assistant_id`, `administration_id`, `created_at`, `updated_at`) VALUES
(1, 'معهد اربـــد', NULL, '25090611', '26894478', '792340488', 'irbid@oneonlinemarket.com', 'Institute Irbid', NULL, 'ضاحية الحسين', 'Dahyet alHussein', 'شارع اربد', '', 78, 32.551445, 35.851479, 1, 1, NULL, 1, 1, NULL, NULL),
(2, 'معهد جرش', NULL, '23450999', '21238293', '783793009', 'jarash@oneonlinemarket.com', 'Institute Jarash', NULL, 'المجر- الشواهد', 'Evidence', 'شارع جرش', '', 90, 32.276900, 35.905600, 3, 1, NULL, 1, 1, NULL, NULL),
(3, 'معهد عجلون', NULL, '29813218', '29620592', '797686460', 'ajloun@oneonlinemarket.com', 'Institute Ajloun', NULL, 'مثلث صخرة - رأس منيف', 'Triangle Rock', 'شارع عجلون', '', 95, 32.332687, 35.751785, 2, 1, NULL, 1, 1, NULL, NULL),
(4, 'معهد الزرقاء', NULL, '57639460', '54403438', '787336200', 'zarqa@oneonlinemarket.com', 'Institute Zarqa', NULL, 'جبل طارق', 'Tarek Mountain', 'شارع الزرقاء', '', 65, 32.063249, 36.095228, 6, 2, NULL, 1, 1, NULL, NULL),
(5, 'معهد مادبا', NULL, '51851894', '57239051', '797796389', 'madaba@oneonlinemarket.com', 'Institute Madaba', NULL, 'حي مسجد ابو عبيدة', 'Abu Ubeida Neighborhood', 'شارع مادبا', '', 48, 31.723057, 35.786470, 8, 2, NULL, 1, 1, NULL, NULL),
(6, 'معهدماركا', NULL, '64532249', '64017768', '773673353', 'marka@oneonlinemarket.com', 'Institute Marka', NULL, 'الزهراء', 'AL-Zahr\'a', 'شارع ماركا', 'marka Street', 14, 32.001677, 35.971925, 5, 2, NULL, 1, 1, NULL, NULL),
(7, 'معهد ياجوز', NULL, '54585223', '55069001', '773274097', 'yajooz@oneonlinemarket.com', 'Institute Yajooz', NULL, 'الجبل الشمالي', 'AL JABAL ALSHAMALI', 'شارع ياجوز', '', 89, 32.040004, 35.913292, 6, 2, NULL, 1, 1, NULL, NULL),
(8, 'معهد ناعور', NULL, '66501214', '67405802', '791882115', 'naor@oneonlinemarket.com', 'Institute Na\'or', NULL, 'حي الشهيد', 'hay alshaheed', 'شارع ناعور', 'naor Street', 8, 31.874761, 35.823963, 5, 2, NULL, 1, 1, NULL, NULL),
(9, 'معهد القويسمة', NULL, '69783758', '62612900', '795044368', 'qweismeh@oneonlinemarket.com', 'Institute Qweismeh', NULL, 'التطوير الحضري / المنارة', 'Urban Development / Al-Manarah', 'شارع القواسمي', '', 85, 31.870508, 35.816933, 5, 2, NULL, 1, 1, NULL, NULL),
(10, 'معهد سحاب', NULL, '63820827', '61502045', '795094664', 'sahab@oneonlinemarket.com', 'Institute Sahab', NULL, 'سحاب', 'Sahab', 'شارع سهاب', '', 77, 31.844851, 36.045490, 5, 2, NULL, 1, 1, NULL, NULL),
(11, 'معهد الطفيلة', NULL, '31776246', '33199697', '793503896', 'tafileh@oneonlinemarket.com', 'Institute Tafileh', NULL, NULL, NULL, 'شارع الطفيلة', '', 22, 30.832124, 35.615790, 10, 3, NULL, 1, 1, NULL, NULL),
(12, 'معهد العقبة', NULL, '36614787', '37808350', '788981969', 'aqaba@oneonlinemarket.com', 'Institute Aqaba', NULL, NULL, NULL, 'شارع العقبة', '', 98, 29.604563, 35.038023, 12, 3, NULL, 1, 1, NULL, NULL),
(13, 'معهد الكرك', NULL, '27669244', '27360018', '798563256', 'karak@oneonlinemarket.com', 'Institute Karak', NULL, NULL, NULL, 'شارع كرك', '', 43, 31.185285, 35.703679, 9, 3, NULL, 1, 1, NULL, NULL),
(14, 'معهد معان', NULL, '32773775', '38086022', '798245562', 'maan@oneonlinemarket.com', 'Institute Maan', NULL, NULL, NULL, 'شارع معان', '', 82, 30.192663, 35.724941, 11, 3, NULL, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `name_ar`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'احصائي', 'Statistics Specialist', NULL, NULL),
(2, 'اخصائي إعلام وتسويق', 'Media and Marketing Specialist', NULL, NULL),
(3, 'اخصائي تخطيط', 'Planning Specialist', NULL, NULL),
(4, 'اداري ثالث', 'Third Line Administrative', NULL, NULL),
(5, 'اداري ثاني', 'Second Line Administrative', NULL, NULL),
(6, 'امين مستودع', 'Warehouse Guard', NULL, NULL),
(7, 'امين/امينة مكتبه', 'Librarian', NULL, NULL),
(8, 'باحث قانوني مساعد', 'Legal Assistant', NULL, NULL),
(9, 'حارس', 'Guard', NULL, NULL),
(10, 'حافظ ملفات', 'File Keeper', NULL, NULL),
(11, 'خازن عهدة', 'Custody/Supplies Keeper', NULL, NULL),
(12, 'خبير مشروع المياه والبيئة', 'Water and Environment Project Expert', NULL, NULL),
(13, 'رئيس الديوان', 'Bureau Head', NULL, NULL),
(14, 'رئيس الوحده الادارية', 'Head of Administrative Unit', NULL, NULL),
(15, 'رئيس شعبة الحركة', 'Transportation Section Head', NULL, NULL),
(16, 'رئيس شعبة الصادر و الوارد', 'Chief of Incoming and Outgoing Mail Division', NULL, NULL),
(17, 'رئيس قسم', 'Head of the Department', NULL, NULL),
(18, 'رئيس قسم الارشاد والتوجيه المهني', 'Head of Career Guidance Section', NULL, NULL),
(19, 'رئيس قسم الاعلام', 'Head of Media Section', NULL, NULL),
(20, 'رئيس قسم الامانات والسلف', 'Head of Guarantees & Advances', NULL, NULL),
(21, 'رئيس قسم البرامج والمناهج', 'Head of Program and Curriculum Section', NULL, NULL),
(22, 'رئيس قسم البرمجة', 'Head of Programming Section', NULL, NULL),
(23, 'رئيس قسم التخطيط', 'Head of Planning Department', NULL, NULL),
(24, 'رئيس قسم التدقيق ورقابة اللوازم', 'Head of Audit and Supplies Control Section', NULL, NULL),
(25, 'رئيس قسم التدقيق المالي', 'Head of Financial Audit Department', NULL, NULL),
(26, 'رئيس قسم التسجيل والنتائج والشهادات', 'Head of Registration, Results and Certification Section', NULL, NULL),
(27, 'رئيس قسم التصنيف والتوصيف المهني', 'Head of Classification and Occupational Descriptions', NULL, NULL),
(28, 'رئيس قسم التعاون الدولي', 'Head of International Cooperation', NULL, NULL),
(29, 'رئيس قسم التعليم الالكتروني', 'Head of E-Learning', NULL, NULL),
(30, 'رئيس قسم التفتيش المهني', 'Head of Occupational Inspection Section', NULL, NULL),
(31, 'رئيس قسم الدراسات', 'Head of Studies Department', NULL, NULL),
(32, 'رئيس قسم الرقابة المالية', 'Head of Financial Control Department', NULL, NULL),
(33, 'رئيس قسم الرقابه الاداريه', 'Head of Administrative Control Section', NULL, NULL),
(34, 'رئيس قسم الرقابه الفنيه', 'Head of Technical Supervision Department', NULL, NULL),
(35, 'رئيس قسم الرواتب والاجور', 'Head of Salaries and Wages Section', NULL, NULL),
(36, 'رئيس قسم الشبكات', 'Head of Networks Section', NULL, NULL),
(37, 'رئيس قسم الصندوق', 'Head of Fund Section', NULL, NULL),
(38, 'رئيس قسم الصندوق والمستندات', 'Head of Fund and Documents Section', NULL, NULL),
(39, 'رئيس قسم الصيانة', 'Head of Maintenance Department', NULL, NULL),
(40, 'رئيس قسم العلاقات العامة', 'Head of Public Relations', NULL, NULL),
(41, 'رئيس قسم اللوازم', 'Head of Supplies Section', NULL, NULL),
(42, 'رئيس قسم المتابعة والتنسيق', 'Head of the Follow-up and Coordination Section', NULL, NULL),
(43, 'رئيس قسم المحاسبة', 'Head of Accounting Department', NULL, NULL),
(44, 'رئيس قسم المشتريات', 'Head of Purchasing Section', NULL, NULL),
(45, 'رئيس قسم الموارد البشرية والتشكيلات', 'Head of Human Resources and Vacancies', NULL, NULL),
(46, 'رئيس قسم الموازنة', 'Head of Budget Section', NULL, NULL),
(47, 'رئيس قسم النشاطات', 'Head of Activities Department', NULL, NULL),
(48, 'رئيس قسم النفقات والايرادات', 'Head of Expense and Revenue Section', NULL, NULL),
(49, 'رئيس قسم امانه سر الفرق الفنيه', 'Head of Department of Technical Teams', NULL, NULL),
(50, 'رئيس قسم تصنيف محلات المهن', 'Head of Occupational Classification Department', NULL, NULL),
(51, 'رئيس قسم شؤون المتدربين', 'Head of Trainees Affairs Section', NULL, NULL),
(52, 'رئيس قسم شؤون الموظفين', 'Head of Personnel Section', NULL, NULL),
(53, 'رئيس قسم وحدة تطوير الأداء المؤسسي', 'Head of Corporate Performance Development Unit', NULL, NULL),
(54, 'رئيس قسم وحدة معلومات التدريب', 'Head of Training Information Unit Section', NULL, NULL),
(55, 'رئيس وحدة الاستشارة القانونية', 'Head of Legal Advisory Unit', NULL, NULL),
(56, 'رئيس وحدة إدارة التغيير', 'Head of Change Management Unit', NULL, NULL),
(57, 'رئيس وحده الحكومة الالكترونية', 'Head of the eGovernment Unit', NULL, NULL),
(58, 'سائق', 'Driver', NULL, NULL),
(59, 'سائق دراجة', 'Motorcycle Driver', NULL, NULL),
(60, 'ضابط تدريب', 'Training Officer', NULL, NULL),
(61, 'ضابط تدريب / اتصالات', 'Training Officer / Communications', NULL, NULL),
(62, 'ضابط تدريب / حاسوب', 'Training Officer / Computer', NULL, NULL),
(63, 'ضابط تدريب / خياطة', 'Training Officer / Sewing', NULL, NULL),
(64, 'ضابط تدريب الكترونيات', 'Training Officer Electronics', NULL, NULL),
(65, 'ضابط تدريب تجليس ودهان', 'Training Officer for Body Repair and Painting', NULL, NULL),
(66, 'ضابط تدريب تجميل', 'Training Officer for Beauty', NULL, NULL),
(67, 'ضابط تدريب تشكيل المعادن والصيانه الميكانيكيه', 'Training Officer for Metal Formation and Mechanical Maintenance', NULL, NULL),
(68, 'ضابط تدريب تكييف وتبريد', 'Training Officer for Air conditioning and Cooling', NULL, NULL),
(69, 'ضابط تدريب حاسوب', 'Training Officer for Computer', NULL, NULL),
(70, 'ضابط تدريب حدادة ولحام', 'Training Officer Blacksmith and Welding', NULL, NULL),
(71, 'ضابط تدريب خياطة', 'Sewing Training Officer', NULL, NULL),
(72, 'ضابط تدريب راديو وتلفزيون', 'Training Officer for Radio and TV', NULL, NULL),
(73, 'ضابط تدريب صناعات غذائية', 'Training Officer for Food Industries', NULL, NULL),
(74, 'ضابط تدريب طباعه', 'Training Officer for Printing', NULL, NULL),
(75, 'ضابط تدريب فندقة', 'Training Officer for Hotel', NULL, NULL),
(76, 'ضابط تدريب كهرباء', 'Training Officer for Electricity', NULL, NULL),
(77, 'ضابط تدريب كهرباء سيارات', 'Training Officer for Auto Electricity', NULL, NULL),
(78, 'ضابط تدريب مساعد /خياطة', 'Assistant Training Officer / Tailor', NULL, NULL),
(79, 'ضابط تدريب مساعد /كهرباء سيارات', 'Assistant Training Officer / Auto Electricity', NULL, NULL),
(80, 'ضابط تدريب مساعد فندقة', 'Assistant Training Officer / Hotel', NULL, NULL),
(81, 'ضابط تدريب مساعد/ميكانيكا عامة', 'Assistant Training Officer / General Mechanics', NULL, NULL),
(82, 'ضابط تدريب ميكانيكا عامة', 'General Mechanic Training Officer', NULL, NULL),
(83, 'ضابط تدريب ميكانيكي سيارات', 'Training Officer for Auto Mechanic', NULL, NULL),
(84, 'ضابط تدريب نجارة وديكور', 'Training Officer for Carpentry and Decoration', NULL, NULL),
(85, 'طابع / مدخلة بيانات', 'Typist/ Data Entry', NULL, NULL),
(86, 'طابع/طابعه', 'Typist', NULL, NULL),
(87, 'طابع/قائم باعمال شؤون المتدربين', 'Typist / Acting Trainee Affairs', NULL, NULL),
(88, 'عامل تنظيفات', 'Cleaner', NULL, NULL),
(89, 'عضو مشتريات', 'Procurement Member', NULL, NULL),
(90, 'فني اتصالات', 'Communications Technician', NULL, NULL),
(91, 'فني انتاج خزف', 'Ceramic Production Technician', NULL, NULL),
(92, 'فني تصوير تلفزيون', 'Television Technician', NULL, NULL),
(93, 'فني صيانة', 'Maintenance Technician', NULL, NULL),
(94, 'قائم باعمال رئيس قسم وحدة الحكومة الألكترونية', 'Acting Director of the Electronic Government Unit', NULL, NULL),
(95, 'قائم باعمال رئيس ديوان', 'Acting Head of Staff', NULL, NULL),
(96, 'قائم باعمال رئيس قسم', 'Acting Head of Department', NULL, NULL),
(97, 'قائم باعمال رئيس قسم الارشاد والتوجيه المهني', 'Acting Head of Career Guidance Section', NULL, NULL),
(98, 'قائم باعمال رئيس قسم الاعلام', 'Acting Chief Media Officer', NULL, NULL),
(99, 'قائم باعمال رئيس قسم التدريب والتطوير', 'Acting Head Section  of Training and Development', NULL, NULL),
(100, 'قائم باعمال رئيس قسم التدقيق المالي', 'Acting Chief Financial Audit', NULL, NULL),
(101, 'قائم باعمال رئيس قسم المشتريات', 'Acting Chief Procurement Officer', NULL, NULL),
(102, 'قائم باعمال مدير مديريه', 'Acting Director', NULL, NULL),
(103, 'قائم باعمال مدير معهد', 'Acting Director Institute', NULL, NULL),
(104, 'قائم باعمال مرشد مهني', 'Acting Professional Counselor', NULL, NULL),
(105, 'قائم بأعمال رئيس قسم شؤون الموظفين', 'Acting Head of Personnel Section', NULL, NULL),
(106, 'قائم بأعمال مدير المديرية المالية', 'Acting Director of the Financial Directorate', NULL, NULL),
(107, 'قائم بأعمال مساعد المدير العام لشؤون المراكز والتدريب', 'Acting Assistant Director General for Centers and Training', NULL, NULL),
(108, 'كاتب / كاتبة ديوان', 'Bureau Clerk', NULL, NULL),
(109, 'كاتب ثالث', 'Third Writer', NULL, NULL),
(110, 'كاتب ثالث شوؤن متدربين', 'A third writer in Trainee Affairs', NULL, NULL),
(111, 'كاتب ثاني', 'Second Writer', NULL, NULL),
(112, 'كاتب حسابات', 'Bookkeeper', NULL, NULL),
(113, 'كاتب شٌؤون متدربين', 'Trainee Affairs Clerk', NULL, NULL),
(114, 'كاتب شؤون موظفين', 'Staff Clerk', NULL, NULL),
(115, 'كاتب/كاتبه', 'Clerk', NULL, NULL),
(116, 'كاتبة أدارية', 'Administrative Clerk', NULL, NULL),
(117, 'مامور استعلامات/ مراقب دوام', 'Front Desk Officer / Working Hours Monitor', NULL, NULL),
(118, 'مامور تسجيل متدربين', 'Registration of Trainees Officer', NULL, NULL),
(119, 'مامور لوازم', 'Supplies Officer', NULL, NULL),
(120, 'مامور مستودع', 'Warehouse Officer', NULL, NULL),
(121, 'مامورتصوير/مراقب دوام', 'Photography Officer /Working Hours Monitor', NULL, NULL),
(122, 'مأمور تصوير', 'Photography Officer', NULL, NULL),
(123, 'مأمور مقسم', 'Switchboard Officer', NULL, NULL),
(124, 'مبرمج', 'Programming', NULL, NULL),
(125, 'متـــرجم', 'Translator / Interpreter', NULL, NULL),
(126, 'مجلس هياكل مركبات عام', 'General Auto Body Repair', NULL, NULL),
(127, 'محاسب', 'Accountant', NULL, NULL),
(128, 'محاسب مساعد', 'Assistant Accountant', NULL, NULL),
(129, 'محلل احصائي', 'Statistical Analyst', NULL, NULL),
(130, 'مدخل بيانات', 'Data Entry', NULL, NULL),
(131, 'مدرب دهان مباني', 'Paint Building Trainer', NULL, NULL),
(132, 'مدرب ابنية وإنشاءات', 'Buildings and Constructions Trainer', NULL, NULL),
(133, 'مدرب اجهزة طبية', 'Medical Device Trainer', NULL, NULL),
(134, 'مدرب اسعافات اولية', 'First Aid Trainer', NULL, NULL),
(135, 'مدرب الات مكتبيه', 'Office Machine Trainer', NULL, NULL),
(136, 'مدرب الكترونيات', 'Electronics Trainer', NULL, NULL),
(137, 'مدرب انتاج طعام', 'Food Production Trainer', NULL, NULL),
(138, 'مدرب ايواء', 'Housekeeping Trainer', NULL, NULL),
(139, 'مدرب تجليس ودهان', 'Auto Body Repair and Painting Trainer', NULL, NULL),
(140, 'مدرب تدبير فندقي', 'Hotel Trainer', NULL, NULL),
(141, 'مدرب تدفئة وتمديدات صحية', 'Heating and Plumbing Trainer', NULL, NULL),
(142, 'مدرب تدفئه', 'Heating Trainer', NULL, NULL),
(143, 'مدرب تصوير تلفزيوني/ وسائل تعليمية', 'TV Instructor/ Teaching Methods', NULL, NULL),
(144, 'مدرب تطريز الي', 'Embroidery Trainer', NULL, NULL),
(145, 'مدرب تكييف وتبريد', 'Air Conditioning and Cooling Trainer', NULL, NULL),
(146, 'مدرب تمديدات صحية', 'Plumbing Trainer', NULL, NULL),
(147, 'مدرب تمديدات صحيه وشبكات الري', 'Plumbing and Irrigation Networks Trainer', NULL, NULL),
(148, 'مدرب تمديدات كهربائية', 'Electrical Extension Trainer', NULL, NULL),
(149, 'مدرب تنجيد', 'Upholstery Trainer', NULL, NULL),
(150, 'مدرب ثالث /تجميل', 'Third Trainer / Cosmetics', NULL, NULL),
(151, 'مدرب ثالث /حداده ولحام', 'Third Trainer / Smith and Welding', NULL, NULL),
(152, 'مدرب ثالث /كهرباء عامه', 'Third Trainer / General Electricity', NULL, NULL),
(153, 'مدرب ثالث خياطه', 'Third Trainer / Sewing', NULL, NULL),
(154, 'مدرب ثالث فندقه/انتاج طعام', 'Third Trainer Hotel / Food Production', NULL, NULL),
(155, 'مدرب ثالث/خراطه', 'Third Trainer /Turner', NULL, NULL),
(156, 'مدرب ثالث/كمبيوتر', 'Third Trainer / Computer', NULL, NULL),
(157, 'مدرب ثالث/كهرباء سيارات', 'Third Trainer / Auto Electrician', NULL, NULL),
(158, 'مدرب ثالث/مخابز وحلويات', 'Third Trainer / Bakery and Confectionery', NULL, NULL),
(159, 'مدرب ثالث/ميكانيك سيارات', 'Third Trainer / Auto Mechanic', NULL, NULL),
(160, 'مدرب ثالث/نجاره وديكور', 'Third Trainer / Carpentry and Decoration', NULL, NULL),
(161, 'مدرب ثاني/تكييف وتبريد', 'Second Trainer / Air Conditioning and Cooling', NULL, NULL),
(162, 'مدرب ثاني/راديو وتلفزيون', 'Second Trainer / Radio and TV', NULL, NULL),
(163, 'مدرب جبسوم بورد', 'Gypsum Board Trainer', NULL, NULL),
(164, 'مدرب حاسوب', 'Computer Trainer', NULL, NULL),
(165, 'مدرب حداد المنيوم', 'Aluminum Blacksmith Trainer', NULL, NULL),
(166, 'مدرب حدادة ولحام', 'Blacksmith and Welding Trainer', NULL, NULL),
(167, 'مدرب حرف تقليدية', 'Traditional Craft Trainer', NULL, NULL),
(168, 'مدرب حرفي ومهني / شك خرز', 'Craftsman and Voccational Trainer / Fashion', NULL, NULL),
(169, 'مدرب حرفي ومهني /تجليس ودهان مركبات', 'Craftsman and Voccational Trainer / Auto Body Repair and Painting', NULL, NULL),
(170, 'مدرب حرفي ومهني/ تجميل', 'Craftsman and Voccational Trainer / Cosmetics', NULL, NULL),
(171, 'مدرب حرفي ومهني/ تدفئة', 'Craftsman and Voccational Trainer / Heating', NULL, NULL),
(172, 'مدرب حرفي ومهني/ تكييف وتبريد', 'Craftsman and Voccational Trainer / Air Conditioning', NULL, NULL),
(173, 'مدرب حرفي ومهني/ حرف يدوية', 'Craftsman and Voccational Trainer /Handcraft', NULL, NULL),
(174, 'مدرب حرفي ومهني/ حلويات', 'Craftsman and Voccational Trainer / Confectionery', NULL, NULL),
(175, 'مدرب حرفي ومهني/ خدمة طعام وشراب', 'Craftsman and Voccational Trainer / Food and Beverage Service', NULL, NULL),
(176, 'مدرب حرفي ومهني/ خزف', 'Craftsman and Voccational Trainer / Ceramics', NULL, NULL),
(177, 'مدرب حرفي ومهني/ خياطه', 'Craftsman and Voccational Trainer / Sewing', NULL, NULL),
(178, 'مدرب حرفي ومهني/ دولاب وخزف', 'Craftsman and Voccational Trainer / Ceramics and Cupboard', NULL, NULL),
(179, 'مدرب حرفي ومهني/ صياغة ذهب', 'Craftsman and Voccational Trainer / Goldsmith', NULL, NULL),
(180, 'مدرب حرفي ومهني/ صيانة اجهزة طبية', 'Craftsman and Voccational Trainer / Medical Devices Maintenance', NULL, NULL),
(181, 'مدرب حرفي ومهني/ طين', 'Craftsman and Voccational Trainer / Mud', NULL, NULL),
(182, 'مدرب حرفي ومهني/ فندقة', 'Craftsman and Voccational Trainer / Hospitality', NULL, NULL),
(183, 'مدرب حرفي ومهني/ فندقة انتاج طعام', 'Craftsman and Voccational Trainer / Food Production', NULL, NULL),
(184, 'مدرب حرفي ومهني/ فندقة ايواء', 'Craftsman and Voccational Trainer / Housekeeping', NULL, NULL),
(185, 'مدرب حرفي ومهني/ كهرباء عامة', 'Craftsman and Voccational Trainer / General Electricity', NULL, NULL),
(186, 'مدرب حرفي ومهني/ نجارة', 'Craftsman and Voccational Trainer / Carpentry', NULL, NULL),
(187, 'مدرب حرفي ومهني/ نسيج', 'Craftsman and Voccational Trainer / Weaving', NULL, NULL),
(188, 'مدرب حرفي ومهني/انتاج خزف', 'Craftsman and Voccational Trainer / Ceramics Production', NULL, NULL),
(189, 'مدرب حرفي ومهني/انتاج قماش', 'Craftsman and Voccational Trainer / Fabric Production', NULL, NULL),
(190, 'مدرب حرفي ومهني/تشغيل افران', 'Craftsman and Voccational Trainer / Oven Operator', NULL, NULL),
(191, 'مدرب حرفي ومهني/حداده ولحام', 'Craftsman and Voccational Trainer / Blacksmith and Welding', NULL, NULL),
(192, 'مدرب حرفي ومهني/حلاقه', 'Craftsman and Voccational Trainer / Barber', NULL, NULL),
(193, 'مدرب حلاقة', 'Barber Trainer', NULL, NULL),
(194, 'مدرب حلويات', 'Confectionery Trainer', NULL, NULL),
(195, 'مدرب خدمة طعام', 'Food Service Trainer', NULL, NULL),
(196, 'مدرب خراطة', 'Turner Trainer', NULL, NULL),
(197, 'مدرب خراطة وتسوية', 'Turner and SettlingTrainer', NULL, NULL),
(198, 'مدرب خلويات', 'Cell Phones Trainer', NULL, NULL),
(199, 'مدرب خياطة صناعية', 'Industrial Sewing Trainer', NULL, NULL),
(200, 'مدرب دهان مشغولات خشبيه', 'Wood Painting Trainer', NULL, NULL),
(201, 'مدرب راديو وتلفزيون', 'Radio and TV Trainer', NULL, NULL),
(202, 'مدرب زراعة', 'Agriculture Trainer', NULL, NULL),
(203, 'مدرب سلامة', 'Safety Trainer', NULL, NULL),
(204, 'مدرب سواقين', 'Drivers\' Trainer', NULL, NULL),
(205, 'مدرب صناعات جلدية', 'Leather Industries Trainer', NULL, NULL),
(206, 'مدرب صناعات دوائية', 'Pharmaceutical Industries Trainer', NULL, NULL),
(207, 'مدرب صناعات غذائية', 'Food Industries Trainer', NULL, NULL),
(208, 'مدرب صناعات غذائية / ألبان', 'Food Industries Trainer / Dairy', NULL, NULL),
(209, 'مدرب صياغه ذهب', 'Goldsmith Trainer', NULL, NULL),
(210, 'مدرب صيانة اجهزة القياس والتحكم', 'Control and Measuring Devices Maintenance Trainer', NULL, NULL),
(211, 'مدرب صيانة اجهزة خلوية', 'Cell Phones Maintenance Trainer', NULL, NULL),
(212, 'مدرب صيانه حاسوب', 'Computer Maintenance Trainer', NULL, NULL),
(213, 'مدرب صيانه ميكانيكيه', 'Mechanical Maintenance Trainer', NULL, NULL),
(214, 'مدرب طباعة مطابع', 'Press Printing Trainer', NULL, NULL),
(215, 'مدرب عمل انتاجي', 'Production Trainer', NULL, NULL),
(216, 'مدرب فندقة', 'Hotel Trainer', NULL, NULL),
(217, 'مدرب فندقه/ايواء', 'Hotel Trainer / Housekeeping', NULL, NULL),
(218, 'مدرب قش', 'Hay Trainer', NULL, NULL),
(219, 'مدرب كهرباء', 'Electricity Trainer', NULL, NULL),
(220, 'مدرب كهرباء سيارات', 'Auto Electricity Trainer', NULL, NULL),
(221, 'مدرب مخابز ومعجنات', 'Bakery and Pastry Trainer', NULL, NULL),
(222, 'مدرب مشروع الصناعات الدوائية', 'Pharmaceutical Industries Project Trainer', NULL, NULL),
(223, 'مدرب مشروع الطاقة المتجددة', 'Renewable Energy Project Trainer', NULL, NULL),
(224, 'مدرب مشروع المياه والبيئة', 'Water and Environment Project Trainer', NULL, NULL),
(225, 'مدرب مكانيك سيارات', 'Auto Mechanic Trainer', NULL, NULL),
(226, 'مدرب مكانيكا عامة', 'General Mechanics Trainer', NULL, NULL),
(227, 'مدرب مهارات حياتية', 'Life Skills Trainer', NULL, NULL),
(228, 'مدرب مياه وبيئة', 'Water and Environment Trainer', NULL, NULL),
(229, 'مدرب ميكانيك', 'Mechanic Trainer', NULL, NULL),
(230, 'مدرب ميكانيك ومبيع قطع سيارات', 'Auto Parts Sale and Mechanics Trainer', NULL, NULL),
(231, 'مدرب ميكانيكا عامه', 'General Mechanics Trainer', NULL, NULL),
(232, 'مدرب نجارة وديكور', 'Carpentry and Decoration Trainer', NULL, NULL),
(233, 'مدرب/تجميل', 'Cosmetics / Trainer', NULL, NULL),
(234, 'مدربة تجميل', 'Cosmetics / Trainer', NULL, NULL),
(235, 'مدربة تريكو / نسيج', 'Knitting / Textile Trainer', NULL, NULL),
(236, 'مدربة خياطة', 'Sewing Trainer', NULL, NULL),
(237, 'مدربة طباعة', 'Typist Trainer', NULL, NULL),
(238, 'مدربة مبيعات', 'Sales Trainer', NULL, NULL),
(239, 'مدربة مهنية', 'Vocational Trainer', NULL, NULL),
(240, 'مدقق لوازم', 'Checker supplies', NULL, NULL),
(241, 'مدقق مالي', 'Financial Auditor', NULL, NULL),
(242, 'مدقق مالي مساعد', 'Financial Auditor', NULL, NULL),
(243, 'مدقق مساعد', 'Assistant Auditor', NULL, NULL),
(244, 'مدير المديرية الادارية', 'Administrative Directorate Director', NULL, NULL),
(245, 'مدير عام', 'Director General', NULL, NULL),
(246, 'مدير مديرية', 'Director of Directorate', NULL, NULL),
(247, 'مدير مديرية اقليم الشمال', 'Northern Region Directorate Director', NULL, NULL),
(248, 'مدير مديرية العلاقات العامة', 'Public Relations Directorate Director', NULL, NULL),
(249, 'مدير مديرية القبول والتسجيل', 'Admissions and Registration Directorate Director', NULL, NULL),
(250, 'مدير مديرية اللوازم', 'Supplies Directorate Director', NULL, NULL),
(251, 'مدير مديرية الموارد البشرية', 'Director of Human Resources Directorate', NULL, NULL),
(252, 'مدير مديرية ضبط الجودة', 'Quality Control Directorate Director', NULL, NULL),
(253, 'مدير مشروع الصناعات الدوائية', 'Pharmaceutical Industries Project Director', NULL, NULL),
(254, 'مدير مشروع الطاقة المتجددة', 'Renewable Energy Project Director', NULL, NULL),
(255, 'مدير معهد', 'Institute Director', NULL, NULL),
(256, 'مراسل', 'Courier', NULL, NULL),
(257, 'مراقب ابنية', 'Buildings Supervisor', NULL, NULL),
(258, 'مراقب دوام', 'Working Hours Monitor', NULL, NULL),
(259, 'مرشد مهني', 'Career Guide', NULL, NULL),
(260, 'مرشد مهني مشارك', 'Associate Career Guide', NULL, NULL),
(261, 'مزاول مساعد تمديدات صحيه', 'Plumber Assistant', NULL, NULL),
(262, 'مساعد المديرالعام لشؤون التدريب', 'Director General Assistant for Training', NULL, NULL),
(263, 'مساعد مدير عام للشؤون الادارية والمالية', 'Director General Assistant for Administrative and Financial Affairs', NULL, NULL),
(264, 'مساعد مدير عام للشؤون الفنية', 'Director General Assistant for Technical Affairs', NULL, NULL),
(265, 'مساعد مدير مديرية /اقليم الشمال', 'Assistant Director of Directorate / North Region', NULL, NULL),
(266, 'مستخدم', 'User', NULL, NULL),
(267, 'مستشار تدريب برتبة مدير مديرية', 'Training Consultant at the rank of Director of Directorate', NULL, NULL),
(268, 'مستشار مدير عام للتدريب بمرتبة مساعد مدير عام', 'Advisor to the Director General for Training with the rank of Assistant Director General', NULL, NULL),
(269, 'مسجل دورات', 'Training Courses Registrar', NULL, NULL),
(270, 'مسجل شؤون متدربين', 'Trainees Affairs Registrar', NULL, NULL),
(271, 'مسجل متدربين', 'Trainee Registrar', NULL, NULL),
(272, 'مسجل متدربين ثاني', 'Second Trainee Registrar', NULL, NULL),
(273, 'مشرف مشغل', 'Workshop Supervisor', NULL, NULL),
(274, 'مشرف مشغل الحدادة واللحام', 'Blacksmith and Welding Operator Workshop Supervisor', NULL, NULL),
(275, 'مشرف مشغل الفندقة', 'Hotel Operator Supervisor', NULL, NULL),
(276, 'مشرف مشغل الميكانيك', 'Mechanics Workshop Supervisor', NULL, NULL),
(277, 'مشرف مشغل النجارة', 'Carpentry Workshop Supervisor', NULL, NULL),
(278, 'مشغل حاسوب', 'Computer Operator', NULL, NULL),
(279, 'معلم ثالث /ثقافيات', 'Third Teacher / Cultures', NULL, NULL),
(280, 'معلم ثقافيات', 'Cultural Teacher', NULL, NULL),
(281, 'معلم رابع/تعدين', 'Fourth Teacher / Mining', NULL, NULL),
(282, 'معلم رابع/ثقافيات', 'Fourth Teacher / Cultures', NULL, NULL),
(283, 'معلم رابع/كمبيوتر', 'Fourth Teacher / Computer', NULL, NULL),
(284, 'معلم لغة انجليزية', 'English Teacher', NULL, NULL),
(285, 'مفتش مهني', 'Occupational Inspector', NULL, NULL),
(286, 'مندوب مبيعات', 'Sales Representative', NULL, NULL),
(287, 'منسق', 'Coordinator', NULL, NULL),
(288, 'منسق المسابقة المهنية', 'Skill Competition Coordinator', NULL, NULL),
(289, 'منسق تدريب', 'Training Coordinator', NULL, NULL),
(290, 'منسق تدريب / الكترونيات', 'Training Coordinator / Electronics', NULL, NULL),
(291, 'منسق تدريب حاسوب', 'Computer Training Coordinator', NULL, NULL),
(292, 'منسق تدريب صناعات معدنية', 'Training Coordinator for Metal Industries', NULL, NULL),
(293, 'منسق تدريب صناعات نسيجية', 'Training Coordinator for Textile Industries', NULL, NULL),
(294, 'منسق تدريب كهرباء عامة', 'General Electricity Training Coordinator', NULL, NULL),
(295, 'منسق تدريب ميكانيك مركبات', 'Training Coordinator Vehicles Mechanics', NULL, NULL),
(296, 'منسق تدريب نجارة وديكور', 'Training Coordinator Carpentry and Decoration', NULL, NULL),
(297, 'منسق تدريب/ فندقة', 'Training Coordinator / Hotel', NULL, NULL),
(298, 'منسق تدريب/تكييف و تبريد', 'Training Coordinator / Air-Conditioning and Cooling', NULL, NULL),
(299, 'منسق تدريب/حرف نسوية', 'Training Coordinator / Female Handcraft', NULL, NULL),
(300, 'منسق تشغيل', 'Employment Coordinator', NULL, NULL),
(301, 'منسق تفتيش', 'Inspection Coordinator', NULL, NULL),
(302, 'منسق حاسوب', 'Computer Coordinator', NULL, NULL),
(303, 'منسق دورات', 'Training Courses Coordinator', NULL, NULL),
(304, 'منسق مساعد /دراسات وبرامج', 'Assistant Coordinator / Studies and Programs', NULL, NULL),
(305, 'منسق مهارات حياتية', 'Life Skills Coordinator', NULL, NULL),
(306, 'مهندس سلامه', 'Safety Engineer', NULL, NULL),
(307, 'مهندس كيماوي', 'Chemical Engineer', NULL, NULL),
(308, 'مهندس مدني', 'Civil Engineer', NULL, NULL),
(309, 'موظف استقبال', 'Receptionist', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_11_19_080023_create_jobs_table', 1),
(4, '2017_11_28_082030_create_governates_table', 1),
(5, '2017_12_20_121046_create_qualifications_table', 1),
(6, '2017_12_20_122534_create_statuss_table', 1),
(7, '2017_12_20_123111_create_genders_table', 1),
(8, '2018_01_26_180513_create_specializations_table', 1),
(9, '2018_01_26_180727_create_degrees_table', 1),
(10, '2018_01_26_180929_create_categorys_table', 1),
(11, '2018_02_08_111430_create_recruitmens_table', 1),
(12, '2018_02_17_113138_create_rjobs_table', 1),
(13, '2018_02_17_113520_create_cjobs_table', 1),
(14, '2018_02_17_113954_create_cqualifications_table', 1),
(15, '2017_11_29_075726_create_administrations_table', 2),
(16, '2017_12_03_073312_create_assistants_table', 3),
(17, '2017_12_03_124039_create_directorates_table', 4),
(18, '2017_12_13_100455_create_regions_table', 4),
(19, '2017_12_05_084902_create_departments_table', 5),
(20, '2017_12_14_104602_create_institutes_table', 5),
(21, '2017_12_18_062900_create_employees_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qualifications`
--

CREATE TABLE `qualifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qualifications`
--

INSERT INTO `qualifications` (`id`, `name_ar`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'ابتدائي', 'Primary', NULL, NULL),
(2, 'اعدادي', 'Preparatory', NULL, NULL),
(3, 'عاشر', 'Tenth Grade', NULL, NULL),
(4, 'تدريب مهني', 'Vocational Training', NULL, NULL),
(5, 'تلمذه مهنية', 'Apprenticeship', NULL, NULL),
(6, 'دبلوم وكالة الغوث بعد الثالث اعدادي', 'Diploma of UNRWA after the Third Preparatory Grade', NULL, NULL),
(7, 'اقل من ثانوي', 'Less than Secondary', NULL, NULL),
(8, 'ثانوي عامة', 'Secondary', NULL, NULL),
(9, 'دبلوم سنة واحدة', 'One Year Diploma', NULL, NULL),
(10, 'دبلوم وكالة الغوث بعد الثانوية', 'Post-secondary UNRWA Diploma', NULL, NULL),
(11, 'دبلوم سنتين بعد الثانوية / بدون شامل', 'Two Year Diploma after Secondary School/ without Comprehensive Exam', NULL, NULL),
(12, 'دبلوم متوسط', 'Diploma', NULL, NULL),
(13, 'بكالوريس', 'Bachelor / BA', NULL, NULL),
(14, 'دبلوم عالي مهني', 'Higher Professional Diploma', NULL, NULL),
(15, 'دبلوم عالي', 'Higher Diploma', NULL, NULL),
(16, 'دبلوم سنة واحدة / بعد البكالوريوس', 'One Year Diploma / after Bachelor Degree', NULL, NULL),
(17, 'ماجستير', 'Masters Degree / M.A.', NULL, NULL),
(18, 'دكتوراة', 'Doctorate/ Ph.D.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recruitmens`
--

CREATE TABLE `recruitmens` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recruitmens`
--

INSERT INTO `recruitmens` (`id`, `name_ar`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'مصنف', 'Classified', NULL, NULL),
(2, 'غير مصنف', 'Unclassified', NULL, NULL),
(3, 'دائم غير مصنف', 'Permanent Unclassified /Uncategorized', NULL, NULL),
(4, 'عقد فئة ودرجة', 'Category Contract and Official Degree', NULL, NULL),
(5, 'عقد مؤسسة', 'Vocational Training Corporation Contract', NULL, NULL),
(6, 'عقود مشاريع الصندوق', 'E-TVET Fund Projects Contracts', NULL, NULL),
(7, 'عقود مشاريع الصندوق/المشروع السياحي', 'E-TVET Fund Projects Contracts/ Tourism Project', NULL, NULL),
(8, 'الصندوق', 'E-TVET Fund', NULL, NULL),
(9, 'عقود مشاريع رأسمالية', 'Capital Projects Contracts', NULL, NULL),
(10, 'مكافات502', 'Article 502 Contracts', NULL, NULL),
(11, 'المياومة', 'Temporary Contract Monthly Paid', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `neighborhood_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `neighborhood_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bulding` int(11) DEFAULT NULL,
  `lat` double(10,6) DEFAULT NULL,
  `long` double(10,6) DEFAULT NULL,
  `governate_id` int(10) UNSIGNED NOT NULL,
  `assistant_id` int(10) UNSIGNED NOT NULL,
  `administration_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `name_ar`, `address_ar`, `phone`, `fax`, `mobile`, `email`, `name_en`, `address_en`, `neighborhood_ar`, `neighborhood_en`, `street_ar`, `street_en`, `bulding`, `lat`, `long`, `governate_id`, `assistant_id`, `administration_id`, `created_at`, `updated_at`) VALUES
(1, 'اقليم الشمال', NULL, '31234567', '31234567', '793123456', 'north.region@oneonlinemarket.com', 'North Region', NULL, NULL, NULL, 'شارع اليان العمري', 'Al-Shareef Abdul Hameed Sharaf', 55, 31.971189, 35.835617, 1, 1, 1, NULL, NULL),
(2, 'اقليم الوسط', NULL, '67654321', '67654321', '796765432', 'middle.region@oneonlinemarket.com', 'Middle Region', NULL, NULL, NULL, 'شارع فلاح ابوالحاج الصريح', 'Amherst Street', 80, 31.971189, 35.835617, 5, 1, 1, NULL, NULL),
(3, 'اقليم الجنوب', NULL, '21234567', '21234567', '792123456', 'south.region@oneonlinemarket.com', 'South Region', NULL, NULL, NULL, 'شارع ميناس الشامي ', 'Center Street', 32, 31.971189, 35.835617, 10, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rjobs`
--

CREATE TABLE `rjobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rjobs`
--

INSERT INTO `rjobs` (`id`, `name_ar`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'احصائي', 'Statistics Specialist', NULL, NULL),
(2, 'اخصائي إعلام وتسويق', 'Media and Marketing Specialist', NULL, NULL),
(3, 'اخصائي تخطيط', 'Planning Specialist', NULL, NULL),
(4, 'اداري ثالث', 'Third Line Administrative', NULL, NULL),
(5, 'اداري ثاني', 'Second Line Administrative', NULL, NULL),
(6, 'امين مستودع', 'Warehouse Guard', NULL, NULL),
(7, 'امين/امينة مكتبه', 'Librarian', NULL, NULL),
(8, 'باحث قانوني مساعد', 'Legal Assistant', NULL, NULL),
(9, 'حارس', 'Guard', NULL, NULL),
(10, 'حافظ ملفات', 'File Keeper', NULL, NULL),
(11, 'خازن عهدة', 'Custody/Supplies Keeper', NULL, NULL),
(12, 'خبير مشروع المياه والبيئة', 'Water and Environment Project Expert', NULL, NULL),
(13, 'رئيس الديوان', 'Bureau Head', NULL, NULL),
(14, 'رئيس الوحده الادارية', 'Head of Administrative Unit', NULL, NULL),
(15, 'رئيس شعبة الحركة', 'Transportation Section Head', NULL, NULL),
(16, 'رئيس شعبة الصادر و الوارد', 'Chief of Incoming and Outgoing Mail Division', NULL, NULL),
(17, 'رئيس قسم', 'Head of the Department', NULL, NULL),
(18, 'رئيس قسم الارشاد والتوجيه المهني', 'Head of Career Guidance Section', NULL, NULL),
(19, 'رئيس قسم الاعلام', 'Head of Media Section', NULL, NULL),
(20, 'رئيس قسم الامانات والسلف', 'Head of Guarantees & Advances', NULL, NULL),
(21, 'رئيس قسم البرامج والمناهج', 'Head of Program and Curriculum Section', NULL, NULL),
(22, 'رئيس قسم البرمجة', 'Head of Programming Section', NULL, NULL),
(23, 'رئيس قسم التخطيط', 'Head of Planning Department', NULL, NULL),
(24, 'رئيس قسم التدقيق ورقابة اللوازم', 'Head of Audit and Supplies Control Section', NULL, NULL),
(25, 'رئيس قسم التدقيق المالي', 'Head of Financial Audit Department', NULL, NULL),
(26, 'رئيس قسم التسجيل والنتائج والشهادات', 'Head of Registration, Results and Certification Section', NULL, NULL),
(27, 'رئيس قسم التصنيف والتوصيف المهني', 'Head of Classification and Occupational Descriptions', NULL, NULL),
(28, 'رئيس قسم التعاون الدولي', 'Head of International Cooperation', NULL, NULL),
(29, 'رئيس قسم التعليم الالكتروني', 'Head of E-Learning', NULL, NULL),
(30, 'رئيس قسم التفتيش المهني', 'Head of Occupational Inspection Section', NULL, NULL),
(31, 'رئيس قسم الدراسات', 'Head of Studies Department', NULL, NULL),
(32, 'رئيس قسم الرقابة المالية', 'Head of Financial Control Department', NULL, NULL),
(33, 'رئيس قسم الرقابه الاداريه', 'Head of Administrative Control Section', NULL, NULL),
(34, 'رئيس قسم الرقابه الفنيه', 'Head of Technical Supervision Department', NULL, NULL),
(35, 'رئيس قسم الرواتب والاجور', 'Head of Salaries and Wages Section', NULL, NULL),
(36, 'رئيس قسم الشبكات', 'Head of Networks Section', NULL, NULL),
(37, 'رئيس قسم الصندوق', 'Head of Fund Section', NULL, NULL),
(38, 'رئيس قسم الصندوق والمستندات', 'Head of Fund and Documents Section', NULL, NULL),
(39, 'رئيس قسم الصيانة', 'Head of Maintenance Department', NULL, NULL),
(40, 'رئيس قسم العلاقات العامة', 'Head of Public Relations', NULL, NULL),
(41, 'رئيس قسم اللوازم', 'Head of Supplies Section', NULL, NULL),
(42, 'رئيس قسم المتابعة والتنسيق', 'Head of the Follow-up and Coordination Section', NULL, NULL),
(43, 'رئيس قسم المحاسبة', 'Head of Accounting Department', NULL, NULL),
(44, 'رئيس قسم المشتريات', 'Head of Purchasing Section', NULL, NULL),
(45, 'رئيس قسم الموارد البشرية والتشكيلات', 'Head of Human Resources and Vacancies', NULL, NULL),
(46, 'رئيس قسم الموازنة', 'Head of Budget Section', NULL, NULL),
(47, 'رئيس قسم النشاطات', 'Head of Activities Department', NULL, NULL),
(48, 'رئيس قسم النفقات والايرادات', 'Head of Expense and Revenue Section', NULL, NULL),
(49, 'رئيس قسم امانه سر الفرق الفنيه', 'Head of Department of Technical Teams', NULL, NULL),
(50, 'رئيس قسم تصنيف محلات المهن', 'Head of Occupational Classification Department', NULL, NULL),
(51, 'رئيس قسم شؤون المتدربين', 'Head of Trainees Affairs Section', NULL, NULL),
(52, 'رئيس قسم شؤون الموظفين', 'Head of Personnel Section', NULL, NULL),
(53, 'رئيس قسم وحدة تطوير الأداء المؤسسي', 'Head of Corporate Performance Development Unit', NULL, NULL),
(54, 'رئيس قسم وحدة معلومات التدريب', 'Head of Training Information Unit Section', NULL, NULL),
(55, 'رئيس وحدة الاستشارة القانونية', 'Head of Legal Advisory Unit', NULL, NULL),
(56, 'رئيس وحدة إدارة التغيير', 'Head of Change Management Unit', NULL, NULL),
(57, 'رئيس وحده الحكومة الالكترونية', 'Head of the eGovernment Unit', NULL, NULL),
(58, 'سائق', 'Driver', NULL, NULL),
(59, 'سائق دراجة', 'Motorcycle Driver', NULL, NULL),
(60, 'ضابط تدريب', 'Training Officer', NULL, NULL),
(61, 'ضابط تدريب / اتصالات', 'Training Officer / Communications', NULL, NULL),
(62, 'ضابط تدريب / حاسوب', 'Training Officer / Computer', NULL, NULL),
(63, 'ضابط تدريب / خياطة', 'Training Officer / Sewing', NULL, NULL),
(64, 'ضابط تدريب الكترونيات', 'Training Officer Electronics', NULL, NULL),
(65, 'ضابط تدريب تجليس ودهان', 'Training Officer for Body Repair and Painting', NULL, NULL),
(66, 'ضابط تدريب تجميل', 'Training Officer for Beauty', NULL, NULL),
(67, 'ضابط تدريب تشكيل المعادن والصيانه الميكانيكيه', 'Training Officer for Metal Formation and Mechanical Maintenance', NULL, NULL),
(68, 'ضابط تدريب تكييف وتبريد', 'Training Officer for Air conditioning and Cooling', NULL, NULL),
(69, 'ضابط تدريب حاسوب', 'Training Officer for Computer', NULL, NULL),
(70, 'ضابط تدريب حدادة ولحام', 'Training Officer Blacksmith and Welding', NULL, NULL),
(71, 'ضابط تدريب خياطة', 'Sewing Training Officer', NULL, NULL),
(72, 'ضابط تدريب راديو وتلفزيون', 'Training Officer for Radio and TV', NULL, NULL),
(73, 'ضابط تدريب صناعات غذائية', 'Training Officer for Food Industries', NULL, NULL),
(74, 'ضابط تدريب طباعه', 'Training Officer for Printing', NULL, NULL),
(75, 'ضابط تدريب فندقة', 'Training Officer for Hotel', NULL, NULL),
(76, 'ضابط تدريب كهرباء', 'Training Officer for Electricity', NULL, NULL),
(77, 'ضابط تدريب كهرباء سيارات', 'Training Officer for Auto Electricity', NULL, NULL),
(78, 'ضابط تدريب مساعد /خياطة', 'Assistant Training Officer / Tailor', NULL, NULL),
(79, 'ضابط تدريب مساعد /كهرباء سيارات', 'Assistant Training Officer / Auto Electricity', NULL, NULL),
(80, 'ضابط تدريب مساعد فندقة', 'Assistant Training Officer / Hotel', NULL, NULL),
(81, 'ضابط تدريب مساعد/ميكانيكا عامة', 'Assistant Training Officer / General Mechanics', NULL, NULL),
(82, 'ضابط تدريب ميكانيكا عامة', 'General Mechanic Training Officer', NULL, NULL),
(83, 'ضابط تدريب ميكانيكي سيارات', 'Training Officer for Auto Mechanic', NULL, NULL),
(84, 'ضابط تدريب نجارة وديكور', 'Training Officer for Carpentry and Decoration', NULL, NULL),
(85, 'طابع / مدخلة بيانات', 'Typist/ Data Entry', NULL, NULL),
(86, 'طابع/طابعه', 'Typist', NULL, NULL),
(87, 'طابع/قائم باعمال شؤون المتدربين', 'Typist / Acting Trainee Affairs', NULL, NULL),
(88, 'عامل تنظيفات', 'Cleaner', NULL, NULL),
(89, 'عضو مشتريات', 'Procurement Member', NULL, NULL),
(90, 'فني اتصالات', 'Communications Technician', NULL, NULL),
(91, 'فني انتاج خزف', 'Ceramic Production Technician', NULL, NULL),
(92, 'فني تصوير تلفزيون', 'Television Technician', NULL, NULL),
(93, 'فني صيانة', 'Maintenance Technician', NULL, NULL),
(94, 'قائم باعمال رئيس قسم وحدة الحكومة الألكترونية', 'Acting Director of the Electronic Government Unit', NULL, NULL),
(95, 'قائم باعمال رئيس ديوان', 'Acting Head of Staff', NULL, NULL),
(96, 'قائم باعمال رئيس قسم', 'Acting Head of Department', NULL, NULL),
(97, 'قائم باعمال رئيس قسم الارشاد والتوجيه المهني', 'Acting Head of Career Guidance Section', NULL, NULL),
(98, 'قائم باعمال رئيس قسم الاعلام', 'Acting Chief Media Officer', NULL, NULL),
(99, 'قائم باعمال رئيس قسم التدريب والتطوير', 'Acting Head Section  of Training and Development', NULL, NULL),
(100, 'قائم باعمال رئيس قسم التدقيق المالي', 'Acting Chief Financial Audit', NULL, NULL),
(101, 'قائم باعمال رئيس قسم المشتريات', 'Acting Chief Procurement Officer', NULL, NULL),
(102, 'قائم باعمال مدير مديريه', 'Acting Director', NULL, NULL),
(103, 'قائم باعمال مدير معهد', 'Acting Director Institute', NULL, NULL),
(104, 'قائم باعمال مرشد مهني', 'Acting Professional Counselor', NULL, NULL),
(105, 'قائم بأعمال رئيس قسم شؤون الموظفين', 'Acting Head of Personnel Section', NULL, NULL),
(106, 'قائم بأعمال مدير المديرية المالية', 'Acting Director of the Financial Directorate', NULL, NULL),
(107, 'قائم بأعمال مساعد المدير العام لشؤون المراكز والتدريب', 'Acting Assistant Director General for Centers and Training', NULL, NULL),
(108, 'كاتب / كاتبة ديوان', 'Bureau Clerk', NULL, NULL),
(109, 'كاتب ثالث', 'Third Writer', NULL, NULL),
(110, 'كاتب ثالث شوؤن متدربين', 'A third writer in Trainee Affairs', NULL, NULL),
(111, 'كاتب ثاني', 'Second Writer', NULL, NULL),
(112, 'كاتب حسابات', 'Bookkeeper', NULL, NULL),
(113, 'كاتب شٌؤون متدربين', 'Trainee Affairs Clerk', NULL, NULL),
(114, 'كاتب شؤون موظفين', 'Staff Clerk', NULL, NULL),
(115, 'كاتب/كاتبه', 'Clerk', NULL, NULL),
(116, 'كاتبة أدارية', 'Administrative Clerk', NULL, NULL),
(117, 'مامور استعلامات/ مراقب دوام', 'Front Desk Officer / Working Hours Monitor', NULL, NULL),
(118, 'مامور تسجيل متدربين', 'Registration of Trainees Officer', NULL, NULL),
(119, 'مامور لوازم', 'Supplies Officer', NULL, NULL),
(120, 'مامور مستودع', 'Warehouse Officer', NULL, NULL),
(121, 'مامورتصوير/مراقب دوام', 'Photography Officer /Working Hours Monitor', NULL, NULL),
(122, 'مأمور تصوير', 'Photography Officer', NULL, NULL),
(123, 'مأمور مقسم', 'Switchboard Officer', NULL, NULL),
(124, 'متـــرجم', 'Translator / Interpreter', NULL, NULL),
(125, 'مجلس هياكل مركبات عام', 'General Auto Body Repair', NULL, NULL),
(126, 'محاسب', 'Accountant', NULL, NULL),
(127, 'محاسب مساعد', 'Assistant Accountant', NULL, NULL),
(128, 'محلل احصائي', 'Statistical Analyst', NULL, NULL),
(129, 'مدخل بيانات', 'Data Entry', NULL, NULL),
(130, 'مدرب دهان مباني', 'Paint Building Trainer', NULL, NULL),
(131, 'مدرب ابنية وإنشاءات', 'Buildings and Constructions Trainer', NULL, NULL),
(132, 'مدرب اجهزة طبية', 'Medical Device Trainer', NULL, NULL),
(133, 'مدرب اسعافات اولية', 'First Aid Trainer', NULL, NULL),
(134, 'مدرب الات مكتبيه', 'Office Machine Trainer', NULL, NULL),
(135, 'مدرب الكترونيات', 'Electronics Trainer', NULL, NULL),
(136, 'مدرب انتاج طعام', 'Food Production Trainer', NULL, NULL),
(137, 'مدرب ايواء', 'Housekeeping Trainer', NULL, NULL),
(138, 'مدرب تجليس ودهان', 'Auto Body Repair and Painting Trainer', NULL, NULL),
(139, 'مدرب تدبير فندقي', 'Hotel Trainer', NULL, NULL),
(140, 'مدرب تدفئة وتمديدات صحية', 'Heating and Plumbing Trainer', NULL, NULL),
(141, 'مدرب تدفئه', 'Heating Trainer', NULL, NULL),
(142, 'مدرب تصوير تلفزيوني/ وسائل تعليمية', 'TV Instructor/ Teaching Methods', NULL, NULL),
(143, 'مدرب تطريز الي', 'Embroidery Trainer', NULL, NULL),
(144, 'مدرب تكييف وتبريد', 'Air Conditioning and Cooling Trainer', NULL, NULL),
(145, 'مدرب تمديدات صحية', 'Plumbing Trainer', NULL, NULL),
(146, 'مدرب تمديدات صحيه وشبكات الري', 'Plumbing and Irrigation Networks Trainer', NULL, NULL),
(147, 'مدرب تمديدات كهربائية', 'Electrical Extension Trainer', NULL, NULL),
(148, 'مدرب تنجيد', 'Upholstery Trainer', NULL, NULL),
(149, 'مدرب ثالث /تجميل', 'Third Trainer / Cosmetics', NULL, NULL),
(150, 'مدرب ثالث /حداده ولحام', 'Third Trainer / Smith and Welding', NULL, NULL),
(151, 'مدرب ثالث /كهرباء عامه', 'Third Trainer / General Electricity', NULL, NULL),
(152, 'مدرب ثالث خياطه', 'Third Trainer / Sewing', NULL, NULL),
(153, 'مدرب ثالث فندقه/انتاج طعام', 'Third Trainer Hotel / Food Production', NULL, NULL),
(154, 'مدرب ثالث/خراطه', 'Third Trainer /Turner', NULL, NULL),
(155, 'مدرب ثالث/كمبيوتر', 'Third Trainer / Computer', NULL, NULL),
(156, 'مدرب ثالث/كهرباء سيارات', 'Third Trainer / Auto Electrician', NULL, NULL),
(157, 'مدرب ثالث/مخابز وحلويات', 'Third Trainer / Bakery and Confectionery', NULL, NULL),
(158, 'مدرب ثالث/ميكانيك سيارات', 'Third Trainer / Auto Mechanic', NULL, NULL),
(159, 'مدرب ثالث/نجاره وديكور', 'Third Trainer / Carpentry and Decoration', NULL, NULL),
(160, 'مدرب ثاني/تكييف وتبريد', 'Second Trainer / Air Conditioning and Cooling', NULL, NULL),
(161, 'مدرب ثاني/راديو وتلفزيون', 'Second Trainer / Radio and TV', NULL, NULL),
(162, 'مدرب جبسوم بورد', 'Gypsum Board Trainer', NULL, NULL),
(163, 'مدرب حاسوب', 'Computer Trainer', NULL, NULL),
(164, 'مدرب حداد المنيوم', 'Aluminum Blacksmith Trainer', NULL, NULL),
(165, 'مدرب حدادة ولحام', 'Blacksmith and Welding Trainer', NULL, NULL),
(166, 'مدرب حرف تقليدية', 'Traditional Craft Trainer', NULL, NULL),
(167, 'مدرب حرفي ومهني / شك خرز', 'Craftsman and Voccational Trainer / Fashion', NULL, NULL),
(168, 'مدرب حرفي ومهني /تجليس ودهان مركبات', 'Craftsman and Voccational Trainer / Auto Body Repair and Painting', NULL, NULL),
(169, 'مدرب حرفي ومهني/ تجميل', 'Craftsman and Voccational Trainer / Cosmetics', NULL, NULL),
(170, 'مدرب حرفي ومهني/ تدفئة', 'Craftsman and Voccational Trainer / Heating', NULL, NULL),
(171, 'مدرب حرفي ومهني/ تكييف وتبريد', 'Craftsman and Voccational Trainer / Air Conditioning', NULL, NULL),
(172, 'مدرب حرفي ومهني/ حرف يدوية', 'Craftsman and Voccational Trainer /Handcraft', NULL, NULL),
(173, 'مدرب حرفي ومهني/ حلويات', 'Craftsman and Voccational Trainer / Confectionery', NULL, NULL),
(174, 'مدرب حرفي ومهني/ خدمة طعام وشراب', 'Craftsman and Voccational Trainer / Food and Beverage Service', NULL, NULL),
(175, 'مدرب حرفي ومهني/ خزف', 'Craftsman and Voccational Trainer / Ceramics', NULL, NULL),
(176, 'مدرب حرفي ومهني/ خياطه', 'Craftsman and Voccational Trainer / Sewing', NULL, NULL),
(177, 'مدرب حرفي ومهني/ دولاب وخزف', 'Craftsman and Voccational Trainer / Ceramics and Cupboard', NULL, NULL),
(178, 'مدرب حرفي ومهني/ صياغة ذهب', 'Craftsman and Voccational Trainer / Goldsmith', NULL, NULL),
(179, 'مدرب حرفي ومهني/ صيانة اجهزة طبية', 'Craftsman and Voccational Trainer / Medical Devices Maintenance', NULL, NULL),
(180, 'مدرب حرفي ومهني/ طين', 'Craftsman and Voccational Trainer / Mud', NULL, NULL),
(181, 'مدرب حرفي ومهني/ فندقة', 'Craftsman and Voccational Trainer / Hospitality', NULL, NULL),
(182, 'مدرب حرفي ومهني/ فندقة انتاج طعام', 'Craftsman and Voccational Trainer / Food Production', NULL, NULL),
(183, 'مدرب حرفي ومهني/ فندقة ايواء', 'Craftsman and Voccational Trainer / Housekeeping', NULL, NULL),
(184, 'مدرب حرفي ومهني/ كهرباء عامة', 'Craftsman and Voccational Trainer / General Electricity', NULL, NULL),
(185, 'مدرب حرفي ومهني/ نجارة', 'Craftsman and Voccational Trainer / Carpentry', NULL, NULL),
(186, 'مدرب حرفي ومهني/ نسيج', 'Craftsman and Voccational Trainer / Weaving', NULL, NULL),
(187, 'مدرب حرفي ومهني/انتاج خزف', 'Craftsman and Voccational Trainer / Ceramics Production', NULL, NULL),
(188, 'مدرب حرفي ومهني/انتاج قماش', 'Craftsman and Voccational Trainer / Fabric Production', NULL, NULL),
(189, 'مدرب حرفي ومهني/تشغيل افران', 'Craftsman and Voccational Trainer / Oven Operator', NULL, NULL),
(190, 'مدرب حرفي ومهني/حداده ولحام', 'Craftsman and Voccational Trainer / Blacksmith and Welding', NULL, NULL),
(191, 'مدرب حرفي ومهني/حلاقه', 'Craftsman and Voccational Trainer / Barber', NULL, NULL),
(192, 'مدرب حلاقة', 'Barber Trainer', NULL, NULL),
(193, 'مدرب حلويات', 'Confectionery Trainer', NULL, NULL),
(194, 'مدرب خدمة طعام', 'Food Service Trainer', NULL, NULL),
(195, 'مدرب خراطة', 'Turner Trainer', NULL, NULL),
(196, 'مدرب خراطة وتسوية', 'Turner and SettlingTrainer', NULL, NULL),
(197, 'مدرب خلويات', 'Cell Phones Trainer', NULL, NULL),
(198, 'مدرب خياطة صناعية', 'Industrial Sewing Trainer', NULL, NULL),
(199, 'مدرب دهان مشغولات خشبيه', 'Wood Painting Trainer', NULL, NULL),
(200, 'مدرب راديو وتلفزيون', 'Radio and TV Trainer', NULL, NULL),
(201, 'مدرب زراعة', 'Agriculture Trainer', NULL, NULL),
(202, 'مدرب سلامة', 'Safety Trainer', NULL, NULL),
(203, 'مدرب سواقين', 'Drivers\' Trainer', NULL, NULL),
(204, 'مدرب صناعات جلدية', 'Leather Industries Trainer', NULL, NULL),
(205, 'مدرب صناعات دوائية', 'Pharmaceutical Industries Trainer', NULL, NULL),
(206, 'مدرب صناعات غذائية', 'Food Industries Trainer', NULL, NULL),
(207, 'مدرب صناعات غذائية / ألبان', 'Food Industries Trainer / Dairy', NULL, NULL),
(208, 'مدرب صياغه ذهب', 'Goldsmith Trainer', NULL, NULL),
(209, 'مدرب صيانة اجهزة القياس والتحكم', 'Control and Measuring Devices Maintenance Trainer', NULL, NULL),
(210, 'مدرب صيانة اجهزة خلوية', 'Cell Phones Maintenance Trainer', NULL, NULL),
(211, 'مدرب صيانه حاسوب', 'Computer Maintenance Trainer', NULL, NULL),
(212, 'مدرب صيانه ميكانيكيه', 'Mechanical Maintenance Trainer', NULL, NULL),
(213, 'مدرب طباعة مطابع', 'Press Printing Trainer', NULL, NULL),
(214, 'مدرب عمل انتاجي', 'Production Trainer', NULL, NULL),
(215, 'مدرب فندقة', 'Hotel Trainer', NULL, NULL),
(216, 'مدرب فندقه/ايواء', 'Hotel Trainer / Housekeeping', NULL, NULL),
(217, 'مدرب قش', 'Hay Trainer', NULL, NULL),
(218, 'مدرب كهرباء', 'Electricity Trainer', NULL, NULL),
(219, 'مدرب كهرباء سيارات', 'Auto Electricity Trainer', NULL, NULL),
(220, 'مدرب مخابز ومعجنات', 'Bakery and Pastry Trainer', NULL, NULL),
(221, 'مدرب مشروع الصناعات الدوائية', 'Pharmaceutical Industries Project Trainer', NULL, NULL),
(222, 'مدرب مشروع الطاقة المتجددة', 'Renewable Energy Project Trainer', NULL, NULL),
(223, 'مدرب مشروع المياه والبيئة', 'Water and Environment Project Trainer', NULL, NULL),
(224, 'مدرب مكانيك سيارات', 'Auto Mechanic Trainer', NULL, NULL),
(225, 'مدرب مكانيكا عامة', 'General Mechanics Trainer', NULL, NULL),
(226, 'مدرب مهارات حياتية', 'Life Skills Trainer', NULL, NULL),
(227, 'مدرب مياه وبيئة', 'Water and Environment Trainer', NULL, NULL),
(228, 'مدرب ميكانيك', 'Mechanic Trainer', NULL, NULL),
(229, 'مدرب ميكانيك ومبيع قطع سيارات', 'Auto Parts Sale and Mechanics Trainer', NULL, NULL),
(230, 'مدرب ميكانيكا عامه', 'General Mechanics Trainer', NULL, NULL),
(231, 'مدرب نجارة وديكور', 'Carpentry and Decoration Trainer', NULL, NULL),
(232, 'مدرب/تجميل', 'Cosmetics / Trainer', NULL, NULL),
(233, 'مدربة تجميل', 'Cosmetics / Trainer', NULL, NULL),
(234, 'مدربة تريكو / نسيج', 'Knitting / Textile Trainer', NULL, NULL),
(235, 'مدربة خياطة', 'Sewing Trainer', NULL, NULL),
(236, 'مدربة طباعة', 'Typist Trainer', NULL, NULL),
(237, 'مدربة مبيعات', 'Sales Trainer', NULL, NULL),
(238, 'مدربة مهنية', 'Vocational Trainer', NULL, NULL),
(239, 'مدقق لوازم', 'Checker supplies', NULL, NULL),
(240, 'مدقق مالي', 'Financial Auditor', NULL, NULL),
(241, 'مدقق مالي مساعد', 'Financial Auditor', NULL, NULL),
(242, 'مدقق مساعد', 'Assistant Auditor', NULL, NULL),
(243, 'مدير المديرية الادارية', 'Administrative Directorate Director', NULL, NULL),
(244, 'مدير عام', 'Director General', NULL, NULL),
(245, 'مدير مديرية', 'Director of Directorate', NULL, NULL),
(246, 'مدير مديرية اقليم الشمال', 'Northern Region Directorate Director', NULL, NULL),
(247, 'مدير مديرية العلاقات العامة', 'Public Relations Directorate Director', NULL, NULL),
(248, 'مدير مديرية القبول والتسجيل', 'Admissions and Registration Directorate Director', NULL, NULL),
(249, 'مدير مديرية اللوازم', 'Supplies Directorate Director', NULL, NULL),
(250, 'مدير مديرية الموارد البشرية', 'Director of Human Resources Directorate', NULL, NULL),
(251, 'مدير مديرية ضبط الجودة', 'Quality Control Directorate Director', NULL, NULL),
(252, 'مدير مشروع الصناعات الدوائية', 'Pharmaceutical Industries Project Director', NULL, NULL),
(253, 'مدير مشروع الطاقة المتجددة', 'Renewable Energy Project Director', NULL, NULL),
(254, 'مدير معهد', 'Institute Director', NULL, NULL),
(255, 'مراسل', 'Courier', NULL, NULL),
(256, 'مراقب ابنية', 'Buildings Supervisor', NULL, NULL),
(257, 'مراقب دوام', 'Working Hours Monitor', NULL, NULL),
(258, 'مرشد مهني', 'Career Guide', NULL, NULL),
(259, 'مرشد مهني مشارك', 'Associate Career Guide', NULL, NULL),
(260, 'مزاول مساعد تمديدات صحيه', 'Plumber Assistant', NULL, NULL),
(261, 'مساعد المديرالعام لشؤون التدريب', 'Director General Assistant for Training', NULL, NULL),
(262, 'مساعد مدير عام للشؤون الادارية والمالية', 'Director General Assistant for Administrative and Financial Affairs', NULL, NULL),
(263, 'مساعد مدير عام للشؤون الفنية', 'Director General Assistant for Technical Affairs', NULL, NULL),
(264, 'مساعد مدير مديرية /اقليم الشمال', 'Assistant Director of Directorate / North Region', NULL, NULL),
(265, 'مستخدم', 'User', NULL, NULL),
(266, 'مستشار تدريب برتبة مدير مديرية', 'Training Consultant at the rank of Director of Directorate', NULL, NULL),
(267, 'مستشار مدير عام للتدريب بمرتبة مساعد مدير عام', 'Advisor to the Director General for Training with the rank of Assistant Director General', NULL, NULL),
(268, 'مسجل دورات', 'Training Courses Registrar', NULL, NULL),
(269, 'مسجل شؤون متدربين', 'Trainees Affairs Registrar', NULL, NULL),
(270, 'مسجل متدربين', 'Trainee Registrar', NULL, NULL),
(271, 'مسجل متدربين ثاني', 'Second Trainee Registrar', NULL, NULL),
(272, 'مشرف مشغل', 'Workshop Supervisor', NULL, NULL),
(273, 'مشرف مشغل الحدادة واللحام', 'Blacksmith and Welding Operator Workshop Supervisor', NULL, NULL),
(274, 'مشرف مشغل الفندقة', 'Hotel Operator Supervisor', NULL, NULL),
(275, 'مشرف مشغل الميكانيك', 'Mechanics Workshop Supervisor', NULL, NULL),
(276, 'مشرف مشغل النجارة', 'Carpentry Workshop Supervisor', NULL, NULL),
(277, 'مشغل حاسوب', 'Computer Operator', NULL, NULL),
(278, 'معلم ثالث /ثقافيات', 'Third Teacher / Cultures', NULL, NULL),
(279, 'معلم ثقافيات', 'Cultural Teacher', NULL, NULL),
(280, 'معلم رابع/تعدين', 'Fourth Teacher / Mining', NULL, NULL),
(281, 'معلم رابع/ثقافيات', 'Fourth Teacher / Cultures', NULL, NULL),
(282, 'معلم رابع/كمبيوتر', 'Fourth Teacher / Computer', NULL, NULL),
(283, 'معلم لغة انجليزية', 'English Teacher', NULL, NULL),
(284, 'مفتش مهني', 'Occupational Inspector', NULL, NULL),
(285, 'مندوب مبيعات', 'Sales Representative', NULL, NULL),
(286, 'منسق', 'Coordinator', NULL, NULL),
(287, 'منسق المسابقة المهنية', 'Skill Competition Coordinator', NULL, NULL),
(288, 'منسق تدريب', 'Training Coordinator', NULL, NULL),
(289, 'منسق تدريب / الكترونيات', 'Training Coordinator / Electronics', NULL, NULL),
(290, 'منسق تدريب حاسوب', 'Computer Training Coordinator', NULL, NULL),
(291, 'منسق تدريب صناعات معدنية', 'Training Coordinator for Metal Industries', NULL, NULL),
(292, 'منسق تدريب صناعات نسيجية', 'Training Coordinator for Textile Industries', NULL, NULL),
(293, 'منسق تدريب كهرباء عامة', 'General Electricity Training Coordinator', NULL, NULL),
(294, 'منسق تدريب ميكانيك مركبات', 'Training Coordinator Vehicles Mechanics', NULL, NULL),
(295, 'منسق تدريب نجارة وديكور', 'Training Coordinator Carpentry and Decoration', NULL, NULL),
(296, 'منسق تدريب/ فندقة', 'Training Coordinator / Hotel', NULL, NULL),
(297, 'منسق تدريب/تكييف و تبريد', 'Training Coordinator / Air-Conditioning and Cooling', NULL, NULL),
(298, 'منسق تدريب/حرف نسوية', 'Training Coordinator / Female Handcraft', NULL, NULL),
(299, 'منسق تشغيل', 'Employment Coordinator', NULL, NULL),
(300, 'منسق تفتيش', 'Inspection Coordinator', NULL, NULL),
(301, 'منسق حاسوب', 'Computer Coordinator', NULL, NULL),
(302, 'منسق دورات', 'Training Courses Coordinator', NULL, NULL),
(303, 'منسق مساعد /دراسات وبرامج', 'Assistant Coordinator / Studies and Programs', NULL, NULL),
(304, 'منسق مهارات حياتية', 'Life Skills Coordinator', NULL, NULL),
(305, 'مهندس سلامه', 'Safety Engineer', NULL, NULL),
(306, 'مهندس كيماوي', 'Chemical Engineer', NULL, NULL),
(307, 'مهندس مدني', 'Civil Engineer', NULL, NULL),
(308, 'موظف استقبال', 'Receptionist', NULL, NULL),
(309, 'مبرمج', 'Programming', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sheet1`
--

CREATE TABLE `sheet1` (
  `الشعبة` varchar(54) DEFAULT NULL,
  `القسم` int(1) DEFAULT NULL,
  `الدائرة` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sheet1`
--

INSERT INTO `sheet1` (`الشعبة`, `القسم`, `الدائرة`) VALUES
('المعهد الاردني الكوري', 2, 1),
('معهد التدريب للمهن المطبعية', 2, 1),
('معهد التدريب المهني / ابو نصير', 2, 1),
('معهد التدريب المهني / البتراء', 3, 1),
('معهد التدريب المهني / الزرقاء', 2, 1),
('معهد التدريب المهني / الطفيلة إناث', 3, 1),
('معهد التدريب المهني / الطفيلة ذكور', 3, 1),
('معهد التدريب المهني / العقبة إناث', 3, 1),
('معهد التدريب المهني / العقبة ذكور', 3, 1),
('معهد التدريب المهني / المفـــرق', 1, 1),
('معهد التدريب المهني / الهاشمية', 2, 1),
('معهد التدريب المهني / أربـــد', 1, 1),
('معهد التدريب المهني / بنات الكرك', 3, 1),
('معهد التدريب المهني / جرش', 1, 1),
('معهد التدريب المهني / حكــما', 1, 1),
('معهد التدريب المهني / سحاب', 2, 1),
('معهد التدريب المهني / عجلون', 1, 1),
('معهد التدريب المهني / عين الباشا إناث', 2, 1),
('معهد التدريب المهني / عين الباشا ذكور', 2, 1),
('معهد التدريب المهني / غور الصافي', 3, 1),
('معهد التدريب المهني / مادبا السياحي', 2, 1),
('معهد التدريب المهني / مادبا إناث', 2, 1),
('معهد التدريب المهني / ماركا اناث', 2, 1),
('معهد التدريب المهني / مدينة الحسين بن عبدالله الصناعية', 3, 1),
('معهد التدريب المهني / معان إناث', 3, 1),
('معهد التدريب المهني / معان ذكور', 3, 1),
('معهد التدريب المهني / مؤاب إناث', 3, 1),
('معهد التدريب المهني / مؤاب ذكور', 3, 1),
('معهد التدريب المهني / ناعور', 2, 1),
('معهد التدريب المهني / ياجوز', 2, 1),
('معهد التدريب والتطوير', NULL, 3),
('معهد التميز للصناعات الدوائية', 2, 1),
('معهد التميز للطاقة المتجدده', 3, 1),
('معهد التميز للمياه والبيئة', 2, 1),
('معهد السلامة والصحة المهنية', 2, 1),
('معهد السلط للتدريب الفندقي', 2, 1),
('معهد السلط للمهن والحرف التقليدية', 2, 1),
('معهد الصناعات المعدنية', 2, 1),
('معهد تدريب المهني / الغور الاوسط', 4, 1),
('معهد تدريب مهني / المـــشارع', 4, 1),
('معهد تدريب مهني / ماركا ذكور', 2, 1),
('معهد سمو الاميرة تغريد لتدريب وتأهيل الفتيات', 3, 1),
('معهد ماركا للتدريب السياحي والفندقي', 2, 1),
('معهدالتدريب المهني / القويسمة', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `specializations`
--

CREATE TABLE `specializations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specializations`
--

INSERT INTO `specializations` (`id`, `name_ar`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'اتوترونيكس', 'Atronics', NULL, NULL),
(2, 'اجتماعيات', 'Social Studies', NULL, NULL),
(3, 'احصاء', 'Statistics', NULL, NULL),
(4, 'ادارة اعمال', 'Business Administration', NULL, NULL),
(5, 'ادارة الاعمال/سياحة و فندقة', 'Business Administration / Tourism and Hotel', NULL, NULL),
(6, 'ادارة التزويد', 'Supply Management', NULL, NULL),
(7, 'ادارة الطعام والشراب', 'Food and Drink Management', NULL, NULL),
(8, 'ادارة المستودعات', 'Stores management', NULL, NULL),
(9, 'ادارة ايواء', 'Accommodation Management', NULL, NULL),
(10, 'ادارة صناعية', 'Industrial Management', NULL, NULL),
(11, 'ادارة عامة', 'General Administration', NULL, NULL),
(12, 'ادارة فندقة', 'Hotel Management', NULL, NULL),
(13, 'ادارة لوازم', 'Supplies Management', NULL, NULL),
(14, 'ادارة مالية', 'Financial Management', NULL, NULL),
(15, 'ادارة معلوماتية', 'Information Management', NULL, NULL),
(16, 'ادارة مكاتب', 'Office Management', NULL, NULL),
(17, 'ادارة موارد المياه والبيئة', 'Water Resources and Environment Management', NULL, NULL),
(18, 'ادارة هندسية', 'Engineering Management', NULL, NULL),
(19, 'اداره تربويه', 'Educational Administration', NULL, NULL),
(20, 'اداره مستودعات', 'Warehouses Management', NULL, NULL),
(21, 'ادب انجليزي', 'English Literature', NULL, NULL),
(22, 'ادب عربي', 'Arabic Literature', NULL, NULL),
(23, 'ادبي', 'Literary', NULL, NULL),
(24, 'ارشاد تربوي', 'Educational Guidance', NULL, NULL),
(25, 'ارشاد زراعي', 'Agricultural Guidance', NULL, NULL),
(26, 'ارشاد سياحي', 'Tourism Guiding', NULL, NULL),
(27, 'ارشاد نفسي/ارشاد مدرسي', 'Self-help / School Guidance', NULL, NULL),
(28, 'ارشاد وتوجيه نفسي', 'Mentoring and Guidance', NULL, NULL),
(29, 'ارشاد وصحة نفسية', 'Guidance and Psychological Health', NULL, NULL),
(30, 'اعداد معلمي/الطباعه والسكرتاريه', 'Preparation of Teacher / Printing and Secretary', NULL, NULL),
(31, 'اعداد معلمين', 'Preparing Teachers', NULL, NULL),
(32, 'اعداد معلمين', 'Preparing teachers', NULL, NULL),
(33, 'اقتصاد', 'Economy', NULL, NULL),
(34, 'اقتصاد زراعي', 'Agricultural Economy', NULL, NULL),
(35, 'اقتصاد منزلي', 'Home Economics', NULL, NULL),
(36, 'اقل من ثانوي', 'Less than Secondary', NULL, NULL),
(37, 'الات حرارية وهيدروليكية', 'Thermal and Hydraulic Machines', NULL, NULL),
(38, 'الاثار والسياحه', 'Archeology and Tourism', NULL, NULL),
(39, 'الارشاد الاسري', 'Family Counseling', NULL, NULL),
(40, 'الارشاد النفسي', 'Psychological Guidance', NULL, NULL),
(41, 'الارشاد والصحة النفسية', 'Counseling and Psychological Health', NULL, NULL),
(42, 'الازياء وتكنولوجيا الالبسة', 'Fashion and Technology Clothing', NULL, NULL),
(43, 'الالكترونيات الصناعية', 'Industrial Electronics', NULL, NULL),
(44, 'الانتاج والالات', 'Production and Machinery', NULL, NULL),
(45, 'الإدارة السياحية', 'Tourism Management', NULL, NULL),
(46, 'الإدارة والدراسات الإستراتيجية', 'Management and Strategic Studies', NULL, NULL),
(47, 'الأتوترونيكس', 'Autotronics', NULL, NULL),
(48, 'البرمجة', 'Programming', NULL, NULL),
(49, 'التخطيط الاقليمي', 'Regional Planning', NULL, NULL),
(50, 'التربية الاسلامية', 'Islamic Education', NULL, NULL),
(51, 'التربية الخاصة', 'Special Education/ Eduction for People with Special Needs', NULL, NULL),
(52, 'التربية المهنية', 'Vcational Education', NULL, NULL),
(53, 'التصوير والطباعه', 'Photography and Printing', NULL, NULL),
(54, 'التغذية والصناعات الغذائية', 'Nutrition and Food Industries', NULL, NULL),
(55, 'التغذية وتكنولوجيا الغذاء /علم وتكنولوجيا الغذاء', 'Nutrition and Food Technology / Food Science and Technology', NULL, NULL),
(56, 'الحكومة الالكترونية', 'The Electronic Government', NULL, NULL),
(57, 'الخدمه الاجتماعيه', 'Social Service', NULL, NULL),
(58, 'السكرتاريا والسجل الطبي', 'Secretary and Medical Record', NULL, NULL),
(59, 'الصحي', 'Health', NULL, NULL),
(60, 'العلوم التطبيقية', 'Applied Sciences', NULL, NULL),
(61, 'العلوم الحياتية', 'Life Sciences', NULL, NULL),
(62, 'العلوم الزراعية', 'Agricultural Sciences', NULL, NULL),
(63, 'الفلسفة / في ادارة الاعمال', 'Philosophy / Business Administration', NULL, NULL),
(64, 'الفلسفة في المحاسبة', 'Philosophy in Accounting', NULL, NULL),
(65, 'الفنون الجميلة', 'Fine arts', NULL, NULL),
(66, 'الكترونيات الطيران', 'Aviation Electronics', NULL, NULL),
(67, 'اللغات الاوروبية/الفرنسية والانجليزية', 'European Languages/ French and English', NULL, NULL),
(68, 'اللغة الانجليزية وآدابها', 'English language and Literature', NULL, NULL),
(69, 'اللغة العربية', 'Arabic Language', NULL, NULL),
(70, 'المصادر التعليميه والمكتبات', 'Learning Resources and Libraries', NULL, NULL),
(71, 'الموارد الزراعية والبيئة', 'Agricultural Resources and Environment', NULL, NULL),
(72, 'الهندسة الكهربائية والتربية', 'Electrical Engineering and Education', NULL, NULL),
(73, 'الهندسة الميكانيكية / المركبات', 'Mechanical Engineering / Vehicles', NULL, NULL),
(74, 'انتاج الات', 'Machinery Production', NULL, NULL),
(75, 'انشاءات', 'Construction', NULL, NULL),
(76, 'إدارة الأعمال', 'Business Management', NULL, NULL),
(77, 'إدارة الفنادق /التسويق', 'Hotel Management / Marketing', NULL, NULL),
(78, 'إدارة الفنادق /التسويق', 'Hotel Management / Marketing', NULL, NULL),
(79, 'إدارة فندقية', 'Hotel Management', NULL, NULL),
(80, 'برمجة وتحليل نظم', 'Programming and Systems Analysis', NULL, NULL),
(81, 'تاريخ', 'History', NULL, NULL),
(82, 'تاهيل تربوي', 'Educational Qualification', NULL, NULL),
(83, 'تجاري', 'Commercial', NULL, NULL),
(84, 'تجميل', 'Cosmetology', NULL, NULL),
(85, 'تحكم آلي', 'Automatic Control', NULL, NULL),
(86, 'تدفئة مركزية', 'Central Heating', NULL, NULL),
(87, 'تدفئة مركزية وادوات صحية', 'Central Heating and Sanitary Ware', NULL, NULL),
(88, 'تربية ابتدائية', 'Primary Education', NULL, NULL),
(89, 'تربــية تقنــية', 'Technical Education', NULL, NULL),
(90, 'تربية خاصة', 'Special Education', NULL, NULL),
(91, 'تربية فنية', 'Art Education', NULL, NULL),
(92, 'تربيه طفل', 'Child Education', NULL, NULL),
(93, 'تربيه مهنيه', 'Vcational Education', NULL, NULL),
(94, 'تصميم ازياء', 'Clothes Designing', NULL, NULL),
(95, 'تصميم داخلي', 'Interior Design', NULL, NULL),
(96, 'تصميم وديكور', 'Design and Decor', NULL, NULL),
(97, 'تصنيع ملابس', 'Clothing Manufacture', NULL, NULL),
(98, 'تعدين وتجهيز خامات معدنيه', 'Metallurgy and Processing of Mineral Ores', NULL, NULL),
(99, 'تغذيه واقتصاد منزلي', 'Nutrition and Home Economics', NULL, NULL),
(100, 'تقنيات تربويه', 'Educational Techniques', NULL, NULL),
(101, 'تكنولوجيا الانارة الطبيعية والصناعية', 'Natural and Industrial Lighting Technology', NULL, NULL),
(102, 'تكنولوجيا الانتاج', 'Production Technology', NULL, NULL),
(103, 'تكنولوجيا التصنيع الغذائي', 'Food Processing Technology', NULL, NULL),
(104, 'تكنولوجيا التعليم', 'Educational Technology', NULL, NULL),
(105, 'تكنولوجيا الخراطة والالات المحوسبة', 'Lathe Technology and Computerized Machinery', NULL, NULL),
(106, 'تكنولوجيا الخراطة وتسوية المعادن', 'Lathe Technology and Metal Fixing', NULL, NULL),
(107, 'تكنولوجيا اللحام', 'Welding Technology', NULL, NULL),
(108, 'تكنولوجيا المعلومات', 'Information Technology', NULL, NULL),
(109, 'تكنولوجيا هندسه ميكانيكية / انتاج الات', 'Mechanical Engineering Technology / Machinery Production', NULL, NULL),
(110, 'تكييف وتبريد', 'Air-Conditioning and Cooling', NULL, NULL),
(111, 'تمديدات كهربائية', 'Electric Installation', NULL, NULL),
(112, 'تمديدات كهربائية / كهرباء عامة', 'Electrical Installations / General Electricity', NULL, NULL),
(113, 'تمريضي', 'Nursing', NULL, NULL),
(114, 'تنمية الموارد البشرية', 'Human Resource Development', NULL, NULL),
(115, 'جغرافيا', 'Geography', NULL, NULL),
(116, 'حاسب الكتروني', 'Computer', NULL, NULL),
(117, 'حاسوب', 'Computer', NULL, NULL),
(118, 'حدادة ولحام', 'Blacksmith and Welding', NULL, NULL),
(119, 'حقوق', 'Law', NULL, NULL),
(120, 'دبلوم التربية في تكنولوجيا المعلومات والاتصالات', 'Information and Communication Technology Diploma', NULL, NULL),
(121, 'دراسات اجتماعيه', 'Social Studies', NULL, NULL),
(122, 'ديكور وتصميم داخلي', 'Decor and Interior Design', NULL, NULL),
(123, 'راديو وتلفزيون', 'Radio and TV', NULL, NULL),
(124, 'رسم هندسي ميكانيكي', 'Mechanical Engineering Drawing', NULL, NULL),
(125, 'رياض الأطفال', 'Kindergarten', NULL, NULL),
(126, 'رياضيات', 'Mathematics', NULL, NULL),
(127, 'زراعي', 'Agriculture', NULL, NULL),
(128, 'سكرتاريا طباعة', 'Secretarial Typing', NULL, NULL),
(129, 'سيارات ومحركات احتراق داخلي', 'Cars and Engines of Internal Combustion', NULL, NULL),
(130, 'شرعي', 'Islamic Studies', NULL, NULL),
(131, 'شريعة/دراسات اسلامية', 'Islamic Studies', NULL, NULL),
(132, 'صحافة واعلام', 'Press and Media', NULL, NULL),
(133, 'صناعي', 'Industrial', NULL, NULL),
(134, 'صيدلة', 'Pharmacy', NULL, NULL),
(135, 'طباعة المطابع', 'Press Printing', NULL, NULL),
(136, 'طباعه واعمال مكاتب', 'Typing and Office Work', NULL, NULL),
(137, 'عقد التأجير التمويلي', 'Financial Leasing Contract', NULL, NULL),
(138, 'علم اجتماع', 'Sociology', NULL, NULL),
(139, 'علم الغذاء والتغذية', 'Food Science and Nutrition', NULL, NULL),
(140, 'علم مكتبات وتوثيق', 'Science Libraries and Documentation', NULL, NULL),
(141, 'علم نفس', 'Psychology', NULL, NULL),
(142, 'علمي', 'Scientific', NULL, NULL),
(143, 'علوم', 'Sciences', NULL, NULL),
(144, 'علوم اجتماعية', 'Social Sciences', NULL, NULL),
(145, 'علوم ادارية', 'Administrative Sciences', NULL, NULL),
(146, 'علوم الكمبيوتر', 'Computer Science', NULL, NULL),
(147, 'علوم سياسيه', 'Political Science', NULL, NULL),
(148, 'علوم مالية ومصرفية', 'Banking and Financial Sciences', NULL, NULL),
(149, 'غير مبين', 'Not indicated', NULL, NULL),
(150, 'فندقي', 'Hotels', NULL, NULL),
(151, 'قانون', 'Law', NULL, NULL),
(152, 'قانون اداري', 'Administrative Law', NULL, NULL),
(153, 'قانون خاص', 'Special Law', NULL, NULL),
(154, 'قصارة وبلاط', 'Wall Polishing and Tiles', NULL, NULL),
(155, 'كهرباء سيارات', 'Car Electricity', NULL, NULL),
(156, 'كهرباء قوى', 'Electric Power', NULL, NULL),
(157, 'كهرباء نقل وتوزيع', 'Electricity Transmission and Distribution', NULL, NULL),
(158, 'كيمياء', 'Chemistry', NULL, NULL),
(159, 'لغه انجليزيه', 'English Language', NULL, NULL),
(160, 'محاسبة', 'Accounting', NULL, NULL),
(161, 'مساعد فني كهرباء', 'Electrical Technician Assistant', NULL, NULL),
(162, 'معلم تربية وتعليم طفل', 'Child Education Teacher', NULL, NULL),
(163, 'معلم صف', 'Teacher', NULL, NULL),
(164, 'معلم مجال لغة انجليزية', 'English Language Teacher', NULL, NULL),
(165, 'معلم مجال/علوم عامه', 'General Science Teacher', NULL, NULL),
(166, 'معلم مجال/لغه عربيه', 'Arabic Language Teacher', NULL, NULL),
(167, 'ميكانيك احتراق داخلي', 'Internal Combustion Mechanics', NULL, NULL),
(168, 'ميكانيك سيارات', 'Auto Mechanics', NULL, NULL),
(169, 'ميكانيك عام', 'General Mechanic', NULL, NULL),
(170, 'نجارة وديكور', 'Carpentry and Decoration', NULL, NULL),
(171, 'نظم التكييف والتبريد والتدفئة', 'HVAC Systems', NULL, NULL),
(172, 'نظم القوى الكهربائية', 'Electrical Power Systems', NULL, NULL),
(173, 'نظم المعلومات الحاسوبيه', 'Computer Information Systems', NULL, NULL),
(174, 'نظم المعلومات المحاسبية', 'Accounting Information Systems', NULL, NULL),
(175, 'نظم معلومات الادارية', 'Management Information Systems', NULL, NULL),
(176, 'هندسة اتصالات', 'Communication Engineering', NULL, NULL),
(177, 'هندسة اتصالات الكترونيه', 'Electronic Communications Engineering', NULL, NULL),
(178, 'هندسة الاتوترونيكس', 'Electronics Engineering', NULL, NULL),
(179, 'هندسة الانتاج والالات', 'Production and Machinery Engineering', NULL, NULL),
(180, 'هندسة الإطفاء والسلامة', 'Fire Engineering and Safety', NULL, NULL),
(181, 'هندسة الآلات الحرارية والهيدروليكية', 'Thermal and Hydraulic Machines Engineering', NULL, NULL),
(182, 'هندسة البرمجيات', 'Software Engineering', NULL, NULL),
(183, 'هندسة الحاسب الالي', 'Computer Engineering', NULL, NULL),
(184, 'هندسة الحاسبات', 'Computer Engineering', NULL, NULL),
(185, 'هندسة الحاسوب/ النظم المنظمة', 'Computer Engineering / Systems', NULL, NULL),
(186, 'هندسة السيارات', 'Car Engineering', NULL, NULL),
(187, 'هندسة الطاقة الكهربائية', 'Electrical Power Engineering', NULL, NULL),
(188, 'هندسة الكترونيات', 'Electronics Engineering', NULL, NULL),
(189, 'هندسة الميكاترونيكس', 'Mechatronics Engineering', NULL, NULL),
(190, 'هندسة انتاج / صناعي/الات', 'Production / Industrial Engineering / Machinery', NULL, NULL),
(191, 'هندسة انظمه كهروميكانيكيه', 'Electromechanical Engineering', NULL, NULL),
(192, 'هندسة تصنيع معادن', 'Metal Manufacturing Engineering', NULL, NULL),
(193, 'هندسة تكنولوجية', 'Technological Engineering', NULL, NULL),
(194, 'هندسة تكييف', 'Air Conditioning Engineering', NULL, NULL),
(195, 'هندسة حاسوب', 'Computer Engineering', NULL, NULL),
(196, 'هندسة سلامة', 'Safety Engineering', NULL, NULL),
(197, 'هندسة طبية', 'Medical Engineering', NULL, NULL),
(198, 'هندسة كمبيوتر', 'Computer Engineering', NULL, NULL),
(199, 'هندسة كهرباء/قوى', 'Electrical / Power Engineering', NULL, NULL),
(200, 'هندسة كهربائية', 'Electrical Engineering', NULL, NULL),
(201, 'هندسة كهربائية / إتصالات', 'Electrical Engineering / Communications', NULL, NULL),
(202, 'هندسة كهربائيه', 'Electrical Engineering', NULL, NULL),
(203, 'هندسة كيميائية', 'Chemical Engineering', NULL, NULL),
(204, 'هندسة كيميائية صناعية', 'Industrial Chemical Engineering', NULL, NULL),
(205, 'هندسة مدنية', 'Civil Engineering', NULL, NULL),
(206, 'هندسة ميكانيك تطبيقي', 'Applied Mechanical Engineering', NULL, NULL),
(207, 'هندسة ميكانيكية', 'Mechanical Engineering', NULL, NULL),
(208, 'هندسة ميكانيكية / الانتاج والالات', 'Mechanical Engineering / Production and Machinery', NULL, NULL),
(209, 'هندسة ميكانيكية/التكييف والتبريد', 'Mechanical Engineering / Air Conditioning & Refrigeration', NULL, NULL),
(210, 'هندسة ميكانيكية/سيارات ومحركات الاحتراق الداخلي', 'Mechanical Engineering/ Automotive and Internal Combustion Engines', NULL, NULL),
(211, 'هندسة ميكانيكيه / الات حراريه وهيدروليكيه', 'Mechanical Engineering / Thermal and Hydraulic Machines', NULL, NULL),
(212, 'هندسة نظم الحاسوب', 'Computer Systems Engineering', NULL, NULL),
(213, 'هندسه صناعيه', 'Industrial Engineering', NULL, NULL),
(214, 'هندسه ميكانيكية / انتاج الالات الحراريه', 'Mechanical Engineering / Production of Thermal Machines', NULL, NULL),
(215, 'هندسه ميكانيكية / صناعة معادن', 'Mechanical Engineering / Metal Industry', NULL, NULL),
(216, 'اخرى', 'Other', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `statuss`
--

CREATE TABLE `statuss` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuss`
--

INSERT INTO `statuss` (`id`, `name_ar`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'اجازة امومة', 'Maternity Leave', NULL, NULL),
(2, 'اجازة حج', 'Pilgrimage Leave', NULL, NULL),
(3, 'استيداع', 'Dismissed from Duty', NULL, NULL),
(4, 'استيداع/بناء على طلبه', 'Dismissed from Duty / Upon Request', NULL, NULL),
(5, 'انهيت خدماته', 'Relieved from Duty', NULL, NULL),
(6, 'تمديد الخدمة', 'Extended Service', NULL, NULL),
(7, 'دورة/دراسية', 'Training Course', NULL, NULL),
(8, 'على رأس عمله / بدون راتب', 'Currently Employed / Unpaid', NULL, NULL),
(9, 'على رأس عمله/ مداوم', 'Currently Employed', NULL, NULL),
(10, 'فقدان وظيفة', 'Job Loss', NULL, NULL),
(11, 'متقاعد', 'Retired', NULL, NULL),
(12, 'متقاعد/مستقيل/منقول خارجي', 'Retired / Resigned / Transferred Abroad', NULL, NULL),
(13, 'متوفي', 'Deceased', NULL, NULL),
(14, 'مجاز بدون راتب', 'Unpaid Leave', NULL, NULL),
(15, 'مجاز مرضي', 'Sick Leave', NULL, NULL),
(16, 'مداوم تحت التجربة', 'New Employee', NULL, NULL),
(17, 'مستقيل', 'Resigned', NULL, NULL),
(18, 'معار', 'Seconded', NULL, NULL),
(19, 'معزول عن العمل', 'Deposed from Work', NULL, NULL),
(20, 'مكلف', 'Assigned', NULL, NULL),
(21, 'مكلف من قبل المؤسسة', 'Assigned by the VTC', NULL, NULL),
(22, 'ملحق', 'Appendix', NULL, NULL),
(23, 'منتدب', 'Delegated', NULL, NULL),
(24, 'منتدب/معار', 'Delegated / Seconded', NULL, NULL),
(25, 'منقطع عن العمل', 'On Leave', NULL, NULL),
(26, 'منقول', 'Transferred', NULL, NULL),
(27, 'منقول خارجي', 'Transferred Abroad', NULL, NULL),
(28, 'موقوف / منقطع', 'Suspended / On Leave', NULL, NULL),
(29, 'موقوف عن العمل', 'Suspended from Work', NULL, NULL),
(30, 'موقوف عن العمل ( مجرى حياته )', 'Suspended from Work (the course of his life)', NULL, NULL),
(31, 'موقوف عن العمل (من قبل المؤسسة)', 'Suspended from Work (by the VTC)', NULL, NULL),
(32, 'موقوف مؤقت', 'Temporarily Suspended', NULL, NULL),
(33, 'موكل', 'Assigned', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@oneonlinemarket.com', '$2y$10$3nCx85.TLKR7A4YNd5xYkOhKoVZfoxt.9qDWbmeQAw5HyigD.MoOe', 'Lla581D47N', '2018-05-03 04:01:19', '2018-05-03 04:01:19'),
(2, 'Heba Abu rizeq', 'heba.aburizeq@oneonlinemarket.com', '$2y$10$CArxobs1c/ck8TRjt2vFa.ktGPvjPIFtRHEAoHEMCGkpI0tQkeLCK', '2AOma5clhR', '2018-05-03 04:01:19', '2018-05-03 04:01:19'),
(3, 'Human Resource', 'hr@oneonlinemarket.com', '$2y$10$9OkCnj3chHjLgGXJGX4NLeBv4OINnQ1fPf7jqWCNDsb8DCNDHMN4W', 'hVJumH16ai', '2018-05-03 04:01:19', '2018-05-03 04:01:19'),
(4, 'test', 'test@oneonlinemarket.com ', '$2y$10$yHYpFdhIBKmu4T5twUxJx.lmdM2vm9kjUFDQU9yc9lWJDv4qgihI2', 'aum6fyOhUb', '2018-05-03 04:01:19', '2018-05-03 04:01:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrations`
--
ALTER TABLE `administrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `administrations_governate_id_foreign` (`governate_id`);

--
-- Indexes for table `assistants`
--
ALTER TABLE `assistants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assistants_administration_id_foreign` (`administration_id`);

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cjobs`
--
ALTER TABLE `cjobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cqualifications`
--
ALTER TABLE `cqualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `degrees`
--
ALTER TABLE `degrees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departments_directorate_id_foreign` (`directorate_id`),
  ADD KEY `departments_region_id_foreign` (`region_id`),
  ADD KEY `departments_assistant_id_foreign` (`assistant_id`),
  ADD KEY `departments_administration_id_foreign` (`administration_id`);

--
-- Indexes for table `directorates`
--
ALTER TABLE `directorates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directorates_assistant_id_foreign` (`assistant_id`),
  ADD KEY `directorates_administration_id_foreign` (`administration_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_emp_no_unique` (`emp_no`),
  ADD UNIQUE KEY `employees_sn_unique` (`sn`),
  ADD KEY `employees_job_id_foreign` (`job_id`),
  ADD KEY `employees_rjob_id_foreign` (`rjob_id`),
  ADD KEY `employees_cjob_id_foreign` (`cjob_id`),
  ADD KEY `employees_qualification_id_foreign` (`qualification_id`),
  ADD KEY `employees_cqualification_id_foreign` (`cqualification_id`),
  ADD KEY `employees_specialization_id_foreign` (`specialization_id`),
  ADD KEY `employees_status_id_foreign` (`status_id`),
  ADD KEY `employees_category_id_foreign` (`category_id`),
  ADD KEY `employees_degree_id_foreign` (`degree_id`),
  ADD KEY `employees_recruitmen_id_foreign` (`recruitmen_id`),
  ADD KEY `employees_gender_id_foreign` (`gender_id`),
  ADD KEY `employees_department_id_foreign` (`department_id`),
  ADD KEY `employees_directorate_id_foreign` (`directorate_id`),
  ADD KEY `employees_institute_id_foreign` (`institute_id`),
  ADD KEY `employees_region_id_foreign` (`region_id`),
  ADD KEY `employees_assistant_id_foreign` (`assistant_id`),
  ADD KEY `employees_administration_id_foreign` (`administration_id`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `governates`
--
ALTER TABLE `governates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `institutes`
--
ALTER TABLE `institutes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `institutes_governate_id_foreign` (`governate_id`),
  ADD KEY `institutes_region_id_foreign` (`region_id`),
  ADD KEY `institutes_directorate_id_foreign` (`directorate_id`),
  ADD KEY `institutes_assistant_id_foreign` (`assistant_id`),
  ADD KEY `institutes_administration_id_foreign` (`administration_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `qualifications`
--
ALTER TABLE `qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recruitmens`
--
ALTER TABLE `recruitmens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `regions_governate_id_foreign` (`governate_id`),
  ADD KEY `regions_assistant_id_foreign` (`assistant_id`),
  ADD KEY `regions_administration_id_foreign` (`administration_id`);

--
-- Indexes for table `rjobs`
--
ALTER TABLE `rjobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specializations`
--
ALTER TABLE `specializations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuss`
--
ALTER TABLE `statuss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrations`
--
ALTER TABLE `administrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assistants`
--
ALTER TABLE `assistants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cjobs`
--
ALTER TABLE `cjobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cqualifications`
--
ALTER TABLE `cqualifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `degrees`
--
ALTER TABLE `degrees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `directorates`
--
ALTER TABLE `directorates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `governates`
--
ALTER TABLE `governates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `institutes`
--
ALTER TABLE `institutes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `qualifications`
--
ALTER TABLE `qualifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `recruitmens`
--
ALTER TABLE `recruitmens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rjobs`
--
ALTER TABLE `rjobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;

--
-- AUTO_INCREMENT for table `specializations`
--
ALTER TABLE `specializations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `statuss`
--
ALTER TABLE `statuss`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `administrations`
--
ALTER TABLE `administrations`
  ADD CONSTRAINT `administrations_governate_id_foreign` FOREIGN KEY (`governate_id`) REFERENCES `governates` (`id`);

--
-- Constraints for table `assistants`
--
ALTER TABLE `assistants`
  ADD CONSTRAINT `assistants_administration_id_foreign` FOREIGN KEY (`administration_id`) REFERENCES `administrations` (`id`);

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_administration_id_foreign` FOREIGN KEY (`administration_id`) REFERENCES `administrations` (`id`),
  ADD CONSTRAINT `departments_assistant_id_foreign` FOREIGN KEY (`assistant_id`) REFERENCES `assistants` (`id`),
  ADD CONSTRAINT `departments_directorate_id_foreign` FOREIGN KEY (`directorate_id`) REFERENCES `directorates` (`id`),
  ADD CONSTRAINT `departments_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`);

--
-- Constraints for table `directorates`
--
ALTER TABLE `directorates`
  ADD CONSTRAINT `directorates_administration_id_foreign` FOREIGN KEY (`administration_id`) REFERENCES `administrations` (`id`),
  ADD CONSTRAINT `directorates_assistant_id_foreign` FOREIGN KEY (`assistant_id`) REFERENCES `assistants` (`id`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_administration_id_foreign` FOREIGN KEY (`administration_id`) REFERENCES `administrations` (`id`),
  ADD CONSTRAINT `employees_assistant_id_foreign` FOREIGN KEY (`assistant_id`) REFERENCES `assistants` (`id`),
  ADD CONSTRAINT `employees_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categorys` (`id`),
  ADD CONSTRAINT `employees_cjob_id_foreign` FOREIGN KEY (`cjob_id`) REFERENCES `cjobs` (`id`),
  ADD CONSTRAINT `employees_cqualification_id_foreign` FOREIGN KEY (`cqualification_id`) REFERENCES `cqualifications` (`id`),
  ADD CONSTRAINT `employees_degree_id_foreign` FOREIGN KEY (`degree_id`) REFERENCES `degrees` (`id`),
  ADD CONSTRAINT `employees_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `employees_directorate_id_foreign` FOREIGN KEY (`directorate_id`) REFERENCES `directorates` (`id`),
  ADD CONSTRAINT `employees_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`),
  ADD CONSTRAINT `employees_institute_id_foreign` FOREIGN KEY (`institute_id`) REFERENCES `institutes` (`id`),
  ADD CONSTRAINT `employees_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`),
  ADD CONSTRAINT `employees_qualification_id_foreign` FOREIGN KEY (`qualification_id`) REFERENCES `qualifications` (`id`),
  ADD CONSTRAINT `employees_recruitmen_id_foreign` FOREIGN KEY (`recruitmen_id`) REFERENCES `recruitmens` (`id`),
  ADD CONSTRAINT `employees_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`),
  ADD CONSTRAINT `employees_rjob_id_foreign` FOREIGN KEY (`rjob_id`) REFERENCES `rjobs` (`id`),
  ADD CONSTRAINT `employees_specialization_id_foreign` FOREIGN KEY (`specialization_id`) REFERENCES `specializations` (`id`),
  ADD CONSTRAINT `employees_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuss` (`id`);

--
-- Constraints for table `institutes`
--
ALTER TABLE `institutes`
  ADD CONSTRAINT `institutes_administration_id_foreign` FOREIGN KEY (`administration_id`) REFERENCES `administrations` (`id`),
  ADD CONSTRAINT `institutes_assistant_id_foreign` FOREIGN KEY (`assistant_id`) REFERENCES `assistants` (`id`),
  ADD CONSTRAINT `institutes_directorate_id_foreign` FOREIGN KEY (`directorate_id`) REFERENCES `directorates` (`id`),
  ADD CONSTRAINT `institutes_governate_id_foreign` FOREIGN KEY (`governate_id`) REFERENCES `governates` (`id`),
  ADD CONSTRAINT `institutes_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`);

--
-- Constraints for table `regions`
--
ALTER TABLE `regions`
  ADD CONSTRAINT `regions_administration_id_foreign` FOREIGN KEY (`administration_id`) REFERENCES `administrations` (`id`),
  ADD CONSTRAINT `regions_assistant_id_foreign` FOREIGN KEY (`assistant_id`) REFERENCES `assistants` (`id`),
  ADD CONSTRAINT `regions_governate_id_foreign` FOREIGN KEY (`governate_id`) REFERENCES `governates` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
