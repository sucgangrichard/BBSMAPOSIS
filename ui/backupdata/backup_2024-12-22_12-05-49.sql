

CREATE TABLE `tbl_mmenu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `available` int(11) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) NOT NULL,
  `updated_date` date NOT NULL,
  `approved_by` varchar(255) NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO tbl_mmenu VALUES("14","Product 1","MilkSha","30","100","6766d198d056c.png","2024-12-21","MOD");
INSERT INTO tbl_mmenu VALUES("15","Product 2","BreakFast","30","200","6766d1c87f385.png","2024-12-21","MOD");
INSERT INTO tbl_mmenu VALUES("16","Product 3","Sdish Dessert","29","150","6766d1e07e407.png","2024-12-21","MOD");
INSERT INTO tbl_mmenu VALUES("17","Product 4","Lauriat Family","130","20","6766d1fcd283b.png","2024-12-21","MOD");
INSERT INTO tbl_mmenu VALUES("18","Product 5","Rice Meals","59","120","6766d21dd5cf9.png","2024-12-21","MOD");
INSERT INTO tbl_mmenu VALUES("19","Product 6","Siopao Dimsum","25","85","6766d23a3b3f9.png","2024-12-21","MOD");
INSERT INTO tbl_mmenu VALUES("20","Product 7","Drinks","35","70","6766d26974555.png","2024-12-21","MOD");
INSERT INTO tbl_mmenu VALUES("21","Product 8","Chao Fan","44","50","6766d28916be3.png","2024-12-21","MOD");
INSERT INTO tbl_mmenu VALUES("22","Product 9","Noodles Soup","40","300","6766d2c356eef.png","2024-12-21","MOD");
INSERT INTO tbl_mmenu VALUES("23","Product 11","Noodles Soup","30","350","676791d666db6.png","2024-12-22","MOD");
INSERT INTO tbl_mmenu VALUES("24","Product x","Chao Fan","40","40","67679dad3665f.png","2024-12-22","MOD");

