-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: mariadb
-- Tempo de geração: 01-Jun-2023 às 17:55
-- Versão do servidor: 10.6.5-MariaDB-1:10.6.5+maria~focal
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `POLITECNICO`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `idAluno` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `sobrenome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`idAluno`, `nome`, `sobrenome`) VALUES
(1, 'João', 'das Calças'),
(2, 'Zeca', 'Gado'),
(3, 'Yuri', 'Santos'),
(4, 'Paulo', 'Gonçalves'),
(5, 'Thiago', 'Silva'),
(6, 'Rodrigo', 'Santos'),
(7, 'Carlos', 'Rodrigues'),
(8, 'Vagner', 'Cruz'),
(9, 'Breno', 'Lima'),
(10, 'Jaime', 'Lannister'),
(11, 'Vitor', 'Dias'),
(12, 'Rafael', 'Oliveira');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno_grade`
--

CREATE TABLE `aluno_grade` (
  `matricula` int(11) NOT NULL,
  `idAluno` int(11) DEFAULT NULL,
  `idGrade` int(11) DEFAULT NULL,
  `integralizado` tinyint(1) NOT NULL,
  `anoEntrada` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluno_grade`
--

INSERT INTO `aluno_grade` (`matricula`, `idAluno`, `idGrade`, `integralizado`, `anoEntrada`) VALUES
(1, 3, 1, 1, 2018),
(2, 4, 3, 0, 2023),
(5, 5, 2, 1, 2022),
(8, 8, 2, 0, 2022),
(100, 11, 7, 1, 2021),
(101, 12, 7, 0, 2022),
(123, 1, 1, 1, 2017),
(200, 9, 1, 0, 2022),
(201, 10, 1, 0, 2015),
(456, 2, 2, 0, 2022),
(457, 5, 1, 1, 2023),
(458, 6, 1, 0, 2023);

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `idCurso` int(11) NOT NULL,
  `idPolitecnico` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `tipo` varchar(25) NOT NULL,
  `autorizacao` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`idCurso`, `idPolitecnico`, `nome`, `tipo`, `autorizacao`) VALUES
(1, 1, 'Licenciatura em Engenharia Informática', 'Licenciatura', NULL),
(2, 2, 'Negócios Internacionais', 'Licenciatura', '6804/2019'),
(3, 2, 'Informática', 'Licenciatura', '9236/2020'),
(4, 2, 'Gestão de Marketing', 'Licenciatura', '6943/2020'),
(5, 2, 'Gestão de Empresas', 'Licenciatura', '8934/2022'),
(6, 1, 'Tecnologias de Energia', 'Licenciatura', NULL),
(7, 2, 'Contabilidade e Fiscalidade', 'Licenciatura', '779/2018'),
(8, 2, 'Licenciatura em Tecnologia e Gestão Industrial', 'Licenciatura', '9236/2016');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `idDisciplina` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `ch` int(11) DEFAULT NULL,
  `ects` float DEFAULT NULL,
  `sigla` varchar(100) DEFAULT NULL,
  `codDisciplina` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `disciplina`
--

INSERT INTO `disciplina` (`idDisciplina`, `nome`, `ch`, `ects`, `sigla`, `codDisciplina`) VALUES
(1, 'Introdução à Programação Orientada por Objetos', 0, 6, 'IPOO', 'INF32146'),
(2, 'Matemática I', 0, 6, 'MI', 'INF32144'),
(3, 'Redes de Computadores', 0, 6, 'RC', 'INF32166'),
(4, 'Arquitetura Computacional e Microprocessadores', 0, 6, 'ACM', 'INF32192'),
(5, 'Economia', 0, 3, 'ECO', 'INF32193'),
(6, 'Introdução à Gestão de Empresas', 0, 3, 'IGE', 'INF32194'),
(7, 'Programação Orientada por Objetos	', 0, 6, 'POO', 'INF32150'),
(8, 'Algoritmos e Tipos Abstratos de Dados', 0, 6, 'ATBD', 'INF32153'),
(9, 'Análise Numérica', 0, 6, 'NA', 'INF32151'),
(10, 'Bases de Dados', 0, 6, 'BD', 'INF32152'),
(11, 'ntrodução à Programação para a Web', 0, 3, 'IPW', 'INF32198'),
(12, 'Comportamento Organizacional e Gestão de Equipas', 0, 3, 'COGE', 'INF32203'),
(13, 'Sistemas Operativos', 0, 6, 'SO', 'INF32154'),
(14, 'Programação Avançada', 0, 6, 'PA', 'INF32157'),
(15, 'Matemática Discreta', 0, 6, 'MD', 'INF32155'),
(16, 'Programação para a Web', 0, 6, 'PW', 'INF32206'),
(17, 'Interação Pessoa-Máquina', 0, 6, 'IPM', 'INF32156'),
(18, 'Computação Móvel', 0, 6, 'CM', 'INF32186'),
(19, 'Computação Paralela e Distribuída', 0, 6, 'CPD', 'INF32208'),
(20, 'Métodos Estatísticos', 0, 6, 'ME', 'INF32209'),
(21, 'Programação Visual', 0, 6, 'PRGVIS', 'INF32188'),
(22, 'Engenharia de Software Aplicada', 0, 12, 'ESA', 'INF32213'),
(23, 'Inteligência Artificial', 0, 6, 'IA', 'INF32185'),
(24, 'Gestão de Projetos Informáticos', 0, 3, 'GPI', 'INF32210'),
(25, 'Inovação e Empreendedorismo', 0, 3, 'IE', 'INF32211'),
(26, 'Portfólio em Engenharia Informática', 0, 6, 'PEF', 'INF32212'),
(27, 'Competências Transversais', 23, 5, 'CT', 'LNI03'),
(28, 'Espanhol de Negócios', 36, 4, 'EN', 'LNI35'),
(29, 'Introdução à Gestão', 18, 5, 'IG', 'LNI01'),
(30, 'Introdução à Direito', 42, 5, 'ID', 'LNI02'),
(31, 'Introdução aos Métodos Quantitativos', 60, 6, 'IMQ', 'LNI06'),
(32, 'Microeconomia', 11, 5, 'MIC', 'LNI05'),
(33, 'Contabilidade Financeira e Relato', 40, 5, 'CFR', 'LNI07'),
(34, 'Estatística Aplicada à Gestão', 36, 6, 'EAG', 'LNI12'),
(35, 'Inglês de Negócios I', 27, 4, 'IN', 'LNI08'),
(36, 'Macroeconomia', 27, 4, 'MAC', 'LNI09'),
(37, 'Marketing', 40, 6, 'MKT', 'LNI11'),
(38, 'Tecnologias e Sistemas de Informação', 32, 5, 'TSI', 'LNI10'),
(39, 'Comportamento Organizacional', 42, 4, 'CO', 'LNI13'),
(40, 'Contabilidade de Gestão', 60, 6, 'CG', 'LNI15'),
(41, 'Direito Comercial e da Propriedade Industrial', 42, 5, 'DCPID', 'LNI14'),
(42, 'Gestão Financeira', 56, 6, 'GF', 'LNI17'),
(43, 'Inglês de Negócios II', 45, 4, 'INII', 'LNI16'),
(44, 'Pesquisa de Mercado', 42, 5, 'PM', 'LNI18'),
(45, 'Direito dos Negócios Internacionais', 24, 5, 'DNI', 'LNI20'),
(46, 'Economia Internacional', 36, 6, 'EI', 'LNI22'),
(47, 'Finanças Internacionais', 40, 6, 'FINI', 'LNI23'),
(48, 'Fiscalidade Internacional', 32, 5, 'FISCI', 'LNI21'),
(49, 'Logistica Internacional', 30, 5, 'LI', 'LNI19'),
(50, 'Marketing Internacional', 32, 5, 'MKTI', 'LNI24'),
(51, 'Gestão Estratégica Internacional', 42, 5, 'GEI', 'LNI25'),
(52, 'Gestão Internacional de Recursos Humanos', 45, 5, 'GIRH', 'LNI28'),
(53, 'Inovação e Desenvolvimento de Produtos', 45, 5, 'IDP', 'LNI29'),
(54, 'Marketing Digital', 42, 5, 'MKTD', 'LNI30'),
(55, 'Operações Comerciais Internacionais', 45, 5, 'OCI', 'LNI26'),
(56, 'Operações da Tesouraria Internacional', 39, 5, 'OTI', 'LNI27'),
(57, 'Empreendedorismo', 35, 5, 'EMPR', 'LNI33'),
(58, 'Estágio / Projecto em Negócios Internacionais', 42, 15, 'EST/PN', 'LNI34'),
(59, 'Ética dos Negócios Internacionais	', 27, 5, 'ENI', 'LNI31'),
(60, 'Seminários de Internacionalização	', 30, 5, 'SI', 'LNI32'),
(61, 'Arquitetura de Computadores e Sistemas Operativos', 150, 6, '', 'LIB10101'),
(62, 'Fundamentos de Programação', 175, 7, 'FP', 'LIB10102'),
(63, 'Matemática Discreta', 150, 6, 'MD', 'LIB10102'),
(64, 'Organização e Gestão de Empresas', 125, 5, 'OGE', 'LIB10149'),
(65, 'Sistemas Multimédia', 150, 6, 'SM', 'LIB10122'),
(66, 'Bases de Dados I', 150, 6, 'BD I', 'LIB10108'),
(67, 'Cálculo', 150, 6, 'CAL', 'LIB10105'),
(68, 'Programação Orientada aos Objetos', 150, 6, ' 	POO', 'LIB10151'),
(69, 'Redes de Computadores', 150, 6, 'RC', 'LIB10106'),
(70, 'Sistemas Web', 150, 6, 'SW', 'LIB10106'),
(71, 'Iniciação à Matemática', 0, 0, 'IM', 'LIB10159'),
(72, 'Algoritmos e Estrutura de Dados', 175, 7, 'AED', 'LIB10142'),
(73, 'Análise e Conceção de Sistemas de Informação', 150, 6, 'ACSI', 'LIB10113'),
(74, 'Bases de Dados II', 175, 7, 'BD II', 'LIB10118'),
(75, 'Serviços de Redes', 125, 5, 'SR', 'LIB10134'),
(76, 'Tecnologias da Internet', 125, 5, 'TI', 'LIB10135'),
(77, 'Administração e Segurança de Sistemas e de Redes', 150, 6, 'ASSR', 'LIB10137'),
(78, 'Aplicações Multimédia', 150, 6, 'AM', 'LIB10153'),
(79, 'Integração Sistemas', 150, 6, 'IS', 'LIB10144'),
(80, 'Interfaces Pessoa-Máquina', 0, 6, 'IPM', 'LIB10150'),
(81, 'Probabilidades e Estatistica', 150, 6, 'PE', 'LIB10152'),
(82, 'Desenvolvimento para Dispositivos Móveis', 150, 6, 'DDM', 'LIB10139'),
(83, 'Gestão de Projetos', 175, 7, 'GP', 'LIB10127'),
(84, 'Inteligência Artificial', 175, 7, 'IA', 'LIB10143'),
(85, 'Marketing para as Tecnologias', 125, 5, 'MT', 'LIB10138'),
(86, 'Computação na Nuvem', 125, 5, 'CN', 'LIB10146'),
(87, 'Direito e Ética da Sociedade da Informação', 125, 5, 'DESI', 'LIB10130'),
(88, 'Projeto Aplicado', 250, 10, 'PA', 'LIB10155'),
(89, 'Sistemas de Informação para a Gestão', 125, 5, 'SIG', 'LIB10156'),
(90, 'Aplicações Código Aberto', 0, 5, 'ACA', 'LIB10154'),
(91, 'Contabilidade Empresarial', 0, 5, 'CE', 'LIB10158'),
(92, 'Tecnologias para o Negócio Eletrónico', 0, 5, 'TNE', 'LIB10145'),
(93, 'Cibersegurança', 125, 5, 'CS', 'LIB10147'),
(94, 'Finanças', 0, 5, 'FIN', 'LIB10157'),
(95, 'Internet das Coisas', 0, 5, 'IC', 'LIB10148'),
(96, 'Competencias Transversais', 0, 6, 'CT', 'LGM01'),
(97, 'Economia', 0, 6, 'ECO', 'LGM03'),
(98, 'Estatistica Aplicada ao Marketing I', 0, 6, 'EAM I', 'LGM05'),
(99, 'Gestao', 0, 6, 'GEST', 'LGM04'),
(100, 'Marketing', 0, 6, 'MKT', 'LGM02'),
(101, 'Comportamento do Consumidor', 0, 6, 'CC', 'LGM06'),
(102, 'Contabilidade', 0, 6, 'CONT', 'LGM09'),
(103, 'Direito do Marketing', 0, 6, 'DM', 'LGM10'),
(104, 'Estatistica Aplicada ao Marketing II', 0, 6, 'EAM II', 'LGM08'),
(105, 'Estrategia Empresarial', 0, 6, 'EE', 'LGM07'),
(106, 'Estudos de Mercado', 0, 6, 'EM', 'LGM011'),
(107, 'Financas', 0, 6, 'FIN', 'LGM013'),
(108, 'Gestao de Operacoes e Logistica', 0, 6, 'GOL', 'LGM012'),
(109, 'Gestao do Produto e do Preco', 0, 6, 'GPP', 'LGM014'),
(110, 'Marketing Digital ', 0, 6, 'MD', 'LGM015'),
(111, 'Comunicacao de Marketing', 0, 6, 'CM', 'LGM016'),
(112, 'Distribuicao e Merchandising', 0, 6, 'DM', 'LGM019'),
(113, 'Gestao e Tecnicas de Vendas', 0, 6, 'GTV', 'LGM020'),
(114, 'Marketing Internacional', 0, 6, 'MI', 'LGM017'),
(115, 'Web Marketing e Comercio Eletronico ', 0, 6, 'WMCE', 'LGM018'),
(116, 'Comunicacao Visual e Design Grafico', 0, 6, 'CVDG', 'LGM021'),
(117, 'Gestao de Marca', 0, 6, 'GM', 'LGM025'),
(118, 'Gestao de Recursos Humanos', 0, 6, 'GRH', 'LGM022'),
(119, 'Lideranca e Gestao de Mudanca', 0, 6, 'LGM', 'LGM023'),
(120, 'Marketing de Servicos', 0, 6, 'MS', 'LGM024'),
(121, 'Inovacao e Empreendorismo', 0, 6, 'IE', 'LGM028'),
(122, 'Projeto Aplicado ou Estagio', 0, 6, 'PAE', 'LGM026'),
(123, 'Simulacao de Gestao', 0, 6, 'SG', 'LGM027'),
(124, 'Marketing Analytics', 0, 6, 'MA', 'LGM030'),
(125, 'Marketing Business to Business', 0, 6, 'MBB', 'LGM029'),
(126, 'Competências Transversais', 0, 5, NULL, 'LGEBP142'),
(127, 'Contabilidade Financeira I', 0, 6, NULL, 'LGEBP106'),
(128, 'História Econômica e Empresarial', 0, 5, NULL, 'LGEBP140'),
(129, 'Introdução à Gestão', 0, 6, NULL, 'LGEBP102'),
(130, 'Introdução aos Métodos Quantitativos', 0, 5, NULL, 'LGEBP143'),
(131, 'Microeconomia', 0, 6, NULL, 'LGEBP103'),
(132, 'Iniciação à Matemática', 0, 0, NULL, 'LGEBP170'),
(133, 'Contabilidade Financeira II', 0, 6, NULL, 'LGEBP112'),
(134, 'Introdução ao Direito', 0, 5, NULL, 'LGEBP110'),
(135, 'Língua Inglesa', 0, 5, NULL, 'LGEBP144'),
(136, 'Macroeconomia', 0, 5, NULL, 'LGEBP109'),
(137, 'Matemática Aplicada à Gestão', 0, 6, NULL, 'LGEBP101'),
(138, 'Tecnologias e Sistemas de Informação', 0, 6, NULL, 'LGEBP145'),
(139, 'Análise Financeira', 0, 5, NULL, 'LGEBP114'),
(140, 'Cálculo Financeiro', 0, 6, NULL, 'LGEBP107'),
(141, 'Contabilidade de Gestão I', 0, 6, NULL, 'LGEBP181'),
(142, 'Direito das Empresas', 0, 5, NULL, 'LGEBP146'),
(143, 'Estatística Aplicada à Gestão', 0, 5, NULL, 'LGEBP148'),
(144, 'Marketing I', 0, 5, NULL, 'LGEBP147'),
(145, 'Análise de Dados para Gestão', 0, 6, NULL, 'LGEBP151'),
(146, 'Comércio e Investimento Internacional', 0, 5, NULL, 'LGEBP149'),
(147, 'Comportamento Organizacional', 0, 5, NULL, 'LGEBP127'),
(148, 'Gestão de Recursos Humanos', 0, 6, NULL, 'LGEBP123'),
(149, 'Gestão Financeira', 0, 5, NULL, 'LGEBP124'),
(150, 'Marketing II', 0, 5, NULL, 'LGEBP150'),
(151, 'Avaliação de Investimentos', 0, 5, NULL, 'LGEBP153'),
(152, 'Contabilidade de Gestão II', 0, 5, NULL, 'LGEBP139'),
(153, 'Empreendedorismo', 0, 6, NULL, 'LGEBP129'),
(154, 'Estudos de Mercado', 0, 5, NULL, 'LGEBP154'),
(155, 'Logística e Gestão de Operações', 0, 6, NULL, 'LGEBP152'),
(156, 'Estratégia Empresarial', 0, 5, NULL, 'LGEBP183'),
(157, 'Fiscalidade', 0, 6, NULL, 'LGEBP125'),
(158, 'Simulação Empresarial', 0, 5, NULL, 'LGEBP182'),
(159, 'Auditoria Financeira', 0, 5, NULL, 'LGEBP169'),
(160, 'Comunicação de Marketing', 0, 5, NULL, 'LGEBP160'),
(161, 'Direito do Trabalho', 0, 5, NULL, 'LGEBP155'),
(162, 'Gestão Comercial e Vendas', 0, 5, NULL, 'LGEBP161'),
(163, 'Gestão da Qualidade', 0, 5, NULL, 'LGEBP134'),
(164, 'Gestão de Conteúdos', 0, 5, NULL, 'LGEBP185'),
(165, 'Gestão de Produtos e Marcas', 0, 5, NULL, 'LGEBP162'),
(166, 'Gestão de Projetos', 0, 5, NULL, 'LGEBP189'),
(167, 'Gestão de Tesouraria', 0, 5, NULL, 'LGEBP137'),
(168, 'Inglês de Negócios', 0, 5, NULL, 'LGEBP121'),
(169, 'Instituições e Políticas Europeias', 0, 5, NULL, 'LGEBP157'),
(170, 'Marketing Internacional', 0, 5, NULL, 'LGEBP128'),
(171, 'Negócio Eletrônico', 0, 0, NULL, 'LGEBP186'),
(172, 'Planejamento e Controle de Gestão', 0, 5, NULL, 'LGEBP138'),
(173, 'Auditoria Financeira', 0, 5, NULL, 'LGEBP169'),
(174, 'Comunicação de Marketing', 0, 5, NULL, 'LGEBP160'),
(175, 'Direito do Trabalho', 0, 5, NULL, 'LGEBP155'),
(176, 'Gestão de Comercial e Vendas', 0, 5, NULL, 'LGEBP161'),
(177, 'Gestão da Qualidade', 0, 5, NULL, 'LGEBP134'),
(178, 'Gestão de Conteúdos', 0, 5, NULL, 'LGEBP185'),
(179, 'Gestão de Produtos e Marcas', 0, 5, NULL, 'LGEBP162'),
(180, 'Gestão de Projetos', 0, 5, NULL, 'LGEBP189'),
(181, 'Gestão de Tesouraria', 0, 5, NULL, 'LGEBP137'),
(182, 'Inglês de Negócios', 0, 5, NULL, 'LGEBP121'),
(183, 'Instituições e Políticas Europeias', 0, 5, NULL, 'LGEBP157'),
(184, 'Marketing Internacional', 0, 5, NULL, 'LGEBP128'),
(185, 'Planejamento e Controlo de Gestão', 0, 5, NULL, 'LGEBP138'),
(186, 'Estágio', 0, 11, NULL, 'LGEBP187'),
(187, 'Projeto Aplicado', 0, 11, NULL, 'LGEBP188'),
(188, 'Química', 0, 6, 'QUIM', 'LTE11102'),
(189, 'Mecânica', 0, 6, 'MEC', 'LTE11105'),
(190, 'Matemática I', 0, 6, 'MATI', 'LTE11101'),
(191, 'Materiais', 0, 6, 'MAT', 'LTE21111'),
(192, 'Introdução às Tecnologias de Energia', 0, 3, 'ITE', 'LTE11107'),
(193, 'Desenho Geral', 0, 3, 'DG', 'LTE11106'),
(194, 'Termodinâmica', 0, 6, 'TERM', 'LTE12110'),
(195, 'Equipamentos e Esquemas Elétricos', 0, 6, 'EEE', 'LTE12109'),
(196, 'Matemática II', 0, 6, 'MATII', 'LTE12106'),
(197, 'Mecânica dos Fluidos', 0, 6, 'MF', 'LTE21112'),
(198, 'Eletrotecnia Aplicada', 0, 6, 'EA', 'LTE12111'),
(199, 'Transmissão de Calor e Massa', 0, 6, 'TCM', 'LTE21114'),
(200, 'Eletrónica', 0, 6, 'ELET', 'LTE21113'),
(201, 'Aplicações de Matemática', 0, 6, 'AM', 'LTE21118'),
(202, 'Aquecimento e Energia Térmica Renovável', 0, 6, 'AETR', 'LTE21117'),
(203, 'Sistemas de Energia Elétrica Renovável', 0, 6, 'SEER', 'LTE21116'),
(204, 'Controlo Industrial', 0, 6, 'CI', 'LTE22120'),
(205, 'Manutenção', 0, 6, 'MANU', 'LTE22117'),
(206, 'Instrumentação e Medida', 0, 6, 'IM', 'LTE31121'),
(207, 'Probabilidades e Estatística', 0, 6, 'PE', 'LTE22121'),
(208, 'Máquinas Elétricas', 0, 6, 'ME', 'LTE22122'),
(209, 'Qualidade, Ambiente e Segurança', 0, 6, 'QAS', 'LTE31123'),
(210, 'Automação', 0, 6, 'AUT', 'LTE31124'),
(211, 'Eletrónica de Potência', 0, 6, 'EP', 'LTE31125'),
(212, 'Climatização', 0, 6, 'CL', 'LTE31128'),
(213, 'Comportamento Organizacional e Gestão de Equipas', 0, 3, 'COGE', 'LTE31127'),
(214, 'Introdução à Gestão de Empresas', 0, 3, 'IGE', 'LTE31126'),
(215, 'Inovação e Empreendedorismo', 0, 3, 'IE', 'LTE32127'),
(216, 'Estágio', 0, 21, 'EST', 'LTE32129'),
(217, 'Auditorias e Gestão de Energia', 0, 6, 'AGE', 'LTE32128'),
(218, 'Contabilidade Financeira I', 0, 7.5, NULL, 'LCFB10101'),
(219, 'Gestão', 0, 4.5, NULL, 'LCFB10143'),
(220, 'Matemática Aplicada', 0, 4.5, NULL, 'LCFB10102'),
(221, 'Microeconomia', 0, 4.5, NULL, 'LCFB10109'),
(222, 'Noções Fundamentais de Direito', 0, 4.5, NULL, 'LCFB10144'),
(223, 'Tecnologias de Informação e Comunicação', 0, 4.5, NULL, 'LCFB10142'),
(224, 'Contabilidade Financeira II', 0, 7.5, NULL, 'LCFB10107'),
(225, 'Direito Fiscal', 0, 3, NULL, 'LCFB10103'),
(226, 'Estatística Aplicada', 0, 4.5, NULL, 'LCFB10154'),
(227, 'Fiscalidade Empresarial I', 0, 6, NULL, 'LCFB10111'),
(228, 'Inglês de Negócios', 0, 4.5, NULL, 'LCFB10155'),
(229, 'Macroeconomia', 0, 4.5, NULL, 'LCFB10116'),
(230, 'Análise de Dados', 0, 4.5, NULL, 'LCFB10156'),
(231, 'Cálculo Financeiro', 0, 6, NULL, 'LCFB10118'),
(232, 'Contabilidade de Gestão I', 0, 7.5, NULL, 'LCFB10113'),
(233, 'Direito Comercial', 0, 6, NULL, 'LCFB10110'),
(234, 'Fiscalidade Empresarial II', 0, 6, NULL, 'LCFB10115'),
(235, 'Análise e Gestão Financeira', 0, 6, NULL, 'LCFB10148'),
(236, 'Contabilidade de Gestão II', 0, 6, NULL, 'LCFB10119'),
(237, 'Contabilidade Pública', 0, 6, NULL, 'LCFB10129'),
(238, 'Controlo Interno', 0, 4.5, NULL, 'LCFB10122'),
(239, 'Fiscalidade Internacional', 0, 3, NULL, 'LCFB10121'),
(240, 'Gestão de Recursos Humanos', 0, 4.5, NULL, 'LCFB10123'),
(241, 'Análise de Projetos de Investimento', 0, 6, NULL, 'LCFB10150'),
(242, 'Auditoria Financeira', 0, 4.5, NULL, 'LCFB10127'),
(243, 'Contabilidade Financeira Avançada', 0, 6, NULL, 'LCFB10149'),
(244, 'Direito do Trabalho', 0, 4.5, NULL, 'LCFB10120'),
(245, 'Ética e Deontologia Profissional', 0, 3, NULL, 'LCFB10130'),
(246, 'Planeamento e Controlo de Gestão', 0, 6, NULL, 'LCFB10135'),
(247, 'Consolidação de Contas e Tributação', 0, 6, NULL, 'LCFB10158'),
(248, 'Relato Contabilístico e Sustentabilidade', 0, 4, NULL, 'LCFB10157'),
(249, 'Estágio Curricular', 0, 20, NULL, 'LCFB10133'),
(250, 'Simulação Empresarial', 0, 20, NULL, 'LCFB10132'),
(251, 'Aplicações de Física', 189, 7, 'AF', 'TGI01'),
(252, 'Introdução à Gestão', 108, 4, 'IG', 'TGI05'),
(253, 'Métodos Matemáticos I', 108, 4, 'MMI', 'TGI41 	'),
(254, 'Aplicações de Eletrotecnia', 189, 7, 'AE', 'TGI04'),
(255, 'Introdução à Economia', 108, 4, 'IE', 'TGI02'),
(256, 'Inglês Empresarial', 108, 4, 'IE', 'TGI08'),
(257, 'Introdução à Programação de Computadores', 108, 4, 'IPC', 'TGI09'),
(258, 'Processos Tecnológicos', 189, 7, 'PT', 'TGI07'),
(259, 'Métodos Matemáticos II', 108, 4, 'MMII', 'TGI42'),
(260, 'Marketing Empresarial', 108, 4, 'ME', 'TGI12'),
(261, 'Princípios de Finanças Empresariais', 189, 7, 'PFE', 'TGI10'),
(262, 'Métodos Matemáticos III', 108, 4, 'MMIII', 'TGI36'),
(263, 'Análise de Custos e Controlo de Gestão', 189, 7, 'ACCG', 'TGI13'),
(264, 'Desenho Industrial', 108, 4, 'DI', 'TGI11'),
(265, 'Estatística I', 108, 4, 'EST I', 'TGI37'),
(266, 'Sistemas de Informação', 189, 7, 'SI', 'TGI16'),
(267, 'Economia e Ambiente', 108, 4, 'EA', 'TGI17 	'),
(268, 'Logística e Gestão da Cadeia de Abastecimentos', 108, 4, 'LGCA', 'TGI15'),
(269, 'Tecnologias Ambientais', 108, 4, 'TA', 'TGI21'),
(270, 'Tecnologia Mecânica', 189, 7, 'TM', 'TGI19'),
(271, 'Comportamento Organizacional e Liderança', 108, 4, 'COL', 'TGI26'),
(272, 'Manutenção e Gestão de Equipamentos', 189, 7, 'MGE', 'TGI22'),
(273, 'Estatística II', 108, 4, 'EST II', 'TGI38'),
(274, 'Gestão de Energia na Indústria', 108, 4, 'GEI', 'TGI39'),
(275, 'Gestão e Desenvolvimento de Recursos Humanos', 108, 4, 'GDRH', 'TGI28'),
(276, 'Gestão da Produção e das Operações', 108, 4, 'GPO', 'TGI20'),
(277, 'Empreendedorismo e Criação de Empresas', 108, 4, 'ECE', 'TGI32'),
(278, 'Automação Industrial', 189, 7, 'AI', 'TGI31'),
(279, 'Inovação Tecnológica e Organizacional', 108, 4, 'ITO', 'TGI29'),
(280, 'Ética e Responsabilidade Social', 108, 4, 'ERS', 'TGI34'),
(281, 'Estágio/Projeto em Tecnologia e Gestão Industrial', 378, 14, 'EST', 'TGI43'),
(282, 'Qualidade e Segurança', 108, 4, 'QS', 'TGI30');

-- --------------------------------------------------------

--
-- Estrutura da tabela `grade`
--

CREATE TABLE `grade` (
  `idGrade` int(11) NOT NULL,
  `ano` int(11) NOT NULL,
  `chTotal` int(11) NOT NULL,
  `idCurso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `grade`
--

INSERT INTO `grade` (`idGrade`, `ano`, `chTotal`, `idCurso`) VALUES
(1, 2015, 0, 1),
(2, 2022, 0, 2),
(3, 2022, 0, 3),
(4, 2022, 0, 4),
(5, 2022, 0, 5),
(6, 2021, 0, 6),
(7, 2018, 0, 7),
(8, 2023, 0, 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `grade_disciplina`
--

CREATE TABLE `grade_disciplina` (
  `idGrade` int(11) NOT NULL DEFAULT 0,
  `idDisciplina` int(11) NOT NULL DEFAULT 0,
  `tipo` varchar(25) NOT NULL,
  `periodo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `grade_disciplina`
--

INSERT INTO `grade_disciplina` (`idGrade`, `idDisciplina`, `tipo`, `periodo`) VALUES
(1, 1, 'Obrigatoria', 1),
(1, 2, 'Obrigatoria', 1),
(1, 3, 'Obrigatoria', 1),
(1, 4, 'Obrigatoria', 1),
(1, 5, 'Obrigatoria', 1),
(1, 6, 'Obrigatoria', 1),
(1, 7, 'Obrigatoria', 2),
(1, 8, 'Obrigatoria', 2),
(1, 9, 'Obrigatoria', 2),
(1, 10, 'Obrigatoria', 2),
(1, 11, 'Obrigatoria', 2),
(1, 12, 'Obrigatoria', 2),
(1, 13, 'Obrigatoria', 3),
(1, 14, 'Obrigatoria', 3),
(1, 15, 'Obrigatoria', 3),
(1, 16, 'Obrigatoria', 3),
(1, 17, 'Obrigatoria', 4),
(1, 18, 'Obrigatoria', 4),
(1, 19, 'Obrigatoria', 4),
(1, 20, 'Obrigatoria', 4),
(1, 21, 'Obrigatoria', 5),
(1, 22, 'Obrigatoria', 5),
(1, 23, 'Obrigatoria', 5),
(1, 24, 'Obrigatoria', 5),
(1, 25, 'Obrigatoria', 5),
(1, 26, 'Obrigatoria', 6),
(2, 27, 'OBRIGATÓRIA', 1),
(2, 28, 'OBRIGATÓRIA', 1),
(2, 29, 'OBRIGATÓRIA', 1),
(2, 30, 'OBRIGATÓRIA', 1),
(2, 31, 'OBRIGATÓRIA', 1),
(2, 32, 'OBRIGATÓRIA', 1),
(2, 33, 'OBRIGATÓRIA', 2),
(2, 34, 'OBRIGATÓRIA', 2),
(2, 35, 'OBRIGATÓRIA', 2),
(2, 36, 'OBRIGATÓRIA', 2),
(2, 37, 'OBRIGATÓRIA', 2),
(2, 38, 'OBRIGATÓRIA', 2),
(2, 39, 'OBRIGATÓRIA', 3),
(2, 40, 'OBRIGATÓRIA', 3),
(2, 41, 'OBRIGATÓRIA', 3),
(2, 42, 'OBRIGATÓRIA', 3),
(2, 43, 'OBRIGATÓRIA', 3),
(2, 44, 'OBRIGATÓRIA', 3),
(2, 45, 'OBRIGATÓRIA', 4),
(2, 46, 'OBRIGATÓRIA', 4),
(2, 47, 'OBRIGATÓRIA', 4),
(2, 48, 'OBRIGATÓRIA', 4),
(2, 49, 'OBRIGATÓRIA', 4),
(2, 50, 'OBRIGATÓRIA', 4),
(2, 51, 'OBRIGATÓRIA', 5),
(2, 52, 'OBRIGATÓRIA', 5),
(2, 53, 'OBRIGATÓRIA', 5),
(2, 54, 'OBRIGATÓRIA', 5),
(2, 55, 'OBRIGATÓRIA', 5),
(2, 56, 'OBRIGATÓRIA', 5),
(2, 57, 'OBRIGATÓRIA', 6),
(2, 58, 'OBRIGATÓRIA', 6),
(2, 59, 'OBRIGATÓRIA', 6),
(2, 60, 'OBRIGATÓRIA', 6),
(3, 61, 'Obrigatória', 1),
(3, 62, 'Obrigatória', 1),
(3, 63, 'Obrigatória', 1),
(3, 64, 'Obrigatória', 1),
(3, 65, 'Obrigatória', 1),
(3, 66, 'Obrigatória', 2),
(3, 67, 'Obrigatória', 2),
(3, 68, 'Obrigatória', 2),
(3, 69, 'Obrigatória', 2),
(3, 70, 'Obrigatória', 2),
(3, 71, 'Opcional', 0),
(3, 72, 'Obrigatória', 3),
(3, 73, 'Obrigatória', 3),
(3, 74, 'Obrigatória', 3),
(3, 75, 'Obrigatória', 3),
(3, 76, 'Obrigatória', 3),
(3, 77, 'Obrigatória', 4),
(3, 78, 'Obrigatória', 4),
(3, 79, 'Obrigatória', 4),
(3, 80, 'Obrigatória', 4),
(3, 81, 'Obrigatória', 5),
(3, 82, 'Obrigatória', 5),
(3, 83, 'Obrigatória', 5),
(3, 84, 'Obrigatória', 5),
(3, 85, 'Obrigatória', 5),
(3, 86, 'Obrigatória', 6),
(3, 87, 'Obrigatória', 6),
(3, 88, 'Obrigatória', 6),
(3, 89, 'Obrigatória', 6),
(3, 90, 'Opcional', 0),
(3, 91, 'Opcional', 0),
(3, 92, 'Opcional', 0),
(3, 93, 'Opcional', 0),
(3, 94, 'Opcional', 0),
(3, 95, 'Opcional', 0),
(4, 96, 'obrigatoria', 1),
(4, 97, 'obrigatoria', 1),
(4, 98, 'obrigatoria', 1),
(4, 99, 'obrigatoria', 1),
(4, 100, 'obrigatoria', 1),
(4, 101, 'obrigatoria', 1),
(4, 102, 'obrigatoria', 1),
(4, 103, 'obrigatoria', 1),
(4, 104, 'obrigatoria', 1),
(4, 105, 'obrigatoria', 1),
(4, 106, 'obrigatoria', 2),
(4, 107, 'obrigatoria', 2),
(4, 108, 'obrigatoria', 2),
(4, 109, 'obrigatoria', 2),
(4, 110, 'obrigatoria', 2),
(4, 111, 'obrigatoria', 2),
(4, 112, 'obrigatoria', 2),
(4, 113, 'obrigatoria', 2),
(4, 114, 'obrigatoria', 2),
(4, 115, 'obrigatoria', 2),
(4, 116, 'obrigatoria', 3),
(4, 117, 'obrigatoria', 3),
(4, 118, 'obrigatoria', 3),
(4, 119, 'obrigatoria', 3),
(4, 120, 'obrigatoria', 3),
(4, 121, 'obrigatoria', 3),
(4, 122, 'obrigatoria', 3),
(4, 123, 'obrigatoria', 3),
(4, 124, 'optativa', 3),
(4, 125, 'optativa', 3),
(5, 126, 'OBRIGATÓRIO', 1),
(5, 127, 'OBRIGATÓRIO', 1),
(5, 128, 'OBRIGATÓRIO', 1),
(5, 129, 'OBRIGATÓRIO', 1),
(5, 130, 'OBRIGATÓRIO', 1),
(5, 131, 'OBRIGATÓRIO', 1),
(5, 132, 'OBRIGATÓRIO', 1),
(5, 133, 'OBRIGATÓRIO', 2),
(5, 134, 'OBRIGATÓRIO', 2),
(5, 135, 'OBRIGATÓRIO', 2),
(5, 136, 'OBRIGATÓRIO', 2),
(5, 137, 'OBRIGATÓRIO', 2),
(5, 138, 'OBRIGATÓRIO', 2),
(5, 139, 'OBRIGATÓRIO', 3),
(5, 140, 'OBRIGATÓRIO', 3),
(5, 141, 'OBRIGATÓRIO', 3),
(5, 142, 'OBRIGATÓRIO', 3),
(5, 143, 'OBRIGATÓRIO', 3),
(5, 144, 'OBRIGATÓRIO', 3),
(5, 145, 'OBRIGATÓRIO', 4),
(5, 146, 'OBRIGATÓRIO', 4),
(5, 147, 'OBRIGATÓRIO', 4),
(5, 148, 'OBRIGATÓRIO', 4),
(5, 149, 'OBRIGATÓRIO', 4),
(5, 150, 'OBRIGATÓRIO', 4),
(5, 151, 'OBRIGATÓRIO', 5),
(5, 152, 'OBRIGATÓRIO', 5),
(5, 153, 'OBRIGATÓRIO', 5),
(5, 154, 'OBRIGATÓRIO', 5),
(5, 155, 'OBRIGATÓRIO', 5),
(5, 156, 'OBRIGATÓRIO', 6),
(5, 157, 'OBRIGATÓRIO', 6),
(5, 158, 'OBRIGATÓRIO', 6),
(5, 159, 'OPTATIVA', 0),
(5, 160, 'OPTATIVA', 0),
(5, 161, 'OPTATIVA', 0),
(5, 162, 'OPTATIVA', 0),
(5, 163, 'OPTATIVA', 0),
(5, 164, 'OPTATIVA', 0),
(5, 165, 'OPTATIVA', 0),
(5, 166, 'OPTATIVA', 0),
(5, 167, 'OPTATIVA', 0),
(5, 168, 'OPTATIVA', 0),
(5, 169, 'OPTATIVA', 0),
(5, 170, 'OPTATIVA', 0),
(5, 171, 'OPTATIVA', 0),
(5, 172, 'OPTATIVA', 0),
(5, 173, 'OPTATIVA', 0),
(5, 174, 'OPTATIVA', 0),
(5, 175, 'OPTATIVA', 0),
(5, 176, 'OPTATIVA', 0),
(5, 177, 'OPTATIVA', 0),
(5, 178, 'OPTATIVA', 0),
(5, 179, 'OPTATIVA', 0),
(5, 180, 'OPTATIVA', 0),
(5, 181, 'OPTATIVA', 0),
(5, 182, 'OPTATIVA', 0),
(5, 183, 'OPTATIVA', 0),
(5, 184, 'OPTATIVA', 0),
(5, 185, 'OPTATIVA', 0),
(5, 186, 'OPTATIVA', 0),
(5, 187, 'OPTATIVA', 0),
(6, 188, 'obigatória', 1),
(6, 189, 'obigatória', 1),
(6, 190, 'obigatória', 1),
(6, 191, 'obigatória', 1),
(6, 192, 'obigatória', 1),
(6, 193, 'obigatória', 1),
(6, 194, 'obigatória', 2),
(6, 195, 'obigatória', 2),
(6, 196, 'obigatória', 2),
(6, 197, 'obigatória', 2),
(6, 198, 'obigatória', 2),
(6, 199, 'obigatória', 3),
(6, 200, 'obigatória', 3),
(6, 201, 'obigatória', 3),
(6, 202, 'obigatória', 3),
(6, 203, 'obigatória', 3),
(6, 204, 'obigatória', 4),
(6, 205, 'obigatória', 4),
(6, 206, 'obigatória', 4),
(6, 207, 'obigatória', 4),
(6, 208, 'obigatória', 4),
(6, 209, 'obigatória', 5),
(6, 210, 'obigatória', 5),
(6, 211, 'obigatória', 5),
(6, 212, 'obigatória', 5),
(6, 213, 'obigatória', 5),
(6, 214, 'obigatória', 5),
(6, 215, 'obigatória', 6),
(6, 216, 'obigatória', 6),
(6, 217, 'obigatória', 6),
(7, 218, 'obrigatória', 1),
(7, 219, 'obrigatória', 1),
(7, 220, 'obrigatória', 1),
(7, 221, 'obrigatória', 1),
(7, 222, 'obrigatória', 1),
(7, 223, 'obrigatória', 1),
(7, 224, 'obrigatória', 1),
(7, 225, 'obrigatória', 2),
(7, 226, 'obrigatória', 2),
(7, 227, 'obrigatória', 2),
(7, 228, 'obrigatória', 2),
(7, 229, 'obrigatória', 2),
(7, 230, 'obrigatória', 3),
(7, 231, 'obrigatória', 3),
(7, 232, 'obrigatória', 3),
(7, 233, 'obrigatória', 3),
(7, 234, 'obrigatória', 3),
(7, 235, 'obrigatória', 4),
(7, 236, 'obrigatória', 4),
(7, 237, 'obrigatória', 4),
(7, 238, 'obrigatória', 4),
(7, 239, 'obrigatória', 4),
(7, 240, 'obrigatória', 4),
(7, 241, 'obrigatória', 5),
(7, 242, 'obrigatória', 5),
(7, 243, 'obrigatória', 5),
(7, 244, 'obrigatória', 5),
(7, 245, 'obrigatória', 5),
(7, 246, 'obrigatória', 5),
(7, 247, 'obrigatória', 7),
(7, 248, 'obrigatória', 7),
(7, 249, 'obrigatória', 8),
(7, 250, 'obrigatória', 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `historico`
--

CREATE TABLE `historico` (
  `idHistorico` int(11) NOT NULL,
  `data` date NOT NULL,
  `nota` float NOT NULL,
  `matricula` int(11) DEFAULT NULL,
  `idDisciplina` int(11) DEFAULT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `historico`
--

INSERT INTO `historico` (`idHistorico`, `data`, `nota`, `matricula`, `idDisciplina`, `status`) VALUES
(1, '2012-03-14', 9.5, 123, 1, 'Aprovado'),
(2, '2012-03-14', 9, 123, 2, 'Aprovado'),
(3, '2012-03-14', 9, 123, 3, 'Aprovado'),
(4, '2012-03-14', 8.5, 123, 4, 'Aprovado'),
(5, '2012-03-14', 7.5, 123, 5, 'Aprovado'),
(6, '2012-03-14', 9.5, 123, 6, 'Aprovado'),
(7, '2012-09-14', 9, 123, 7, 'Aprovado'),
(8, '2012-09-14', 9, 123, 8, 'Aprovado'),
(9, '2012-09-14', 10, 123, 9, 'Aprovado'),
(10, '2012-09-14', 10, 123, 10, 'Aprovado'),
(11, '2012-09-14', 9.8, 123, 11, 'Aprovado'),
(12, '2012-09-14', 9.5, 123, 12, 'Aprovado'),
(13, '2012-03-15', 9.5, 123, 7, 'Aprovado'),
(14, '2012-03-15', 9.7, 123, 14, 'Aprovado'),
(15, '2012-03-15', 9.3, 123, 15, 'Aprovado'),
(16, '2012-03-15', 9.2, 123, 16, 'Aprovado'),
(17, '2012-09-15', 8.5, 123, 17, 'Aprovado'),
(18, '2012-09-15', 9.8, 123, 18, 'Aprovado'),
(19, '2012-09-15', 9.3, 123, 19, 'Aprovado'),
(20, '2012-09-15', 9.4, 123, 20, 'Aprovado'),
(21, '2012-03-16', 9.1, 123, 21, 'Aprovado'),
(22, '2012-03-16', 8, 123, 22, 'Aprovado'),
(23, '2012-03-16', 8.7, 123, 23, 'Aprovado'),
(24, '2012-03-16', 9.5, 123, 24, 'Aprovado'),
(25, '2012-03-16', 9, 123, 25, 'Aprovado'),
(26, '2012-09-16', 10, 123, 26, 'Aprovado'),
(27, '2012-03-22', 9, 456, 27, 'Aprovado'),
(28, '2012-03-22', 9, 456, 28, 'Aprovado'),
(29, '2012-03-22', 8.5, 456, 29, 'Aprovado'),
(30, '2012-03-22', 7.5, 456, 30, 'Aprovado'),
(31, '2012-03-22', 9.5, 456, 31, 'Aprovado'),
(32, '2012-09-22', 9, 456, 32, 'Aprovado'),
(33, '2012-09-22', 9, 456, 33, 'Aprovado'),
(34, '2012-09-22', 10, 456, 34, 'Aprovado'),
(35, '2012-09-22', 10, 456, 10, 'Aprovado'),
(36, '2012-09-22', 9.8, 456, 35, 'Aprovado'),
(37, '2012-09-22', 9.5, 456, 36, 'Aprovado'),
(38, '2012-09-22', 9.5, 456, 37, 'Aprovado'),
(103, '2018-01-01', 10, 1, 1, 'Aprovado'),
(104, '2018-01-01', 10, 1, 2, 'Aprovado'),
(105, '2018-01-01', 10, 1, 3, 'Aprovado'),
(106, '2018-01-01', 10, 1, 4, 'Aprovado'),
(107, '2018-01-01', 10, 1, 5, 'Aprovado'),
(108, '2018-01-01', 10, 1, 6, 'Aprovado'),
(109, '2018-06-01', 10, 1, 7, 'Aprovado'),
(110, '2018-06-01', 10, 1, 8, 'Aprovado'),
(111, '2018-06-01', 10, 1, 9, 'Aprovado'),
(112, '2018-06-01', 10, 1, 10, 'Aprovado'),
(113, '2018-06-01', 10, 1, 11, 'Aprovado'),
(114, '2018-06-01', 10, 1, 12, 'Aprovado'),
(115, '2019-01-01', 10, 1, 13, 'Aprovado'),
(116, '2019-01-01', 10, 1, 14, 'Aprovado'),
(117, '2019-01-01', 10, 1, 15, 'Aprovado'),
(118, '2019-01-01', 10, 1, 16, 'Aprovado'),
(119, '2019-06-06', 10, 1, 17, 'Aprovado'),
(120, '2019-06-06', 10, 1, 18, 'Aprovado'),
(121, '2019-06-06', 10, 1, 19, 'Aprovado'),
(122, '2019-06-06', 10, 1, 20, 'Aprovado'),
(123, '2020-01-01', 10, 1, 21, 'Aprovado'),
(124, '2020-01-01', 10, 1, 22, 'Aprovado'),
(125, '2020-01-01', 10, 1, 23, 'Aprovado'),
(126, '2020-01-01', 10, 1, 24, 'Aprovado'),
(127, '2020-01-01', 10, 1, 25, 'Aprovado'),
(128, '2020-06-01', 10, 1, 26, 'Aprovado'),
(129, '2023-01-01', 10, 2, 61, 'Aprovado'),
(130, '2023-01-01', 10, 2, 62, 'Aprovado'),
(131, '2023-01-01', 10, 2, 63, 'Aprovado'),
(132, '2023-01-01', 10, 2, 64, 'Aprovado'),
(133, '2023-01-01', 10, 2, 65, 'Aprovado'),
(134, '2023-01-01', 10, 2, 66, 'Aprovado'),
(135, '2023-06-20', 7.8, 457, 1, 'Aprovado'),
(136, '2023-06-20', 8.5, 457, 2, 'Aprovado'),
(137, '2023-06-20', 9.6, 457, 3, 'Aprovado'),
(138, '2023-06-20', 7.7, 457, 4, 'Aprovado'),
(139, '2023-06-20', 9.1, 457, 5, 'Aprovado'),
(140, '2023-06-20', 8.3, 457, 6, 'Aprovado'),
(141, '2023-06-20', 7.2, 457, 7, 'Aprovado'),
(142, '2023-06-20', 9.8, 457, 8, 'Aprovado'),
(143, '2023-06-20', 7.3, 457, 9, 'Aprovado'),
(144, '2023-06-20', 9.4, 457, 10, 'Aprovado'),
(145, '2023-06-20', 8.6, 457, 11, 'Aprovado'),
(146, '2023-06-20', 7.9, 457, 12, 'Aprovado'),
(147, '2023-06-20', 8.1, 457, 13, 'Aprovado'),
(148, '2023-06-20', 8.2, 458, 1, 'Aprovado'),
(149, '2023-06-20', 7.6, 458, 2, 'Aprovado'),
(150, '2023-06-20', 9.3, 458, 3, 'Aprovado'),
(151, '2023-06-20', 7.7, 458, 4, 'Aprovado'),
(152, '2023-06-20', 9.5, 458, 5, 'Aprovado'),
(153, '2023-06-20', 7.9, 458, 6, 'Aprovado'),
(154, '2023-06-20', 8.4, 458, 7, 'Aprovado'),
(155, '2023-06-20', 7.8, 458, 8, 'Aprovado'),
(156, '2023-06-20', 8.7, 458, 9, 'Aprovado'),
(157, '2023-06-20', 7.4, 458, 10, 'Aprovado'),
(158, '2023-06-20', 9.1, 458, 11, 'Aprovado'),
(159, '2023-06-20', 8.3, 458, 12, 'Aprovado'),
(160, '2023-06-20', 7.7, 458, 13, 'Aprovado'),
(161, '2023-06-20', 8.5, 458, 14, 'Aprovado'),
(162, '2023-06-20', 7.2, 458, 15, 'Aprovado'),
(163, '2023-06-20', 8.8, 458, 16, 'Aprovado'),
(164, '2023-06-20', 7.9, 458, 17, 'Aprovado'),
(165, '2023-06-20', 8.6, 458, 18, 'Aprovado'),
(166, '2023-06-20', 7.5, 458, 19, 'Aprovado'),
(167, '2023-06-20', 8.3, 458, 20, 'Aprovado'),
(168, '2023-06-20', 7.7, 458, 21, 'Aprovado'),
(169, '2023-06-20', 8.5, 458, 22, 'Aprovado'),
(170, '2023-06-20', 7.9, 458, 23, 'Aprovado'),
(171, '2023-06-20', 8.2, 458, 24, 'Aprovado'),
(172, '2023-06-20', 7.8, 458, 25, 'Aprovado'),
(173, '2023-06-20', 8.1, 458, 26, 'Aprovado'),
(174, '2022-01-11', 10, 5, 27, 'Aprovado'),
(175, '2022-01-12', 10, 5, 28, 'Aprovado'),
(176, '2022-01-13', 10, 5, 29, 'Concluído'),
(177, '2022-01-14', 10, 5, 30, 'Concluído'),
(178, '2022-01-15', 10, 5, 31, 'Concluído'),
(179, '2022-01-16', 10, 5, 32, 'Concluído'),
(180, '2022-07-10', 10, 5, 33, 'Concluído'),
(181, '2022-07-11', 10, 5, 34, 'Concluído'),
(182, '2022-07-12', 10, 5, 35, 'Concluído'),
(183, '2022-07-13', 10, 5, 36, 'Concluído'),
(184, '2022-07-14', 10, 5, 37, 'Concluído'),
(185, '2022-07-15', 10, 5, 38, 'Concluído'),
(186, '2023-01-10', 10, 5, 39, 'Concluído'),
(187, '2023-01-11', 10, 5, 40, 'Concluído'),
(188, '2023-01-12', 10, 5, 41, 'Concluído'),
(189, '2023-01-13', 10, 5, 42, 'Concluído'),
(190, '2023-01-14', 10, 5, 43, 'Concluído'),
(191, '2023-01-15', 10, 5, 44, 'Concluído'),
(192, '2023-07-10', 10, 5, 45, 'Concluído'),
(193, '2023-07-11', 10, 5, 46, 'Concluído'),
(194, '2023-07-12', 10, 5, 47, 'Concluído'),
(195, '2023-07-13', 10, 5, 48, 'Concluído'),
(196, '2023-07-14', 10, 5, 49, 'Concluído'),
(197, '2023-07-15', 10, 5, 50, 'Concluído'),
(198, '2024-01-10', 10, 5, 51, 'Concluído'),
(199, '2024-01-11', 10, 5, 52, 'Concluído'),
(200, '2024-01-12', 10, 5, 53, 'Concluído'),
(201, '2024-01-13', 10, 5, 54, 'Concluído'),
(202, '2024-01-14', 10, 5, 55, 'Concluído'),
(203, '2024-01-15', 10, 5, 56, 'Concluído'),
(204, '2024-07-10', 10, 5, 57, 'Concluído'),
(205, '2024-07-11', 10, 5, 58, 'Concluído'),
(206, '2024-07-12', 10, 5, 59, 'Concluído'),
(207, '2024-07-13', 10, 5, 60, 'Concluído'),
(208, '2022-01-11', 10, 8, 27, 'Concluído'),
(209, '2022-01-12', 10, 8, 28, 'Concluído'),
(210, '2022-01-13', 10, 8, 29, 'Concluído'),
(211, '2022-01-14', 10, 8, 30, 'Concluído'),
(212, '2022-01-15', 10, 8, 31, 'Concluído'),
(213, '2022-01-16', 10, 8, 32, 'Concluído'),
(214, '2022-07-10', 10, 8, 33, 'Concluído'),
(215, '2022-07-11', 10, 8, 34, 'Concluído'),
(216, '2022-07-12', 10, 8, 35, 'Concluído'),
(217, '2022-07-13', 10, 8, 36, 'Concluído'),
(218, '2022-07-14', 10, 8, 37, 'Concluído'),
(219, '2023-05-21', 200, 1, 5, 'APROVADO'),
(220, '2023-05-22', 201, 2, 1, 'REPROVADO'),
(221, '2022-06-01', 9.2, 100, 218, 'Aprovado'),
(222, '2022-06-01', 7.9, 100, 219, 'Aprovado'),
(223, '2022-06-01', 10, 100, 220, 'Aprovado'),
(224, '2022-06-01', 8.2, 100, 221, 'Aprovado'),
(225, '2022-06-01', 8.9, 100, 222, 'Aprovado'),
(226, '2022-06-01', 9.2, 100, 223, 'Aprovado'),
(227, '2022-12-01', 9.2, 100, 224, 'Aprovado'),
(228, '2022-12-01', 9, 100, 225, 'Aprovado'),
(229, '2022-12-01', 10, 100, 226, 'Aprovado'),
(230, '2022-12-01', 8, 100, 227, 'Aprovado'),
(231, '2022-12-01', 8.2, 100, 228, 'Aprovado'),
(232, '2022-12-01', 7.6, 100, 229, 'Aprovado'),
(233, '2023-01-01', 7.6, 100, 230, 'Aprovado'),
(234, '2023-01-01', 7, 100, 231, 'Aprovado'),
(235, '2023-01-01', 8.8, 100, 232, 'Aprovado'),
(236, '2023-01-01', 8.2, 100, 233, 'Aprovado'),
(237, '2023-01-01', 7.8, 100, 234, 'Aprovado'),
(238, '2023-06-01', 7.6, 100, 235, 'Aprovado'),
(239, '2023-06-01', 10, 100, 236, 'Aprovado'),
(240, '2023-06-01', 8.2, 100, 237, 'Aprovado'),
(241, '2023-06-01', 8.9, 100, 238, 'Aprovado'),
(242, '2023-06-01', 8.5, 100, 239, 'Aprovado'),
(243, '2023-06-01', 7.9, 100, 240, 'Aprovado'),
(244, '2023-12-01', 9.1, 100, 241, 'Aprovado'),
(245, '2023-12-01', 9.9, 100, 242, 'Aprovado'),
(246, '2023-12-01', 9.1, 100, 243, 'Aprovado'),
(247, '2023-12-01', 9.9, 100, 244, 'Aprovado'),
(248, '2023-12-01', 9, 100, 245, 'Aprovado'),
(249, '2023-12-01', 9.9, 100, 246, 'Aprovado'),
(250, '2024-06-01', 9.1, 100, 247, 'Aprovado'),
(251, '2024-06-01', 7.9, 100, 248, 'Aprovado'),
(252, '2024-06-01', 9.3, 100, 249, 'Aprovado'),
(253, '2024-06-01', 9.3, 100, 250, 'Aprovado'),
(254, '2022-06-01', 7.2, 101, 218, 'Aprovado'),
(255, '2022-06-01', 7.9, 101, 219, 'Aprovado'),
(256, '2022-06-01', 9, 101, 220, 'Aprovado'),
(257, '2022-06-01', 7.2, 101, 221, 'Aprovado'),
(258, '2022-06-01', 8.9, 101, 222, 'Aprovado'),
(259, '2022-06-01', 7.2, 101, 223, 'Aprovado'),
(260, '2022-12-01', 8.2, 101, 224, 'Aprovado'),
(261, '2022-12-01', 10, 101, 225, 'Aprovado'),
(262, '2022-12-01', 7.7, 101, 226, 'Aprovado'),
(263, '2022-12-01', 8, 101, 227, 'Aprovado'),
(264, '2022-12-01', 8.2, 101, 228, 'Aprovado'),
(265, '2022-12-01', 7.6, 101, 229, 'Aprovado'),
(266, '2023-01-01', 7.6, 101, 230, 'Aprovado'),
(267, '2023-01-01', 7, 101, 231, 'Aprovado'),
(268, '2023-01-01', 8.8, 101, 232, 'Aprovado'),
(269, '2023-01-01', 8.2, 101, 233, 'Aprovado'),
(270, '2023-01-01', 10, 101, 234, 'Aprovado'),
(271, '2023-06-01', 0, 101, 235, 'Reprovado'),
(272, '2023-06-01', 0, 101, 236, 'Reprovado'),
(273, '2023-06-01', 0, 101, 237, 'Reprovado'),
(274, '2023-06-01', 0, 101, 238, 'Reprovado'),
(275, '2023-06-01', 0, 101, 239, 'Reprovado'),
(276, '2023-06-01', 0, 101, 240, 'Reprovado'),
(277, '2023-12-01', 0, 101, 241, 'Reprovado'),
(278, '2023-12-01', 0, 101, 242, 'Reprovado'),
(279, '2023-12-01', 0, 101, 243, 'Reprovado'),
(280, '2023-12-01', 0, 101, 244, 'Reprovado'),
(281, '2023-12-01', 0, 101, 245, 'Reprovado'),
(282, '2023-12-01', 0, 101, 246, 'Reprovado'),
(283, '2024-06-01', 0, 101, 247, 'Reprovado'),
(284, '2024-06-01', 0, 101, 248, 'Reprovado'),
(285, '2024-06-01', 0, 101, 249, 'Reprovado'),
(286, '2024-06-01', 0, 101, 250, 'Reprovado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `politecnico`
--

CREATE TABLE `politecnico` (
  `idPolitecnico` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `sitio` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `politecnico`
--

INSERT INTO `politecnico` (`idPolitecnico`, `nome`, `sitio`) VALUES
(1, 'INSTITUTO POLITECNICO DE SETUBAL', 'https://www.ips.pt'),
(2, 'INSTITUTO POLITECNICO DE SANTARÉM', 'https://www.ipsantarem.pt');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pre_requisito`
--

CREATE TABLE `pre_requisito` (
  `idPre` int(11) NOT NULL,
  `idDisciplinaAnt` int(11) DEFAULT NULL,
  `idDisciplinaPost` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`idAluno`);

--
-- Índices para tabela `aluno_grade`
--
ALTER TABLE `aluno_grade`
  ADD PRIMARY KEY (`matricula`),
  ADD KEY `idAluno` (`idAluno`),
  ADD KEY `idGrade` (`idGrade`);

--
-- Índices para tabela `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`idCurso`),
  ADD KEY `idPolitecnico` (`idPolitecnico`);

--
-- Índices para tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`idDisciplina`);

--
-- Índices para tabela `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`idGrade`),
  ADD KEY `idCurso` (`idCurso`) USING BTREE;

--
-- Índices para tabela `grade_disciplina`
--
ALTER TABLE `grade_disciplina`
  ADD PRIMARY KEY (`idGrade`,`idDisciplina`),
  ADD KEY `idDisciplina` (`idDisciplina`);

--
-- Índices para tabela `historico`
--
ALTER TABLE `historico`
  ADD PRIMARY KEY (`idHistorico`),
  ADD KEY `matricula` (`matricula`),
  ADD KEY `idDisciplina` (`idDisciplina`);

--
-- Índices para tabela `politecnico`
--
ALTER TABLE `politecnico`
  ADD PRIMARY KEY (`idPolitecnico`);

--
-- Índices para tabela `pre_requisito`
--
ALTER TABLE `pre_requisito`
  ADD PRIMARY KEY (`idPre`),
  ADD KEY `fk_pre_requisito_1_idx` (`idDisciplinaAnt`),
  ADD KEY `fk_pre_requisito_2_idx` (`idDisciplinaPost`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `idAluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `aluno_grade`
--
ALTER TABLE `aluno_grade`
  MODIFY `matricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=460;

--
-- AUTO_INCREMENT de tabela `curso`
--
ALTER TABLE `curso`
  MODIFY `idCurso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `idDisciplina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT de tabela `grade`
--
ALTER TABLE `grade`
  MODIFY `idGrade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `historico`
--
ALTER TABLE `historico`
  MODIFY `idHistorico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=287;

--
-- AUTO_INCREMENT de tabela `politecnico`
--
ALTER TABLE `politecnico`
  MODIFY `idPolitecnico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `pre_requisito`
--
ALTER TABLE `pre_requisito`
  MODIFY `idPre` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `aluno_grade`
--
ALTER TABLE `aluno_grade`
  ADD CONSTRAINT `aluno_grade_ibfk_1` FOREIGN KEY (`idAluno`) REFERENCES `aluno` (`idAluno`),
  ADD CONSTRAINT `aluno_grade_ibfk_2` FOREIGN KEY (`idGrade`) REFERENCES `grade` (`idGrade`);

--
-- Limitadores para a tabela `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`idPolitecnico`) REFERENCES `politecnico` (`idPolitecnico`);

--
-- Limitadores para a tabela `grade`
--
ALTER TABLE `grade`
  ADD CONSTRAINT `fk_grade_curso` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`);

--
-- Limitadores para a tabela `grade_disciplina`
--
ALTER TABLE `grade_disciplina`
  ADD CONSTRAINT `grade_disciplina_ibfk_1` FOREIGN KEY (`idGrade`) REFERENCES `grade` (`idGrade`),
  ADD CONSTRAINT `grade_disciplina_ibfk_2` FOREIGN KEY (`idDisciplina`) REFERENCES `disciplina` (`idDisciplina`);

--
-- Limitadores para a tabela `historico`
--
ALTER TABLE `historico`
  ADD CONSTRAINT `historico_ibfk_1` FOREIGN KEY (`matricula`) REFERENCES `aluno_grade` (`matricula`),
  ADD CONSTRAINT `historico_ibfk_2` FOREIGN KEY (`idDisciplina`) REFERENCES `disciplina` (`idDisciplina`);

--
-- Limitadores para a tabela `pre_requisito`
--
ALTER TABLE `pre_requisito`
  ADD CONSTRAINT `fk_prerequisito_1` FOREIGN KEY (`idDisciplinaAnt`) REFERENCES `disciplina` (`idDisciplina`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_prerequisito_2` FOREIGN KEY (`idDisciplinaPost`) REFERENCES `disciplina` (`idDisciplina`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
