

CREATE TABLE `tbl_invoice` (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `total_due` double NOT NULL,
  `change_amount` double NOT NULL,
  `paid` double NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `vatable_sales` double NOT NULL,
  `vat_amount` double NOT NULL,
  `order_date` date NOT NULL,
  `table_number` int(11) NOT NULL,
  `dine_in` varchar(255) NOT NULL,
  `menu_category` varchar(255) NOT NULL,
  `time_value` time NOT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


