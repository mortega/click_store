#scripts/schema.mysql.sql

#Products
CREATE TABLE `clickstore`.`products` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `description` TEXT,
  `img` VARCHAR(100) NOT NULL,
  `price` DECIMAL(10,2) NOT NULL DEFAULT 0,
  `created` TIMESTAMP,
  `modified` TIMESTAMP,
PRIMARY KEY (`id`));

#Categories
CREATE TABLE `clickstore`.`categories` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `created` TIMESTAMP,
  `modified` TIMESTAMP,
PRIMARY KEY (`id`));

#Products Categories
CREATE TABLE `clickstore`.`products_categories` (
  `product_id` INT NOT NULL,
  `category_id` INT NOT NULL,
  `created` TIMESTAMP,
  PRIMARY KEY (`product_id`, `category_id`),
  CONSTRAINT `product_id`
    FOREIGN KEY (`product_id`)
    REFERENCES `clickstore`.`products` (`id`),
  CONSTRAINT `category_id`
    FOREIGN KEY (`category_id`)
    REFERENCES `clickstore`.`categories` (`id`)
);

#Orders
CREATE TABLE `clickstore`.`orders` (
 `id` INT NOT NULL AUTO_INCREMENT,
 `user_name` VARCHAR(100) NOT NULL,
 `user_email` VARCHAR(100) NOT NULL,
 `total` DECIMAL(10,2) NOT NULL DEFAULT 0,
 `created` TIMESTAMP,
 `modified` TIMESTAMP,
PRIMARY KEY (`id`));

#Products Orders
CREATE TABLE `clickstore`.`products_orders` (
  `order_id` INT NOT NULL,
  `product_id` INT NOT NULL,
  `quantity` INT NOT NULL,
  `created` TIMESTAMP,
  `modified` TIMESTAMP,
  PRIMARY KEY (`order_id`, `product_id`)
);

