

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


