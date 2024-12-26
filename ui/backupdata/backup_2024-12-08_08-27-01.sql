

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `expiration_date` date NOT NULL,
  `date_of_receipt` date NOT NULL,
  `received_by` varchar(255) NOT NULL,
  `condition_at_receipt` varchar(255) NOT NULL,
  `packaging_type` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


