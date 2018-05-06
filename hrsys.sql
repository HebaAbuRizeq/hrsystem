-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2018 at 11:07 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

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
(12, 'مديرية مكتب المدير العام', 'Director General Directorate', NULL, 1, NULL, NULL);

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
(1, 1001, 12345678901, 'diab', 'avatars/1001.jpg', 'ابتسام', 'ابراهيم', 'عبدالجابر', 'الحاج ابراهيم', 'ABBAS', 'METLAQ', 'HELAL', 'DIAB', 100, '12345678901', 'diab@oneonlinemarket', '1970-01-01', '1986-01-02', NULL, 141, 141, 4, 12, 3, 207, 9, 2, 2, 1, 1, NULL, NULL, 1, 2, 1, 1, NULL, NULL),
(2, 1002, 12345678902, 'monira', 'avatars/1002.jpg', 'ابتهاج', 'احمد', 'صبح', 'عبيدالله', 'ABD RAHMAN', 'ABEDAL-RAHMAN', 'JIHAD', 'MONIRA', 101, '12345678902', 'monira@oneonlinemark', '1961-10-28', '1983-11-12', NULL, 165, 165, 4, 8, 2, 134, 9, 2, 5, 1, 1, NULL, NULL, 13, 3, 1, 1, NULL, NULL),
(3, 1003, 12345678903, 'ibrahem', 'avatars/1003.jpg', 'ابتهال', 'انيس', 'جمعه', 'الحاج خليل', 'ABDAL MALK', 'ABDELAZIZ', 'HMED', 'IBRAHEM', 102, '12345678903', 'ibrahem@oneonlinemar', '1959-09-22', '1991-01-17', NULL, 141, 144, 4, 12, 3, 111, 9, 2, 2, 1, 1, NULL, NULL, 8, 2, 1, 1, NULL, NULL),
(4, 1004, 12345678904, 'saif', 'avatars/1004.jpg', 'ابراهيم', 'خلف', 'رضوان', 'عرابي', 'ABDALAZIZ', 'ABDEL-RAHMAN', 'MYASAR', 'SAIF', 103, '12345678904', 'saif@oneonlinemarket', '1960-08-28', '1984-04-16', NULL, 240, 240, 1, 12, 3, 160, 9, 2, 1, 1, 1, 31, 5, NULL, NULL, NULL, 1, NULL, NULL),
(5, 1005, 12345678905, 'abdalrhem', 'avatars/1005.jpg', 'احلام', 'سليمان', 'محسن', 'تيسير', 'ABDALKAREEM', 'ABDALLA', 'MOHAMMAD ALI', 'ABDALRHEM', 104, '12345678905', 'abdalrhem@oneonlinem', '1958-11-25', '1986-09-20', NULL, 224, 224, 4, 12, 3, 168, 9, 2, 5, 1, 1, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(6, 1006, 12345678906, 'rmithan', 'avatars/1006.jpg', 'احمد', 'عبد الله', 'ماهر', 'عطالله', 'ABDALLA', 'ABDELQADER', 'FAREED', 'RMITHAN', 105, '12345678906', 'rmithan@oneonlinemar', '1960-05-23', '1984-09-01', NULL, 108, 108, 1, 12, 3, 132, 9, 2, 1, 1, 2, 11, 9, NULL, NULL, 2, 1, NULL, NULL),
(7, 1007, 12345678907, 'abedullah', 'avatars/1007.jpg', 'اخلاص', 'عبدالله', 'فتحي', 'سعود', 'ABDALLAH', 'ABDELJALIL', 'SALIH', 'ABEDULLAH', 106, '12345678907', 'abedullah@oneonlinem', '1959-12-13', '1984-09-10', NULL, 275, 275, 7, 12, 3, 168, 9, 2, 1, 1, 1, NULL, NULL, 5, 1, 1, 1, NULL, NULL),
(8, 1008, 12345678908, 'nedam', 'avatars/1008.jpg', 'ارشيد', 'ابراهيم', 'ربحي', 'جفال', 'ABDALMAJED', 'ABED ALATEEF', 'ABU DAYAH', 'NEDAM', 107, '12345678908', 'nedam@oneonlinemarke', '1961-02-13', '1984-09-02', NULL, 46, 46, 1, 12, 3, 160, 9, 2, 1, 1, 1, 38, 1, NULL, NULL, 2, 1, NULL, NULL),
(9, 1009, 12345678909, 'nasir', 'avatars/1009.jpg', 'اروى', 'ابراهيم', 'باسل', 'حنا', 'ABDALMAJEED', 'ABDELMUHSEN', 'ABEDALKAREM', 'NASIR', 108, '12345678909', 'nasir@oneonlinemarke', '1960-04-18', '1984-09-10', NULL, 224, 41, 4, 12, 3, 168, 9, 2, 1, 1, 1, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(10, 1010, 12345678910, 'abdel hamid', 'avatars/1010.jpg', 'اسامة', 'اثنيان', 'العبدالرحمن', 'حسام', 'ABDALMUHDIA', 'YUSUF', 'SALWA', 'ABDEL HAMID', 109, '12345678910', 'abdelhamid@oneonline', '1984-09-16', '1961-06-01', NULL, 276, 276, 7, 4, 1, 170, 9, 2, 1, 1, 1, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(11, 1011, 12345678911, 'abedalah', 'avatars/1011.jpg', 'اسامه', 'احمد', 'فيصل', 'حسام', 'ABDALQADER', 'ABDFATTAH', 'SALIM', 'ABEDALAH', 110, '12345678911', 'abedalah@oneonlinema', '1961-01-02', '1984-10-01', NULL, 275, 275, 7, 12, 3, 168, 9, 2, 1, 1, 1, NULL, NULL, 4, 1, 1, 1, NULL, NULL),
(12, 1012, 12345678912, 'firas', 'avatars/1012.jpg', 'اسراء', 'احم', 'امبدي', 'الخلف', 'ABDALRAHMAN', 'AL-HAJJ', 'HBRAHIM', 'FIRAS', 111, '12345678912', 'firas@oneonlinemarke', '1962-10-17', '1989-06-01', NULL, 141, 141, 4, 12, 3, 111, 9, 2, 4, 1, 1, NULL, NULL, 5, 2, 1, 1, NULL, NULL),
(13, 1013, 12345678913, 'yaseen', 'avatars/1013.jpg', 'اسعد', 'احمد سليم', 'ذياب', 'فرج', 'ABDALRHAMAN', 'ABDEL-KAREEM', 'YACOUB', 'YAQUB', 112, '12345678913', 'yaseen@oneonlinemark', '1960-02-01', '1984-11-01', NULL, 300, 300, 2, 13, 4, 166, 9, 1, 1, 1, 1, NULL, 10, NULL, NULL, 3, 1, NULL, NULL),
(14, 1014, 12345678914, 'yacoub', 'avatars/1014.jpg', 'اسلام', 'ارحيل', 'عدلي', 'مرعي', 'ABDALRHEM', 'BADRAN', 'WALID', 'WLEED', 113, '12345678914', 'yacoub@oneonlinemark', '1963-10-31', '1985-08-12', NULL, 297, 297, 2, 13, 4, 207, 9, 1, 3, 1, 1, 15, 11, NULL, NULL, 3, 1, NULL, NULL),
(15, 1015, 12345678915, 'forjeh', 'avatars/1015.jpg', 'اسماء', 'ارفيع', 'اعبيد', 'حموده', 'ABDALSALAM', 'AMEEN', 'HEBA', 'FORJEH', 114, '12345678915', 'forjeh@oneonlinemark', '1962-12-29', '1985-09-01', NULL, 141, 141, 4, 8, 2, 134, 9, 2, 2, 1, 1, NULL, NULL, 5, 2, 1, 1, NULL, NULL),
(16, 1016, 12345678916, 'akram', 'avatars/1016.jpg', 'اسماعيل', 'اسحاق', 'زارع', 'جادالله', 'ABDEL HADI', 'ABDEL HAMID', 'DALAL', 'AKRAM', 115, '12345678916', 'akram@oneonlinemarke', '1959-08-04', '1985-09-15', NULL, 86, 86, 6, 12, 3, 84, 9, 3, 3, 2, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(17, 1017, 12345678917, 'aida', 'avatars/1017.jpg', 'اسمهان', 'اسحق', 'عبدالرحيم', 'حميدة', 'ABDEL HAKEEM', 'ABDELWAHAB', 'HUSSEIN', 'AIDA', 116, '12345678917', 'aida@oneonlinemarket', '1960-11-11', '1985-12-01', NULL, 141, 145, 4, 12, 3, 87, 9, 2, 1, 1, 1, NULL, NULL, 8, 2, 1, 1, NULL, NULL),
(18, 1018, 12345678918, 'feryal', 'avatars/1018.jpg', 'اسمى', 'اسعد', 'عبد الجليل', 'مسيعد', 'ABDEL HAMID', 'ABDALMAJED', 'HASHEM', 'FERYAL', 117, '12345678918', 'feryal@oneonlinemark', '1958-12-10', '1986-03-01', NULL, 138, 138, 4, 12, 3, 168, 9, 3, 2, 2, 1, NULL, NULL, 5, 2, 1, 1, NULL, NULL),
(19, 1019, 12345678919, 'bassem', 'avatars/1019.jpg', 'اشرف', 'اسعيد', 'عواد', 'شريقي', 'ABDEL RAHMAN', 'ABDEL HAKEEM', 'HAZEM', 'BASSEM', 118, '12345678919', 'bassem@oneonlinemark', '1959-07-04', '1994-10-04', NULL, 141, 141, 4, 4, 1, 87, 9, 2, 2, 1, 1, NULL, NULL, 14, 2, 1, 1, NULL, NULL),
(20, 1020, 12345678920, 'bataineh', 'avatars/1020.jpg', 'اعتزاز', 'اسماعيل', 'سامي', 'عبدالواحد', 'ABDELAZIZ', 'ABDEL RAHMAN', 'HISHAM', 'BATAINEH', 119, '12345678920', 'bataineh@oneonlinema', '1959-09-01', '1986-05-03', NULL, 144, 144, 4, 12, 3, 207, 9, 2, 3, 1, 1, NULL, NULL, 14, 2, 1, 1, NULL, NULL),
(21, 1021, 12345678921, 'michael', 'avatars/1021.jpg', 'اعقاب', 'اشتيان', 'صادق', 'صبحي', 'ABDELFATTAH', 'ABDELRAHEEM', 'MOHMAD', 'MICHAEL', 120, '12345678921', 'michael@oneonlinemar', '1960-06-21', '1986-06-01', NULL, 228, 228, 4, 12, 3, 169, 9, 2, 1, 1, 1, NULL, NULL, 11, 3, 1, 1, NULL, NULL),
(22, 1022, 12345678922, 'subhi', 'avatars/1022.jpg', 'اكرم', 'اعبيد', 'عتيق', 'بركات', 'ABDELGHAFFAR', 'ABDALMAJEED', 'SOUD', 'SUBHI', 121, '12345678922', 'subhi@oneonlinemarke', '1958-12-24', '1986-09-01', NULL, 288, 288, 2, 13, 4, 200, 9, 1, 1, 1, 1, NULL, 8, NULL, NULL, 2, 1, NULL, NULL),
(23, 1023, 12345678923, 'mousa', 'avatars/1023.jpg', 'الاء', 'اعمير', 'كوكب', 'يحيى', 'ABDEL-HALIM', 'ABDEL-HALIM', 'NATHEER', 'MOUSA', 122, '12345678923', 'mousa@oneonlinemarke', '1959-11-22', '1986-10-04', NULL, 254, 254, 7, 13, 4, 22, 9, 1, 1, 1, 1, NULL, NULL, 13, 3, 1, 1, NULL, NULL),
(24, 1024, 12345678924, 'salim', 'avatars/1024.jpg', 'العباس', 'افليح', 'احمد', 'عبدالرؤوف', 'ABDELJALIL', 'AL KHDOUR', 'NAIF', 'SALIM', 123, '12345678924', 'salim@oneonlinemarke', '1962-07-25', '1986-11-01', NULL, 245, 245, 7, 13, 4, 191, 9, 1, 1, 1, 1, 46, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(25, 1025, 12345678925, 'alabdelrahman', 'avatars/1025.jpg', 'الفت', 'الحاج ابراهيم', 'احم', 'فرحان', 'ABDEL-KAREEM', 'AZZAM', 'HMOUD', 'ALABDELRAHMAN', 124, '12345678925', 'alabdelrahman@oneonl', '1963-10-18', '1986-11-02', NULL, 144, 144, 4, 4, 1, 111, 9, 2, 3, 1, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(26, 1026, 12345678926, 'feda\'\'', 'avatars/1026.jpg', 'اماني', 'الحاج خليل', 'جدعان', 'بسيم', 'ABDELLAH', 'ABU SWAN', 'BASEM', 'FEDA\'\'', 125, '12345678926', 'feda\'\'@oneonlinemark', '1962-01-01', '1986-12-01', NULL, 76, 76, 3, 13, 4, 199, 9, 1, 1, 1, 1, NULL, NULL, 5, 2, 1, 1, NULL, NULL),
(27, 1027, 12345678927, 'hsan', 'avatars/1027.jpg', 'امتثال', 'الحسين', 'جمعة', 'عبد السميع', 'ABDEL-LATIF', 'BASHEER', 'MOHAMMAD ODEH', 'HSAN', 126, '12345678927', 'hsan@oneonlinemarket', '1963-12-12', '1987-01-03', NULL, 224, 224, 4, 12, 3, 168, 9, 2, 2, 1, 1, NULL, NULL, 8, 2, 1, 1, NULL, NULL),
(28, 1028, 12345678928, 'jafar', 'avatars/1028.jpg', 'امجد', 'الخلف', 'خالد', 'تيسير', 'ABDELMAHDI', 'ASA\'\'D', 'MADALLAH', 'JAFAR', 127, '12345678928', 'jafar@oneonlinemarke', '1963-02-01', '1987-01-01', NULL, 213, 213, 4, 4, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(29, 1029, 12345678929, 'feras', 'avatars/1029.jpg', 'امل', 'الشراري', 'ديب', 'فؤاد', 'ABDELMAJEED', 'ADLI', 'GHAZI', 'FERAS', 128, '12345678929', 'feras@oneonlinemarke', '1962-04-04', '1987-03-01', NULL, 126, 126, 1, 12, 3, 160, 9, 2, 1, 1, 1, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(30, 1030, 12345678930, 'heyam', 'avatars/1030.jpg', 'امنة', 'الشواف', 'رشاد', 'معروف', 'ABDELMON\'\'EM', 'FAWAZ', 'HAYAT', 'HEYAM', 129, '12345678930', 'heyam@oneonlinemarke', '1966-02-04', '1987-03-03', NULL, 138, 138, 4, 7, 1, NULL, 9, 2, 3, 1, 1, NULL, NULL, 8, 2, 1, 1, NULL, NULL),
(31, 1031, 12345678931, 'sufyan', 'avatars/1031.jpg', 'امنه', 'العبد', 'سلام', 'منيزل', 'ABDELMO\'\'TI', 'ABDEL HADI', 'SUAD', 'SUFYAN', 130, '12345678931', 'sufyan@oneonlinemark', '1959-05-19', '1987-04-19', NULL, 288, 288, 2, 13, 4, 90, 9, 1, 2, 1, 1, 46, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(32, 1032, 12345678932, 'haitham', 'avatars/1032.jpg', 'امير', 'العبدالرحمن', 'عايد', 'عقاب', 'ABDELMUHSEN', 'BATAINEH', 'MONIRA', 'HAITHAM', 131, '12345678932', 'haitham@oneonlinemar', '1964-01-20', '1987-05-03', NULL, 231, 231, 4, 4, 1, 170, 9, 2, 2, 1, 1, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(33, 1033, 12345678933, 'ramadan', 'avatars/1033.jpg', 'امينة', 'امبدي', 'عبد القادر', 'مسعود', 'ABDELNASSER', 'AMEN', 'ETHNIAN', 'RAMADAN', 132, '12345678933', 'ramadan@oneonlinemar', '1962-12-30', '1987-06-01', NULL, 93, 93, 7, 4, 1, 113, 9, 3, 3, 2, 1, 20, NULL, NULL, 2, 1, 1, NULL, NULL),
(34, 1034, 12345678934, 'yaqub', 'avatars/1034.jpg', 'امينه', 'امحيسن', 'عماد', 'انيس', 'ABDELQADER', 'ALIA', 'WLEED', 'YAHYA', 133, '12345678934', 'yaqub@oneonlinemarke', '1962-11-20', '1987-09-01', NULL, 299, 299, 2, 13, 4, 5, 9, 1, 1, 1, 1, 46, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(35, 1035, 12345678935, 'dalal', 'avatars/1035.jpg', 'انتصار', 'امطير', 'قاسم', 'عليان', 'ABDELRAHEEM', 'ADEL', 'MOJAHED', 'DALAL', 134, '12345678935', 'dalal@oneonlinemarke', '1962-02-14', '1987-09-01', NULL, 231, 231, 4, 4, 1, 170, 9, 2, 2, 1, 1, NULL, NULL, 14, 2, 1, 1, NULL, NULL),
(36, 1036, 12345678936, 'jameel', 'avatars/1036.jpg', 'انس', 'امين', 'كايد', 'تحسين', 'ABDELRAHMAN', 'BASIL', 'NITHAL', 'JAMEEL', 135, '12345678936', 'jameel@oneonlinemark', '1963-12-20', '1987-10-05', NULL, 254, 254, 7, 13, 4, 191, 9, 1, 1, 1, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(37, 1037, 12345678937, 'esam', 'avatars/1037.jpg', 'انشراح', 'انور', 'مزيد', 'سامي', 'ABDEL-RAHMAN', 'EMAD', 'ADEEL', 'ESAM', 136, '12345678937', 'esam@oneonlinemarket', '1965-03-26', '1987-10-01', NULL, 13, 51, 1, 12, 3, 141, 9, 2, 2, 1, 2, NULL, NULL, 3, 2, 1, 1, NULL, NULL),
(38, 1038, 12345678938, 'faleh', 'avatars/1038.jpg', 'انعام', 'انيس', 'هايل', 'سلمان', 'ABDELRA\'\'UOF', 'DAWOD', 'HASSAN', 'FALEH', 137, '12345678938', 'faleh@oneonlinemarke', '1964-05-14', '1987-10-04', NULL, 138, 138, 4, 7, 1, NULL, 9, 2, 2, 1, 1, NULL, NULL, 3, 2, 1, 1, NULL, NULL),
(39, 1039, 12345678939, 'alia', 'avatars/1039.jpg', 'انوار', 'ايوب', 'هزيم', 'طالب', 'ABDELWAHAB', 'ABDALRAHMAN', 'MOHMD', 'ALIA', 138, '12345678939', 'alia@oneonlinemarket', '1959-01-15', '1987-10-24', NULL, 230, 230, 4, 12, 3, NULL, 9, 2, 2, 1, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(40, 1040, 12345678940, 'natheer', 'avatars/1040.jpg', 'انور', 'باجس', 'بسام', 'ايوب', 'ABDFATTAH', 'ABDALAZIZ', 'ABEDULLAH', 'NATHEER', 139, '12345678940', 'natheer@oneonlinemar', '1958-10-25', '1987-10-20', NULL, 43, 43, 1, 12, 3, 160, 9, 2, 1, 1, 1, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(41, 1041, 12345678941, 'naser', 'avatars/1041.jpg', 'ايات', 'باسل', 'باجس', 'عقله', 'ABDILROHMAN', 'FAKHRE', 'ABEDALATEF', 'NASER', 140, '12345678941', 'naser@oneonlinemarke', '1965-09-07', '1987-10-17', NULL, 39, 39, 7, 12, 3, 81, 9, 2, 1, 1, 1, 13, 2, NULL, NULL, 3, 1, NULL, NULL),
(42, 1042, 12345678942, 'wleed', 'avatars/1042.jpg', 'اياد', 'بخيت', 'امين', 'عبد ربه', 'ABDULLAH', 'ABU SAA', 'WALEED', 'WASFI', 141, '12345678942', 'wleed@oneonlinemarke', '1961-12-04', '1987-10-17', NULL, 297, 297, 2, 13, 4, 181, 9, 1, 1, 1, 1, NULL, NULL, NULL, 2, 1, 1, NULL, NULL),
(43, 1043, 12345678943, 'shareif', 'avatars/1043.jpg', 'ايمان', 'بدر', 'مصول', 'منيب', 'ABDULRAHMAN', 'FARIS', 'ROJINA', 'SHAREIF', 142, '12345678943', 'shareif@oneonlinemar', '1965-11-14', '1987-12-02', NULL, 261, 261, 1, 18, 5, 207, 9, 1, 1, 1, 1, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL),
(44, 1044, 12345678944, 'al-hajj', 'avatars/1044.jpg', 'ايمن', 'بركات', 'فضيل', 'عقيل', 'ABED', 'EIED', 'JUMAH', 'AL-HAJJ', 143, '12345678944', 'al-hajj@oneonlinemar', '1965-02-09', '1987-12-01', NULL, 165, 165, 4, 4, 1, 119, 9, 2, 3, 1, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(45, 1045, 12345678945, 'shabab', 'avatars/1045.jpg', 'ايناس', 'بسام', 'جبر', 'دخل الله', 'ABED ALATEEF', 'ABED', 'NEDAM', 'SHABAB', 144, '12345678945', 'shabab@oneonlinemark', '1961-02-05', '1987-12-19', NULL, 254, 254, 7, 13, 4, 200, 9, 1, 1, 1, 1, NULL, NULL, NULL, 2, 1, 1, NULL, NULL),
(46, 1046, 12345678946, 'salem', 'avatars/1046.jpg', 'ايهاب', 'بسيم', 'حمزه', 'حماد', 'ABED ALHAMEED', 'ADDALLAH', 'NAEMA', 'SALEM', 145, '12345678946', 'salem@oneonlinemarke', '1962-02-01', '1988-01-09', NULL, 245, 245, 7, 17, 5, 120, 9, 1, 1, 1, 1, NULL, NULL, NULL, 3, 1, 1, NULL, NULL),
(47, 1047, 12345678947, 'sha\'\'aban', 'avatars/1047.jpg', 'ايوب', 'بشير', 'عبدالحافظ', 'منذر', 'ABED ALKAREEM', 'AKRAM', 'NASSER', 'SHA\'\'ABAN', 146, '12345678947', 'sha\'\'aban@oneonlinem', '1962-07-03', '1988-01-17', NULL, 251, 251, 1, 13, 4, 200, 9, 1, 1, 1, 1, 15, 11, NULL, NULL, 3, 1, NULL, NULL),
(48, 1048, 12345678948, 'ratib', 'avatars/1048.jpg', 'أميره', 'بلال', 'عقله', 'مناور', 'ABED RABOH', 'ABED RABOH', 'FAHED', 'RATIB', 147, '12345678948', 'ratib@oneonlinemarke', '1961-06-01', '1988-02-01', NULL, 102, 102, 7, 13, 4, 200, 9, 1, 10, 1, 1, NULL, NULL, NULL, 2, 1, 1, NULL, NULL),
(49, 1049, 12345678949, 'abed raboh', 'avatars/1049.jpg', 'باسل', 'تحسين', 'محمد', 'مبارك', 'ABEDALAH', 'D\'\'YAB', 'SALEM', 'ABED RABOH', 148, '12345678949', 'abedraboh@oneonlinem', '1964-10-11', '1988-02-21', NULL, 273, 273, 7, 12, 3, 111, 9, 2, 2, 1, 1, NULL, NULL, 4, 1, 1, 1, NULL, NULL),
(50, 1050, 12345678950, 'hesham', 'avatars/1050.jpg', 'باسم', 'تركي', 'انور', 'هلال', 'ABEDALATEF', 'AYYOUB', 'HABIS', 'HESHAM', 149, '12345678950', 'hesham@oneonlinemark', '1963-08-18', '1988-03-01', NULL, 126, 126, 1, 12, 3, 160, 9, 2, 1, 1, 1, NULL, NULL, 8, 2, 1, 1, NULL, NULL),
(51, 1051, 12345678951, 'salih', 'avatars/1051.jpg', 'باسمة', 'توفيق', 'ايوب', 'افليح', 'ABEDALKAREM', 'AIMAN', 'NAFEZ', 'SALIH', 150, '12345678951', 'salih@oneonlinemarke', '1962-06-19', '1988-07-09', NULL, 245, 245, 7, 13, 4, 5, 9, 1, 10, 1, 1, NULL, 2, NULL, NULL, 3, 1, NULL, NULL),
(52, 1052, 12345678952, 'hisham', 'avatars/1052.jpg', 'بدر', 'تيسير', 'خلف', 'عبد', 'ABEDALQADER', 'ABDALSALAM', 'HEYAM', 'HISHAM', 151, '12345678952', 'hisham@oneonlinemark', '1959-04-09', '1988-10-03', NULL, 143, 143, 4, 8, 2, 143, 9, 2, 3, 1, 2, NULL, NULL, 8, 2, 1, 1, NULL, NULL),
(53, 1053, 12345678953, 'neamat', 'avatars/1053.jpg', 'بدران', 'تيم', 'اعمير', 'اعمير', 'ABEDAL-RAHMAN', 'ATEF', 'ABRAHIM', 'NEAMAT', 152, '12345678953', 'neamat@oneonlinemark', '1963-03-20', '1988-11-02', NULL, 45, 45, 1, 12, 3, 160, 9, 2, 2, 1, 1, 18, 9, NULL, NULL, 2, 1, NULL, NULL),
(54, 1054, 12345678954, 'najeeb', 'avatars/1054.jpg', 'براءه', 'ثلجي', 'جفال', 'جبر', 'ABEDULLAH', 'ABDULLAH', 'ABED ALKAREEM', 'NAJEEB', 153, '12345678954', 'najeeb@oneonlinemark', '1961-01-10', '1989-01-01', NULL, 34, 34, 7, 13, 4, 200, 9, 1, 1, 1, 1, NULL, 5, NULL, NULL, NULL, 1, NULL, NULL),
(55, 1055, 12345678955, 'sofian', 'avatars/1055.jpg', 'برائه', 'جابر', 'حميده', 'شحادة', 'ABEER', 'GHASAP', 'SHEHADEH', 'SOFIAN', 154, '12345678955', 'sofian@oneonlinemark', '1966-09-01', '1989-01-04', NULL, 284, 284, 7, 12, 3, 123, 9, 2, 5, 1, 1, 6, 10, NULL, NULL, 3, 1, NULL, NULL),
(56, 1056, 12345678956, 'abed alhameed', 'avatars/1056.jpg', 'برق', 'جادالله', 'خليفه', 'نواش', 'ABRAHIM', 'ABDULRAHMAN', 'NEAMAT', 'ABED ALHAMEED', 155, '12345678956', 'abedalhameed@oneonli', '1961-01-11', '1989-06-06', NULL, 254, 254, 7, 13, 4, 200, 9, 1, 1, 1, 1, NULL, NULL, 4, 1, 1, 1, NULL, NULL),
(57, 1057, 12345678957, 'moustafa', 'avatars/1057.jpg', 'بسام', 'جاسر', 'عارف', 'امطير', 'ABU DAYAH', 'AMANI', 'SAEED', 'MOUSTAFA', 156, '12345678957', 'moustafa@oneonlinema', '1962-12-22', '1989-06-01', NULL, 270, 270, 1, 12, 3, 123, 9, 2, 3, 1, 1, NULL, NULL, 13, 3, 1, 1, NULL, NULL),
(58, 1058, 12345678958, 'esood', 'avatars/1058.jpg', 'بسمه', 'جباره', 'عايش', 'مخلص', 'ABU SAA', 'ALMANSI', 'FEHMI', 'ESOOD', 157, '12345678958', 'esood@oneonlinemarke', '1962-11-23', '1989-09-02', NULL, 123, 123, 6, 2, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 3, 2, 1, 1, NULL, NULL),
(59, 1059, 12345678959, 'saadi', 'avatars/1059.jpg', 'بشار', 'جبر', 'عبد', 'زكريا', 'ABU SWAN', 'ABDELMAJEED', 'GHASSAN', 'SAADI', 158, '12345678959', 'saadi@oneonlinemarke', '1960-03-03', '1989-09-23', NULL, 126, 126, 1, 12, 3, 5, 9, 2, 2, 1, 2, 36, 8, NULL, NULL, 2, 1, NULL, NULL),
(60, 1060, 12345678960, 'walid', 'avatars/1060.jpg', 'بشير', 'جبرائيل', 'عبد الرحمن', 'شاكر', 'ADDALLAH', 'FALAH', 'WAFA\'\'A', 'WALEED', 159, '12345678960', 'walid@oneonlinemarke', '1965-09-07', '1989-09-23', NULL, 296, 296, 2, 13, 4, 6, 21, 1, 2, 1, 1, 40, NULL, NULL, NULL, 1, 1, NULL, NULL),
(61, 1061, 12345678961, 'abdelghaffar', 'avatars/1061.jpg', 'بكر', 'جبريل', 'عبدالكريم', 'جمعه', 'ADDEL-AL-QADIR', 'HAMZEH', 'ABDALMAJED', 'ABDELGHAFFAR', 160, '12345678961', 'abdelghaffar@oneonli', '1967-03-03', '1989-09-23', NULL, 6, 6, 1, 12, 3, 96, 9, 2, 2, 1, 2, NULL, NULL, 2, 1, 1, 1, NULL, NULL),
(62, 1062, 12345678962, 'adnan', 'avatars/1062.jpg', 'بلال', 'جبور', 'كرم', 'نصر الدين', 'ADEEL', 'HAMMOUDEH', 'MTAWH', 'ADNAN', 161, '12345678962', 'adnan@oneonlinemarke', '1967-03-02', '1989-09-23', NULL, 233, 233, 4, 11, 3, 85, 9, 2, 3, 1, 2, NULL, NULL, 7, 2, 1, 1, NULL, NULL),
(63, 1063, 12345678963, 'aysheh', 'avatars/1063.jpg', 'بنان', 'جبورة', 'يعقوب', 'انيس', 'ADEL', 'ABDEL-LATIF', 'BADER', 'AYSHEH', 162, '12345678963', 'aysheh@oneonlinemark', '1960-02-09', '1989-09-24', NULL, 72, 72, 3, 13, 4, 200, 9, 1, 2, 1, 1, NULL, NULL, 13, 2, 1, 1, NULL, NULL),
(64, 1064, 12345678964, 'sami', 'avatars/1064.jpg', 'بندر', 'جدعان', 'بسام', 'فخري', 'ADI', 'DAWD', 'NAJIH', 'SAMI', 163, '12345678964', 'sami@oneonlinemarket', '1964-05-03', '1989-10-21', NULL, 246, 246, 7, 14, 5, 57, 9, 1, 10, 1, 1, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(65, 1065, 12345678965, 'jamil', 'avatars/1065.jpg', 'بهاء', 'جديع', 'ايوب', 'حسين', 'ADLI', 'ABDELMAHDI', 'REBHE', 'JAMIL', 164, '12345678965', 'jamil@oneonlinemarke', '1960-02-19', '1989-11-18', NULL, 258, 258, 1, 13, 4, 142, 9, 1, 2, 1, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(66, 1066, 12345678966, 'falah', 'avatars/1066.jpg', 'بهاء الدين', 'جراد', 'احمد', 'عياده', 'ADNAN', 'KHAIRIEH', 'HANI', 'FALAH', 165, '12345678966', 'falah@oneonlinemarke', '1968-11-16', '1989-12-02', NULL, 134, 134, 4, 8, 2, 134, 9, 3, 3, 2, 1, NULL, NULL, 4, 2, 1, 1, NULL, NULL),
(67, 1067, 12345678967, 'rajie', 'avatars/1067.jpg', 'بيان', 'جريد', 'عبدالجبار', 'قسيم', 'AHMAD', 'DKAILALLAH', 'ESSAM', 'RAJIE', 166, '12345678967', 'rajie@oneonlinemarke', '1964-10-08', '1989-12-05', NULL, 92, 92, 7, 12, 3, 105, 9, 2, 4, 1, 1, NULL, 3, NULL, NULL, 3, 1, NULL, NULL),
(68, 1068, 12345678968, 'waleed', 'avatars/1068.jpg', 'بيتر', 'جزاع', 'فريد', 'عبد الرازق', 'AHMAD\\\\ED', 'AYSHEH', 'WAFA\'\'', 'WAJDI', 167, '12345678968', 'waleed@oneonlinemark', '1963-08-13', '1990-01-01', NULL, 296, 296, 2, 13, 4, 13, 9, 1, 2, 1, 1, 40, NULL, NULL, NULL, 1, 1, NULL, NULL),
(69, 1069, 12345678969, 'soud', 'avatars/1069.jpg', 'تحرير', 'جفال', 'روحي', 'وليد', 'AHMED', 'ATTALLAH', 'SOFYAN', 'SOUD', 168, '12345678969', 'soud@oneonlinemarket', '1963-05-10', '1990-01-01', NULL, 286, 286, 2, 13, 4, 207, 9, 1, 10, 1, 1, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL),
(70, 1070, 12345678970, 'ebraheem', 'avatars/1070.jpg', 'تغريد', 'جليل', 'اسحق', 'عودة', 'AIDA', 'AWNI', 'MONEER', 'EBRAHEEM', 169, '12345678970', 'ebraheem@oneonlinema', '1963-06-12', '1990-04-01', NULL, 231, 231, 4, 13, 4, 11, 9, 1, 3, 1, 1, NULL, NULL, 1, 2, 1, 1, NULL, NULL),
(71, 1071, 12345678971, 'abdallah', 'avatars/1071.jpg', 'تمارا', 'جمال', 'رأفت', 'بسيم', 'AIMAN', 'HABIS', 'FIRAS', 'ABDALLAH', 170, '12345678971', 'abdallah@oneonlinema', '1966-09-19', '1990-06-09', NULL, 123, 123, 6, 8, 2, 143, 9, 3, 3, 2, 1, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(72, 1072, 12345678972, 'ghazi', 'avatars/1072.jpg', 'تماضر', 'جمعة', 'مفلح', 'نايل', 'AINE LHAYA', 'ABDELRAHMAN', 'MOAMAD', 'GHAZI', 171, '12345678972', 'ghazi@oneonlinemarke', '1960-08-20', '1992-12-01', NULL, 220, 220, 4, 12, 3, 149, 9, 2, 1, 1, 1, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(73, 1073, 12345678973, 'ameen', 'avatars/1073.jpg', 'توفيق', 'جمعة', 'محمد', 'امحيسن', 'AKRAM', 'FARISS', 'ABDALKAREEM', 'AMEEN', 172, '12345678973', 'ameen@oneonlinemarke', '1965-12-04', '1990-10-08', NULL, 279, 6, 5, 12, 3, 127, 9, 2, 3, 1, 1, NULL, NULL, 10, 2, 1, 1, NULL, NULL),
(74, 1074, 12345678974, 'shehadeh', 'avatars/1074.jpg', 'تيسير', 'جمعه', 'لؤي', 'احمد سليم', 'AL KHDOUR', 'HALAF', 'SAMI', 'SHEHADEH', 173, '12345678974', 'shehadeh@oneonlinema', '1966-10-04', '1990-10-08', NULL, 279, 279, 5, 12, 3, 127, 9, 2, 2, 1, 1, 36, 8, NULL, NULL, 2, 1, NULL, NULL),
(75, 1075, 12345678975, 'bassam', 'avatars/1075.jpg', 'جابر', 'جميل', 'زيدان', 'ثلجي', 'AL RAJA', 'HASSAN', 'HAMED', 'BASSAM', 174, '12345678975', 'bassam@oneonlinemark', '1967-09-06', '1990-10-08', NULL, 279, 126, 5, 13, 4, 127, 9, 1, 3, 1, 1, NULL, NULL, 14, 2, 1, 1, NULL, NULL),
(76, 1076, 12345678976, 'derar', 'avatars/1076.jpg', 'جبور', 'حابس', 'مطلق', 'رزق', 'ALABDELRAHMAN', 'HARB', 'SAMIH', 'DERAR', 175, '12345678976', 'derar@oneonlinemarke', '1967-08-25', '1990-10-08', NULL, 279, 279, 5, 12, 3, 127, 9, 2, 2, 1, 1, NULL, NULL, 14, 2, 1, 1, NULL, NULL),
(77, 1077, 12345678977, 'hamd', 'avatars/1077.jpg', 'جعفر', 'حازم', 'عبدالجليل', 'هايل', 'AL-HAJJ', 'HANAN', 'SA\'\'EED', 'HAMD', 176, '12345678977', 'hamd@oneonlinemarket', '1967-08-03', '1990-10-08', NULL, 270, 270, 1, 13, 4, 164, 9, 1, 2, 1, 1, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(78, 1078, 12345678978, 'mohammad adnan', 'avatars/1078.jpg', 'جلال', 'حافظ', 'مطير', 'فليح', 'ALI', 'ALLAH', 'NISREEN', 'MOHAMMAD ADNAN', 177, '12345678978', 'mohammadadnan@oneonl', '1962-11-22', '1990-10-08', NULL, 254, 254, 7, 12, 3, 17, 9, 2, 2, 1, 1, NULL, NULL, 12, 3, 1, 1, NULL, NULL),
(79, 1079, 12345678979, 'nawaf', 'avatars/1079.jpg', 'جمال', 'حامد', 'حرب', 'خلف', 'ALIA', 'FARRIS', 'ABEER', 'NAWAF', 178, '12345678979', 'nawaf@oneonlinemarke', '1966-01-01', '1990-10-08', NULL, 43, 43, 1, 13, 4, 149, 9, 1, 2, 1, 1, NULL, NULL, NULL, 3, 1, 1, NULL, NULL),
(80, 1080, 12345678980, 'abbas', 'avatars/1080.jpg', 'جمانة', 'حرب', 'عبداللطيف', 'رضوان', 'ALLAH', 'ZAINAB', 'ABDALQADER', 'ABBAS', 179, '12345678980', 'abbas@oneonlinemarke', '1990-10-08', '1958-06-02', NULL, 6, 6, 1, 12, 3, 21, 9, 2, 2, 1, 1, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(81, 1081, 12345678981, 'aine lhaya', 'avatars/1081.jpg', 'جميل', 'حسام', 'محيسن', 'محسن', 'ALMANSI', 'CHALEB', 'ABDALAZIZ', 'AINE LHAYA', 180, '12345678981', 'ainelhaya@oneonlinem', '1964-02-09', '1990-10-08', NULL, 6, 6, 1, 12, 3, 14, 9, 2, 3, 1, 1, NULL, NULL, 9, 2, 1, 1, NULL, NULL),
(82, 1082, 12345678982, 'shavege', 'avatars/1082.jpg', 'جهاد', 'حسن', 'اثنيان', 'نعيم', 'AMAL', 'ABEDALAH', 'SAAD', 'SHAVEGE', 181, '12345678982', 'shavege@oneonlinemar', '1961-06-02', '1992-12-01', NULL, 264, 264, 7, 13, 4, 205, 9, 1, 1, 1, 1, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(83, 1083, 12345678983, 'yaser', 'avatars/1083.jpg', 'جودت', 'حسني', 'نصرالله', 'موسى', 'AMANI', 'ADI', 'YAHYA', 'YASEEN', 182, '12345678983', 'yaser@oneonlinemarke', '1962-03-04', '1990-10-20', NULL, 300, 300, 2, 13, 4, 207, 9, 1, 1, 1, 1, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(84, 1084, 12345678984, 'dina', 'avatars/1084.jpg', 'جيهان', 'حسين', 'عطا الله', 'عبد السلام', 'AMEEN', 'HASHEM', 'HUSSIN', 'DINA', 183, '12345678984', 'dina@oneonlinemarket', '1967-09-02', '1990-10-20', NULL, 146, 146, 4, 12, 3, 111, 21, 2, 2, 1, 1, NULL, NULL, 1, 2, 1, 1, NULL, NULL),
(85, 1085, 12345678985, 'fariss', 'avatars/1085.jpg', 'حاتم', 'حلمي', 'جديع', 'طايل', 'AMEN', 'AHMAD\\\\ED', 'REDA', 'FARISS', 184, '12345678985', 'fariss@oneonlinemark', '1962-04-15', '1991-03-01', NULL, 258, 258, 1, 17, 5, 29, 9, 1, 1, 1, 1, NULL, NULL, 4, 2, 1, 1, NULL, NULL),
(86, 1086, 12345678986, 'suleman', 'avatars/1086.jpg', 'حاتم', 'حماد', 'درويش', 'عصري', 'AMER', 'BASSAM', 'SULAIMAN', 'SULEMAN', 185, '12345678986', 'suleman@oneonlinemar', '1964-01-10', '1990-12-15', NULL, 288, 288, 2, 17, 5, 200, 9, 1, 1, 1, 1, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(87, 1087, 12345678987, 'daoud', 'avatars/1087.jpg', 'حازم', 'حمتو', 'عبد الحليم', 'انور', 'AMJAD', 'ABEDALQADER', 'NIDAL', 'DAOUD', 186, '12345678987', 'daoud@oneonlinemarke', '1961-09-03', '1990-12-17', NULL, 254, 254, 7, 13, 4, 207, 9, 1, 1, 1, 1, NULL, NULL, 14, 2, 1, 1, NULL, NULL),
(88, 1088, 12345678988, 'sultan', 'avatars/1088.jpg', 'حبيب', 'حمد', 'عبدالودود', 'عوض الله', 'AMNEH', 'DINA', 'SULEIMAN', 'SULTAN', 187, '12345678988', 'sultan@oneonlinemark', '1964-09-10', '1990-12-17', NULL, 288, 288, 2, 13, 4, 13, 9, 1, 1, 1, 1, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(89, 1089, 12345678989, 'mohmd', 'avatars/1089.jpg', 'حرب', 'حمدان', 'بسيم', 'صويلح', 'ANWAR', 'DIAB', 'SAIF', 'MOHMD', 188, '12345678989', 'mohmd@oneonlinemarke', '1964-09-03', '1991-01-01', NULL, 272, 272, 7, 12, 3, 123, 9, 2, 2, 1, 1, NULL, NULL, 13, 3, 1, 1, NULL, NULL),
(90, 1090, 12345678990, 'abdel hakeem', 'avatars/1090.jpg', 'حسام', 'حمدي', 'منور', 'نظير', 'ARAFAT', 'HMOUD', 'SALMAN', 'ABDEL HAKEEM', 189, '12345678990', 'abdelhakeem@oneonlin', '1967-12-10', '1991-01-05', NULL, 275, 275, 7, 12, 3, 167, 9, 2, 2, 1, 1, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(91, 1091, 12345678991, 'dhyab', 'avatars/1091.jpg', 'حسام الدين', 'حمزه', 'سعدي', 'مضفي', 'ASA\'\'D', 'IBRAHEEM', 'SEHAM', 'DHYAB', 190, '12345678991', 'dhyab@oneonlinemarke', '1968-02-03', '1991-01-19', NULL, 279, 279, 5, 13, 4, 127, 9, 1, 2, 1, 1, NULL, NULL, 14, 2, 1, 1, NULL, NULL),
(92, 1092, 12345678992, 'hatim', 'avatars/1092.jpg', 'حسان', 'حمود', 'هويشل', 'حسن', 'ASMA', 'MAHER', 'MOHAMAD', 'HATIM', 191, '12345678992', 'hatim@oneonlinemarke', '1969-05-15', '1992-12-01', NULL, 220, 220, 4, 8, 2, 134, 9, 2, 3, 1, 1, NULL, NULL, 7, 2, 1, 1, NULL, NULL),
(93, 1093, 12345678993, 'musleh', 'avatars/1093.jpg', 'حسن', 'حموده', 'بركات', 'حسني', 'ATA', 'JUMA\'\'H', 'ABDELLAH', 'MUSLEH', 192, '12345678993', 'musleh@oneonlinemark', '1968-09-04', '1991-01-20', NULL, 279, 13, 5, 12, 3, 22, 9, 2, 1, 1, 1, 10, NULL, NULL, 1, 1, 1, NULL, NULL),
(94, 1094, 12345678994, 'mamoun', 'avatars/1094.jpg', 'حسني', 'حميدة', 'حمدان', 'عبد المهدي', 'ATALLAH', 'ABDELMO\'\'TI', 'NAWAF', 'MAMOUN', 193, '12345678994', 'mamoun@oneonlinemark', '1960-04-05', '1991-01-19', NULL, 254, 254, 7, 13, 4, 199, 9, 1, 1, 1, 1, NULL, NULL, 11, 3, 1, 1, NULL, NULL),
(95, 1095, 12345678995, 'mohammad ali', 'avatars/1095.jpg', 'حسنيه', 'حميده', 'رداد', 'عبده', 'ATEF', 'EAD', 'SAADI', 'MOHAMMAD ALI', 194, '12345678995', 'mohammadali@oneonlin', '1964-11-06', '1991-02-02', NULL, 267, 267, 7, 13, 4, 207, 9, 1, 1, 1, 1, NULL, NULL, 12, 3, 1, 1, NULL, NULL),
(96, 1096, 12345678996, 'rizq', 'avatars/1096.jpg', 'حسين', 'حنا', 'صبري', 'زهير', 'ATTALLAH', 'ABDELNASSER', 'FARAJ', 'RIZQ', 195, '12345678996', 'rizq@oneonlinemarket', '1960-05-05', '1992-12-31', NULL, 108, 108, 1, 12, 3, 3, 9, 2, 3, 1, 2, 11, 9, NULL, NULL, 2, 1, NULL, NULL),
(97, 1097, 12345678997, 'mansour', 'avatars/1097.jpg', 'حكمت', 'خالد', 'غنام', 'عبدالجبار', 'ATTIA', 'MOED', 'AMANI', 'MANSOUR', 196, '12345678997', 'mansour@oneonlinemar', '1970-03-01', '1992-09-01', NULL, 58, 58, 6, 2, 1, NULL, 9, 3, 3, 2, 1, NULL, NULL, 11, 3, 1, 1, NULL, NULL),
(98, 1098, 12345678998, 'adi', 'avatars/1098.jpg', 'حليمه', 'خشمان', 'رضا', 'هاشم', 'AWAD', 'FAYIZ', 'MUHAMMAD', 'ADI', 197, '12345678998', 'adi@oneonlinemarket', '1966-03-18', '1992-09-01', NULL, 234, 234, 4, 12, 3, 132, 9, 3, 3, 2, 2, NULL, NULL, 6, 2, 1, 1, NULL, NULL),
(99, 1099, 12345678999, 'muhammad', 'avatars/1099.jpg', 'حمد', 'خضر', 'سيف', 'طعمه', 'AWNI', 'GHANMMA', 'FALAH', 'MUHAMMAD', 198, '12345678999', 'muhammad@oneonlinema', '1966-08-01', '1993-07-01', NULL, 104, 104, 1, 13, 4, 141, 9, 1, 6, 3, 1, NULL, NULL, 14, 3, 1, 1, NULL, NULL);

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
(1, 'فرع اربـــد', NULL, '250906111', '268944781', '7923404881', '', 'Institute Irbid', NULL, 'ضاحية الحسين', 'Dahyet alHussein', 'شارع اربد', '', 78, 32.551445, 35.851479, 1, 1, NULL, 1, 1, NULL, NULL),
(2, 'فرع جرش', NULL, '234509992', '212382932', '7837930092', '', 'Institute Jarash', NULL, 'المجر- الشواهد', 'Evidence', 'شارع جرش', '', 90, 32.276900, 35.905600, 3, 1, NULL, 1, 1, NULL, NULL),
(3, 'فرع عجلون', NULL, '298132182', '296205923', '7976864603', '', 'Institute Ajloun', NULL, 'مثلث صخرة - رأس منيف', 'Triangle Rock', 'شارع عجلون', '', 95, 32.332687, 35.751785, 2, 1, NULL, 1, 1, NULL, NULL),
(4, 'فرع الزرقاء', NULL, '576394604', '544034384', '7873362004', '', 'Institute Zarqa', NULL, 'جبل طارق', 'Tarek Mountain', 'شارع الزرقاء', '', 65, 32.063249, 36.095228, 6, 2, NULL, 1, 1, NULL, NULL),
(5, 'فرع مادبا', NULL, '518518945', '572390515', '7977963895', '', 'Institute Madaba', NULL, 'حي مسجد ابو عبيدة', 'Abu Ubeida Neighborhood', 'شارع مادبا', '', 48, 31.723057, 35.786470, 8, 2, NULL, 1, 1, NULL, NULL),
(6, 'فرع ماركا', NULL, '645322496', '640177686', '7736733536', 'marka@oneonlinemarket.com', 'Institute Marka', NULL, 'الزهراء', 'AL-Zahr\'a', 'شارع ماركا', 'marka Street', 14, 32.001677, 35.971925, 5, 2, NULL, 1, 1, NULL, NULL),
(7, 'فرع ياجوز', NULL, '545852237', '550690017', '7732740977', '', 'Institute Yajooz', NULL, 'الجبل الشمالي', 'AL JABAL ALSHAMALI', 'شارع ياجوز', '', 89, 32.040004, 35.913292, 6, 2, NULL, 1, 1, NULL, NULL),
(8, 'فرع ناعور', NULL, '665012148', '674058028', '7918821158', 'naor@oneonlinemarket.com', 'Institute Na\'or', NULL, 'حي الشهيد', 'hay alshaheed', 'شارع ناعور', 'naor Street', 8, 31.874761, 35.823963, 5, 2, NULL, 1, 1, NULL, NULL),
(9, 'فرع القويسمة', NULL, '697837589', '626129009', '7950443689', '', 'Institute Qweismeh', NULL, 'التطوير الحضري / المنارة', 'Urban Development / Al-Manarah', 'شارع القواسمي', '', 85, 31.870508, 35.816933, 5, 2, NULL, 1, 1, NULL, NULL),
(10, 'فرع سحاب', NULL, '638208270', '615020451', '79509466410', '', 'Institute Sahab', NULL, 'سحاب', 'Sahab', 'شارع سهاب', '', 77, 31.844851, 36.045490, 5, 2, NULL, 1, 1, NULL, NULL),
(11, 'فرع الطفيلة', NULL, '317762461', '331996972', '79350389611', '', 'Institute Tafileh', NULL, NULL, NULL, 'شارع الطفيلة', '', 22, 30.832124, 35.615790, 10, 3, NULL, 1, 1, NULL, NULL),
(12, 'فرع العقبة', NULL, '366147872', '378083503', '78898196912', '', 'Institute Aqaba', NULL, NULL, NULL, 'شارع العقبة', '', 98, 29.604563, 35.038023, 12, 3, NULL, 1, 1, NULL, NULL),
(13, 'فرع الكرك', NULL, '276692443', '273600184', '79856325613', '', 'Institute Karak', NULL, NULL, NULL, 'شارع كرك', '', 43, 31.185285, 35.703679, 9, 3, NULL, 1, 1, NULL, NULL),
(14, 'فرع معان', NULL, '327737754', '380860225', '79824556214', '', 'Institute Maan', NULL, NULL, NULL, 'شارع معان', '', 82, 30.192663, 35.724941, 11, 3, NULL, 1, 1, NULL, NULL);

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
(21, '2017_12_03_124039_create_directorates_table', 4),
(22, '2017_12_13_100455_create_regions_table', 4),
(23, '2017_12_05_084902_create_departments_table', 5),
(24, '2017_12_14_104602_create_institutes_table', 5),
(25, '2017_12_18_062900_create_employees_table', 6);

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
(7, 'اقل من ثانوية عامة', 'Less than Secondary', NULL, NULL),
(8, 'ثانوية عامة', 'Secondary', NULL, NULL),
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
(1, 'اقليم الشمال', NULL, '312345671', '312345671', '7931234561', '', 'North Region', NULL, NULL, NULL, 'شارع اليان العمري', 'Al-Shareef Abdul Hameed Sharaf', 55, 31.971189, 35.835617, 1, 1, 1, NULL, NULL),
(2, 'اقليم الوسط', NULL, '676543212', '676543212', '7967654322', '', 'Middle Region', NULL, NULL, NULL, 'شارع فلاح ابوالحاج الصريح', 'Amherst Street', 80, 31.971189, 35.835617, 5, 1, 1, NULL, NULL),
(3, 'اقليم الجنوب', NULL, '212345673', '212345673', '7921234563', '', 'South Region', NULL, NULL, NULL, 'شارع ميناس الشامي ', 'Center Street', 32, 31.971189, 35.835617, 10, 1, 1, NULL, NULL);

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
('معهدالتدريب المهني / القويسمة', 2, 1),
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
(1, 'اتصالات', 'Communication', NULL, NULL),
(2, 'اتوترونيكس', 'Atronics', NULL, NULL),
(3, 'اجتماعيات', 'Social Studies', NULL, NULL),
(4, 'احصاء', 'Statistics', NULL, NULL),
(5, 'ادارة اعمال', 'Business Administration', NULL, NULL),
(6, 'ادارة الاعمال/سياحة و فندقة', 'Business Administration / Tourism and Hotel', NULL, NULL),
(7, 'ادارة التزويد', 'Supply Management', NULL, NULL),
(8, 'ادارة الطعام والشراب', 'Food and Drink Management', NULL, NULL),
(9, 'ادارة المستودعات', 'Stores management', NULL, NULL),
(10, 'ادارة ايواء', 'Accommodation Management', NULL, NULL),
(11, 'ادارة صناعية', 'Industrial Management', NULL, NULL),
(12, 'ادارة عامة', 'General Administration', NULL, NULL),
(13, 'ادارة فندقة', 'Hotel Management', NULL, NULL),
(14, 'ادارة لوازم', 'Supplies Management', NULL, NULL),
(15, 'ادارة مالية', 'Financial Management', NULL, NULL),
(16, 'ادارة معلوماتية', 'Information Management', NULL, NULL),
(17, 'ادارة مكاتب', 'Office Management', NULL, NULL),
(18, 'ادارة موارد المياه والبيئة', 'Water Resources and Environment Management', NULL, NULL),
(19, 'ادارة هندسية', 'Engineering Management', NULL, NULL),
(20, 'اداره تربويه', 'Educational Administration', NULL, NULL),
(21, 'اداره مستودعات', 'Warehouses Management', NULL, NULL),
(22, 'ادب انجليزي', 'English Literature', NULL, NULL),
(23, 'ادب عربي', 'Arabic Literature', NULL, NULL),
(24, 'ادبي', 'Literary', NULL, NULL),
(25, 'ارشاد تربوي', 'Educational Guidance', NULL, NULL),
(26, 'ارشاد زراعي', 'Agricultural Guidance', NULL, NULL),
(27, 'ارشاد سياحي', 'Tourism Guiding', NULL, NULL),
(28, 'ارشاد نفسي/ارشاد مدرسي', 'Self-help / School Guidance', NULL, NULL),
(29, 'ارشاد وتوجيه نفسي', 'Mentoring and Guidance', NULL, NULL),
(30, 'ارشاد وصحة نفسية', 'Guidance and Psychological Health', NULL, NULL),
(31, 'اعداد معلمي/الطباعه والسكرتاريه', 'Preparation of Teacher / Printing and Secretary', NULL, NULL),
(32, 'اعداد معلمين', 'Preparing Teachers', NULL, NULL),
(33, 'اعداد معلمين', 'Preparing teachers', NULL, NULL),
(34, 'اقتصاد', 'Economy', NULL, NULL),
(35, 'اقتصاد زراعي', 'Agricultural Economy', NULL, NULL),
(36, 'اقتصاد منزلي', 'Home Economics', NULL, NULL),
(37, 'اقل من ثانوي', 'Less than Secondary', NULL, NULL),
(38, 'الات حرارية وهيدروليكية', 'Thermal and Hydraulic Machines', NULL, NULL),
(39, 'الاثار والسياحه', 'Archeology and Tourism', NULL, NULL),
(40, 'الارشاد الاسري', 'Family Counseling', NULL, NULL),
(41, 'الارشاد النفسي', 'Psychological Guidance', NULL, NULL),
(42, 'الارشاد والصحة النفسية', 'Counseling and Psychological Health', NULL, NULL),
(43, 'الازياء وتكنولوجيا الالبسة', 'Fashion and Technology Clothing', NULL, NULL),
(44, 'الالكترونيات الصناعية', 'Industrial Electronics', NULL, NULL),
(45, 'الانتاج والالات', 'Production and Machinery', NULL, NULL),
(46, 'الإدارة السياحية', 'Tourism Management', NULL, NULL),
(47, 'الإدارة والدراسات الإستراتيجية', 'Management and Strategic Studies', NULL, NULL),
(48, 'الأتوترونيكس', 'Autotronics', NULL, NULL),
(49, 'البرمجة', 'Programming', NULL, NULL),
(50, 'التخطيط الاقليمي', 'Regional Planning', NULL, NULL),
(51, 'التربية الاسلامية', 'Islamic Education', NULL, NULL),
(52, 'التربية الخاصة', 'Special Education/ Eduction for People with Special Needs', NULL, NULL),
(53, 'التربية المهنية', 'Vcational Education', NULL, NULL),
(54, 'التصوير والطباعه', 'Photography and Printing', NULL, NULL),
(55, 'التغذية والصناعات الغذائية', 'Nutrition and Food Industries', NULL, NULL),
(56, 'التغذية وتكنولوجيا الغذاء /علم وتكنولوجيا الغذاء', 'Nutrition and Food Technology / Food Science and Technology', NULL, NULL),
(57, 'الحكومة الالكترونية', 'The Electronic Government', NULL, NULL),
(58, 'الخدمه الاجتماعيه', 'Social Service', NULL, NULL),
(59, 'السكرتاريا والسجل الطبي', 'Secretary and Medical Record', NULL, NULL),
(60, 'الصحي', 'Health', NULL, NULL),
(61, 'العلوم التطبيقية', 'Applied Sciences', NULL, NULL),
(62, 'العلوم الحياتية', 'Life Sciences', NULL, NULL),
(63, 'العلوم الزراعية', 'Agricultural Sciences', NULL, NULL),
(64, 'الفلسفة / في ادارة الاعمال', 'Philosophy / Business Administration', NULL, NULL),
(65, 'الفلسفة في المحاسبة', 'Philosophy in Accounting', NULL, NULL),
(66, 'الفنون الجميلة', 'Fine arts', NULL, NULL),
(67, 'الكترونيات الطيران', 'Aviation Electronics', NULL, NULL),
(68, 'اللغات الاوروبية/الفرنسية والانجليزية', 'European Languages/ French and English', NULL, NULL),
(69, 'اللغة الانجليزية وآدابها', 'English language and Literature', NULL, NULL),
(70, 'اللغة العربية', 'Arabic Language', NULL, NULL),
(71, 'المصادر التعليميه والمكتبات', 'Learning Resources and Libraries', NULL, NULL),
(72, 'الموارد الزراعية والبيئة', 'Agricultural Resources and Environment', NULL, NULL),
(73, 'الهندسة الكهربائية والتربية', 'Electrical Engineering and Education', NULL, NULL),
(74, 'الهندسة الميكانيكية / المركبات', 'Mechanical Engineering / Vehicles', NULL, NULL),
(75, 'انتاج الات', 'Machinery Production', NULL, NULL),
(76, 'انشاءات', 'Construction', NULL, NULL),
(77, 'إدارة الأعمال', 'Business Management', NULL, NULL),
(78, 'إدارة الفنادق /التسويق', 'Hotel Management / Marketing', NULL, NULL),
(79, 'إدارة الفنادق /التسويق', 'Hotel Management / Marketing', NULL, NULL),
(80, 'إدارة فندقية', 'Hotel Management', NULL, NULL),
(81, 'برمجة وتحليل نظم', 'Programming and Systems Analysis', NULL, NULL),
(82, 'تاريخ', 'History', NULL, NULL),
(83, 'تاهيل تربوي', 'Educational Qualification', NULL, NULL),
(84, 'تجاري', 'Commercial', NULL, NULL),
(85, 'تجميل', 'Cosmetology', NULL, NULL),
(86, 'تحكم آلي', 'Automatic Control', NULL, NULL),
(87, 'تدفئة مركزية', 'Central Heating', NULL, NULL),
(88, 'تدفئة مركزية وادوات صحية', 'Central Heating and Sanitary Ware', NULL, NULL),
(89, 'تربية ابتدائية', 'Primary Education', NULL, NULL),
(90, 'تربــية تقنــية', 'Technical Education', NULL, NULL),
(91, 'تربية خاصة', 'Special Education', NULL, NULL),
(92, 'تربية فنية', 'Art Education', NULL, NULL),
(93, 'تربيه طفل', 'Child Education', NULL, NULL),
(94, 'تربيه مهنيه', 'Vcational Education', NULL, NULL),
(95, 'تصميم ازياء', 'Clothes Designing', NULL, NULL),
(96, 'تصميم داخلي', 'Interior Design', NULL, NULL),
(97, 'تصميم وديكور', 'Design and Decor', NULL, NULL),
(98, 'تصنيع ملابس', 'Clothing Manufacture', NULL, NULL),
(99, 'تعدين وتجهيز خامات معدنيه', 'Metallurgy and Processing of Mineral Ores', NULL, NULL),
(100, 'تغذيه واقتصاد منزلي', 'Nutrition and Home Economics', NULL, NULL),
(101, 'تقنيات تربويه', 'Educational Techniques', NULL, NULL),
(102, 'تكنولوجيا الانارة الطبيعية والصناعية', 'Natural and Industrial Lighting Technology', NULL, NULL),
(103, 'تكنولوجيا الانتاج', 'Production Technology', NULL, NULL),
(104, 'تكنولوجيا التصنيع الغذائي', 'Food Processing Technology', NULL, NULL),
(105, 'تكنولوجيا التعليم', 'Educational Technology', NULL, NULL),
(106, 'تكنولوجيا الخراطة والالات المحوسبة', 'Lathe Technology and Computerized Machinery', NULL, NULL),
(107, 'تكنولوجيا الخراطة وتسوية المعادن', 'Lathe Technology and Metal Fixing', NULL, NULL),
(108, 'تكنولوجيا اللحام', 'Welding Technology', NULL, NULL),
(109, 'تكنولوجيا المعلومات', 'Information Technology', NULL, NULL),
(110, 'تكنولوجيا هندسه ميكانيكية / انتاج الات', 'Mechanical Engineering Technology / Machinery Production', NULL, NULL),
(111, 'تكييف وتبريد', 'Air-Conditioning and Cooling', NULL, NULL),
(112, 'تمديدات كهربائية', 'Electric Installation', NULL, NULL),
(113, 'تمديدات كهربائية / كهرباء عامة', 'Electrical Installations / General Electricity', NULL, NULL),
(114, 'تمريض', 'Nursing', NULL, NULL),
(115, 'تنمية الموارد البشرية', 'Human Resource Development', NULL, NULL),
(116, 'جغرافيا', 'Geography', NULL, NULL),
(117, 'حاسب الكتروني', 'Computer', NULL, NULL),
(118, 'حاسوب', 'Computer', NULL, NULL),
(119, 'حدادة ولحام', 'Blacksmith and Welding', NULL, NULL),
(120, 'حقوق', 'Law', NULL, NULL),
(121, 'دبلوم التربية في تكنولوجيا المعلومات والاتصالات', 'Information and Communication Technology Diploma', NULL, NULL),
(122, 'دراسات اجتماعيه', 'Social Studies', NULL, NULL),
(123, 'ديكور وتصميم داخلي', 'Decor and Interior Design', NULL, NULL),
(124, 'راديو وتلفزيون', 'Radio and TV', NULL, NULL),
(125, 'رسم هندسي ميكانيكي', 'Mechanical Engineering Drawing', NULL, NULL),
(126, 'رياض الأطفال', 'Kindergarten', NULL, NULL),
(127, 'رياضيات', 'Mathematics', NULL, NULL),
(128, 'زراعي', 'Agriculture', NULL, NULL),
(129, 'سكرتاريا طباعة', 'Secretarial Typing', NULL, NULL),
(130, 'سيارات ومحركات احتراق داخلي', 'Cars and Engines of Internal Combustion', NULL, NULL),
(131, 'شرعي', 'Islamic Studies', NULL, NULL),
(132, 'شريعة/دراسات اسلامية', 'Islamic Studies', NULL, NULL),
(133, 'صحافة واعلام', 'Press and Media', NULL, NULL),
(134, 'صناعي', 'Industrial', NULL, NULL),
(135, 'صيدلة', 'Pharmacy', NULL, NULL),
(136, 'طباعة المطابع', 'Press Printing', NULL, NULL),
(137, 'طباعه واعمال مكاتب', 'Typing and Office Work', NULL, NULL),
(138, 'عقد التأجير التمويلي', 'Financial Leasing Contract', NULL, NULL),
(139, 'علم اجتماع', 'Sociology', NULL, NULL),
(140, 'علم الغذاء والتغذية', 'Food Science and Nutrition', NULL, NULL),
(141, 'علم مكتبات وتوثيق', 'Science Libraries and Documentation', NULL, NULL),
(142, 'علم نفس', 'Psychology', NULL, NULL),
(143, 'علمي', 'Scientific', NULL, NULL),
(144, 'علوم', 'Sciences', NULL, NULL),
(145, 'علوم اجتماعية', 'Social Sciences', NULL, NULL),
(146, 'علوم ادارية', 'Administrative Sciences', NULL, NULL),
(147, 'علوم الكمبيوتر', 'Computer Science', NULL, NULL),
(148, 'علوم سياسيه', 'Political Science', NULL, NULL),
(149, 'علوم مالية ومصرفية', 'Banking and Financial Sciences', NULL, NULL),
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
(1, 'admin', 'admin@oneonlinemarket.com', '$2y$10$yNry416TbrdzU/3yeFAS1.gsByfuz1Tz.l./UmvTZ/7EGzIK9PBtC', 'sbUmBMWvOh', '2018-05-06 05:59:24', '2018-05-06 05:59:24'),
(2, 'Heba Abu rizeq', 'heba.aburizeq@oneonlinemarket.com', '$2y$10$oZ.wQ9eRyQ0JzjybHnymNO0lbuEd4fbMXh8fq.Akm6ktK2CI7KaOO', 'D8glkfv4Y6', '2018-05-06 05:59:24', '2018-05-06 05:59:24'),
(3, 'Human Resource', 'hr@oneonlinemarket.com', '$2y$10$sjdzGFOaUJeKUidPZ5UvVuJFM0.9ko.o8LEQNuGwdxqQ.HMSJ4CpC', 'SIkFDdrzRo', '2018-05-06 05:59:24', '2018-05-06 05:59:24'),
(4, 'test', 'test@oneonlinemarket.com ', '$2y$10$j40ipp5HCKdx04MmQDPZG.azEZgyi99R9tz3.DW.FFp6B3Qm2rUHO', 'lY1U3o1y9X', '2018-05-06 05:59:24', '2018-05-06 05:59:24');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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
