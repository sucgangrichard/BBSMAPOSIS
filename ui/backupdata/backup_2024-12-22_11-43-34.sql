

CREATE TABLE `tbl_category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(200) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO tbl_category VALUES("2","Dry");
INSERT INTO tbl_category VALUES("3","Wet");
INSERT INTO tbl_category VALUES("4","Chilled");
INSERT INTO tbl_category VALUES("5","Freezer");

