

CREATE TABLE `accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_no` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `initial_balance` double DEFAULT NULL,
  `total_balance` double NOT NULL,
  `note` text DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO accounts VALUES("17","45214525489","Admin","20000","20000","","1","1","2024-04-23 14:20:41","2024-04-23 14:20:41");



CREATE TABLE `adjustments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `document` varchar(191) DEFAULT NULL,
  `total_qty` double NOT NULL,
  `item` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO adjustments VALUES("13","adr-20230401-093050","7","","3","1","","2023-04-01 16:30:50","2023-04-01 16:30:50");
INSERT INTO adjustments VALUES("16","adr-20230710-032127","7","","1","1","Unde cillum suscipit","2023-07-10 10:21:27","2023-07-10 10:21:27");



CREATE TABLE `attendances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `employee_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `checkin` varchar(191) NOT NULL,
  `checkout` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `attendances_date_employee_id_checkin_unique` (`date`,`employee_id`,`checkin`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO attendances VALUES("1","2019-01-02","1","1","10:00am","6:30pm","1","","2019-01-02 04:30:50","2019-01-02 04:30:50");
INSERT INTO attendances VALUES("6","2020-02-03","1","1","11:30am","6:00pm","0","","2020-02-03 10:57:30","2020-02-03 10:57:30");
INSERT INTO attendances VALUES("7","2023-07-09","4","1","10:00am","6:00pm","1","Test","2023-07-09 10:26:10","2023-07-09 10:26:10");



CREATE TABLE `billers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `company_name` varchar(191) NOT NULL,
  `vat_number` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `phone_number` varchar(191) NOT NULL,
  `address` varchar(191) NOT NULL,
  `city` varchar(191) NOT NULL,
  `state` varchar(191) DEFAULT NULL,
  `postal_code` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO billers VALUES("1","yousuf","aks.jpg","aks","31123","yousuf@kds.com","442343324","halishahar","chittagong","","","sdgs","1","2018-05-12 22:49:30","2019-03-02 06:20:38");
INSERT INTO billers VALUES("2","tariq","","big tree","","tariq@bigtree.com","321312","khulshi","chittagong","","","","1","2018-05-12 22:57:54","2018-06-15 01:07:11");
INSERT INTO billers VALUES("3","test","","test","","test@test.com","3211","erewrwqre","afsf","","","","0","2018-05-30 03:38:58","2018-05-30 03:39:57");
INSERT INTO billers VALUES("5","modon","mogaTel.jpg","mogaTel","","modon@gmail.com","32321","nasirabad","chittagong","","","bd","1","2018-09-01 04:59:54","2018-10-07 03:35:51");
INSERT INTO billers VALUES("6","a","","a","","a@a.com","q","q","q","","","","0","2018-10-07 03:33:39","2018-10-07 03:34:18");
INSERT INTO billers VALUES("7","a","","a","","a@a.com","a","a","a","","","","0","2018-10-07 03:34:36","2018-10-07 03:36:07");
INSERT INTO billers VALUES("8","x","20230710015706.jpg","x","","x@x.com","x","x","x","","","","1","2019-03-18 12:02:42","2023-07-10 08:57:06");
INSERT INTO billers VALUES("22","asdad345","","ssdfsfs","","ashfaqdev.php@gmail.com","5353453","dsdsa","SFSDFSDF","","","","0","2023-05-03 07:21:51","2023-05-06 11:00:20");
INSERT INTO billers VALUES("23","Test","20230710015718.jpg","lioncoders","5534","irfanchowdhury80@gmail.com","654654","hfghg","hfghfg","fghfgh","6546","Bangladesh","1","2023-07-09 11:26:55","2023-07-10 08:57:18");
INSERT INTO billers VALUES("24","Regina Velazquez","20230710015551.jpg","Adkins Dale Inc","757","camezyryl@mailinator.com","+1 (917) 298-3092","Impedit adipisicing","Quas eius aperiam ni","Qui esse saepe illum","Laboris consequat C","Corporis aperiam non","0","2023-07-10 08:52:45","2023-07-10 08:56:45");



CREATE TABLE `brands` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO brands VALUES("3","HP","HP.jpg","1","2018-05-12 10:06:14","2019-03-02 06:32:21");
INSERT INTO brands VALUES("4","samsung","samsung.jpg","1","2018-05-12 10:08:41","2018-07-04 04:38:37");
INSERT INTO brands VALUES("5","Apple","Apple.jpg","1","2018-09-01 00:34:49","2018-12-06 04:05:38");
INSERT INTO brands VALUES("6","jjjj","20201019093419.jpg","0","2020-10-19 16:33:52","2020-10-19 16:35:58");
INSERT INTO brands VALUES("7","Lotto","","1","2020-11-16 05:13:41","2020-11-16 05:13:41");
INSERT INTO brands VALUES("8","cocacola","","0","2022-01-12 14:26:22","2022-01-12 14:26:30");
INSERT INTO brands VALUES("9","pepsi","20220112072659.jpg","0","2022-01-12 14:26:59","2022-01-12 14:27:07");



CREATE TABLE `cash_registers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cash_in_hand` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO cash_registers VALUES("8","100000","47","7","0","2024-04-22 08:09:06","2024-04-23 13:10:52");
INSERT INTO cash_registers VALUES("9","2000","47","7","0","2024-04-23 06:29:01","2024-04-23 13:11:06");
INSERT INTO cash_registers VALUES("10","2000","47","7","0","2024-04-23 06:29:18","2024-04-23 13:11:29");
INSERT INTO cash_registers VALUES("11","10000","47","7","1","2024-04-23 14:14:19","2024-04-23 14:14:19");
INSERT INTO cash_registers VALUES("12","10000","48","7","1","2024-04-30 03:12:06","2024-04-30 03:12:06");



CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `woocommerce_category_id` int(11) DEFAULT NULL,
  `is_sync_disable` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO categories VALUES("30","Mens","","","0","","","","2024-04-29 08:14:01");
INSERT INTO categories VALUES("31","Womens","","","0","","","","2024-04-29 08:15:03");
INSERT INTO categories VALUES("32","Mens","","","0","","","","2024-04-29 08:14:50");
INSERT INTO categories VALUES("33","Mouse","20240429081422.png","","0","","","","2024-04-29 08:14:54");
INSERT INTO categories VALUES("34","T-Shirts","","32","0","","","","2024-04-29 08:14:59");
INSERT INTO categories VALUES("35","Electronic","20240430025137.jpg","","1","36","","","2024-04-30 03:08:08");



CREATE TABLE `coupons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `amount` double NOT NULL,
  `minimum_amount` double DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  `expired_date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO coupons VALUES("1","sonar bangla","percentage","20","0","100","4","2020-11-19","1","1","2018-10-25 23:38:50","2020-11-18 01:52:39");
INSERT INTO coupons VALUES("2","i love bangladesh","fixed","200","1000","50","1","2018-12-31","1","1","2018-10-27 03:59:26","2019-03-02 06:46:48");



CREATE TABLE `couriers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO couriers VALUES("1","abcd","03323772852","Karachi, Pakistan","0","2024-05-01 02:26:44","2024-05-02 01:55:38");



CREATE TABLE `currencies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `code` varchar(191) NOT NULL,
  `exchange_rate` double NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO currencies VALUES("1","US Dollar","USD","1212","0","2020-11-01 01:22:58","2024-04-28 07:48:37");
INSERT INTO currencies VALUES("2","Euro","Euro","0.95","0","2020-11-01 02:29:12","2024-04-28 07:48:43");
INSERT INTO currencies VALUES("3","Pakistani Rupee","PKR","277","1","2024-04-28 07:47:38","2024-05-05 17:25:06");
INSERT INTO currencies VALUES("4","US Dollar","USD","1","1","2024-05-05 17:24:43","2024-05-05 17:25:13");



CREATE TABLE `custom_fields` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `belongs_to` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `default_value` text DEFAULT NULL,
  `option_value` text DEFAULT NULL,
  `grid_value` int(11) NOT NULL,
  `is_table` tinyint(1) NOT NULL,
  `is_invoice` tinyint(1) NOT NULL,
  `is_required` tinyint(1) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `is_disable` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO custom_fields VALUES("1","sale","Test","text","Test","","3","1","0","1","0","0","2023-07-11 07:02:46","2024-04-23 21:23:18");



CREATE TABLE `customer_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `percentage` varchar(191) NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO customer_groups VALUES("1","general","0","1","2018-05-12 09:09:36","2019-03-02 07:01:35");
INSERT INTO customer_groups VALUES("2","distributor","-10","1","2018-05-12 09:12:14","2019-03-02 07:02:12");
INSERT INTO customer_groups VALUES("3","reseller","5","1","2018-05-12 09:12:26","2018-05-30 02:18:14");
INSERT INTO customer_groups VALUES("4","test","12","0","2018-05-30 02:17:16","2018-05-30 02:17:57");
INSERT INTO customer_groups VALUES("5","test","0","0","2018-08-03 10:10:27","2018-08-03 10:10:34");



CREATE TABLE `customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `company_name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone_number` varchar(191) NOT NULL,
  `tax_no` varchar(191) DEFAULT NULL,
  `address` varchar(191) NOT NULL,
  `city` varchar(191) NOT NULL,
  `state` varchar(191) DEFAULT NULL,
  `postal_code` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `points` double DEFAULT NULL,
  `deposit` double DEFAULT NULL,
  `expense` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO customers VALUES("45","1","","Sufiyan Ahmed","","sufiyankhanzada1254@gmail.com","03461351500","","Hyderabad ","hyderabad","SD","710000","PK","6","","","1","2024-04-22 08:10:38","2024-05-05 16:48:07");
INSERT INTO customers VALUES("46","1","","Walking Customer","Walking Customer","1999chrisaustin@gmail.com","5421366578","","California","california","Alabama","40015","United States","18","","","1","2024-04-23 12:43:46","2024-05-05 16:41:16");



CREATE TABLE `deliveries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `courier_id` int(11) DEFAULT NULL,
  `address` text NOT NULL,
  `delivered_by` varchar(191) DEFAULT NULL,
  `recieved_by` varchar(191) DEFAULT NULL,
  `file` varchar(191) DEFAULT NULL,
  `note` varchar(191) DEFAULT NULL,
  `status` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO deliveries VALUES("1","dr-20180808-044431","1","1","","kajir deuri chittagong bd","abul","dhiman","","Instrument 1","3","2018-08-08 11:44:55","2020-09-26 13:25:39");
INSERT INTO deliveries VALUES("2","dr-20181106-105936","88","1","","mohammadpur dhaka","","","","","2","2018-11-06 05:59:43","2018-11-06 06:10:38");
INSERT INTO deliveries VALUES("3","dr-20181106-111321","79","1","","mohammadpur dhaka","Harun","Amjad","","","3","2018-11-06 06:13:25","2020-09-26 14:22:11");
INSERT INTO deliveries VALUES("5","dr-20211218-113624","354","1","","mohammadpur dhaka","","","","","2","2021-12-18 06:36:30","2021-12-18 06:36:30");
INSERT INTO deliveries VALUES("7","dr-20230708-043511","473","1","","mohammadpur dhaka","irfan","juhair","dr-20230708-043511.png","test","1","2023-07-08 11:35:55","2023-07-08 11:35:55");



CREATE TABLE `departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO departments VALUES("1","Sale","1","2018-12-27 06:16:47","2018-12-27 11:40:23");
INSERT INTO departments VALUES("2","xyz","1","2018-12-27 11:28:47","2018-12-27 11:28:47");
INSERT INTO departments VALUES("3","Marketing","1","2023-07-09 09:45:13","2023-07-09 09:45:13");
INSERT INTO departments VALUES("4","Kimberly Guy","0","2023-07-10 09:23:34","2023-07-10 09:23:42");
INSERT INTO departments VALUES("5","Test","1","2023-07-11 07:01:18","2023-07-11 07:01:18");



CREATE TABLE `deposits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `customer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO deposits VALUES("1","90","1","1","first deposit","2018-08-25 23:48:23","2018-08-26 02:18:55");
INSERT INTO deposits VALUES("3","100","2","1","","2018-08-26 01:53:16","2018-08-26 22:42:39");
INSERT INTO deposits VALUES("4","50","1","1","","2018-09-04 23:56:19","2018-09-04 23:56:19");
INSERT INTO deposits VALUES("5","50","1","1","","2018-09-10 01:08:40","2018-09-10 01:08:40");
INSERT INTO deposits VALUES("6","100","41","1","","2023-04-29 07:39:32","2023-04-29 07:39:32");
INSERT INTO deposits VALUES("8","50","44","1","test","2023-07-09 11:23:39","2023-07-09 11:23:39");



CREATE TABLE `discount_plan_customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `discount_plan_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO discount_plan_customers VALUES("1","1","1","2022-02-03 13:58:12","2022-02-03 13:58:12");
INSERT INTO discount_plan_customers VALUES("2","1","19","2022-02-03 13:58:12","2022-02-03 13:58:12");
INSERT INTO discount_plan_customers VALUES("3","1","3","2022-12-06 13:07:17","2022-12-06 13:07:17");
INSERT INTO discount_plan_customers VALUES("4","2","21","2023-07-11 06:06:45","2023-07-11 06:06:45");
INSERT INTO discount_plan_customers VALUES("5","2","44","2023-07-11 06:06:45","2023-07-11 06:06:45");



CREATE TABLE `discount_plan_discounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `discount_id` int(11) NOT NULL,
  `discount_plan_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO discount_plan_discounts VALUES("1","1","1","2022-02-03 14:02:17","2022-02-03 14:02:17");



CREATE TABLE `discount_plans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO discount_plans VALUES("1","VIP plan","1","2022-02-03 13:58:12","2022-02-03 13:58:12");
INSERT INTO discount_plans VALUES("2","winter2023","1","2023-07-11 06:06:45","2023-07-11 06:07:27");



CREATE TABLE `discounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `applicable_for` varchar(191) NOT NULL,
  `product_list` longtext DEFAULT NULL,
  `valid_from` date NOT NULL,
  `valid_till` date NOT NULL,
  `type` varchar(191) NOT NULL,
  `value` double NOT NULL,
  `minimum_qty` double NOT NULL,
  `maximum_qty` double NOT NULL,
  `days` varchar(191) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO discounts VALUES("1","10% discount","Specific","5,3","2022-02-03","2023-12-31","percentage","10","2","3","Mon,Tue,Wed,Thu,Fri,Sat,Sun","1","2022-02-03 14:02:17","2023-05-06 15:19:30");



CREATE TABLE `dso_alerts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_info` longtext NOT NULL,
  `number_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `employees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone_number` varchar(191) NOT NULL,
  `department_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `staff_id` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `expense_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO expense_categories VALUES("1","16718342","washing","0","2018-08-16 01:32:48","2024-04-23 13:58:40");
INSERT INTO expense_categories VALUES("2","60128975","electric bill","1","2018-08-16 01:39:18","2018-08-16 01:39:18");
INSERT INTO expense_categories VALUES("3","83954970","test","0","2018-08-16 01:50:28","2018-08-16 01:51:40");
INSERT INTO expense_categories VALUES("4","1234","snacks","0","2018-09-01 03:40:04","2024-04-23 13:58:13");
INSERT INTO expense_categories VALUES("5","test123","Test 123","0","2023-07-09 05:06:14","2024-04-23 13:58:30");
INSERT INTO expense_categories VALUES("6","87211567","Eight Seven","0","2023-07-09 05:06:41","2023-07-09 05:09:34");
INSERT INTO expense_categories VALUES("7","75495","Test 95","0","2023-07-09 05:08:27","2024-04-23 13:58:20");
INSERT INTO expense_categories VALUES("8","52458","Stationary","1","2024-04-23 13:59:02","2024-04-23 13:59:02");



CREATE TABLE `expenses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `amount` double NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO expenses VALUES("58","er-20240501-014907","2","7","17","47","11","9000","","2024-05-01 00:00:00","2024-05-01 01:49:07");



CREATE TABLE `external_services` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `general_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_title` varchar(191) NOT NULL,
  `site_logo` varchar(191) DEFAULT NULL,
  `is_rtl` tinyint(1) DEFAULT NULL,
  `currency` varchar(191) NOT NULL,
  `package_id` int(11) DEFAULT NULL,
  `subscription_type` varchar(255) DEFAULT NULL,
  `staff_access` varchar(191) NOT NULL,
  `without_stock` varchar(255) NOT NULL DEFAULT 'no',
  `date_format` varchar(191) NOT NULL,
  `developed_by` varchar(191) DEFAULT NULL,
  `invoice_format` varchar(191) DEFAULT NULL,
  `decimal` int(11) DEFAULT 2,
  `state` int(11) DEFAULT NULL,
  `theme` varchar(191) NOT NULL,
  `modules` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_position` varchar(191) NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `is_zatca` tinyint(1) DEFAULT NULL,
  `company_name` varchar(191) DEFAULT NULL,
  `vat_registration_number` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO general_settings VALUES("1","Budget Saving Store","20240426033749.png","0","4","","","all","no","d-m-Y","Koderin","standard","2","1","default.css","woocommerce","2018-07-06 07:13:11","2024-05-05 17:25:13","prefix","","0","Budget Saving Store","980980");



CREATE TABLE `gift_card_recharges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gift_card_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO gift_card_recharges VALUES("1","2","100","1","2018-08-25 00:08:29","2018-08-25 00:08:29");
INSERT INTO gift_card_recharges VALUES("2","1","200","1","2018-08-25 00:08:50","2018-08-25 00:08:50");
INSERT INTO gift_card_recharges VALUES("3","1","100","1","2018-09-05 00:50:41","2018-09-05 00:50:41");
INSERT INTO gift_card_recharges VALUES("4","1","50","1","2018-09-05 00:51:38","2018-09-05 00:51:38");
INSERT INTO gift_card_recharges VALUES("5","1","50","1","2018-09-05 00:53:36","2018-09-05 00:53:36");
INSERT INTO gift_card_recharges VALUES("6","2","50","1","2018-09-05 00:54:34","2018-09-05 00:54:34");
INSERT INTO gift_card_recharges VALUES("7","5","10","1","2018-09-30 01:19:48","2018-09-30 01:19:48");
INSERT INTO gift_card_recharges VALUES("8","5","10","1","2018-09-30 01:20:04","2018-09-30 01:20:04");
INSERT INTO gift_card_recharges VALUES("9","2","100","1","2018-10-07 04:13:05","2018-10-07 04:13:05");
INSERT INTO gift_card_recharges VALUES("10","1","200","1","2018-10-07 04:13:39","2018-10-07 04:13:39");
INSERT INTO gift_card_recharges VALUES("11","1","300","1","2018-10-23 01:22:49","2018-10-23 01:22:49");
INSERT INTO gift_card_recharges VALUES("12","2","130","1","2021-02-11 08:36:01","2021-02-11 08:36:01");
INSERT INTO gift_card_recharges VALUES("13","2","155","1","2023-07-08 11:39:25","2023-07-08 11:39:25");



CREATE TABLE `gift_cards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `card_no` varchar(191) NOT NULL,
  `amount` double NOT NULL,
  `expense` double NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `expired_date` date DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `holidays` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `note` text DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO holidays VALUES("1","1","2023-07-09","2023-07-09","Test","1","2023-07-09 10:31:58","2023-07-09 10:31:58");
INSERT INTO holidays VALUES("2","1","2023-07-12","2023-07-14","Gov Holiday","1","2023-07-09 10:32:44","2023-07-09 10:33:49");



CREATE TABLE `hrm_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `checkin` varchar(191) NOT NULL,
  `checkout` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO hrm_settings VALUES("1","10:00am","6:00pm","2019-01-02 03:20:08","2019-01-02 05:20:53");



CREATE TABLE `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO languages VALUES("1","en","2018-07-07 23:59:17","2019-12-24 18:34:20");



CREATE TABLE `mail_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `driver` varchar(191) NOT NULL,
  `host` varchar(191) NOT NULL,
  `port` varchar(191) NOT NULL,
  `from_address` varchar(191) NOT NULL,
  `from_name` varchar(191) NOT NULL,
  `username` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `encryption` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO mail_settings VALUES("2","smtp","smtp.gmail.com","587","irfanchowdhury80@gmail.com","Irfan","irfanchowdhury80@gmail.com","ksmbqskmnzvzxnhx","tls","2023-07-10 10:53:50","2023-07-10 10:53:50");



CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO migrations VALUES("1","2014_10_12_000000_create_users_table","1");
INSERT INTO migrations VALUES("2","2014_10_12_100000_create_password_resets_table","1");
INSERT INTO migrations VALUES("3","2018_02_17_060412_create_categories_table","1");
INSERT INTO migrations VALUES("4","2018_02_20_035727_create_brands_table","1");
INSERT INTO migrations VALUES("5","2018_02_25_100635_create_suppliers_table","1");
INSERT INTO migrations VALUES("6","2018_02_27_101619_create_warehouse_table","1");
INSERT INTO migrations VALUES("7","2018_03_03_040448_create_units_table","1");
INSERT INTO migrations VALUES("8","2018_03_04_041317_create_taxes_table","1");
INSERT INTO migrations VALUES("9","2018_03_10_061915_create_customer_groups_table","1");
INSERT INTO migrations VALUES("10","2018_03_10_090534_create_customers_table","1");
INSERT INTO migrations VALUES("11","2018_03_11_095547_create_billers_table","1");
INSERT INTO migrations VALUES("12","2018_04_05_054401_create_products_table","1");
INSERT INTO migrations VALUES("13","2018_04_06_133606_create_purchases_table","1");
INSERT INTO migrations VALUES("14","2018_04_06_154600_create_product_purchases_table","1");
INSERT INTO migrations VALUES("15","2018_04_06_154915_create_product_warhouse_table","1");
INSERT INTO migrations VALUES("16","2018_04_10_085927_create_sales_table","1");
INSERT INTO migrations VALUES("17","2018_04_10_090133_create_product_sales_table","1");
INSERT INTO migrations VALUES("18","2018_04_10_090254_create_payments_table","1");
INSERT INTO migrations VALUES("19","2018_04_10_090341_create_payment_with_cheque_table","1");
INSERT INTO migrations VALUES("20","2018_04_10_090509_create_payment_with_credit_card_table","1");
INSERT INTO migrations VALUES("21","2018_04_13_121436_create_quotation_table","1");
INSERT INTO migrations VALUES("22","2018_04_13_122324_create_product_quotation_table","1");
INSERT INTO migrations VALUES("23","2018_04_14_121802_create_transfers_table","1");
INSERT INTO migrations VALUES("24","2018_04_14_121913_create_product_transfer_table","1");
INSERT INTO migrations VALUES("25","2018_05_13_082847_add_payment_id_and_change_sale_id_to_payments_table","2");
INSERT INTO migrations VALUES("26","2018_05_13_090906_change_customer_id_to_payment_with_credit_card_table","3");
INSERT INTO migrations VALUES("27","2018_05_20_054532_create_adjustments_table","4");
INSERT INTO migrations VALUES("28","2018_05_20_054859_create_product_adjustments_table","4");
INSERT INTO migrations VALUES("29","2018_05_21_163419_create_returns_table","5");
INSERT INTO migrations VALUES("30","2018_05_21_163443_create_product_returns_table","5");
INSERT INTO migrations VALUES("31","2018_06_02_050905_create_roles_table","6");
INSERT INTO migrations VALUES("32","2018_06_02_073430_add_columns_to_users_table","7");
INSERT INTO migrations VALUES("33","2018_06_03_053738_create_permission_tables","8");
INSERT INTO migrations VALUES("36","2018_06_21_063736_create_pos_setting_table","9");
INSERT INTO migrations VALUES("37","2018_06_21_094155_add_user_id_to_sales_table","10");
INSERT INTO migrations VALUES("38","2018_06_21_101529_add_user_id_to_purchases_table","11");
INSERT INTO migrations VALUES("39","2018_06_21_103512_add_user_id_to_transfers_table","12");
INSERT INTO migrations VALUES("40","2018_06_23_061058_add_user_id_to_quotations_table","13");
INSERT INTO migrations VALUES("41","2018_06_23_082427_add_is_deleted_to_users_table","14");
INSERT INTO migrations VALUES("42","2018_06_25_043308_change_email_to_users_table","15");
INSERT INTO migrations VALUES("43","2018_07_06_115449_create_general_settings_table","16");
INSERT INTO migrations VALUES("44","2018_07_08_043944_create_languages_table","17");
INSERT INTO migrations VALUES("45","2018_07_11_102144_add_user_id_to_returns_table","18");
INSERT INTO migrations VALUES("46","2018_07_11_102334_add_user_id_to_payments_table","18");
INSERT INTO migrations VALUES("47","2018_07_22_130541_add_digital_to_products_table","19");
INSERT INTO migrations VALUES("49","2018_07_24_154250_create_deliveries_table","20");
INSERT INTO migrations VALUES("50","2018_08_16_053336_create_expense_categories_table","21");
INSERT INTO migrations VALUES("51","2018_08_17_115415_create_expenses_table","22");
INSERT INTO migrations VALUES("55","2018_08_18_050418_create_gift_cards_table","23");
INSERT INTO migrations VALUES("56","2018_08_19_063119_create_payment_with_gift_card_table","24");
INSERT INTO migrations VALUES("57","2018_08_25_042333_create_gift_card_recharges_table","25");
INSERT INTO migrations VALUES("58","2018_08_25_101354_add_deposit_expense_to_customers_table","26");
INSERT INTO migrations VALUES("59","2018_08_26_043801_create_deposits_table","27");
INSERT INTO migrations VALUES("60","2018_09_02_044042_add_keybord_active_to_pos_setting_table","28");
INSERT INTO migrations VALUES("61","2018_09_09_092713_create_payment_with_paypal_table","29");
INSERT INTO migrations VALUES("62","2018_09_10_051254_add_currency_to_general_settings_table","30");
INSERT INTO migrations VALUES("63","2018_10_22_084118_add_biller_and_store_id_to_users_table","31");
INSERT INTO migrations VALUES("65","2018_10_26_034927_create_coupons_table","32");
INSERT INTO migrations VALUES("66","2018_10_27_090857_add_coupon_to_sales_table","33");
INSERT INTO migrations VALUES("67","2018_11_07_070155_add_currency_position_to_general_settings_table","34");
INSERT INTO migrations VALUES("68","2018_11_19_094650_add_combo_to_products_table","35");
INSERT INTO migrations VALUES("69","2018_12_09_043712_create_accounts_table","36");
INSERT INTO migrations VALUES("70","2018_12_17_112253_add_is_default_to_accounts_table","37");
INSERT INTO migrations VALUES("71","2018_12_19_103941_add_account_id_to_payments_table","38");
INSERT INTO migrations VALUES("72","2018_12_20_065900_add_account_id_to_expenses_table","39");
INSERT INTO migrations VALUES("73","2018_12_20_082753_add_account_id_to_returns_table","40");
INSERT INTO migrations VALUES("74","2018_12_26_064330_create_return_purchases_table","41");
INSERT INTO migrations VALUES("75","2018_12_26_144210_create_purchase_product_return_table","42");
INSERT INTO migrations VALUES("76","2018_12_26_144708_create_purchase_product_return_table","43");
INSERT INTO migrations VALUES("77","2018_12_27_110018_create_departments_table","44");
INSERT INTO migrations VALUES("78","2018_12_30_054844_create_employees_table","45");
INSERT INTO migrations VALUES("79","2018_12_31_125210_create_payrolls_table","46");
INSERT INTO migrations VALUES("80","2018_12_31_150446_add_department_id_to_employees_table","47");
INSERT INTO migrations VALUES("81","2019_01_01_062708_add_user_id_to_expenses_table","48");
INSERT INTO migrations VALUES("82","2019_01_02_075644_create_hrm_settings_table","49");
INSERT INTO migrations VALUES("83","2019_01_02_090334_create_attendances_table","50");
INSERT INTO migrations VALUES("84","2019_01_27_160956_add_three_columns_to_general_settings_table","51");
INSERT INTO migrations VALUES("85","2019_02_15_183303_create_stock_counts_table","52");
INSERT INTO migrations VALUES("86","2019_02_17_101604_add_is_adjusted_to_stock_counts_table","53");
INSERT INTO migrations VALUES("87","2019_04_13_101707_add_tax_no_to_customers_table","54");
INSERT INTO migrations VALUES("89","2019_10_14_111455_create_holidays_table","55");
INSERT INTO migrations VALUES("90","2019_11_13_145619_add_is_variant_to_products_table","56");
INSERT INTO migrations VALUES("91","2019_11_13_150206_create_product_variants_table","57");
INSERT INTO migrations VALUES("92","2019_11_13_153828_create_variants_table","57");
INSERT INTO migrations VALUES("93","2019_11_25_134041_add_qty_to_product_variants_table","58");
INSERT INTO migrations VALUES("94","2019_11_25_134922_add_variant_id_to_product_purchases_table","58");
INSERT INTO migrations VALUES("95","2019_11_25_145341_add_variant_id_to_product_warehouse_table","58");
INSERT INTO migrations VALUES("96","2019_11_29_182201_add_variant_id_to_product_sales_table","59");
INSERT INTO migrations VALUES("97","2019_12_04_121311_add_variant_id_to_product_quotation_table","60");
INSERT INTO migrations VALUES("98","2019_12_05_123802_add_variant_id_to_product_transfer_table","61");
INSERT INTO migrations VALUES("100","2019_12_08_114954_add_variant_id_to_product_returns_table","62");
INSERT INTO migrations VALUES("101","2019_12_08_203146_add_variant_id_to_purchase_product_return_table","63");
INSERT INTO migrations VALUES("102","2020_02_28_103340_create_money_transfers_table","64");
INSERT INTO migrations VALUES("103","2020_07_01_193151_add_image_to_categories_table","65");
INSERT INTO migrations VALUES("105","2020_09_26_130426_add_user_id_to_deliveries_table","66");
INSERT INTO migrations VALUES("107","2020_10_11_125457_create_cash_registers_table","67");
INSERT INTO migrations VALUES("108","2020_10_13_155019_add_cash_register_id_to_sales_table","68");
INSERT INTO migrations VALUES("109","2020_10_13_172624_add_cash_register_id_to_returns_table","69");
INSERT INTO migrations VALUES("110","2020_10_17_212338_add_cash_register_id_to_payments_table","70");
INSERT INTO migrations VALUES("111","2020_10_18_124200_add_cash_register_id_to_expenses_table","71");
INSERT INTO migrations VALUES("112","2020_10_21_121632_add_developed_by_to_general_settings_table","72");
INSERT INTO migrations VALUES("113","2019_08_19_000000_create_failed_jobs_table","73");
INSERT INTO migrations VALUES("114","2020_10_30_135557_create_notifications_table","73");
INSERT INTO migrations VALUES("115","2020_11_01_044954_create_currencies_table","74");
INSERT INTO migrations VALUES("116","2020_11_01_140736_add_price_to_product_warehouse_table","75");
INSERT INTO migrations VALUES("117","2020_11_02_050633_add_is_diff_price_to_products_table","76");
INSERT INTO migrations VALUES("118","2020_11_09_055222_add_user_id_to_customers_table","77");
INSERT INTO migrations VALUES("119","2020_11_17_054806_add_invoice_format_to_general_settings_table","78");
INSERT INTO migrations VALUES("120","2021_02_10_074859_add_variant_id_to_product_adjustments_table","79");
INSERT INTO migrations VALUES("121","2021_03_07_093606_create_product_batches_table","80");
INSERT INTO migrations VALUES("122","2021_03_07_093759_add_product_batch_id_to_product_warehouse_table","80");
INSERT INTO migrations VALUES("123","2021_03_07_093900_add_product_batch_id_to_product_purchases_table","80");
INSERT INTO migrations VALUES("124","2021_03_11_132603_add_product_batch_id_to_product_sales_table","81");
INSERT INTO migrations VALUES("127","2021_03_25_125421_add_is_batch_to_products_table","82");
INSERT INTO migrations VALUES("128","2021_05_19_120127_add_product_batch_id_to_product_returns_table","82");
INSERT INTO migrations VALUES("130","2021_05_22_105611_add_product_batch_id_to_purchase_product_return_table","83");
INSERT INTO migrations VALUES("131","2021_05_23_124848_add_product_batch_id_to_product_transfer_table","84");
INSERT INTO migrations VALUES("132","2021_05_26_153106_add_product_batch_id_to_product_quotation_table","85");
INSERT INTO migrations VALUES("133","2021_06_08_213007_create_reward_point_settings_table","86");
INSERT INTO migrations VALUES("134","2021_06_16_104155_add_points_to_customers_table","87");
INSERT INTO migrations VALUES("135","2021_06_17_101057_add_used_points_to_payments_table","88");
INSERT INTO migrations VALUES("136","2021_07_06_132716_add_variant_list_to_products_table","89");
INSERT INTO migrations VALUES("137","2021_09_27_161141_add_is_imei_to_products_table","90");
INSERT INTO migrations VALUES("138","2021_09_28_170052_add_imei_number_to_product_warehouse_table","91");
INSERT INTO migrations VALUES("139","2021_09_28_170126_add_imei_number_to_product_purchases_table","91");
INSERT INTO migrations VALUES("140","2021_10_03_170652_add_imei_number_to_product_sales_table","92");
INSERT INTO migrations VALUES("141","2021_10_10_145214_add_imei_number_to_product_returns_table","93");
INSERT INTO migrations VALUES("142","2021_10_11_104504_add_imei_number_to_product_transfer_table","94");
INSERT INTO migrations VALUES("143","2021_10_12_160107_add_imei_number_to_purchase_product_return_table","95");
INSERT INTO migrations VALUES("144","2021_10_12_205146_add_is_rtl_to_general_settings_table","96");
INSERT INTO migrations VALUES("145","2021_10_23_142451_add_is_approve_to_payments_table","97");
INSERT INTO migrations VALUES("146","2022_01_13_191242_create_discount_plans_table","97");
INSERT INTO migrations VALUES("147","2022_01_14_174318_create_discount_plan_customers_table","97");
INSERT INTO migrations VALUES("148","2022_01_14_202439_create_discounts_table","98");
INSERT INTO migrations VALUES("149","2022_01_16_153506_create_discount_plan_discounts_table","98");
INSERT INTO migrations VALUES("150","2022_02_05_174210_add_order_discount_type_and_value_to_sales_table","99");
INSERT INTO migrations VALUES("154","2022_05_26_195506_add_daily_sale_objective_to_products_table","100");
INSERT INTO migrations VALUES("155","2022_05_28_104209_create_dso_alerts_table","101");
INSERT INTO migrations VALUES("156","2022_06_01_112100_add_is_embeded_to_products_table","102");
INSERT INTO migrations VALUES("157","2022_06_14_130505_add_sale_id_to_returns_table","103");
INSERT INTO migrations VALUES("159","2022_07_19_115504_add_variant_data_to_products_table","104");
INSERT INTO migrations VALUES("160","2022_07_25_194300_add_additional_cost_to_product_variants_table","104");
INSERT INTO migrations VALUES("161","2022_09_04_195610_add_purchase_id_to_return_purchases_table","105");
INSERT INTO migrations VALUES("162","2023_01_18_123842_alter_table_pos_setting","106");
INSERT INTO migrations VALUES("164","2023_01_18_125040_alter_table_general_settings","107");
INSERT INTO migrations VALUES("165","2023_01_18_133701_alter_table_pos_setting","108");
INSERT INTO migrations VALUES("166","2023_01_25_145309_add_expiry_date_to_general_settings_table","109");
INSERT INTO migrations VALUES("167","2023_02_23_125656_alter_table_sales","110");
INSERT INTO migrations VALUES("168","2023_02_26_124100_add_package_id_to_general_settings_table","111");
INSERT INTO migrations VALUES("169","2023_03_04_120325_create_custom_fields_table","111");
INSERT INTO migrations VALUES("170","2023_03_22_174352_add_currency_id_and_exchange_rate_to_returns_table","112");
INSERT INTO migrations VALUES("171","2023_03_27_114320_add_currency_id_and_exchange_rate_to_purchases_table","113");
INSERT INTO migrations VALUES("172","2023_03_27_132747_add_currency_id_and_exchange_rate_to_return_purchases_table","114");
INSERT INTO migrations VALUES("173","2023_04_25_150236_create_mail_settings_table","115");
INSERT INTO migrations VALUES("174","2023_05_13_125424_add_zatca_to_general_settings_table","116");
INSERT INTO migrations VALUES("175","2023_05_28_155540_create_tables_table","117");
INSERT INTO migrations VALUES("176","2023_05_29_115039_add_is_table_to_pos_setting_table","117");
INSERT INTO migrations VALUES("177","2023_05_29_115301_add_table_id_to_sales_table","117");
INSERT INTO migrations VALUES("178","2023_05_31_165049_add_queue_no_to_sales_table","117");
INSERT INTO migrations VALUES("179","2023_07_23_160254_create_couriers_table","118");
INSERT INTO migrations VALUES("180","2023_07_23_174343_add_courier_id_to_deliveries_table","118");
INSERT INTO migrations VALUES("181","2023_08_12_124016_add_staff_id_to_employees_table","118");
INSERT INTO migrations VALUES("182","2023_08_14_142608_add_is_active_to_currencies_table","118");
INSERT INTO migrations VALUES("183","2023_08_24_130203_change_columns_to_attendances_table","118");
INSERT INTO migrations VALUES("184","2023_09_10_134503_add_without_stock_to_general_settings_table","119");
INSERT INTO migrations VALUES("185","2023_09_26_211542_add_modules_to_general_settings_table","119");
INSERT INTO migrations VALUES("186","2023_10_15_124306_add_return_qty_to_product_sales_table","119");
INSERT INTO migrations VALUES("187","2023_03_14_174658_add_subscription_type_to_general_setting_table","120");
INSERT INTO migrations VALUES("188","2023_12_03_235606_crete_external_services_table","120");
INSERT INTO migrations VALUES("189","2024_02_04_131826_add_unit_cost_to_product_adjustments_table","120");
INSERT INTO migrations VALUES("190","2024_02_13_173126_change_modules_to_general_settings_table","120");
INSERT INTO migrations VALUES("191","2023_03_09_114030_create_woocommerce_sync_logs_table","121");
INSERT INTO migrations VALUES("192","2023_03_14_114324_create_woocommerce_settings_table","121");
INSERT INTO migrations VALUES("193","2023_03_18_141537_add_woocommerce_category_id_to_categories_table","121");
INSERT INTO migrations VALUES("194","2023_03_20_214553_add_column_for_woocommerce_to_products_table","121");
INSERT INTO migrations VALUES("195","2023_03_20_214563_add_woocommerce_tax_id_to_taxes_table","121");
INSERT INTO migrations VALUES("196","2023_03_20_214565_add_woocommerce_order_id_to_sales_table","121");
INSERT INTO migrations VALUES("197","2023_08_01_134406_add_is_sync_disable_to_categories_table","121");
INSERT INTO migrations VALUES("198","2023_08_01_135252_add_product_status_to_woocommerce_settings_table","121");



CREATE TABLE `money_transfers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `from_account_id` int(11) NOT NULL,
  `to_account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO money_transfers VALUES("2","mtr-20200228-071852","1","3","100","2020-02-28 14:18:52","2020-02-28 14:18:52");
INSERT INTO money_transfers VALUES("3","mtr-20221128-120014","5","1","10000","2022-11-28 07:00:14","2022-11-28 07:00:14");
INSERT INTO money_transfers VALUES("4","mtr-20230709-010712","1","6","500","2023-07-09 08:07:12","2023-07-09 08:07:12");



CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(191) NOT NULL,
  `notifiable_type` varchar(191) NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `payment_with_cheque` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `cheque_no` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO payment_with_cheque VALUES("1","19","23425235235","2018-07-01 04:09:48","2018-07-01 04:09:48");
INSERT INTO payment_with_cheque VALUES("2","24","3123123123","2018-07-10 02:21:32","2018-07-10 02:21:32");
INSERT INTO payment_with_cheque VALUES("3","31","767867678","2018-08-08 11:36:22","2018-08-08 11:36:22");
INSERT INTO payment_with_cheque VALUES("4","34","3123412","2018-08-09 00:55:54","2018-08-09 00:55:54");
INSERT INTO payment_with_cheque VALUES("5","35","7765","2018-08-09 01:32:14","2018-08-09 01:32:14");
INSERT INTO payment_with_cheque VALUES("6","44","3124142412","2018-08-30 04:07:18","2018-08-30 04:07:18");
INSERT INTO payment_with_cheque VALUES("7","51","6576764646","2018-09-03 05:08:21","2018-09-03 05:08:21");
INSERT INTO payment_with_cheque VALUES("8","53","111111111","2018-09-03 05:15:24","2018-09-03 05:15:24");
INSERT INTO payment_with_cheque VALUES("9","79","1111","2018-10-06 01:51:55","2018-10-06 01:51:55");
INSERT INTO payment_with_cheque VALUES("10","147","221133","2018-12-04 01:58:35","2018-12-04 01:58:35");
INSERT INTO payment_with_cheque VALUES("11","175","1111","2019-02-07 07:38:23","2019-02-07 07:38:23");
INSERT INTO payment_with_cheque VALUES("12","176","1111","2019-02-07 07:54:59","2019-02-07 07:54:59");
INSERT INTO payment_with_cheque VALUES("13","178","420","2019-02-07 08:07:04","2019-02-07 08:07:04");
INSERT INTO payment_with_cheque VALUES("14","216","12344321","2019-11-11 05:39:11","2019-11-11 05:39:11");
INSERT INTO payment_with_cheque VALUES("15","295","111122222","2020-10-18 06:17:24","2020-10-18 06:17:24");
INSERT INTO payment_with_cheque VALUES("16","406","13123123","2022-03-11 16:15:29","2022-03-11 16:15:29");



CREATE TABLE `payment_with_credit_card` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_stripe_id` varchar(191) DEFAULT NULL,
  `charge_id` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO payment_with_credit_card VALUES("4","294","1","cus_IDw8z9yJZn4qH3","ch_1HdUGJKwOmA8HLXePiqphlky","2020-10-18 06:16:55","2020-10-18 06:16:55");



CREATE TABLE `payment_with_gift_card` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `gift_card_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO payment_with_gift_card VALUES("1","36","2","2018-08-24 22:48:36","2018-08-25 01:57:35");
INSERT INTO payment_with_gift_card VALUES("4","39","1","2018-08-25 03:36:34","2018-08-25 03:36:34");
INSERT INTO payment_with_gift_card VALUES("6","50","1","2018-09-03 00:01:38","2018-09-03 00:01:38");
INSERT INTO payment_with_gift_card VALUES("8","293","1","2020-10-18 06:14:26","2020-10-18 06:14:26");



CREATE TABLE `payment_with_paypal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `transaction_id` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_reference` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `used_points` double DEFAULT NULL,
  `change` double NOT NULL,
  `paying_method` varchar(191) NOT NULL,
  `payment_note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=523 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO payments VALUES("510","spr-20240423-072126","47","","485","11","17","900","","0","Cash","","2024-04-23 14:21:26","2024-04-23 14:21:26");
INSERT INTO payments VALUES("511","spr-20240426-021553","47","","486","11","17","44","","0","Cash","","2024-04-26 02:15:53","2024-04-26 02:15:53");
INSERT INTO payments VALUES("512","spr-20240426-021556","47","","486","11","17","44","","0","Cash","","2024-04-26 02:15:56","2024-04-26 02:15:56");
INSERT INTO payments VALUES("513","spr-20240426-024154","47","","487","11","17","450","","0","Cash","","2024-04-26 02:41:54","2024-04-26 02:41:54");
INSERT INTO payments VALUES("514","ppr-20240430-025328","48","181","","","0","3600","","0","Cash","","2024-04-30 02:53:28","2024-04-30 02:53:28");
INSERT INTO payments VALUES("515","spr-20240430-031346","48","","488","12","17","400","","100","Cash","","2024-04-30 03:13:46","2024-04-30 03:13:46");
INSERT INTO payments VALUES("516","spr-20240430-031715","48","","489","","17","1000","","0","Cash","","2024-04-30 03:17:15","2024-04-30 03:17:15");
INSERT INTO payments VALUES("517","spr-20240430-042635","47","","490","11","17","1800","","0","Cash","","2024-04-30 16:26:35","2024-04-30 16:26:35");
INSERT INTO payments VALUES("518","spr-20240430-050317","47","","491","11","17","200","","0","Credit Card","","2024-04-30 17:03:17","2024-04-30 17:03:17");
INSERT INTO payments VALUES("519","spr-20240430-050533","47","","492","11","17","1200","","0","Cash","","2024-04-30 17:05:33","2024-04-30 17:05:33");
INSERT INTO payments VALUES("521","spr-20240505-044120","47","","493","11","17","125","","175","Points","","2024-05-05 16:41:20","2024-05-05 16:41:20");
INSERT INTO payments VALUES("522","spr-20240505-044810","47","","494","11","17","1500","","500","Points","Thankyou","2024-05-05 16:48:10","2024-05-05 16:48:10");



CREATE TABLE `payrolls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `paying_method` varchar(191) NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO payrolls VALUES("9","payroll-20191204-113802","1","1","1","10000","0","","2019-12-04 18:38:02","2019-12-04 18:38:02");
INSERT INTO payrolls VALUES("10","payroll-20210619-123706","1","1","1","200","0","","2021-06-19 07:37:06","2021-06-19 07:37:06");
INSERT INTO payrolls VALUES("11","payroll-20230709-033102","4","6","1","100","0","test","2023-07-09 10:31:02","2023-07-09 10:31:02");



CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO permissions VALUES("4","products-edit","web","2018-06-03 02:00:09","2018-06-03 02:00:09");
INSERT INTO permissions VALUES("5","products-delete","web","2018-06-03 23:54:22","2018-06-03 23:54:22");
INSERT INTO permissions VALUES("6","products-add","web","2018-06-04 01:34:14","2018-06-04 01:34:14");
INSERT INTO permissions VALUES("7","products-index","web","2018-06-04 04:34:27","2018-06-04 04:34:27");
INSERT INTO permissions VALUES("8","purchases-index","web","2018-06-04 09:03:19","2018-06-04 09:03:19");
INSERT INTO permissions VALUES("9","purchases-add","web","2018-06-04 09:12:25","2018-06-04 09:12:25");
INSERT INTO permissions VALUES("10","purchases-edit","web","2018-06-04 10:47:36","2018-06-04 10:47:36");
INSERT INTO permissions VALUES("11","purchases-delete","web","2018-06-04 10:47:36","2018-06-04 10:47:36");
INSERT INTO permissions VALUES("12","sales-index","web","2018-06-04 11:49:08","2018-06-04 11:49:08");
INSERT INTO permissions VALUES("13","sales-add","web","2018-06-04 11:49:52","2018-06-04 11:49:52");
INSERT INTO permissions VALUES("14","sales-edit","web","2018-06-04 11:49:52","2018-06-04 11:49:52");
INSERT INTO permissions VALUES("15","sales-delete","web","2018-06-04 11:49:53","2018-06-04 11:49:53");
INSERT INTO permissions VALUES("16","quotes-index","web","2018-06-04 23:05:10","2018-06-04 23:05:10");
INSERT INTO permissions VALUES("17","quotes-add","web","2018-06-04 23:05:10","2018-06-04 23:05:10");
INSERT INTO permissions VALUES("18","quotes-edit","web","2018-06-04 23:05:10","2018-06-04 23:05:10");
INSERT INTO permissions VALUES("19","quotes-delete","web","2018-06-04 23:05:10","2018-06-04 23:05:10");
INSERT INTO permissions VALUES("20","transfers-index","web","2018-06-04 23:30:03","2018-06-04 23:30:03");
INSERT INTO permissions VALUES("21","transfers-add","web","2018-06-04 23:30:03","2018-06-04 23:30:03");
INSERT INTO permissions VALUES("22","transfers-edit","web","2018-06-04 23:30:03","2018-06-04 23:30:03");
INSERT INTO permissions VALUES("23","transfers-delete","web","2018-06-04 23:30:03","2018-06-04 23:30:03");
INSERT INTO permissions VALUES("24","returns-index","web","2018-06-04 23:50:24","2018-06-04 23:50:24");
INSERT INTO permissions VALUES("25","returns-add","web","2018-06-04 23:50:24","2018-06-04 23:50:24");
INSERT INTO permissions VALUES("26","returns-edit","web","2018-06-04 23:50:25","2018-06-04 23:50:25");
INSERT INTO permissions VALUES("27","returns-delete","web","2018-06-04 23:50:25","2018-06-04 23:50:25");
INSERT INTO permissions VALUES("28","customers-index","web","2018-06-05 00:15:54","2018-06-05 00:15:54");
INSERT INTO permissions VALUES("29","customers-add","web","2018-06-05 00:15:55","2018-06-05 00:15:55");
INSERT INTO permissions VALUES("30","customers-edit","web","2018-06-05 00:15:55","2018-06-05 00:15:55");
INSERT INTO permissions VALUES("31","customers-delete","web","2018-06-05 00:15:55","2018-06-05 00:15:55");
INSERT INTO permissions VALUES("32","suppliers-index","web","2018-06-05 00:40:12","2018-06-05 00:40:12");
INSERT INTO permissions VALUES("33","suppliers-add","web","2018-06-05 00:40:12","2018-06-05 00:40:12");
INSERT INTO permissions VALUES("34","suppliers-edit","web","2018-06-05 00:40:12","2018-06-05 00:40:12");
INSERT INTO permissions VALUES("35","suppliers-delete","web","2018-06-05 00:40:12","2018-06-05 00:40:12");
INSERT INTO permissions VALUES("36","product-report","web","2018-06-25 00:05:33","2018-06-25 00:05:33");
INSERT INTO permissions VALUES("37","purchase-report","web","2018-06-25 00:24:56","2018-06-25 00:24:56");
INSERT INTO permissions VALUES("38","sale-report","web","2018-06-25 00:33:13","2018-06-25 00:33:13");
INSERT INTO permissions VALUES("39","customer-report","web","2018-06-25 00:36:51","2018-06-25 00:36:51");
INSERT INTO permissions VALUES("40","due-report","web","2018-06-25 00:39:52","2018-06-25 00:39:52");
INSERT INTO permissions VALUES("41","users-index","web","2018-06-25 01:00:10","2018-06-25 01:00:10");
INSERT INTO permissions VALUES("42","users-add","web","2018-06-25 01:00:10","2018-06-25 01:00:10");
INSERT INTO permissions VALUES("43","users-edit","web","2018-06-25 01:01:30","2018-06-25 01:01:30");
INSERT INTO permissions VALUES("44","users-delete","web","2018-06-25 01:01:30","2018-06-25 01:01:30");
INSERT INTO permissions VALUES("45","profit-loss","web","2018-07-14 22:50:05","2018-07-14 22:50:05");
INSERT INTO permissions VALUES("46","best-seller","web","2018-07-14 23:01:38","2018-07-14 23:01:38");
INSERT INTO permissions VALUES("47","daily-sale","web","2018-07-14 23:24:21","2018-07-14 23:24:21");
INSERT INTO permissions VALUES("48","monthly-sale","web","2018-07-14 23:30:41","2018-07-14 23:30:41");
INSERT INTO permissions VALUES("49","daily-purchase","web","2018-07-14 23:36:46","2018-07-14 23:36:46");
INSERT INTO permissions VALUES("50","monthly-purchase","web","2018-07-14 23:48:17","2018-07-14 23:48:17");
INSERT INTO permissions VALUES("51","payment-report","web","2018-07-15 00:10:41","2018-07-15 00:10:41");
INSERT INTO permissions VALUES("52","warehouse-stock-report","web","2018-07-15 00:16:55","2018-07-15 00:16:55");
INSERT INTO permissions VALUES("53","product-qty-alert","web","2018-07-15 00:33:21","2018-07-15 00:33:21");
INSERT INTO permissions VALUES("54","supplier-report","web","2018-07-30 04:00:01","2018-07-30 04:00:01");
INSERT INTO permissions VALUES("55","expenses-index","web","2018-09-05 02:07:10","2018-09-05 02:07:10");
INSERT INTO permissions VALUES("56","expenses-add","web","2018-09-05 02:07:10","2018-09-05 02:07:10");
INSERT INTO permissions VALUES("57","expenses-edit","web","2018-09-05 02:07:10","2018-09-05 02:07:10");
INSERT INTO permissions VALUES("58","expenses-delete","web","2018-09-05 02:07:11","2018-09-05 02:07:11");
INSERT INTO permissions VALUES("59","general_setting","web","2018-10-20 00:10:04","2018-10-20 00:10:04");
INSERT INTO permissions VALUES("60","mail_setting","web","2018-10-20 00:10:04","2018-10-20 00:10:04");
INSERT INTO permissions VALUES("61","pos_setting","web","2018-10-20 00:10:04","2018-10-20 00:10:04");
INSERT INTO permissions VALUES("62","hrm_setting","web","2019-01-02 11:30:23","2019-01-02 11:30:23");
INSERT INTO permissions VALUES("63","purchase-return-index","web","2019-01-02 22:45:14","2019-01-02 22:45:14");
INSERT INTO permissions VALUES("64","purchase-return-add","web","2019-01-02 22:45:14","2019-01-02 22:45:14");
INSERT INTO permissions VALUES("65","purchase-return-edit","web","2019-01-02 22:45:14","2019-01-02 22:45:14");
INSERT INTO permissions VALUES("66","purchase-return-delete","web","2019-01-02 22:45:14","2019-01-02 22:45:14");
INSERT INTO permissions VALUES("67","account-index","web","2019-01-02 23:06:13","2019-01-02 23:06:13");
INSERT INTO permissions VALUES("68","balance-sheet","web","2019-01-02 23:06:14","2019-01-02 23:06:14");
INSERT INTO permissions VALUES("69","account-statement","web","2019-01-02 23:06:14","2019-01-02 23:06:14");
INSERT INTO permissions VALUES("70","department","web","2019-01-02 23:30:01","2019-01-02 23:30:01");
INSERT INTO permissions VALUES("71","attendance","web","2019-01-02 23:30:01","2019-01-02 23:30:01");
INSERT INTO permissions VALUES("72","payroll","web","2019-01-02 23:30:01","2019-01-02 23:30:01");
INSERT INTO permissions VALUES("73","employees-index","web","2019-01-02 23:52:19","2019-01-02 23:52:19");
INSERT INTO permissions VALUES("74","employees-add","web","2019-01-02 23:52:19","2019-01-02 23:52:19");
INSERT INTO permissions VALUES("75","employees-edit","web","2019-01-02 23:52:19","2019-01-02 23:52:19");
INSERT INTO permissions VALUES("76","employees-delete","web","2019-01-02 23:52:19","2019-01-02 23:52:19");
INSERT INTO permissions VALUES("77","user-report","web","2019-01-16 07:48:18","2019-01-16 07:48:18");
INSERT INTO permissions VALUES("78","stock_count","web","2019-02-17 11:32:01","2019-02-17 11:32:01");
INSERT INTO permissions VALUES("79","adjustment","web","2019-02-17 11:32:02","2019-02-17 11:32:02");
INSERT INTO permissions VALUES("80","sms_setting","web","2019-02-22 06:18:03","2019-02-22 06:18:03");
INSERT INTO permissions VALUES("81","create_sms","web","2019-02-22 06:18:03","2019-02-22 06:18:03");
INSERT INTO permissions VALUES("82","print_barcode","web","2019-03-07 06:02:19","2019-03-07 06:02:19");
INSERT INTO permissions VALUES("83","empty_database","web","2019-03-07 06:02:19","2019-03-07 06:02:19");
INSERT INTO permissions VALUES("84","customer_group","web","2019-03-07 06:37:15","2019-03-07 06:37:15");
INSERT INTO permissions VALUES("85","unit","web","2019-03-07 06:37:15","2019-03-07 06:37:15");
INSERT INTO permissions VALUES("86","tax","web","2019-03-07 06:37:15","2019-03-07 06:37:15");
INSERT INTO permissions VALUES("87","gift_card","web","2019-03-07 07:29:38","2019-03-07 07:29:38");
INSERT INTO permissions VALUES("88","coupon","web","2019-03-07 07:29:38","2019-03-07 07:29:38");
INSERT INTO permissions VALUES("89","holiday","web","2019-10-19 09:57:15","2019-10-19 09:57:15");
INSERT INTO permissions VALUES("90","warehouse-report","web","2019-10-22 07:00:23","2019-10-22 07:00:23");
INSERT INTO permissions VALUES("91","warehouse","web","2020-02-26 07:47:32","2020-02-26 07:47:32");
INSERT INTO permissions VALUES("92","brand","web","2020-02-26 07:59:59","2020-02-26 07:59:59");
INSERT INTO permissions VALUES("93","billers-index","web","2020-02-26 08:11:15","2020-02-26 08:11:15");
INSERT INTO permissions VALUES("94","billers-add","web","2020-02-26 08:11:15","2020-02-26 08:11:15");
INSERT INTO permissions VALUES("95","billers-edit","web","2020-02-26 08:11:15","2020-02-26 08:11:15");
INSERT INTO permissions VALUES("96","billers-delete","web","2020-02-26 08:11:15","2020-02-26 08:11:15");
INSERT INTO permissions VALUES("97","money-transfer","web","2020-03-02 06:41:48","2020-03-02 06:41:48");
INSERT INTO permissions VALUES("98","category","web","2020-07-13 13:13:16","2020-07-13 13:13:16");
INSERT INTO permissions VALUES("99","delivery","web","2020-07-13 13:13:16","2020-07-13 13:13:16");
INSERT INTO permissions VALUES("100","send_notification","web","2020-10-31 07:21:31","2020-10-31 07:21:31");
INSERT INTO permissions VALUES("101","today_sale","web","2020-10-31 07:57:04","2020-10-31 07:57:04");
INSERT INTO permissions VALUES("102","today_profit","web","2020-10-31 07:57:04","2020-10-31 07:57:04");
INSERT INTO permissions VALUES("103","currency","web","2020-11-09 01:23:11","2020-11-09 01:23:11");
INSERT INTO permissions VALUES("104","backup_database","web","2020-11-15 01:16:55","2020-11-15 01:16:55");
INSERT INTO permissions VALUES("105","reward_point_setting","web","2021-06-27 05:34:42","2021-06-27 05:34:42");
INSERT INTO permissions VALUES("106","revenue_profit_summary","web","2022-02-08 14:57:21","2022-02-08 14:57:21");
INSERT INTO permissions VALUES("107","cash_flow","web","2022-02-08 14:57:22","2022-02-08 14:57:22");
INSERT INTO permissions VALUES("108","monthly_summary","web","2022-02-08 14:57:22","2022-02-08 14:57:22");
INSERT INTO permissions VALUES("109","yearly_report","web","2022-02-08 14:57:22","2022-02-08 14:57:22");
INSERT INTO permissions VALUES("110","discount_plan","web","2022-02-16 10:12:26","2022-02-16 10:12:26");
INSERT INTO permissions VALUES("111","discount","web","2022-02-16 10:12:38","2022-02-16 10:12:38");
INSERT INTO permissions VALUES("112","product-expiry-report","web","2022-03-30 06:39:20","2022-03-30 06:39:20");
INSERT INTO permissions VALUES("113","purchase-payment-index","web","2022-06-05 15:12:27","2022-06-05 15:12:27");
INSERT INTO permissions VALUES("114","purchase-payment-add","web","2022-06-05 15:12:28","2022-06-05 15:12:28");
INSERT INTO permissions VALUES("115","purchase-payment-edit","web","2022-06-05 15:12:28","2022-06-05 15:12:28");
INSERT INTO permissions VALUES("116","purchase-payment-delete","web","2022-06-05 15:12:28","2022-06-05 15:12:28");
INSERT INTO permissions VALUES("117","sale-payment-index","web","2022-06-05 15:12:28","2022-06-05 15:12:28");
INSERT INTO permissions VALUES("118","sale-payment-add","web","2022-06-05 15:12:28","2022-06-05 15:12:28");
INSERT INTO permissions VALUES("119","sale-payment-edit","web","2022-06-05 15:12:28","2022-06-05 15:12:28");
INSERT INTO permissions VALUES("120","sale-payment-delete","web","2022-06-05 15:12:28","2022-06-05 15:12:28");
INSERT INTO permissions VALUES("121","all_notification","web","2022-06-05 15:12:29","2022-06-05 15:12:29");
INSERT INTO permissions VALUES("122","sale-report-chart","web","2022-06-05 15:12:29","2022-06-05 15:12:29");
INSERT INTO permissions VALUES("123","dso-report","web","2022-06-05 15:12:29","2022-06-05 15:12:29");
INSERT INTO permissions VALUES("124","product_history","web","2022-08-25 15:04:05","2022-08-25 15:04:05");
INSERT INTO permissions VALUES("125","supplier-due-report","web","2022-08-31 10:46:33","2022-08-31 10:46:33");
INSERT INTO permissions VALUES("126","custom_field","web","2023-05-02 08:41:35","2023-05-02 08:41:35");



CREATE TABLE `pos_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `product_number` int(11) NOT NULL,
  `keybord_active` tinyint(1) NOT NULL,
  `is_table` tinyint(1) NOT NULL DEFAULT 0,
  `stripe_public_key` varchar(191) DEFAULT NULL,
  `stripe_secret_key` varchar(191) DEFAULT NULL,
  `paypal_live_api_username` varchar(191) DEFAULT NULL,
  `paypal_live_api_password` varchar(191) DEFAULT NULL,
  `paypal_live_api_secret` varchar(191) DEFAULT NULL,
  `payment_options` text DEFAULT NULL,
  `invoice_option` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `pos_setting_id_unique` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO pos_setting VALUES("1","46","7","1","3","0","0","pk_test_ITN7KOYiIsHSCQ0UMRcgaYUB","sk_test_TtQQaawhEYRwa3mU9CzttrEy","admin","admin","admin",""none"","A4","2018-09-02 04:17:04","2024-05-05 16:36:04");



CREATE TABLE `product_adjustments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adjustment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `unit_cost` double DEFAULT NULL,
  `qty` double NOT NULL,
  `action` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `product_batches` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `batch_no` varchar(191) NOT NULL,
  `expired_date` date NOT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_batches VALUES("1","71","1001","2023-05-31","13","2021-03-07 09:14:05","2022-05-14 09:50:17");
INSERT INTO product_batches VALUES("2","71","1002","2023-05-31","6","2021-03-07 09:55:06","2021-06-18 15:32:54");
INSERT INTO product_batches VALUES("3","71","1003","2023-09-30","2","2021-03-09 10:42:13","2021-09-21 10:49:37");
INSERT INTO product_batches VALUES("4","22","10001","2021-11-30","1","2021-10-20 08:47:09","2021-10-20 08:47:09");



CREATE TABLE `product_purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text DEFAULT NULL,
  `qty` double NOT NULL,
  `recieved` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=460 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_purchases VALUES("457","180","92","","","","3","3","13","500","0","0","0","1500","2024-04-23 13:25:32","2024-04-23 13:25:32");
INSERT INTO product_purchases VALUES("458","181","94","","","","24","24","13","150","0","0","0","3600","2024-04-30 02:53:28","2024-04-30 02:53:28");



CREATE TABLE `product_quotation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quotation_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_quotation VALUES("50","23","91","","","1","0","54","0","0","0","54","2024-04-26 02:13:06","2024-04-26 02:13:06");



CREATE TABLE `product_returns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_returns VALUES("67","41","94","","","","2","13","200","0","0","0","400","2024-05-01 02:22:23","2024-05-01 02:22:23");



CREATE TABLE `product_sales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text DEFAULT NULL,
  `qty` double NOT NULL,
  `return_qty` double NOT NULL DEFAULT 0,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=777 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_sales VALUES("760","478","91","","","","2","0","0","48.6","0","0","0","97.2","2024-04-22 08:12:35","2024-04-22 08:12:35");
INSERT INTO product_sales VALUES("761","479","91","","","","1","0","0","46.17","0","0","0","46.17","2024-04-23 06:30:28","2024-04-23 06:30:28");
INSERT INTO product_sales VALUES("762","480","91","","","","1","0","0","46.17","0","0","0","46.17","2024-04-23 06:30:40","2024-04-23 06:30:40");
INSERT INTO product_sales VALUES("764","482","91","","","","1","0","0","48.6","0","0","0","48.6","2024-04-23 12:37:16","2024-04-23 12:37:16");
INSERT INTO product_sales VALUES("765","483","91","","","","2","0","0","450","0","0","0","900","2024-04-23 14:14:57","2024-04-23 14:14:57");
INSERT INTO product_sales VALUES("766","484","91","","","","2","0","0","450","0","0","0","900","2024-04-23 14:15:03","2024-04-23 14:15:03");
INSERT INTO product_sales VALUES("767","485","91","","","","1","0","0","54","0","0","0","54","2024-04-23 14:21:23","2024-04-26 01:42:43");
INSERT INTO product_sales VALUES("768","486","91","","","","1","0","0","54","0","0","0","54","2024-04-26 02:15:10","2024-04-26 02:15:10");
INSERT INTO product_sales VALUES("769","487","92","","","","1","0","13","450","0","0","0","450","2024-04-26 02:41:51","2024-04-26 02:41:51");
INSERT INTO product_sales VALUES("770","488","94","","","","2","2","13","200","0","0","0","400","2024-04-30 03:13:42","2024-05-01 02:22:23");
INSERT INTO product_sales VALUES("771","489","94","","","","5","0","13","200","0","0","0","1000","2024-04-30 03:17:15","2024-04-30 03:17:15");
INSERT INTO product_sales VALUES("772","490","94","","","","9","0","13","200","0","0","0","1800","2024-04-30 16:26:31","2024-04-30 16:26:31");
INSERT INTO product_sales VALUES("773","491","94","","","","1","0","13","200","0","0","0","200","2024-04-30 17:03:13","2024-04-30 17:03:13");
INSERT INTO product_sales VALUES("774","492","94","","","","6","0","13","200","0","0","0","1200","2024-04-30 17:05:29","2024-04-30 17:05:29");
INSERT INTO product_sales VALUES("775","493","95","","","","5","0","13","500","0","0","0","2500","2024-05-05 16:41:16","2024-05-05 16:41:16");
INSERT INTO product_sales VALUES("776","494","95","","","","4","0","13","500","0","0","0","2000","2024-05-05 16:48:07","2024-05-05 16:48:07");



CREATE TABLE `product_transfer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `product_variants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `item_code` varchar(191) NOT NULL,
  `additional_cost` double DEFAULT NULL,
  `additional_price` double DEFAULT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `product_warehouse` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` varchar(191) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_warehouse VALUES("72","92","","","","7","2","","2024-04-23 13:25:32","2024-04-26 02:41:51");
INSERT INTO product_warehouse VALUES("73","94","","","","7","-16","","2024-04-30 02:53:28","2024-05-01 02:24:59");
INSERT INTO product_warehouse VALUES("74","95","","","","7","-9","","2024-05-05 16:34:35","2024-05-05 16:54:15");



CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `code` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `barcode_symbology` varchar(191) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `cost` double NOT NULL,
  `price` double NOT NULL,
  `qty` double DEFAULT NULL,
  `alert_quantity` double DEFAULT NULL,
  `daily_sale_objective` double DEFAULT NULL,
  `promotion` tinyint(4) DEFAULT NULL,
  `promotion_price` varchar(191) DEFAULT NULL,
  `starting_date` varchar(200) DEFAULT NULL,
  `last_date` date DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `tax_method` int(11) DEFAULT NULL,
  `image` longtext DEFAULT NULL,
  `file` varchar(191) DEFAULT NULL,
  `is_embeded` tinyint(1) DEFAULT NULL,
  `is_variant` tinyint(1) DEFAULT NULL,
  `is_batch` tinyint(1) DEFAULT NULL,
  `is_diffPrice` tinyint(1) DEFAULT NULL,
  `is_imei` tinyint(1) DEFAULT NULL,
  `featured` tinyint(4) DEFAULT NULL,
  `product_list` varchar(191) DEFAULT NULL,
  `variant_list` varchar(191) DEFAULT NULL,
  `qty_list` varchar(191) DEFAULT NULL,
  `price_list` varchar(191) DEFAULT NULL,
  `product_details` text DEFAULT NULL,
  `variant_option` text DEFAULT NULL,
  `variant_value` text DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `is_sync_disable` tinyint(4) DEFAULT NULL,
  `woocommerce_product_id` int(11) DEFAULT NULL,
  `woocommerce_media_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO products VALUES("94","SamiR","SM","standard","C128","3","35","13","13","13","150","200","-16","3","10","","","","","","1","202404300253281.png","","","","","","","1","","","","","<p>Abcd Abcd</p>","","","0","","1690","1689","2024-04-30 02:53:28","2024-05-01 15:13:34");
INSERT INTO products VALUES("95","Mobile","05279138","standard","C128","3","35","13","13","13","400","500","-9","","","","","","","","1","zummXD2dvAtI.png","","0","","","0","","1","","","","","","","","1","","","","2024-05-05 16:34:35","2024-05-05 16:54:15");



CREATE TABLE `purchase_product_return` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO purchase_product_return VALUES("28","16","94","","","","24","13","150","0","0","0","3600","2024-05-01 02:24:59","2024-05-01 02:24:59");



CREATE TABLE `purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `exchange_rate` double DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `paid_amount` double NOT NULL,
  `status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO purchases VALUES("180","pr-20240423-062532","47","7","","1","1","1","3","0","0","1500","0","0","0","0","1500","1500","1","2","","","2024-04-23 13:25:32","2024-04-23 13:26:11");
INSERT INTO purchases VALUES("181","pr-20240430-025328","48","7","","","","1","24","0","0","3600","","0","","","3600","3600","1","2","","","2024-04-30 02:53:28","2024-04-30 02:53:28");



CREATE TABLE `quotations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `quotation_status` int(11) NOT NULL,
  `document` varchar(191) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO quotations VALUES("23","qr-20240426-021306","47","1","11","46","7","1","1","0","0","54","0","0","10","","44","1","","","2024-04-26 02:13:06","2024-04-26 02:13:06");



CREATE TABLE `return_purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `exchange_rate` double DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) DEFAULT NULL,
  `return_note` text DEFAULT NULL,
  `staff_note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO return_purchases VALUES("16","prr-20240501-022459","","7","47","181","17","","","1","24","0","0","3600","0","0","3600","","","","2024-05-01 02:24:59","2024-05-01 02:24:59");



CREATE TABLE `returns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `exchange_rate` double DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) DEFAULT NULL,
  `return_note` text DEFAULT NULL,
  `staff_note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO returns VALUES("41","rr-20240501-022223","47","488","11","46","7","1","17","3","1","1","2","0","0","400","0","0","400","","","","2024-05-01 02:22:23","2024-05-01 02:22:23");



CREATE TABLE `reward_point_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `per_point_amount` double NOT NULL,
  `minimum_amount` double NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO reward_point_settings VALUES("1","300","1000","1","Year","1","2021-06-08 16:40:15","2021-06-27 06:20:55");



CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO role_has_permissions VALUES("4","1");
INSERT INTO role_has_permissions VALUES("4","2");
INSERT INTO role_has_permissions VALUES("5","1");
INSERT INTO role_has_permissions VALUES("5","2");
INSERT INTO role_has_permissions VALUES("6","1");
INSERT INTO role_has_permissions VALUES("6","2");
INSERT INTO role_has_permissions VALUES("7","1");
INSERT INTO role_has_permissions VALUES("7","2");
INSERT INTO role_has_permissions VALUES("8","1");
INSERT INTO role_has_permissions VALUES("8","2");
INSERT INTO role_has_permissions VALUES("9","1");
INSERT INTO role_has_permissions VALUES("9","2");
INSERT INTO role_has_permissions VALUES("10","1");
INSERT INTO role_has_permissions VALUES("10","2");
INSERT INTO role_has_permissions VALUES("11","1");
INSERT INTO role_has_permissions VALUES("11","2");
INSERT INTO role_has_permissions VALUES("12","1");
INSERT INTO role_has_permissions VALUES("12","2");
INSERT INTO role_has_permissions VALUES("13","1");
INSERT INTO role_has_permissions VALUES("13","2");
INSERT INTO role_has_permissions VALUES("14","1");
INSERT INTO role_has_permissions VALUES("14","2");
INSERT INTO role_has_permissions VALUES("15","1");
INSERT INTO role_has_permissions VALUES("15","2");
INSERT INTO role_has_permissions VALUES("16","1");
INSERT INTO role_has_permissions VALUES("16","2");
INSERT INTO role_has_permissions VALUES("17","1");
INSERT INTO role_has_permissions VALUES("17","2");
INSERT INTO role_has_permissions VALUES("18","1");
INSERT INTO role_has_permissions VALUES("18","2");
INSERT INTO role_has_permissions VALUES("19","1");
INSERT INTO role_has_permissions VALUES("19","2");
INSERT INTO role_has_permissions VALUES("20","2");
INSERT INTO role_has_permissions VALUES("21","2");
INSERT INTO role_has_permissions VALUES("22","2");
INSERT INTO role_has_permissions VALUES("23","2");
INSERT INTO role_has_permissions VALUES("24","1");
INSERT INTO role_has_permissions VALUES("24","2");
INSERT INTO role_has_permissions VALUES("25","1");
INSERT INTO role_has_permissions VALUES("25","2");
INSERT INTO role_has_permissions VALUES("26","1");
INSERT INTO role_has_permissions VALUES("26","2");
INSERT INTO role_has_permissions VALUES("27","1");
INSERT INTO role_has_permissions VALUES("27","2");
INSERT INTO role_has_permissions VALUES("28","1");
INSERT INTO role_has_permissions VALUES("28","2");
INSERT INTO role_has_permissions VALUES("29","2");
INSERT INTO role_has_permissions VALUES("30","2");
INSERT INTO role_has_permissions VALUES("31","2");
INSERT INTO role_has_permissions VALUES("32","1");
INSERT INTO role_has_permissions VALUES("32","2");
INSERT INTO role_has_permissions VALUES("33","1");
INSERT INTO role_has_permissions VALUES("33","2");
INSERT INTO role_has_permissions VALUES("34","1");
INSERT INTO role_has_permissions VALUES("34","2");
INSERT INTO role_has_permissions VALUES("35","1");
INSERT INTO role_has_permissions VALUES("35","2");
INSERT INTO role_has_permissions VALUES("36","1");
INSERT INTO role_has_permissions VALUES("36","2");
INSERT INTO role_has_permissions VALUES("37","1");
INSERT INTO role_has_permissions VALUES("37","2");
INSERT INTO role_has_permissions VALUES("38","1");
INSERT INTO role_has_permissions VALUES("38","2");
INSERT INTO role_has_permissions VALUES("39","1");
INSERT INTO role_has_permissions VALUES("39","2");
INSERT INTO role_has_permissions VALUES("40","1");
INSERT INTO role_has_permissions VALUES("40","2");
INSERT INTO role_has_permissions VALUES("41","1");
INSERT INTO role_has_permissions VALUES("41","2");
INSERT INTO role_has_permissions VALUES("42","1");
INSERT INTO role_has_permissions VALUES("42","2");
INSERT INTO role_has_permissions VALUES("43","1");
INSERT INTO role_has_permissions VALUES("43","2");
INSERT INTO role_has_permissions VALUES("44","1");
INSERT INTO role_has_permissions VALUES("44","2");
INSERT INTO role_has_permissions VALUES("45","1");
INSERT INTO role_has_permissions VALUES("45","2");
INSERT INTO role_has_permissions VALUES("46","2");
INSERT INTO role_has_permissions VALUES("47","1");
INSERT INTO role_has_permissions VALUES("47","2");
INSERT INTO role_has_permissions VALUES("48","1");
INSERT INTO role_has_permissions VALUES("48","2");
INSERT INTO role_has_permissions VALUES("49","1");
INSERT INTO role_has_permissions VALUES("49","2");
INSERT INTO role_has_permissions VALUES("50","1");
INSERT INTO role_has_permissions VALUES("50","2");
INSERT INTO role_has_permissions VALUES("51","1");
INSERT INTO role_has_permissions VALUES("51","2");
INSERT INTO role_has_permissions VALUES("52","1");
INSERT INTO role_has_permissions VALUES("52","2");
INSERT INTO role_has_permissions VALUES("53","1");
INSERT INTO role_has_permissions VALUES("53","2");
INSERT INTO role_has_permissions VALUES("54","1");
INSERT INTO role_has_permissions VALUES("54","2");
INSERT INTO role_has_permissions VALUES("55","1");
INSERT INTO role_has_permissions VALUES("55","2");
INSERT INTO role_has_permissions VALUES("56","1");
INSERT INTO role_has_permissions VALUES("56","2");
INSERT INTO role_has_permissions VALUES("57","1");
INSERT INTO role_has_permissions VALUES("57","2");
INSERT INTO role_has_permissions VALUES("58","1");
INSERT INTO role_has_permissions VALUES("58","2");
INSERT INTO role_has_permissions VALUES("59","1");
INSERT INTO role_has_permissions VALUES("59","2");
INSERT INTO role_has_permissions VALUES("60","2");
INSERT INTO role_has_permissions VALUES("61","1");
INSERT INTO role_has_permissions VALUES("61","2");
INSERT INTO role_has_permissions VALUES("62","2");
INSERT INTO role_has_permissions VALUES("63","1");
INSERT INTO role_has_permissions VALUES("63","2");
INSERT INTO role_has_permissions VALUES("64","1");
INSERT INTO role_has_permissions VALUES("64","2");
INSERT INTO role_has_permissions VALUES("65","1");
INSERT INTO role_has_permissions VALUES("65","2");
INSERT INTO role_has_permissions VALUES("66","1");
INSERT INTO role_has_permissions VALUES("66","2");
INSERT INTO role_has_permissions VALUES("67","2");
INSERT INTO role_has_permissions VALUES("68","2");
INSERT INTO role_has_permissions VALUES("69","2");
INSERT INTO role_has_permissions VALUES("70","2");
INSERT INTO role_has_permissions VALUES("71","2");
INSERT INTO role_has_permissions VALUES("72","2");
INSERT INTO role_has_permissions VALUES("73","2");
INSERT INTO role_has_permissions VALUES("74","2");
INSERT INTO role_has_permissions VALUES("75","2");
INSERT INTO role_has_permissions VALUES("76","2");
INSERT INTO role_has_permissions VALUES("77","1");
INSERT INTO role_has_permissions VALUES("77","2");
INSERT INTO role_has_permissions VALUES("78","1");
INSERT INTO role_has_permissions VALUES("78","2");
INSERT INTO role_has_permissions VALUES("79","2");
INSERT INTO role_has_permissions VALUES("80","2");
INSERT INTO role_has_permissions VALUES("81","2");
INSERT INTO role_has_permissions VALUES("82","2");
INSERT INTO role_has_permissions VALUES("83","2");
INSERT INTO role_has_permissions VALUES("84","2");
INSERT INTO role_has_permissions VALUES("85","1");
INSERT INTO role_has_permissions VALUES("85","2");
INSERT INTO role_has_permissions VALUES("86","1");
INSERT INTO role_has_permissions VALUES("86","2");
INSERT INTO role_has_permissions VALUES("87","2");
INSERT INTO role_has_permissions VALUES("88","2");
INSERT INTO role_has_permissions VALUES("89","2");
INSERT INTO role_has_permissions VALUES("90","1");
INSERT INTO role_has_permissions VALUES("90","2");
INSERT INTO role_has_permissions VALUES("91","1");
INSERT INTO role_has_permissions VALUES("91","2");
INSERT INTO role_has_permissions VALUES("92","2");
INSERT INTO role_has_permissions VALUES("93","1");
INSERT INTO role_has_permissions VALUES("93","2");
INSERT INTO role_has_permissions VALUES("94","1");
INSERT INTO role_has_permissions VALUES("94","2");
INSERT INTO role_has_permissions VALUES("95","1");
INSERT INTO role_has_permissions VALUES("95","2");
INSERT INTO role_has_permissions VALUES("96","1");
INSERT INTO role_has_permissions VALUES("96","2");
INSERT INTO role_has_permissions VALUES("97","2");
INSERT INTO role_has_permissions VALUES("98","1");
INSERT INTO role_has_permissions VALUES("98","2");
INSERT INTO role_has_permissions VALUES("99","2");
INSERT INTO role_has_permissions VALUES("100","2");
INSERT INTO role_has_permissions VALUES("101","1");
INSERT INTO role_has_permissions VALUES("101","2");
INSERT INTO role_has_permissions VALUES("102","1");
INSERT INTO role_has_permissions VALUES("102","2");
INSERT INTO role_has_permissions VALUES("103","1");
INSERT INTO role_has_permissions VALUES("103","2");
INSERT INTO role_has_permissions VALUES("104","1");
INSERT INTO role_has_permissions VALUES("104","2");
INSERT INTO role_has_permissions VALUES("105","2");
INSERT INTO role_has_permissions VALUES("106","1");
INSERT INTO role_has_permissions VALUES("106","2");
INSERT INTO role_has_permissions VALUES("107","1");
INSERT INTO role_has_permissions VALUES("107","2");
INSERT INTO role_has_permissions VALUES("108","1");
INSERT INTO role_has_permissions VALUES("108","2");
INSERT INTO role_has_permissions VALUES("109","1");
INSERT INTO role_has_permissions VALUES("109","2");
INSERT INTO role_has_permissions VALUES("110","2");
INSERT INTO role_has_permissions VALUES("111","1");
INSERT INTO role_has_permissions VALUES("111","2");
INSERT INTO role_has_permissions VALUES("112","1");
INSERT INTO role_has_permissions VALUES("112","2");
INSERT INTO role_has_permissions VALUES("113","1");
INSERT INTO role_has_permissions VALUES("113","2");
INSERT INTO role_has_permissions VALUES("114","1");
INSERT INTO role_has_permissions VALUES("114","2");
INSERT INTO role_has_permissions VALUES("115","1");
INSERT INTO role_has_permissions VALUES("115","2");
INSERT INTO role_has_permissions VALUES("116","1");
INSERT INTO role_has_permissions VALUES("116","2");
INSERT INTO role_has_permissions VALUES("117","1");
INSERT INTO role_has_permissions VALUES("117","2");
INSERT INTO role_has_permissions VALUES("118","1");
INSERT INTO role_has_permissions VALUES("118","2");
INSERT INTO role_has_permissions VALUES("119","1");
INSERT INTO role_has_permissions VALUES("119","2");
INSERT INTO role_has_permissions VALUES("120","1");
INSERT INTO role_has_permissions VALUES("120","2");
INSERT INTO role_has_permissions VALUES("121","2");
INSERT INTO role_has_permissions VALUES("122","1");
INSERT INTO role_has_permissions VALUES("122","2");
INSERT INTO role_has_permissions VALUES("123","1");
INSERT INTO role_has_permissions VALUES("123","2");
INSERT INTO role_has_permissions VALUES("124","1");
INSERT INTO role_has_permissions VALUES("124","2");
INSERT INTO role_has_permissions VALUES("125","1");
INSERT INTO role_has_permissions VALUES("125","2");
INSERT INTO role_has_permissions VALUES("126","2");



CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `guard_name` varchar(191) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO roles VALUES("1","Admin","admin can access all data...","web","1","2018-06-02 00:46:44","2018-06-03 00:13:05");
INSERT INTO roles VALUES("2","SuperAdmin","SuperAdmin","web","1","2018-10-22 03:38:13","2024-04-28 07:29:54");
INSERT INTO roles VALUES("4","Cashier","staff has specific acess...","web","1","2018-06-02 01:05:27","2024-04-28 07:30:22");
INSERT INTO roles VALUES("5","Customer","","web","1","2020-11-05 07:43:16","2020-11-15 01:24:15");
INSERT INTO roles VALUES("6","Employee","Test","web","0","2023-07-11 06:09:00","2024-04-28 07:28:21");



CREATE TABLE `sales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `queue` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `grand_total` double NOT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `exchange_rate` double DEFAULT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount_type` varchar(191) DEFAULT NULL,
  `order_discount_value` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `coupon_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `sale_status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `sale_note` text DEFAULT NULL,
  `staff_note` text DEFAULT NULL,
  `woocommerce_order_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `test` varchar(255) DEFAULT 'Test',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=495 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO sales VALUES("478","posr-20240422-011235","47","8","","","45","7","1","1","2","0","0","97.2","97.2","1","1","0","0","Flat","","0","","","0","1","4","","97.2","","","","2024-04-22 08:12:35","2024-04-22 08:12:35","Test");
INSERT INTO sales VALUES("479","posr-20240422-113028","47","8","","","45","7","1","1","1","0","0","46.17","46.17","2","0.95","0","0","Flat","","0","","","0","1","4","","46.17","","","","2024-04-23 06:30:28","2024-04-23 06:30:28","Test");
INSERT INTO sales VALUES("480","posr-20240422-113040","47","8","","","45","7","1","1","1","0","0","46.17","46.17","2","0.95","0","0","Flat","","0","","","0","1","4","","46.17","","","","2024-04-23 06:30:40","2024-04-23 06:30:40","Test");
INSERT INTO sales VALUES("482","posr-20240423-053715","47","8","","","45","7","1","1","1","0","0","48.6","48.6","1","1","0","0","Flat","","0","","","0","1","4","","48.6","","","","2024-04-23 12:37:15","2024-04-23 12:37:15","Test");
INSERT INTO sales VALUES("483","posr-20240423-071457","47","11","","","46","7","1","1","2","0","0","900","900","1","1","0","0","Flat","","0","","","0","1","4","","900","","","","2024-04-23 14:14:57","2024-04-23 14:14:57","Test");
INSERT INTO sales VALUES("484","posr-20240423-071503","47","11","","","46","7","1","1","2","0","0","900","900","1","1","0","0","Flat","","0","","","0","1","4","","900","","","","2024-04-23 14:15:03","2024-04-23 14:15:03","Test");
INSERT INTO sales VALUES("485","posr-20240423-072123","47","11","","","46","7","1","1","1","0","0","54","54","1","1","0","0","Flat","0","0","","","0","1","2","","900","","","","2024-04-23 00:00:00","2024-04-26 01:42:43","Test");
INSERT INTO sales VALUES("486","sr-20240426-021510","47","11","","","46","7","1","1","1","0","0","54","44","","","0","0","Flat","10","10","","","0","1","2","","88","","","","2024-04-26 02:15:10","2024-04-26 02:15:56","Test");
INSERT INTO sales VALUES("487","posr-20240426-024151","47","11","","","46","7","1","1","1","0","0","450","450","1","1","0","0","Flat","","0","","","0","1","4","","450","","","","2024-04-26 02:41:51","2024-04-26 02:41:51","Test");
INSERT INTO sales VALUES("488","123","48","12","","","46","7","1","1","2","0","0","400","400","3","1","0","0","Flat","","0","","","0","4","4","","400","","","","2024-04-16 00:00:00","2024-05-01 02:22:23","Test");
INSERT INTO sales VALUES("489","woo-20240430-031715","48","","","","45","7","1","1","5","0","0","1000","1000","3","1","","","Flat","0","0","","","0","3","4","","","","","1617","2024-04-30 03:17:15","2024-04-30 03:17:15","Test");
INSERT INTO sales VALUES("490","posr-20240430-042631","47","11","","","46","7","1","1","9","0","0","1800","1800","3","1","0","0","Flat","","0","","","0","1","4","","1800","","","","2024-04-30 16:26:31","2024-04-30 16:26:31","Test");
INSERT INTO sales VALUES("491","posr-20240430-050313","47","11","","","46","7","1","1","1","0","0","200","200","3","1","0","0","Flat","","0","","","0","1","4","","200","","","","2024-04-30 17:03:13","2024-04-30 17:03:13","Test");
INSERT INTO sales VALUES("492","posr-20240430-050529","47","11","","","46","7","1","1","6","0","0","1200","1200","3","1","0","0","Flat","","0","","","0","1","4","","1200","","","","2024-05-01 00:00:00","2024-04-30 17:05:29","Test");
INSERT INTO sales VALUES("493","sr-20240505-044116","47","11","","","46","7","1","1","5","0","0","2500","2500","3","1","0","0","Flat","","0","","","0","1","3","","125","","","","2024-05-05 16:41:16","2024-05-05 16:41:16","Test");
INSERT INTO sales VALUES("494","123456","47","11","","","45","7","1","1","4","0","0","2000","1920","3","1","0","0","Flat","100","100","","","20","1","3","","1500","Sales Note","Staff Note","","2024-05-15 00:00:00","2024-05-05 16:48:07","Test");



CREATE TABLE `stock_counts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `category_id` varchar(191) DEFAULT NULL,
  `brand_id` varchar(191) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(191) NOT NULL,
  `initial_file` varchar(191) DEFAULT NULL,
  `final_file` varchar(191) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `is_adjusted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `suppliers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `company_name` varchar(191) NOT NULL,
  `vat_number` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `phone_number` varchar(191) NOT NULL,
  `address` varchar(191) NOT NULL,
  `city` varchar(191) NOT NULL,
  `state` varchar(191) DEFAULT NULL,
  `postal_code` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO suppliers VALUES("11","Sufiyan Ahmed","","abc","","sufiyankhanzada1254@gmail.com","03461351500","Hyderabad","hyderabad","pakistan","710000","Pakistan","1","2024-04-22 08:10:34","2024-04-22 08:10:34");



CREATE TABLE `tables` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `number_of_person` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO tables VALUES("3","Testing","5425","something","1","2024-04-23 21:24:03","2024-04-23 21:24:03");



CREATE TABLE `taxes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `rate` double NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `woocommerce_tax_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `transfers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `from_warehouse_id` int(11) NOT NULL,
  `to_warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `units` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unit_code` varchar(191) NOT NULL,
  `unit_name` varchar(191) NOT NULL,
  `base_unit` int(11) DEFAULT NULL,
  `operator` varchar(191) DEFAULT NULL,
  `operation_value` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO units VALUES("13","pc","piece","","*","1","1","2024-04-22 08:05:01","2024-04-23 13:19:14");



CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `phone` varchar(191) NOT NULL,
  `company_name` varchar(191) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO users VALUES("47","admin","admin@admin.com","$2y$10$lzDPjwXd635GbE8jEenxIeMHCKDXZITMesDSi8C8Ke8hGWluHfYUC","","5515145662","Budget Saving Store","1","","","1","0","2024-04-22 07:21:16","2024-04-23 21:27:29");
INSERT INTO users VALUES("48","SuperAdmin","superadmin@admin.com","$2y$10$lzDPjwXd635GbE8jEenxIeMHCKDXZITMesDSi8C8Ke8hGWluHfYUC","","5515145662","Budget Saving Store Super Admin","2","","","1","0","2024-04-22 07:21:16","2024-04-23 21:27:29");



CREATE TABLE `variants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `warehouses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `address` text NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO warehouses VALUES("7","California Branch","554123654","admin@admin.com","California","1","2024-04-22 08:03:25","2024-04-23 13:23:13");



CREATE TABLE `woocommerce_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `woocomerce_app_url` varchar(255) DEFAULT NULL,
  `woocomerce_consumer_key` varchar(255) DEFAULT NULL,
  `woocomerce_consumer_secret` varchar(255) DEFAULT NULL,
  `default_tax_class` varchar(255) DEFAULT NULL,
  `product_tax_type` varchar(255) DEFAULT NULL,
  `manage_stock` varchar(255) DEFAULT NULL,
  `stock_status` varchar(255) DEFAULT NULL,
  `product_status` varchar(255) DEFAULT NULL,
  `customer_group_id` tinyint(4) DEFAULT NULL,
  `warehouse_id` tinyint(4) DEFAULT NULL,
  `biller_id` tinyint(4) DEFAULT NULL,
  `order_status_pending` tinyint(4) DEFAULT NULL,
  `order_status_processing` tinyint(4) DEFAULT NULL,
  `order_status_on_hold` tinyint(4) DEFAULT NULL,
  `order_status_completed` tinyint(4) DEFAULT NULL,
  `order_status_draft` tinyint(4) DEFAULT NULL,
  `webhook_secret_order_created` varchar(255) DEFAULT NULL,
  `webhook_secret_order_updated` varchar(255) DEFAULT NULL,
  `webhook_secret_order_deleted` varchar(255) DEFAULT NULL,
  `webhook_secret_order_restored` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO woocommerce_settings VALUES("1","https://baby.sufiyankhanzada.com/","ck_bd9741083fa26cb04ec68d3bb0f38715fa09cfd5","cs_76a37e85070e214a1994e75703860d2594671af5","","","true","instock","publish","1","7","1","2","2","3","1","3","","","","","2024-04-30 02:33:50","2024-04-30 03:11:50");



CREATE TABLE `woocommerce_sync_logs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sync_type` varchar(255) NOT NULL,
  `operation` varchar(255) NOT NULL,
  `records` longtext DEFAULT NULL,
  `synced_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO woocommerce_sync_logs VALUES("1","products","created","["T-Shirt for Mens","Muhammad Sami"]","48","2024-04-30 02:34:26","2024-04-30 02:34:26");
INSERT INTO woocommerce_sync_logs VALUES("2","products","updated","["T-Shirt for Mens","Muhammad Sami"]","48","2024-04-30 02:37:08","2024-04-30 02:37:08");
INSERT INTO woocommerce_sync_logs VALUES("3","products","reset","","48","2024-04-30 02:41:28","2024-04-30 02:41:28");
INSERT INTO woocommerce_sync_logs VALUES("4","categories","created","["Electronic"]","48","2024-04-30 03:06:22","2024-04-30 03:06:22");
INSERT INTO woocommerce_sync_logs VALUES("5","categories","updated","["Electronic"]","48","2024-04-30 03:07:31","2024-04-30 03:07:31");
INSERT INTO woocommerce_sync_logs VALUES("6","categories","reset","","48","2024-04-30 03:07:43","2024-04-30 03:07:43");
INSERT INTO woocommerce_sync_logs VALUES("7","categories","created","["Electronic"]","48","2024-04-30 03:08:08","2024-04-30 03:08:08");
INSERT INTO woocommerce_sync_logs VALUES("8","products","created","["SamiR"]","48","2024-04-30 03:08:34","2024-04-30 03:08:34");
INSERT INTO woocommerce_sync_logs VALUES("9","orders","created","["woo-20240430-031715"]","48","2024-04-30 03:17:15","2024-04-30 03:17:15");

