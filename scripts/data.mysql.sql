#scripts/data.mysql.sql

#Categories
INSERT INTO `clickstore`.`categories` (`id`,`name`) VALUES ('1', 'Cameras & Lentes');
INSERT INTO `clickstore`.`categories` (`id`,`name`) VALUES ('2', 'Acessorios');
INSERT INTO `clickstore`.`categories` (`id`,`name`) VALUES ('3', 'Bolsas & Cases');
INSERT INTO `clickstore`.`categories` (`id`,`name`) VALUES ('4', 'Estudo');
INSERT INTO `clickstore`.`categories` (`id`,`name`) VALUES ('5', 'Uso pessoal');


INSERT INTO `clickstore`.`products` (`id`,`name`, `description`, `price`, `img`) 
VALUES ('1', 
		'Câmera Canon EOS Rebel T3i', 'Câmera DSLR de categoria profissional - Acompanha lente EF-S 18-55mm f / 3.5-5.6 IS II', 
		'1500,00', 'canon_t3i.jpg');
INSERT INTO `clickstore`.`products_categories` (`product_id`, `category_id`) VALUES ('1', '1');

INSERT INTO `clickstore`.`products` (`id`,`name`, `description`, `price`, `img`) 
VALUES ('2', 'Câmera Canon EOS Rebel T4i', 'Câmera DSLR com lente EF-S 18-135mm', '2500,00', 'canon_t4i.jpg');
INSERT INTO `clickstore`.`products_categories` (`product_id`, `category_id`) VALUES ('2', '1');

INSERT INTO `clickstore`.`products` (`id`,`name`, `description`, `price`, `img`) 
VALUES ('3', 'Nikon COOLPIX L830 ', 'Câmera digital - 16 MP CMOS / 34x Zoom', '900,00', 'nikon_coolpix-L830.jpg');
INSERT INTO `clickstore`.`products_categories` (`product_id`, `category_id`) VALUES ('3', '1');
