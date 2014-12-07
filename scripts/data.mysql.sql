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

INSERT INTO `clickstore`.`products` (`id`,`name`, `description`, `price`, `img`) 
VALUES ('4', 'Filtro UV para Lente 58mm',  'Absorvem os raios ultra-violetas proporcionando contraste e nitidez as suas imagens digitais', '40,00', 'filtro-uv-para-lente-58mm.jpg');
INSERT INTO `clickstore`.`products_categories` (`product_id`, `category_id`) VALUES ('4', '2');

INSERT INTO `clickstore`.`products` (`id`,`name`, `description`, `price`, `img`) 
VALUES ('5', 'Bateria Canon LP-E8',  'Compatível com T3i e T4i', '90,00', 'bateria_lpe8_canon.jpg');
INSERT INTO `clickstore`.`products_categories` (`product_id`, `category_id`) VALUES ('5', '2');

INSERT INTO `clickstore`.`products` (`id`,`name`, `description`, `price`, `img`) 
VALUES ('6', 'Carregador de bateria Canon',  'Compatível com baterias LP-E8', '50,00', 'battery_charger-canon.jpg');
INSERT INTO `clickstore`.`products_categories` (`product_id`, `category_id`) VALUES ('6', '2');

INSERT INTO `clickstore`.`products` (`id`,`name`, `description`, `price`, `img`) 
VALUES ('7', 'Cartão de Memória Sandisk 16GB',  'Cartão de Memória MicroSD Classe 10 com capacidade para 16GB - Capacidade de leitura de até 30 MB/s', '130,00', 'sandisk_16g.jpg');
INSERT INTO `clickstore`.`products_categories` (`product_id`, `category_id`) VALUES ('7', '2');

INSERT INTO `clickstore`.`products` (`id`,`name`, `description`, `price`, `img`) 
VALUES ('8', 'Bolsa Lowepro',  'Opcões de cor: vermelho e preto', '200,00', 'bolsa-lowepro.jpg');
INSERT INTO `clickstore`.`products_categories` (`product_id`, `category_id`) VALUES ('8', '3');

INSERT INTO `clickstore`.`products` (`id`,`name`, `description`, `price`, `img`) 
VALUES ('9', 'Anel câmera',  'Opcões de cor: vermelho e preto', '30,00', 'anel-camera.jpg');
INSERT INTO `clickstore`.`products_categories` (`product_id`, `category_id`) VALUES ('9', '5');

INSERT INTO `clickstore`.`products` (`id`,`name`, `description`, `price`, `img`) 
VALUES ('10', 'Conjunto Nikon - D3200',  'Câmera Nikon D3200 24.2 MP CMOS com lentes 18-55mm e 55-200mm; Acompanha bolsa.', '3000,00', 'nikon-set.jpg');
INSERT INTO `clickstore`.`products_categories` (`product_id`, `category_id`) VALUES ('10', '1');
INSERT INTO `clickstore`.`products_categories` (`product_id`, `category_id`) VALUES ('10', '3');



