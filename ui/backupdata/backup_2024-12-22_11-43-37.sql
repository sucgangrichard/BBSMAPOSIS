

CREATE TABLE `tbl_invoice_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `qty` double NOT NULL,
  `total_per_qty` double NOT NULL,
  `table_number` int(11) NOT NULL,
  `dine_in` varchar(255) NOT NULL,
  `menu_category` varchar(255) NOT NULL,
  `order_date` date NOT NULL,
  `time_value` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO tbl_invoice_details VALUES("132","10","18","Product 5","1","120","15","NULL","NULL","2024-12-22","00:00:00");
INSERT INTO tbl_invoice_details VALUES("133","10","21","Product 8","1","50","15","NULL","NULL","2024-12-22","00:00:00");
INSERT INTO tbl_invoice_details VALUES("134","11","16","Product 3","1","150","15","NULL","NULL","2024-12-22","00:00:00");

