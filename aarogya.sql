-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2020 at 10:44 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aarogya`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `clinic_info`
--

CREATE TABLE `clinic_info` (
  `doc_id` int(11) NOT NULL,
  `enq_no` varchar(10) DEFAULT NULL,
  `clinic_name` varchar(30) DEFAULT NULL,
  `str_addr` text,
  `area` varchar(30) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `zip` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clinic_info`
--

INSERT INTO `clinic_info` (`doc_id`, `enq_no`, `clinic_name`, `str_addr`, `area`, `city`, `zip`) VALUES
(10, '9099520770', 'Harmony Cardiology Clinic', '2nd Floor, Sardar Nagar Main Road, Astron Chawk.', 'New Jagnath Plot', 'Rajkot', '360001'),
(12, '236489', 'Sterling Hospitals', 'Nr. Raiya Chowk', 'Raiya Chowk', 'Rajkot', '360005'),
(22, '236489', 'Bless Multispeciality Clinic', 'Navjyot Park, 150 Feet Ring Road, Giriraj Hospital Street, Kalavad Road., Landmark: Near Giriraj Hospital., Rajkot', 'Kalawad Road', 'Rajkot', '360005'),
(23, '79395 9322', 'Tejas Fertility Clinic', '#1, Ghanshyam Bhuvam., Landmark: Near Jayraj Plot, Rajkot', 'Millpara', 'Rajkot', '360007'),
(24, '8039345042', 'Avan Hospital', 'Jetpur Road,Opp.Gondal Sahkari Juth Mandali', 'Gondal Road', 'Rajkot', '360002'),
(25, '7930061908', 'Sinus Hospital', 'Unit of Anish Hospital, Dr. Radhakrishnan Marg, Opp Swami Vivekananda Statue, Nr. Kathiawar Gymkhana', 'New Jagnath Plot', 'Rajkot', '360001'),
(26, '0281-66944', 'Wockhardt Hospitals', 'Nr. St.Mary School', 'Kalawad Road', 'Rajkot', '360005');

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE `disease` (
  `d_id` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `report` text NOT NULL,
  `medicines` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `disease`
--

INSERT INTO `disease` (`d_id`, `name`, `report`, `medicines`) VALUES
(1, 'Asthma/Copd', 'Lung (pulmonary) function tests,Chest X-ray,Arterial blood gas analysis', 'aclidinium,arformoterol'),
(5, 'Blood Clot', 'Fragment D-dimer test\r\n                                   ', 'Apixaban,Betrixaban'),
(6, 'Diabetes', 'A1C test', 'Sulfonylureas,Thiazolidinediones'),
(7, 'Dry Eye', 'Schirmer''s Test', 'Restasis drops'),
(8, 'Glaucoma', 'Tonometry,Ophthalmoscopy', 'prostaglandin analogs, beta blockers, alpha agonists'),
(9, 'Gout', 'Synovial fluid analysis ,Uric acid,Complete blood count (CBC)', 'Allopurinol,Colchicine,Febuxostat'),
(10, 'Haematopoiesis', 'LDL levels,HDL levels', 'none'),
(11, 'diarrhoea', 'Blood test,Stool test', 'loperamide'),
(12, 'Ear Conditions', 'Benign paroxysmal positional vertigo (BPPV)', 'Debrox,Auraphene-B'),
(13, 'Fungal', 'Blood Culture Test,Skin Rashes and Other Problems', 'clotrimazole,econazole'),
(14, 'Swine flu', ' (H1N1) Test', 'oseltamivir'),
(15, 'Alzheimer', 'Vitamin B12,T4,Electrolytes,CRP, ESR', 'galantamine'),
(16, 'Bleeding Disorders', 'bleeding time (BT),activated partial thromboplastin time (aPTT),prothrombin time (PT), and thrombin time (TT)', 'Cyklokapron');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-03-17 14:14:46.311627'),
(2, 'auth', '0001_initial', '2020-03-17 14:14:48.197665'),
(3, 'admin', '0001_initial', '2020-03-17 14:14:55.981319'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-03-17 14:14:58.146896'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-03-17 14:14:58.213545'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-03-17 14:14:59.884123'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-03-17 14:15:00.639277'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-03-17 14:15:01.584997'),
(9, 'auth', '0004_alter_user_username_opts', '2020-03-17 14:15:01.635812'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-03-17 14:15:02.188204'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-03-17 14:15:02.213422'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-03-17 14:15:02.260145'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-03-17 14:15:03.805538'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-03-17 14:15:05.153498'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-03-17 14:15:06.897517'),
(16, 'auth', '0011_update_proxy_permissions', '2020-03-17 14:15:06.971154'),
(17, 'sessions', '0001_initial', '2020-03-17 14:15:07.458108');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `doc_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL,
  `live` tinyint(4) NOT NULL DEFAULT '0',
  `hash` varchar(32) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `vkey` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`doc_id`, `firstname`, `lastname`, `email`, `phone`, `password`, `live`, `hash`, `active`, `vkey`) VALUES
(10, 'Darsh', 'Ambaliya', 'darshambalia@yahoo.in', '9099520770', 'abc', 1, '705f2172834666788607efbfca35afb3', 0, NULL),
(12, 'Renish', 'Charaniya', 'ren@g.c', '1234567890', '$2y$10$IEG.G65/6hVBeqZZKdNmkO6EP9AHoMSD3vbZfKHcv1hAUfOaoD9o6', 1, '41ae36ecb9b3eee609d05b90c14222fb', 0, NULL),
(22, 'Preeti', 'Odedra', 'odedra@gmail.com', '9654713648', 'abc123', 1, '149e9677a5989fd342ae44213df68868', 0, NULL),
(23, 'Rajesh', 'Gorasia', 'gorasia@gmail.com', '8634512754', 'abc123', 1, '3df1d4b96d8976ff5986393e8767f5b2', 0, NULL),
(24, 'Vimal', 'Rachchh', 'rachchh@gmail.com', '8039345042', 'abc123', 1, 'd82c8d1619ad8176d665453cfb2e55f0', 0, NULL),
(25, 'Umang', 'Shukla', 'shukla@gmail.com', '7930061908', 'abc123', 1, '7c590f01490190db0ed02a5070e20f01', 0, NULL),
(26, 'Praful', 'Kamani', 'kamani@gmail.com', '9843265715', 'abc123', 1, 'c5ff2543b53f4cc0ad3819a36752467b', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doc_info`
--

CREATE TABLE `doc_info` (
  `doc_id` int(11) NOT NULL,
  `propic` text,
  `speciality` varchar(30) DEFAULT NULL,
  `qualification` text,
  `institute` varchar(50) DEFAULT NULL,
  `exp` varchar(3) DEFAULT NULL,
  `reg_no` varchar(15) DEFAULT NULL,
  `aadhar` varchar(15) DEFAULT NULL,
  `certificate` text,
  `about` text,
  `upvotes` int(255) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doc_info`
--

INSERT INTO `doc_info` (`doc_id`, `propic`, `speciality`, `qualification`, `institute`, `exp`, `reg_no`, `aadhar`, `certificate`, `about`, `upvotes`) VALUES
(10, 'PicsArt_05-11-11.36.24.jpg', 'Cardiologist', 'MBBS, MD - Cardiology, Diploma in Cardiology', 'MBBS - Medical College, Baroda', '6', '156030307002', '7456381274', 'footer.jpg', 'Dr. Darsh Ambaliya is a Cardiologist in Rajkot New Jagnath Plot, Rajkot and has an experience of 6 years in this field. Dr. Darsh Ambaliya practices at Cure Cardiology Clinic in Rajkot New Jagnath Plot, Rajkot. He completed MBBS from Medical College, Baroda in 2007,MD - Cardiology from Asian Heart Institute, Mumbai in 2011 and Diploma in Cardiology from Asian Heart Institute, Mumbai in 2013. 							', 110),
(12, 'renish.png', 'Cardiologist', 'MBBS, MD - Cardiology', 'B. J. Medical College', '3', '15535743694', '5733278528', 'footer.jpg', '									I am renish charaniya, A.H.Barhoush M.D. has been serving the Glades community for over 35 years. Dr. A.H. Barhoush completed his medical degree from Cairo University in Egypt in 1966 and his training in Obstetrics and Gynecology in New York and New Jersey from 1970 to 1973 at St. Clares Hospital, Albert Einstein College of Medicine and Jersey Medical School. He also completed training in GYN Oncology in 1974 at Margaret Hague Hospital in New Jersey. Dr. Barhoush has been certified by the American Board of Obstetrics and Gynecology since 1974. Currently Dr. Barhoush is a Clinical Assistant Professor at the Department of Obstetric & Gynecology at Nova Southeastern University. He is also a member of ACOG and International college of Surgeons.																					', 51),
(22, 'doctor_listing_2.jpg', 'Dentist', 'BDS, Dental Surgeon', 'BDS - V.S. Dental College, Ban', '12', '156141', '753642158964', 'footer.jpg', 'Dr Preeti G Odedra is an renowned dentist and had taken advance training in microscopic dentistry, implants, lasers & cosmetic dentistry. Dr Preeti G Odedra practices at bless multispeciality clinic at, Rajkot. Bless multispeciality clinic is known for its specialty services.																	', 95),
(23, 'doctor_listing_4.jpg', 'Gynecologist', 'MBBS, MD - Obstetrics & Gynaecology', 'MBBS - MP Shah Medical College', '33', 'G-10605', '863478912345', 'footer.jpg', 'Dr. Rajesh P Gorasia is a Gynecologist,Obstetrician and Infertility Specialist in Rajkot Millpara, Rajkot and has an experience of 33 years in these fields. Dr. Rajesh P Gorasia practices at Tejas Fertility Clinic in Rajkot Millpara, Rajkot. He completed MBBS from MP Shah Medical College,Jamnagar in 1979 and MD - Obstetrics & Gynaecology from MP Shah Medical College,Jamnagar in 1982.\r\nHe is a member of Indian Society for Assisted Reproduction (ISAR),European Society of Human Reproduction and Embryology (ESHRE),American Society of Reproductive Medicine,Federation of Obstetric and Gynaecological Societies of India (FOGSI),Indian Association of Gynaecological Endoscopist (IAGE) and IMS. Some of the services provided by the doctor are: Gynae Problems,In-Vitro Fertilization (IVF) and Infertility Evaluation / Treatment etc.																	', 252),
(24, 'doctor_listing_3.jpg', 'Homoeopathic', 'BHMS, Certificate in Child Health (CCH)', 'BHMS - Rajkot Homoeopath Medic', '9', 'G11349', '632451896374', 'footer.jpg', '																		Dr. Vimal S Rachchh is practicing homeopathy at Santosh clinic, from last nine years. He is always generous to treat his patients with best possible & Classical homeopathy way, along with modern touch of medical sciences.\r\nHe is very keen & interested in treatments of various kinds of lifestyle disorders and childhood diseases. He has solved successfully many skin conditions & allergic problems of the patients belonging to various age groups. He stands for providing exact homeopathic medicine to his patients and giving them quickest and gentle homeopathic care.\r\nHe is flourishing his homeopathic practice ethically and powerfully. He is in constant touch with modern era of homeopathy by attending various seminars C.M.E. & workshops. He is working in a way that patients forget homeopathy is a slow system.\r\nHis unique personality seems to heal in all ways of his patientâ€™s life. He is a friend philosopher and a guide to many of his patients. He publishes various articles, thesis, notes and health topics in different health journals and magazines.\r\nHe provides free services to needy people in different areas to make availability of homeopathy to all class of people. Besides this he is visits homeopathy medical college, to share his knowledge and make awareness about, homeopathy and his practice to students.\r\nHe always believes to treat his patients in rational quick and gentle way, and he is always ready to listen to his patients.																																	', 53),
(25, 'doctor_listing_5.jpg', 'Otolaryngologis', 'MBBS, MS - ENT, Endoscopic Sinus & Skull Based Surgery, Microscopic Ear Surgery', 'MBBS, MS - ENT, Endoscopic Sin', '16', 'G14988', '756314598632', 'footer.jpg', 'http://www.sinushospital.com Dr. Umang shukla is one of the well trained and experienced ENT surgeons in Rajkot. He is chief consultant and director of sinus hospital Rajkot. Dr. Umang has advanced specialisation in endoscopic sinus surgery and microscopic ear surgery. He is honorary attached with very reputed corporate hospitals and also charity hospitals for poor and needy patient.																	', 20),
(26, 'kamani.jpg', 'Gastroenterologist', 'M.D. DNB (Gasteroenterology)', '2002, M.D. (Medicine) Pramukh Swami Medi. College ', '8', 'G11367', '943214786354', 'footer.jpg', 'Dr. Praful Kamani did his MBBS & MD (Medicine) from Pramukh Swami Medical Collage, Karamsad (Gujarat). He passed out his DNB in Gastroentrology from Jagjivan Ram Hospital, Mumbai.\r\n\r\nDr. Praful Kamani has a vast experience in upper & lower Gastro-Intestinal endoscopy as well as therapeutic endoscopy like ERCP, Band ligation, Polypectomy and metal stenting of esophagus & biliary tree as well as dif?cult foreign body removal. He also has a special interest in hepatology and he has attended various liver Conferences at America (AASLD)																	', 320);

-- --------------------------------------------------------

--
-- Table structure for table `laboratory`
--

CREATE TABLE `laboratory` (
  `lab_doc_id` int(15) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `firstname` varchar(10) DEFAULT NULL,
  `lastname` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laboratory`
--

INSERT INTO `laboratory` (`lab_doc_id`, `password`, `phone`, `email`, `firstname`, `lastname`) VALUES
(123, 'abc123', '789456123', 'fshf', 'Kishan', 'Sheth');

-- --------------------------------------------------------

--
-- Table structure for table `lab_doc_info`
--

CREATE TABLE `lab_doc_info` (
  `lab_doc_id` int(10) NOT NULL,
  `propic` text NOT NULL,
  `speciality` varchar(30) NOT NULL,
  `qualification` text NOT NULL,
  `institute` varchar(50) NOT NULL,
  `exp` varchar(3) NOT NULL,
  `reg_no` varchar(15) NOT NULL,
  `aadhar` varchar(15) NOT NULL,
  `certificate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lab_info`
--

CREATE TABLE `lab_info` (
  `lab_doc_id` int(10) NOT NULL,
  `enq_no` varchar(10) NOT NULL,
  `clinic_name` varchar(30) NOT NULL,
  `str_addr` text NOT NULL,
  `area` varchar(30) NOT NULL,
  `city` varchar(15) NOT NULL,
  `zip` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_info`
--

INSERT INTO `lab_info` (`lab_doc_id`, `enq_no`, `clinic_name`, `str_addr`, `area`, `city`, `zip`) VALUES
(0, 'enqno', 'clinic_name', 'str_addr', 'area', 'city', 'zipcod');

-- --------------------------------------------------------

--
-- Table structure for table `lab_test`
--

CREATE TABLE `lab_test` (
  `u_case_id` int(10) DEFAULT NULL,
  `test_id` int(10) NOT NULL,
  `t_name` varchar(15) DEFAULT NULL,
  `t_notes` varchar(100) DEFAULT NULL,
  `t_img` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_test`
--

INSERT INTO `lab_test` (`u_case_id`, `test_id`, `t_name`, `t_notes`, `t_img`, `status`) VALUES
(109, 18, 'Vitamin D3', '10', 'AWS_assessment.PNG', 1),
(107, 19, 'Sinus Xray', 'Infected', 'motherboard.jpeg', 1),
(110, 20, 'MRI Scan', 'Normal', 'legion.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy`
--

CREATE TABLE `pharmacy` (
  `u_case_id` int(10) DEFAULT NULL,
  `ph_id` int(10) NOT NULL,
  `m_status` int(2) DEFAULT NULL,
  `p_medicine` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacy`
--

INSERT INTO `pharmacy` (`u_case_id`, `ph_id`, `m_status`, `p_medicine`) VALUES
(106, 43, NULL, 'Paracetamol 2x 5 tablets'),
(106, 44, 1, 'Dominic DCA 5 tablets'),
(107, 45, 1, 'Paracetamol 5x 10 tablets'),
(108, 46, 1, 'Proplus 15 capsules'),
(109, 47, NULL, 'TH Emarson 15C 5 pills'),
(109, 48, 1, 'Lumica 60K 20 Tablets'),
(110, 72, NULL, 'MBSON 15C 15 tablets\r'),
(110, 73, NULL, 'Paracetamol 500mg 5 tablets\r'),
(110, 74, NULL, 'Electrolyte Powder\r'),
(110, 75, NULL, 'MultiV-200 15 tablets\r'),
(110, 76, NULL, 'Pharmatonic 200x'),
(114, 77, NULL, 'med');

-- --------------------------------------------------------

--
-- Table structure for table `pharm_info`
--

CREATE TABLE `pharm_info` (
  `ph_id` varchar(20) NOT NULL,
  `exp` varchar(5) NOT NULL,
  `propic` text NOT NULL,
  `aadhar` varchar(20) NOT NULL,
  `reg_no` varchar(20) NOT NULL,
  `certificate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharm_info`
--

INSERT INTO `pharm_info` (`ph_id`, `exp`, `propic`, `aadhar`, `reg_no`, `certificate`) VALUES
('', '8', 'Ym93TjW.png', '88956', '74532255222', 'ho38QcM.png');

-- --------------------------------------------------------

--
-- Table structure for table `pharm_reg`
--

CREATE TABLE `pharm_reg` (
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `ph_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharm_reg`
--

INSERT INTO `pharm_reg` (`firstname`, `lastname`, `email`, `password`, `phone`, `ph_id`) VALUES
('Gaurang', 'Ganatra', 'ab@gmail.com', 'abc123', '741852963', 1),
('abb', 'abb', 'ab1@gmail.com', 'abc', '253742255', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pharm_shop_info`
--

CREATE TABLE `pharm_shop_info` (
  `ph_id` varchar(20) NOT NULL,
  `enq_no` varchar(10) NOT NULL,
  `shop_name` varchar(30) NOT NULL,
  `area` varchar(30) NOT NULL,
  `city` varchar(15) NOT NULL,
  `str_addr` text NOT NULL,
  `zip` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharm_shop_info`
--

INSERT INTO `pharm_shop_info` (`ph_id`, `enq_no`, `shop_name`, `area`, `city`, `str_addr`, `zip`) VALUES
('', '5655852', 'abc', ' vcm', 'Rajkot', 'charusat', '360002');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `u_case_id` int(10) DEFAULT NULL,
  `pre_id` int(10) NOT NULL,
  `observations` text,
  `diagnosis` text,
  `investigation` text,
  `medications` text,
  `plan` text,
  `disease` text,
  `status` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`u_case_id`, `pre_id`, `observations`, `diagnosis`, `investigation`, `medications`, `plan`, `disease`, `status`) VALUES
(106, 33, 'Mild fever\r\nCold & Cough since a week', 'Throat infected', 'Other body functioning seems normal', 'Paracetamol 2x 5 tablets\r\nDominic DCA 5 tablets', 'Take both medicines day and night after food.\r\nTake rest', 'Common Cold', 1),
(107, 34, 'Mild fever\r\nCold & Cough since a week', 'Sinus infection', 'Shortening of breath detected ', 'Paracetamol 5x 10 tablets', 'Take medicines regularly - 3 times a day afterr meal.\r\nTake rest.', 'Phnemonia', 1),
(108, 35, 'Prostate pain', 'Biopsy recommended', 'Enlargement of prostate gland noticed', 'Proplus 15 capsules', 'Take medicines regularly. once a day.', 'Prostate Cancer', 1),
(109, 36, '2 episode of seizures.\r\nLoss of Appetite.\r\nSudden weight loss.', 'Vitamin B12 test\r\nD3 test\r\nTSH and T3-T4 test', 'Increased Blood Pressure.\r\n', 'TH Emarson 15C 5 pills\r\nLumica 60K 20 Tablets', 'Take Rest.\r\nTake Lumica each day in morning.\r\nTake emarson every weekend after a meal.', 'Vitamin D Deficiency', 1),
(110, 47, 'Two periods of seizures.\r\nLoss of Appetite.\r\nFatigue and Nausea', 'Vitamin B12 test\r\nVitamin D3 test\r\nTSH, T3 and T4 test\r\nMRI scan', 'Increased Blood Pressure\r\nAbnormal Heartbeats', 'MBSON 15C 15 tablets\r\nParacetamol 500mg 5 tablets\r\nElectrolyte Powder\r\nMultiV-200 15 tablets\r\nPharmatonic 200x', 'Take Rest.\r\nParacetamol at night after meal.\r\nElectrolyte powder once a week.\r\nOther medicines each a day after meal.', 'Sunstroke', 1),
(114, 48, 'obs', 'fis', 'ccccccccccccccccc', 'med', 'trt', 'fever', 1);

-- --------------------------------------------------------

--
-- Table structure for table `u_allergy`
--

CREATE TABLE `u_allergy` (
  `allergy_id` int(15) NOT NULL,
  `u_id` varchar(15) NOT NULL,
  `allergy` varchar(50) DEFAULT NULL,
  `choice` varchar(1) DEFAULT NULL,
  `duration` varchar(10) DEFAULT NULL,
  `numb` int(10) DEFAULT NULL,
  `severity` varchar(50) DEFAULT NULL,
  `notes` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `u_allergy`
--

INSERT INTO `u_allergy` (`allergy_id`, `u_id`, `allergy`, `choice`, `duration`, `numb`, `severity`, `notes`) VALUES
(5, '', 'd', 'Y', 'Month', 2, 'Life Threatening Severity', 'kjho                '),
(8, '668872716333', 'd', 'N', 'Year', 1, 'Mild to Moderate', 'lpkop               '),
(9, '720599171114', 'Dust', 'Y', 'Day', 0, 'Mild', '                    '),
(10, '720599171114', 'Antibiotic', 'Y', 'Year', 24042020, 'Mild', '                    '),
(11, '720599171114', 'Antibiotic', 'N', 'Day', 0, 'Moderate', '                    ');

-- --------------------------------------------------------

--
-- Table structure for table `u_bloodglucose`
--

CREATE TABLE `u_bloodglucose` (
  `bg_id` int(15) NOT NULL,
  `u_id` varchar(15) NOT NULL,
  `result` varchar(20) DEFAULT NULL,
  `utype` varchar(20) DEFAULT NULL,
  `udate` text,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `u_bloodglucose`
--

INSERT INTO `u_bloodglucose` (`bg_id`, `u_id`, `result`, `utype`, `udate`, `notes`) VALUES
(1, '', '456', 'After Breakfast', '2020-02-02', 'ty                                    '),
(5, '668872716333', '10', 'Pre Noon Meal', '2020-02-10', '                                                 '),
(6, '720599171114', '630', 'Pre Breakfast', '04/01/2020', 'FIne');

-- --------------------------------------------------------

--
-- Table structure for table `u_bloodpressure`
--

CREATE TABLE `u_bloodpressure` (
  `bp_id` int(15) NOT NULL,
  `u_id` varchar(15) NOT NULL,
  `systolic` varchar(10) DEFAULT NULL,
  `diastolic` varchar(10) DEFAULT NULL,
  `udate` text,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `u_bloodpressure`
--

INSERT INTO `u_bloodpressure` (`bp_id`, `u_id`, `systolic`, `diastolic`, `udate`, `notes`) VALUES
(1, '668872716333', '30', '10', '0000-00-00', '                                                 '),
(2, '668872716333', '30', '10', '02/08/2020', '                                                 '),
(3, '668872716333', '30', '10', '02/27/2020', '                                                 '),
(4, '720599171114', '90', '140', '04/01/2020', 'In Control                  '),
(5, '720599171114', '110', '160', '04/15/2020', '                                                 '),
(6, '720599171114', '30', '160', '04/15/2020', '                                                 ');

-- --------------------------------------------------------

--
-- Table structure for table `u_bmi`
--

CREATE TABLE `u_bmi` (
  `b_id` int(15) NOT NULL,
  `u_id` varchar(15) NOT NULL,
  `uweight` varchar(10) DEFAULT NULL,
  `uheight` varchar(10) DEFAULT NULL,
  `bmi` varchar(20) DEFAULT NULL,
  `udate` text,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `u_bmi`
--

INSERT INTO `u_bmi` (`b_id`, `u_id`, `uweight`, `uheight`, `bmi`, `udate`, `notes`) VALUES
(1, '720599171114', '51', '180', '56', '01/18/2019', '                                                 ');

-- --------------------------------------------------------

--
-- Table structure for table `u_bodytemperature`
--

CREATE TABLE `u_bodytemperature` (
  `bt_id` int(15) NOT NULL,
  `u_id` varchar(15) NOT NULL,
  `result` varchar(20) DEFAULT NULL,
  `udate` text,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `u_bodytemperature`
--

INSERT INTO `u_bodytemperature` (`bt_id`, `u_id`, `result`, `udate`, `notes`) VALUES
(1, '720599171114', '98.6', '04/15/2020', 'Perfect                              '),
(2, '720599171114', '99.9', '20/04/2020', 'In control                                                 '),
(3, '720599171114', '99.9', '04/15/2020', '                                                 ');

-- --------------------------------------------------------

--
-- Table structure for table `u_case`
--

CREATE TABLE `u_case` (
  `u_id` varchar(12) DEFAULT NULL,
  `u_case_id` int(10) NOT NULL,
  `place` varchar(20) DEFAULT NULL,
  `doc_id` int(10) DEFAULT NULL,
  `c_date` datetime DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Open',
  `disease` varchar(20) DEFAULT NULL,
  `lab_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `u_case`
--

INSERT INTO `u_case` (`u_id`, `u_case_id`, `place`, `doc_id`, `c_date`, `status`, `disease`, `lab_status`) VALUES
('720599171114', 106, 'Gujarat', 25, '2020-04-02 13:06:08', 'Closed', NULL, 0),
('720599171114', 107, 'Gujarat', 24, '2020-04-02 13:11:32', 'Closed', NULL, 1),
('720599171114', 108, 'Gujarat', 23, '2020-04-02 13:14:12', 'Closed', NULL, 0),
('720599171114', 109, 'Gujarat', 22, '2020-04-02 13:19:11', 'Closed', NULL, 1),
('720599171114', 110, 'Gujarat', 26, '2020-04-02 14:15:42', 'Closed', NULL, 1),
('535501031574', 111, 'Gujarat', 26, '2020-04-02 14:27:36', 'Open', NULL, 0),
('720599171114', 114, 'Gujarat', 26, '2020-04-18 14:13:06', 'Closed', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `u_eme_info`
--

CREATE TABLE `u_eme_info` (
  `e_id` int(11) NOT NULL,
  `u_id` varchar(15) DEFAULT NULL,
  `u_name` varchar(20) NOT NULL,
  `u_rel` varchar(15) DEFAULT NULL,
  `u_phone` int(10) NOT NULL,
  `u_address` text NOT NULL,
  `u_city` varchar(20) NOT NULL,
  `u_district` varchar(20) NOT NULL,
  `u_state` varchar(20) NOT NULL,
  `u_pin` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `u_eme_info`
--

INSERT INTO `u_eme_info` (`e_id`, `u_id`, `u_name`, `u_rel`, `u_phone`, `u_address`, `u_city`, `u_district`, `u_state`, `u_pin`) VALUES
(10, '720599171114', 'Rajeshbhai', 'Father', 2147483647, 'Hari krushna kunj', 'Jetpur', 'Rajkot', 'kjdhfkjsd', 360370),
(15, '123', 'Dhruvil dfssdfsdfsd ', NULL, 2147483647, 'Jalaram-1, street-3, university road', 'Rajkot', 'hsagdh', 'Gujarat', 0);

-- --------------------------------------------------------

--
-- Table structure for table `u_gen_info`
--

CREATE TABLE `u_gen_info` (
  `u_id` varchar(12) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(30) DEFAULT NULL,
  `middlename` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(8) DEFAULT NULL,
  `aadhar_no` varchar(12) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `b_group` varchar(3) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `city_town` varchar(20) DEFAULT NULL,
  `district` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `pin` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `u_gen_info`
--

INSERT INTO `u_gen_info` (`u_id`, `password`, `firstname`, `middlename`, `lastname`, `dob`, `gender`, `aadhar_no`, `email`, `b_group`, `phone`, `address`, `city_town`, `district`, `state`, `pin`) VALUES
('123', 'abc', 'abc', 'abc', 'abc', '2020-02-04', 'male', '11223255', 'abc@gmail.com', 'a+', '1234567891', 'jashjshj', 'sjch', 'dsjfkf', 'ncjb', '36222'),
('217363714583', 'abc123', 'Renish', NULL, 'Charaniya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('444210904052', 'abc123', 'Gaurang', NULL, 'Ganatra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('535501031574', 'abc123', 'Sakshi', 'Rajeshbhai', 'Kothadiya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('668872716333', '1234', 'Neel', 'Nilesh', 'Thacker', '1999-05-29', 'Male', '668872716333', 'neelthacker0@gmail.com', 'b+', '9033117009', 'Gurukul ward 10/a plot no. 198 tenament no. D Gandhidham(Kutch)', 'Gandhidham', 'Kutch', 'Gujarat', '370201'),
('720599171114', 'abc123', 'Darsh', 'Rajeshbhai', 'Ambaliya', '1999-10-24', 'Male', '720599171114', 'darshambaliya@gmail.com', 'O+', '9099520770', 'Harikrishna Kunj, Bapu ni wadi', 'Jetpur', 'Rajkot', 'Gujarat', '360370'),
('785380696295', 'abc123', 'Dhruvil', NULL, 'Raithatha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('843962781542', 'abc123', 'Vishwa', NULL, 'Gandhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('973281747452', 'abc123', 'Harshil', NULL, 'Kothari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `u_health_gen_info`
--

CREATE TABLE `u_health_gen_info` (
  `u_id` int(10) DEFAULT NULL,
  `blood_pre` varchar(10) DEFAULT NULL,
  `diabetes` varchar(10) DEFAULT NULL,
  `bmi` int(10) DEFAULT NULL,
  `differently_abled` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `u_heartrate`
--

CREATE TABLE `u_heartrate` (
  `hr_id` int(15) NOT NULL,
  `u_id` varchar(15) NOT NULL,
  `result` varchar(20) DEFAULT NULL,
  `udate` text,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `u_heartrate`
--

INSERT INTO `u_heartrate` (`hr_id`, `u_id`, `result`, `udate`, `notes`) VALUES
(1, '720599171114', '200', '04/01/2020', 'Good'),
(2, '720599171114', '60', '2020-04-09', '                                                 ');

-- --------------------------------------------------------

--
-- Table structure for table `u_immunization`
--

CREATE TABLE `u_immunization` (
  `imm_id` int(15) NOT NULL,
  `u_id` varchar(15) NOT NULL,
  `immunization` varchar(50) DEFAULT NULL,
  `udate` text,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `u_immunization`
--

INSERT INTO `u_immunization` (`imm_id`, `u_id`, `immunization`, `udate`, `notes`) VALUES
(1, '720599171114', 'Polio', '24/12/1999', '                                                 ');

-- --------------------------------------------------------

--
-- Table structure for table `u_labtest`
--

CREATE TABLE `u_labtest` (
  `lab_id` int(15) NOT NULL,
  `u_id` varchar(15) NOT NULL,
  `utest` varchar(50) DEFAULT NULL,
  `udate` text,
  `result` int(20) DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `img` text,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `u_labtest`
--

INSERT INTO `u_labtest` (`lab_id`, `u_id`, `utest`, `udate`, `result`, `unit`, `img`, `notes`) VALUES
(1, '', 'abcd', '2020-02-09', 45, 67, ' 0(2).PNG', 'acdf          ');

-- --------------------------------------------------------

--
-- Table structure for table `u_medication`
--

CREATE TABLE `u_medication` (
  `med_id` int(15) NOT NULL,
  `u_id` varchar(15) NOT NULL,
  `medicine` varchar(50) DEFAULT NULL,
  `udate` text,
  `strength` varchar(50) DEFAULT NULL,
  `dosage` int(10) DEFAULT NULL,
  `dosage_type` varchar(20) DEFAULT NULL,
  `duration` varchar(10) DEFAULT NULL,
  `uday` varchar(20) DEFAULT NULL,
  `frequencytaken` int(20) DEFAULT NULL,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `u_prescription`
--

CREATE TABLE `u_prescription` (
  `pres_id` int(15) NOT NULL,
  `u_id` varchar(15) NOT NULL,
  `u_hospital` varchar(20) DEFAULT NULL,
  `u_doctor` varchar(20) DEFAULT NULL,
  `u_date` text,
  `u_phone` int(10) DEFAULT NULL,
  `u_address` varchar(50) DEFAULT NULL,
  `notes` text,
  `img1` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `u_prescription`
--

INSERT INTO `u_prescription` (`pres_id`, `u_id`, `u_hospital`, `u_doctor`, `u_date`, `u_phone`, `u_address`, `notes`, `img1`) VALUES
(1, '668872716333', 'sas', 'as', '0000-00-00', 2147483647, 'Jalaram-1, street-3, university road', '', ' '),
(2, '668872716333', 'sas', 'as', '0000-00-00', 2147483647, 'Jalaram-1, street-3, university road', '', ' 4.PNG'),
(3, '668872716333', 'sas', 'as', '0000-00-00', 2147483647, 'Jalaram-1, street-3, university road', 'yui                                      ', ' 4.PNG'),
(4, '668872716333', 'abc', 'as', '02/11/2020', 2147483647, 'Jalaram-1, street-3, university road', 'uiui                                             ', ' 5.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `u_problem`
--

CREATE TABLE `u_problem` (
  `pr_id` int(15) NOT NULL,
  `u_id` varchar(15) NOT NULL,
  `uproblem` varchar(30) DEFAULT NULL,
  `choice` varchar(3) DEFAULT NULL,
  `udate` text,
  `diagnosis` varchar(30) DEFAULT NULL,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `u_problem`
--

INSERT INTO `u_problem` (`pr_id`, `u_id`, `uproblem`, `choice`, `udate`, `diagnosis`, `notes`) VALUES
(1, '720599171114', 'Anxiety', 'Yes', '04/18/2020', 'Wockhardt Hospitals', '                                                 '),
(2, '720599171114', 'Appetite', 'Yes', '04/15/2020', 'Dr. Praful Kamani', '                                                 '),
(3, '720599171114', 'Acne', 'No', '04/15/2020', 'Dr. Praful Kamani', '                                                 ');

-- --------------------------------------------------------

--
-- Table structure for table `u_procedure`
--

CREATE TABLE `u_procedure` (
  `pro_id` int(15) NOT NULL,
  `u_id` varchar(15) NOT NULL,
  `u_pro` varchar(30) DEFAULT NULL,
  `u_perform` varchar(30) DEFAULT NULL,
  `u_date` text,
  `u_report` text,
  `u_notes` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `u_procedure`
--

INSERT INTO `u_procedure` (`pro_id`, `u_id`, `u_pro`, `u_perform`, `u_date`, `u_report`, `u_notes`) VALUES
(1, '668872716333', 'Gujarat', 'harry', '0000-00-00', ' 1.PNG', '                                                 '),
(2, '720599171114', 'Eye Number Removal', 'Natradeep eye hospital', '02/12/2020', ' ', '                                                 ');

-- --------------------------------------------------------

--
-- Table structure for table `u_respiratoryrate`
--

CREATE TABLE `u_respiratoryrate` (
  `rr_id` int(15) NOT NULL,
  `u_id` varchar(15) NOT NULL,
  `result` varchar(20) DEFAULT NULL,
  `udate` text,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `u_respiratoryrate`
--

INSERT INTO `u_respiratoryrate` (`rr_id`, `u_id`, `result`, `udate`, `notes`) VALUES
(1, '720599171114', '60', '04/01/2020', '                                                 '),
(2, '720599171114', '60', '20/04/2020', '                                                 ');

-- --------------------------------------------------------

--
-- Table structure for table `u_spo2`
--

CREATE TABLE `u_spo2` (
  `sp_id` int(15) NOT NULL,
  `u_id` varchar(15) NOT NULL,
  `result` varchar(20) DEFAULT NULL,
  `udate` text,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `u_spo2`
--

INSERT INTO `u_spo2` (`sp_id`, `u_id`, `result`, `udate`, `notes`) VALUES
(1, '668872716333', '45', '0000-00-00', 'tysm               '),
(2, '720599171114', '80', '06/17/2019', '                                                 ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `clinic_info`
--
ALTER TABLE `clinic_info`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `disease`
--
ALTER TABLE `disease`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doc_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `doc_info`
--
ALTER TABLE `doc_info`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `laboratory`
--
ALTER TABLE `laboratory`
  ADD PRIMARY KEY (`lab_doc_id`);

--
-- Indexes for table `lab_test`
--
ALTER TABLE `lab_test`
  ADD PRIMARY KEY (`test_id`),
  ADD KEY `u_case_id` (`u_case_id`);

--
-- Indexes for table `pharmacy`
--
ALTER TABLE `pharmacy`
  ADD PRIMARY KEY (`ph_id`),
  ADD KEY `u_case_id` (`u_case_id`);

--
-- Indexes for table `pharm_reg`
--
ALTER TABLE `pharm_reg`
  ADD PRIMARY KEY (`ph_id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`pre_id`),
  ADD KEY `u_case_id` (`u_case_id`);

--
-- Indexes for table `u_allergy`
--
ALTER TABLE `u_allergy`
  ADD PRIMARY KEY (`allergy_id`);

--
-- Indexes for table `u_bloodglucose`
--
ALTER TABLE `u_bloodglucose`
  ADD PRIMARY KEY (`bg_id`);

--
-- Indexes for table `u_bloodpressure`
--
ALTER TABLE `u_bloodpressure`
  ADD PRIMARY KEY (`bp_id`);

--
-- Indexes for table `u_bmi`
--
ALTER TABLE `u_bmi`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `u_bodytemperature`
--
ALTER TABLE `u_bodytemperature`
  ADD PRIMARY KEY (`bt_id`);

--
-- Indexes for table `u_case`
--
ALTER TABLE `u_case`
  ADD PRIMARY KEY (`u_case_id`),
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `u_eme_info`
--
ALTER TABLE `u_eme_info`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `u_gen_info`
--
ALTER TABLE `u_gen_info`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `u_health_gen_info`
--
ALTER TABLE `u_health_gen_info`
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `u_heartrate`
--
ALTER TABLE `u_heartrate`
  ADD PRIMARY KEY (`hr_id`);

--
-- Indexes for table `u_immunization`
--
ALTER TABLE `u_immunization`
  ADD PRIMARY KEY (`imm_id`);

--
-- Indexes for table `u_labtest`
--
ALTER TABLE `u_labtest`
  ADD PRIMARY KEY (`lab_id`);

--
-- Indexes for table `u_medication`
--
ALTER TABLE `u_medication`
  ADD PRIMARY KEY (`med_id`);

--
-- Indexes for table `u_prescription`
--
ALTER TABLE `u_prescription`
  ADD PRIMARY KEY (`pres_id`);

--
-- Indexes for table `u_problem`
--
ALTER TABLE `u_problem`
  ADD PRIMARY KEY (`pr_id`);

--
-- Indexes for table `u_procedure`
--
ALTER TABLE `u_procedure`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `u_respiratoryrate`
--
ALTER TABLE `u_respiratoryrate`
  ADD PRIMARY KEY (`rr_id`);

--
-- Indexes for table `u_spo2`
--
ALTER TABLE `u_spo2`
  ADD PRIMARY KEY (`sp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `clinic_info`
--
ALTER TABLE `clinic_info`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `disease`
--
ALTER TABLE `disease`
  MODIFY `d_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `doc_info`
--
ALTER TABLE `doc_info`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `laboratory`
--
ALTER TABLE `laboratory`
  MODIFY `lab_doc_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT for table `lab_test`
--
ALTER TABLE `lab_test`
  MODIFY `test_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `pharmacy`
--
ALTER TABLE `pharmacy`
  MODIFY `ph_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `pharm_reg`
--
ALTER TABLE `pharm_reg`
  MODIFY `ph_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `pre_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `u_allergy`
--
ALTER TABLE `u_allergy`
  MODIFY `allergy_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `u_bloodglucose`
--
ALTER TABLE `u_bloodglucose`
  MODIFY `bg_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `u_bloodpressure`
--
ALTER TABLE `u_bloodpressure`
  MODIFY `bp_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `u_bmi`
--
ALTER TABLE `u_bmi`
  MODIFY `b_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `u_bodytemperature`
--
ALTER TABLE `u_bodytemperature`
  MODIFY `bt_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `u_case`
--
ALTER TABLE `u_case`
  MODIFY `u_case_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
--
-- AUTO_INCREMENT for table `u_eme_info`
--
ALTER TABLE `u_eme_info`
  MODIFY `e_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `u_heartrate`
--
ALTER TABLE `u_heartrate`
  MODIFY `hr_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `u_immunization`
--
ALTER TABLE `u_immunization`
  MODIFY `imm_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `u_labtest`
--
ALTER TABLE `u_labtest`
  MODIFY `lab_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `u_medication`
--
ALTER TABLE `u_medication`
  MODIFY `med_id` int(15) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `u_prescription`
--
ALTER TABLE `u_prescription`
  MODIFY `pres_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `u_problem`
--
ALTER TABLE `u_problem`
  MODIFY `pr_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `u_procedure`
--
ALTER TABLE `u_procedure`
  MODIFY `pro_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `u_respiratoryrate`
--
ALTER TABLE `u_respiratoryrate`
  MODIFY `rr_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `u_spo2`
--
ALTER TABLE `u_spo2`
  MODIFY `sp_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `clinic_info`
--
ALTER TABLE `clinic_info`
  ADD CONSTRAINT `clinic_info_ibfk_1` FOREIGN KEY (`doc_id`) REFERENCES `doctors` (`doc_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `doc_info`
--
ALTER TABLE `doc_info`
  ADD CONSTRAINT `doc_info_ibfk_1` FOREIGN KEY (`doc_id`) REFERENCES `doctors` (`doc_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prescription`
--
ALTER TABLE `prescription`
  ADD CONSTRAINT `prescription_ibfk_1` FOREIGN KEY (`u_case_id`) REFERENCES `u_case` (`u_case_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
