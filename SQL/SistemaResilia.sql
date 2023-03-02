CREATE TABLE `cursos` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` varchar(100),
  `unidade` varchar(255),
  `endereço` int NOT NULL
  );
CREATE TABLE `turmas` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `codigo` int(3),
  `nome` varchar(100),
  `id_curso` varchar(100),
  `Turma_id` int NOT NULL
);
CREATE TABLE `alunos` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` varchar(100),
  `cpf` int(11),
  `telefone` int(12),
  `email` varchar(100),
  `sexo` enum('feminino','masculino','outro') 
);
CREATE TABLE `professor` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `cpf` int(11) NOT NULL,
  `email` varchar(255),
  `telefone` int(11),
  `sexo` enum('feminino','masculino','outro')
  );
  CREATE TABLE `monitores` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `cpf` int(11) NOT NULL,
  `email` varchar(255),
  `telefone` int(11),
  `sexo` enum('feminino','masculino','outro')
);
ALTER TABLE `alunos` ADD FOREIGN KEY (`id_turmas`) REFERENCES `turmas` (`id`);
ALTER TABLE `professor` ADD FOREIGN KEY (`id_turmas`) REFERENCES `turmas` (`id`);
ALTER TABLE `turmas` ADD FOREIGN KEY (`id_cursos`) REFERENCES `cursos` (`id`);
ALTER TABLE `monitores` ADD FOREIGN KEY (`id_turmas`) REFERENCES `turmas` (`id`);
