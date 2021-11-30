CREATE TABLE `tb_postagens` (
	`id Bigint` bigint NOT NULL AUTO_INCREMENT,
	`titulo` varchar(100) NOT NULL AUTO_INCREMENT,
	`texto` varchar(1000) NOT NULL AUTO_INCREMENT,
	`date` DATE NOT NULL AUTO_INCREMENT,
	`tema_id` bigint NOT NULL,
	`usuario_id` bigint NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`id Bigint`)
);

CREATE TABLE `tb_temas` (
	`id` bigint NOT NULL,
	`descricao` varchar(255) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`id`,`descricao`)
);

CREATE TABLE `tb_usuarios` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`usuario` varchar(255) NOT NULL AUTO_INCREMENT,
	`senha` varchar(255) NOT NULL,
	`foto` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `tb_postagens` ADD CONSTRAINT `tb_postagens_fk0` FOREIGN KEY (`usuario_id`) REFERENCES ``(``);

ALTER TABLE `tb_temas` ADD CONSTRAINT `tb_temas_fk0` FOREIGN KEY (`id`) REFERENCES `tb_postagens`(`tema_id`);

ALTER TABLE `tb_usuarios` ADD CONSTRAINT `tb_usuarios_fk0` FOREIGN KEY (`foto`) REFERENCES `tb_postagens`(`usuario_id`);




