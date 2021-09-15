-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  jeu. 15 avr. 2021 à 00:52
-- Version du serveur :  10.3.9-MariaDB
-- Version de PHP :  7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `zfl2-zhassansa`
--

-- --------------------------------------------------------

--
-- Structure de la table `Tj_relie_rel`
--

CREATE TABLE `Tj_relie_rel` (
  `sel_num` int(11) NOT NULL,
  `el_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Tj_relie_rel`
--

INSERT INTO `Tj_relie_rel` (`sel_num`, `el_num`) VALUES
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(3, 1),
(3, 2),
(3, 3),
(3, 4);

-- --------------------------------------------------------

--
-- Structure de la table `T_element_el`
--

CREATE TABLE `T_element_el` (
  `el_num` int(11) NOT NULL,
  `el_name` varchar(50) NOT NULL,
  `el_descrpt` varchar(1500) NOT NULL,
  `el_date` varchar(50) NOT NULL,
  `el_fichimg` varchar(50) NOT NULL,
  `el_status` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `T_element_el`
--

INSERT INTO `T_element_el` (`el_num`, `el_name`, `el_descrpt`, `el_date`, `el_fichimg`, `el_status`) VALUES
(1, 'Fantasy', ' La réponse crédible à la vague de Hardcore newschool anglaise et américaine ! C’est en 2016 que Landmvrks a sorti son premier album. Depuis le combo Marseillais a tourné dans beaucoup de pays d’Europe avec notamment une prestation remarquée au Hellfest 2016 et au Longlive Rockfest de la même année contribuant à renforcer la réputation du groupe. Le groupe a ainsi séduit son public avec un style Metalcore moderne agrémenté de riffs puissants et de refrains accrocheurs. En 2018, le groupe signe un contrat avec Arising Empire Records pour leur deuxième album studio. Ce disque propose une approche des compositions plus mature et offre un résultat plus riche, avec plus de définition et des influences hardcore et Punk-Rock des années 90 plus assumées. Landmvrks a également développé un sens de la mélodie impressionnant, mis en avant dans les voix claires de Florent Salfati. Désormais le groupe affirme son propre style.', '2021-02-08 20:30:24', ' fantasy.jpg', 'B'),
(2, 'Sagittarius A*', 'Sleepwait est un groupe de Rock Alternatif italien fondé en 2015. Le duo a récemment sorti son premier album intitulé Sagittarius A*. La musique du groupe est parfaite pour les fans de A Perfect Circle ', '2021-02-08 21:38:23', 'sleepwait.jpg', 'P'),
(3, 'Rock à Memphis', 'En 1975, Johnny envisage très sérieusement de s\'installer aux Etats-Unis. En attendant, il retourne à Memphis pour enregistrer avec les meilleurs musiciens de la ville (dont la fabuleuse section rythmique des Memphis Horns) une bonne grosse série de reprises adaptées par Michel Mallory et son futur beau-père Long Chris. Une fois de plus, avec cet album aujourd\'hui encore inusable, Johnny s\'impose comme le grand rocker français. ', '2021-02-08 21:45:52', 'memphis.jpg', 'P'),
(4, 'Power Up Ligthbox Super Deluxe', 'AC/DC, le groupe légendaire du rock, sortira son dix-septième album POWER UP le 13 novembre 2020.\r\nLe premier depuis 2014. Angus Young [guitare principale], Brian Johnson [chant principal], Cliff Williams [guitare basse], Phil Rudd [batterie], et Stevie Young [guitare rythmique] font jaillir une nouvelle fois La foudre ! Pour l\'album, le groupe a retrouvé le producteur Brendan O\'Brien qui a tenu la barre de Black Ice en 2008 et de Rock Or Bust en 2014. Remonté à bloc pour au moins une décennie, AC/DC a enregistré douze nouveaux titres pour l\'album, conservant fièrement leur signature sonore et toute leur puissance  POWER UP sera disponible sous multiples formats qui enthousiasmeront les collectionneurs et les fans inconditionnels.', '2021-02-09 16:45:41', 'puls.jpg', 'P'),
(5, 'Scorpion ', 'Scorpion est le cinquième album studio du rappeur canadien Drake, sorti en 2018 sur les labels OVO Sound, Young Money, Cash Money et Republic Records. Il s\'agit d\'un double album. ', '2021-02-09 16:58:36', 'scorpion.jpg', 'P'),
(6, ' Luv Is Rage 3 ', 'Il s\'agit ici du troisième opus du rappeur Lil Uzi vert qui est disponible dès  aujourd\'hui dans notre magasin  ', '2021-02-09 17:03:07', 'luv.jpg', 'B'),
(7, ' QUEEN', 'Queen et le 4e album de Nicki Minaj album dans lequel la reine du rap telle qu\'elle est surnommé par ses fans rien firme sa position en tant que leader féminine de ce genre majoritairement dominé par les hommes non seulement elle réaffirme sa position mais aussi estime de par ses propos féministe et puissants quelle mérite d\'être respecter comme une égale des hommes .  ', '2021-02-09 17:11:44', 'queen.jpg', 'P'),
(8, ' The pinkprint ', 'The pinkprint et le troisième album de Nicki Minaj et qui est le définis comme le meilleur album par ses fans mais aussi par les critiques cet album a connu un rayonnement  international et un grand impact dans le monde du hip-hop. Avec de gros titres mais aussi une versatilité impressionnante cet album est disponible dans nos rayons. ', '2021-02-09 17:17:11', 'pinkp.png', 'P'),
(9, ' Thank U Next ', 'Thank u next s\'agit du 5e album de la chanteuse américaine Ariana grande album très attendu qui fut publié suite non seulement de problèmes liés à la vie d\'Ariana grande et qui fut aussitôt un album plein de succès avec un album sans featuring ce qui est très rare dans l\'industrie mais ceci n\'a pas empêché l\'artiste multifacette très talentueuse Qu\'elle est de s\'imposer mensonge en avec des singles autant couronné de succès que l\'album tel que le single éponyme thank  u next et 7 rings. ', '2021-02-09 17:28:00', 'Tun.jpg', 'P'),
(10, ' Madame X ', 'Madame X et le tout dernier album en date de Madonna sortie en 2019. Couronnée reine de la pop par ses 30 ans de carrière plein de contes revers mais aussi de message politique est féministe fort Madame X est une parfaite représentation de ces messages car il représente une femme qui et à la fois plusieurs choses quelques une mère une sœur une ouvrière une travailleuse de la nuit chef d\'entreprise tu t\'en n\'oublions pas le message important qui est une femme peut être ce qu\'elle veut en cet ère du 21e siècle . ', '2021-02-09 17:35:28', 'Madame-X.jpg', 'P'),
(11, ' Like a virgin ', 'Like a Virgin s\'agit du premier album qui a propulsé madonna dans les hautes sphères de la pop cet album a connu un succès du haut de ces 25 million où la star a imposé son propre univers qui mail symbole religieux et érotique en parfaite harmonie avec des sons incontournable et historique tel que le single éponyme like a Virgin.', '2021-02-09 17:40:13', 'lak.jpg', 'P'),
(12, ' Future nostalgia ', 'Future Nostalgia est le deuxième album studio de la chanteuse britannique Dua Lipa. Il est sorti le 27 mars 2020 sous le label Warner Records.L\'album a débuté à la quatrième place du classement américain Billboard 200 et est resté 4 semaines à la tête des charts britanniques.1 Le style de Future Nostalgia est clairement nostalgique des années 80, abordant des sonorités disco tout en restant pop. De plus, il permet à Dua Lipa de confirmer son statut de pop-star internationale.Le premier single, Don\'t Start Now, sorti le 1er novembre 2019, a atteint la deuxième place du Billboard Hot 100 aux États-Unis2 ainsi que le milliard de stream sur Spotify, devenant un énorme tube durant l\'année 2020.\r\n', '2021-02-09 17:46:11', 'FN.jpg', 'P');

-- --------------------------------------------------------

--
-- Structure de la table `T_link_link`
--

CREATE TABLE `T_link_link` (
  `link_num` int(11) NOT NULL,
  `link_title` varchar(100) NOT NULL,
  `link_url` varchar(300) NOT NULL,
  `link_author` varchar(100) NOT NULL,
  `link_date` date DEFAULT NULL,
  `el_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `T_link_link`
--

INSERT INTO `T_link_link` (`link_num`, `link_title`, `link_url`, `link_author`, `link_date`, `el_num`) VALUES
(1, '« Madame X » de Madonna : critique de l\'album, titre par titre !', 'http://www.chartsinfrance.net/Madonna/news-110451.htm', 'Julien GONCALVES et Yohann RUELLE', '2021-02-09', 10),
(2, ' Dua Lipa: le sacre de l’icône disco pop grâce à son nouvel album «Future Nostalgia» ', 'https://www.nrj.fr/artistes/dua-lipa/actus/dua-lipa-le-sacre-de-licone-disco-pop-grace-a-son-nouvel-album-future-nostalgia-71342298#:~:text=Dua%20Lipa%3A%20%C2%ABFuture%20Nostalgia%C2%BB%20encens%C3%A9%20par%20la%20critique&text=NME%20l\'a%20qualifi%C3%A9%20de,et%20d\'%C3%A9mancipation%20des%20femmes.', 'Sonia dlf.', '2020-03-31', 12),
(3, ' Ariana Grande – Thank U, Next Critique', 'https://thesaurap.fr/albums/ariana-grande-thank-u-next/#:~:text=En%20conclusion%2C%20Thank%20u%20next,coh%C3%A9rence%20sans%20jamais%20faire%20t%C3%A2che.', 'Thésaurap', '2019-02-19', 9),
(4, ' Nicki Minaj, le sacre puissant de la « Queen » du rap ', 'http://thibaudtour.com/2018/08/nicki-minaj-queen/', 'Thibaut', '2018-08-13', 7),
(5, ' The Pinkprint, l’autre facette de Nicki Minaj ', 'https://www.hiersoiraparis.com/dans-les-bacs/the-pinkprint-lautre-facette-de-nicki-minaj.html', 'Louise OH ', '2020-01-08', 8),
(6, ' DRAKE Scorpion', 'https://lecanalauditif.ca/critiques/drake-scorpion/', ' LOUIS-PHILIPPE LABRÈCHE', '2018-07-06', 5);

-- --------------------------------------------------------

--
-- Structure de la table `T_news_new`
--

CREATE TABLE `T_news_new` (
  `new_number` int(11) NOT NULL,
  `new_title` varchar(50) NOT NULL,
  `new_text` varchar(1000) NOT NULL,
  `new_update` varchar(50) NOT NULL,
  `new_state` char(1) DEFAULT NULL,
  `usr_pseudo` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `T_news_new`
--

INSERT INTO `T_news_new` (`new_number`, `new_title`, `new_text`, `new_update`, `new_state`, `usr_pseudo`) VALUES
(3, 'Visé l\'underground', 'Le monde de la musique est très diverse et surtout\r\n très talentueux mais cependant certains groupe de rock ne reçoient pas le rayonnement \r\n qu\'ils méritent. C\'est ainsi que notre magasin à la chance mais aussi l\'honneur de vous\r\n  annoncer que parmi nos rayons se trouve plusieurs album de groupe de rock underground \r\n tout ça grâce à la signature avec leurs maisons de disque, mais aussi les groupes de rock \r\n indépendant avec qui nous possédons des partenariats. Parmi ces groupes on peut retrouver du local \r\n c\'est-à-dire du français avec le groupe  Landmvrks mais aussi le groupe de rock alternatif italien \r\n Sleepwait.', '2021-02-20 21:11:29', 'A', 'alexia_lcmb');

-- --------------------------------------------------------

--
-- Structure de la table `T_presentation_pres`
--

CREATE TABLE `T_presentation_pres` (
  `pres_id` int(10) UNSIGNED NOT NULL,
  `pres_nom_struct` varchar(50) NOT NULL,
  `usr_pseudo` varchar(50) NOT NULL,
  `pres_adresse` varchar(50) NOT NULL,
  `pres_mail` varchar(50) NOT NULL,
  `pres_num` varchar(50) NOT NULL,
  `pres_ouverture` varchar(40) NOT NULL,
  `pres_texte_bienv` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `T_presentation_pres`
--

INSERT INTO `T_presentation_pres` (`pres_id`, `pres_nom_struct`, `usr_pseudo`, `pres_adresse`, `pres_mail`, `pres_num`, `pres_ouverture`, `pres_texte_bienv`) VALUES
(1, 'shinetrou music', 'salhas', ' 65 Rue de Siam,29200 Brest', 'shinetroumuz@gmail.com', '02 98 95 25 67', ' lundi-samedi :8:00-12:30 ; 13:00-18:00', 'Suite à la crise de son précédent que nous traversons en ce moment et les restrictions mise en place pour le bien de tous nous vous offrons la possibilité de voir le catalogue ainsi que ce que nous proposons à travers ce site puisse-t-il vous être bénéfique et d une grande merci beaucoup. À travers ce site vous pourrez nous envoyer des mails réserver des articles pour faciliter les déplacements et pourquoi protéger tout le monde de cette pandémie.');

-- --------------------------------------------------------

--
-- Structure de la table `T_Selection_sel`
--

CREATE TABLE `T_Selection_sel` (
  `sel_num` int(11) NOT NULL,
  `sel_title` varchar(50) NOT NULL,
  `sel_intro` varchar(500) NOT NULL,
  `sel_date` varchar(50) NOT NULL,
  `usr_pseudo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `T_Selection_sel`
--

INSERT INTO `T_Selection_sel` (`sel_num`, `sel_title`, `sel_intro`, `sel_date`, `usr_pseudo`) VALUES
(1, 'HIP-HOP', 'Le hip-hop est un genre musical qui associe rythmique dansante et rap et qui est un des genres les plus écoutée au monde et nous avons le plaisir d\'avoir dans nos étagères les meilleurs et dernier projet présent dans le commerce', '2021-02-08', 'baptherault'),
(2, 'POP', 'La pop ou plus connu comme le genre musical par excellent car c\'est celui qui est le plus écouté dans le monde et qui comprend dans son genre la majorité les plus grandes stars internationales telle que Lady Gaga Beyoncé ou encore Madonna plus connu sous le surnom de la reine de la pop mais aussi la légende de Michael Jackson', '2021-02-08 19:31:44', 'baptherault'),
(3, 'ROCK', 'Le rock est un genre qui est très connu pour sa versatilité et ses sous branche impressionnante. Mais aussi qui puisse et inspiration de plusieurs genre tel que le rock n\' roll qui elle-même possède deux grands noms tels que elvis Presley avec son surnom incontournable the king. Mais ce genre recette aussi de gros mots en français que l\'incroyable et le talentueux Johnny Hallyday', '2021-02-08 19:43:47', 'baptherault');

-- --------------------------------------------------------

--
-- Structure de la table `T_useraccount_usr`
--

CREATE TABLE `T_useraccount_usr` (
  `usr_pseudo` varchar(50) NOT NULL,
  `usr_Mdp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `T_useraccount_usr`
--

INSERT INTO `T_useraccount_usr` (`usr_pseudo`, `usr_Mdp`) VALUES
('alexia_lcmb', '9cbc4cb9b5df93b07ac8ead9845e5ca5'),
('Baptherault', 'b4bf9ecb5145f986fc376c3e29bc2428'),
('dede', '06c56a89949d617def52f371c357b6db'),
('ed_saad', '2576be4eddac4b05db45a7379327f0e1'),
('franky', 'c4efd5020cb49b9d3257ffa0fbccc0ae'),
('gestionnaire1', '388d4ca7d89f912a8fe96b04fb3d8e22'),
('julimad', '3e3b8da1d309b937abd1a25a6e447672'),
('minny', '91b827e257eeae8e5989d961fe3011df'),
('salhas', 'e3c5d193f6564c61c5685fc8c3dd1f13'),
('shiineee', 'e8fbf3c4ccf4bcc237f5fdea97ef225d');

-- --------------------------------------------------------

--
-- Structure de la table `T_userprofile_prof`
--

CREATE TABLE `T_userprofile_prof` (
  `prof_number` int(11) NOT NULL,
  `prof_nom` varchar(50) NOT NULL,
  `prof_prenom` varchar(50) NOT NULL,
  `usr_pseudo` varchar(50) NOT NULL,
  `prof_mail` varchar(50) NOT NULL,
  `prof_validity` char(1) DEFAULT NULL,
  `prof_status` char(1) DEFAULT NULL,
  `prof_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `T_userprofile_prof`
--

INSERT INTO `T_userprofile_prof` (`prof_number`, `prof_nom`, `prof_prenom`, `usr_pseudo`, `prof_mail`, `prof_validity`, `prof_status`, `prof_date`) VALUES
(1, 'Marc', 'Valérie', 'gestionnaire1', 'VAL.marc@gmail.com', 'A', 'A', '2021-01-31'),
(2, 'Saleh', 'Hassan', 'salhas', 'salhas837@gmail.com', 'A', 'A', '2021-01-31'),
(3, 'Imad', 'Julia', 'julimad', 'julia-imd@gmail.com', 'A', 'R', '2021-01-31'),
(4, 'Herault', 'Baptiste', 'baptherault', 'bapt-hrlt@gmail.com', 'A', 'R', '2021-01-31'),
(5, 'Lacombe', 'Alexia', 'alexia_lcmb', 'alexcmb@gmail.com', 'A', 'R', '2021-01-31'),
(6, 'Saad', 'Edward', 'ed_saad', 'edsaad2@gmail.com', 'A', 'A', '2021-02-15'),
(13, 'maissa', 'saleh', 'dede', 'salhas837@gmail.com', 'D', 'A', '2021-04-11'),
(14, 'Calvez', 'François', 'franky', 'franckymc@gmail.com', 'D', 'A', '2021-04-14'),
(15, 'Ahmed', 'minatilla', 'minny', 'minalbar@gmail.com', 'D', 'A', '2021-04-14'),
(19, 'hattitio', 'hineiti', 'shiineee', 'hinehatt@gmail.com', 'D', 'A', '2021-04-14');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Tj_relie_rel`
--
ALTER TABLE `Tj_relie_rel`
  ADD PRIMARY KEY (`sel_num`,`el_num`),
  ADD KEY `fk_el_num_el_num` (`el_num`);

--
-- Index pour la table `T_element_el`
--
ALTER TABLE `T_element_el`
  ADD PRIMARY KEY (`el_num`);

--
-- Index pour la table `T_link_link`
--
ALTER TABLE `T_link_link`
  ADD PRIMARY KEY (`link_num`),
  ADD KEY `fk_elt_num_el_num` (`el_num`);

--
-- Index pour la table `T_news_new`
--
ALTER TABLE `T_news_new`
  ADD PRIMARY KEY (`new_number`),
  ADD KEY `fk_new_pseudo_usr_pseudo` (`usr_pseudo`);

--
-- Index pour la table `T_presentation_pres`
--
ALTER TABLE `T_presentation_pres`
  ADD PRIMARY KEY (`pres_id`),
  ADD KEY `fk_pres_pseudo_usr_pseudo` (`usr_pseudo`);

--
-- Index pour la table `T_Selection_sel`
--
ALTER TABLE `T_Selection_sel`
  ADD PRIMARY KEY (`sel_num`),
  ADD KEY `fk_sel_pseudo_usr_pseudo` (`usr_pseudo`);

--
-- Index pour la table `T_useraccount_usr`
--
ALTER TABLE `T_useraccount_usr`
  ADD PRIMARY KEY (`usr_pseudo`);

--
-- Index pour la table `T_userprofile_prof`
--
ALTER TABLE `T_userprofile_prof`
  ADD PRIMARY KEY (`prof_number`),
  ADD KEY `fk_prof_pseudo_usr_pseudo` (`usr_pseudo`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `T_element_el`
--
ALTER TABLE `T_element_el`
  MODIFY `el_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `T_link_link`
--
ALTER TABLE `T_link_link`
  MODIFY `link_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `T_news_new`
--
ALTER TABLE `T_news_new`
  MODIFY `new_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `T_presentation_pres`
--
ALTER TABLE `T_presentation_pres`
  MODIFY `pres_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `T_Selection_sel`
--
ALTER TABLE `T_Selection_sel`
  MODIFY `sel_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `T_userprofile_prof`
--
ALTER TABLE `T_userprofile_prof`
  MODIFY `prof_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Tj_relie_rel`
--
ALTER TABLE `Tj_relie_rel`
  ADD CONSTRAINT `fk_el_num_el_num` FOREIGN KEY (`el_num`) REFERENCES `T_element_el` (`el_num`),
  ADD CONSTRAINT `fk_sel_num_sel_num` FOREIGN KEY (`sel_num`) REFERENCES `T_Selection_sel` (`sel_num`);

--
-- Contraintes pour la table `T_link_link`
--
ALTER TABLE `T_link_link`
  ADD CONSTRAINT `fk_elt_num_el_num` FOREIGN KEY (`el_num`) REFERENCES `T_element_el` (`el_num`);

--
-- Contraintes pour la table `T_news_new`
--
ALTER TABLE `T_news_new`
  ADD CONSTRAINT `fk_new_pseudo_usr_pseudo` FOREIGN KEY (`usr_pseudo`) REFERENCES `T_useraccount_usr` (`usr_pseudo`);

--
-- Contraintes pour la table `T_presentation_pres`
--
ALTER TABLE `T_presentation_pres`
  ADD CONSTRAINT `fk_pres_pseudo_usr_pseudo` FOREIGN KEY (`usr_pseudo`) REFERENCES `T_useraccount_usr` (`usr_pseudo`);

--
-- Contraintes pour la table `T_Selection_sel`
--
ALTER TABLE `T_Selection_sel`
  ADD CONSTRAINT `fk_sel_pseudo_usr_pseudo` FOREIGN KEY (`usr_pseudo`) REFERENCES `T_useraccount_usr` (`usr_pseudo`);

--
-- Contraintes pour la table `T_userprofile_prof`
--
ALTER TABLE `T_userprofile_prof`
  ADD CONSTRAINT `fk_prof_pseudo_usr_pseudo` FOREIGN KEY (`usr_pseudo`) REFERENCES `T_useraccount_usr` (`usr_pseudo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
