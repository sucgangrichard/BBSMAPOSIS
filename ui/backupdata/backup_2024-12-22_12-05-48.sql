

CREATE TABLE `tbl_menu_category` (
  `menu_cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  PRIMARY KEY (`menu_cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO tbl_menu_category VALUES("1","Noodles Soup");
INSERT INTO tbl_menu_category VALUES("2","Chao Fan");
INSERT INTO tbl_menu_category VALUES("3","Drinks");
INSERT INTO tbl_menu_category VALUES("4","Siopao Dimsum");
INSERT INTO tbl_menu_category VALUES("5","Rice Meals");
INSERT INTO tbl_menu_category VALUES("6","Lauriat Family");
INSERT INTO tbl_menu_category VALUES("7","Sdish Dessert");
INSERT INTO tbl_menu_category VALUES("8","BreakFast");
INSERT INTO tbl_menu_category VALUES("9","MilkSha");

