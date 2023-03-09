-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 02 fév. 2023 à 08:04
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `courssymfony`
--

-- --------------------------------------------------------

--
-- Structure de la table `boardgame`
--

CREATE TABLE `boardgame` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `players` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` int NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `released` date NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `boardgame`
--

INSERT INTO `boardgame` (`id`, `title`, `players`, `time`, `age`, `released`, `description`, `content`, `picture`) VALUES
(1, 'Twisted Fables', '2', 30, '14', '2018-05-10', '<div>\" Le livre s’ouvre. Les Fables prennent vie. Il était une fois...\" L\'Histoire réécrite Twisted Fables est un jeu dynamique où des personnages de contes s’affrontent dans un jeu de combat inspiré par les vieux jeux de combat d’arcade en 2D.&nbsp; Dans Twisted Fables, les joueurs endossent le rôle d’héroïnes issues des contes et des fables les plus célèbres. Arrachées à leur environnement traditionnel, ces femmes se retrouvent projetées dans un monde d’assassins cybernétiques, de manipulations magiques et de ténèbres maléfiques.&nbsp; Elles ne sont pas les personnages classiques dont vous vous souvenez, mais plutôt leurs versions surpuissantes, venues de leur propre monde pour combattre dans une dimension alternative étrange et changeante. Quelle force mystérieuse les a menées ici ?&nbsp; Quel est le but de ce conflit ? Seule la Tisseuse des Contes le sait. Combattez vos adversaires Twisted Fables est un jeu de deck building pour deux joueurs (Mode 1c1) ou quatre joueurs (Mode 2vs2, nécessite 2 boites de jeu). Durant la partie, chaque joueur renforce ses capacités, découvre de nouvelles compétences, acquiert des pouvoirs spéciaux dévastateurs et déploie une stratégie asymétrique unique pour vaincre ses adversaires. Selon les décisions du joueur, d’une partie à l’autre, la même Fable peut déployer un style de jeu tout à fait différent. Les diverses spécialisations d’une Fable lui offrent une grande flexibilité tactique ainsi qu’une profondeur de jeu surprenante. Twisted Fables vous offre une expérience de deck building très interactive à laquelle vous aurez très vite envie de revenir.&nbsp; Chaque chapitre terminé vous rapprochera un peu plus de la vérité, mais aussi de la démence. Ce sera donc à vous de répondre à la plus cruciale des questions : parviendrez-vous à y échapper? Choisissez votre combattante Prenez le contrôle d\'une des six Fables disponibles pour remporter la partie. Chacune d\'entre elles possède des mécaniques de jeu qui lui sont propres pour vaincre ses adversaires. Essayez-les toutes pour trouver le style de jeu qui vous convient.</div>', '<div>Cette version française contient la version standard du jeu ainsi que 6 figurines pour les Fables du jeu.</div>', 'twisted-fables.jpg'),
(2, '7 wonders duel', '2', 30, '14', '2018-01-01', '<div>7 Wonders Duel, l\'adaptation 2 joueurs De bien des façons, 7 Wonders Duel ressemble à son grand-frère 7 Wonders. Les joueurs acquièrent des cartes au cours de trois âges, ces dernières fournissant des ressources ou faisant progresser leur développement militaire ou scientifique afin de développer leur civilisation ou bâtir des merveilles. 7 Wonders Duel, un jeu qui a sa propre personnalité Ce qui est différent avec 7 Wonders Duel, c\'est que, comme le titre le suggère, le jeu est uniquement pour deux joueurs. Ces derniers ne tirent pas simultanément des cartes à partir de mains de cartes, mais à partir d\'un mélange de cartes face cachée et face visible disposées en formation pyramidale au début de chaque âge. Un joueur ne peut prendre une carte que si elle n\'est pas couverte par d\'autres. Le timing et les choix que vous allez faire sont cruciaux. Comme dans le jeu original, chaque carte que vous acquérez peut être construite, défaussée pour des pièces de monnaie ou utilisée pour construire une merveille. Chaque joueur commence avec quatre cartes merveille, et la construction d\'une merveille donne à son propriétaire une capacité spéciale. Cependant, seulement sept merveilles peuvent être construites, de sorte qu\'un joueur se retrouvera dans l\'impossibilité de bâtir ses quatre.&nbsp; Les joueurs peuvent acheter des ressources à tout moment, ou ils peuvent acquérir des cartes au cours de la partie qui leur fourniront des ressources pour la construction future. Lorsque vous acquérez des ressources, le coût de ces ressources augmente pour votre adversaire, ce qui représente votre domination dans ce domaine. 7 Wonders Duel, un seul jeu mais 3 façons de gagner Un joueur peut gagner une partie de 7 Wonders Duel de l\'une des trois façons suivantes : Chaque fois que vous acquérez une carte militaire, vous avancez le marqueur militaire vers la capitale de votre adversaire, vous donnant un bonus à certaines positions ; si vous atteignez la capitale de l\'adversaire, vous gagnez la partie immédiatement par domination militaire. De même, si vous acquérez six des sept symboles scientifiques différents, vous obtenez la domination scientifique et gagnez immédiatement. Si aucune de ces situations ne se produit, alors le joueur avec le plus de points à la fin de la partie gagne.</div>', '<div>1 plateau de jeu 23 cartes Age I 23 cartes Age II 20 cartes Age III 7 cartes Guilde 12 cartes Merveille 4 jetons Militaire 10 jetons Progrès 1 pion Conflit 31 pièces de monnaie (14 de valeur 1, 10 de valeur 3 et 7 de valeur 6) 1 carnet de scores 1 règle du jeu 1 aide de jeu Les 12 cartes Merveilles sont au format 65x100mm et les 73 cartes Age sont au format 44x68mm.</div>', '7-wonders-duel.webp'),
(3, 'Loup Garou', '25', 15, '8', '2018-05-05', '<div>lgtrgkkjefakezkofez</div>', '<div>flijfreifojpozkfpkfak</div>', 'loups-garous-de-thiercelieux-les.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `boardgame_category`
--

CREATE TABLE `boardgame_category` (
  `boardgame_id` int NOT NULL,
  `category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `boardgame_category`
--

INSERT INTO `boardgame_category` (`boardgame_id`, `category_id`) VALUES
(1, 1),
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Deckbuilding');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230116170312', '2023-01-16 17:03:33', 1123),
('DoctrineMigrations\\Version20230117074106', '2023-01-17 07:41:26', 713),
('DoctrineMigrations\\Version20230117074744', '2023-01-17 07:47:51', 91),
('DoctrineMigrations\\Version20230117082120', '2023-01-17 08:24:25', 705),
('DoctrineMigrations\\Version20230123081932', '2023-01-23 08:19:56', 762),
('DoctrineMigrations\\Version20230123151312', '2023-01-23 15:14:31', 712),
('DoctrineMigrations\\Version20230125154755', '2023-01-25 15:48:15', 1168);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`) VALUES
(1, 'gregory.fourmaux@gmail.com', '{\"1\": \"ROLE_ADMIN\"}', '$2y$13$ySmPlBZdOtLUdPfBbrRVpOiM/XjDEeIyx5GUkX7.D/6Cw1YGXhEB2');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `boardgame`
--
ALTER TABLE `boardgame`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `boardgame_category`
--
ALTER TABLE `boardgame_category`
  ADD PRIMARY KEY (`boardgame_id`,`category_id`),
  ADD KEY `IDX_3E9DDF39B1A27A21` (`boardgame_id`),
  ADD KEY `IDX_3E9DDF3912469DE2` (`category_id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `boardgame`
--
ALTER TABLE `boardgame`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `boardgame_category`
--
ALTER TABLE `boardgame_category`
  ADD CONSTRAINT `FK_3E9DDF3912469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_3E9DDF39B1A27A21` FOREIGN KEY (`boardgame_id`) REFERENCES `boardgame` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
