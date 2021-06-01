-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 01 juin 2021 à 15:50
-- Version du serveur :  10.4.19-MariaDB
-- Version de PHP : 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `groupomania_socialnetwork`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp(),
  `UserId` int(11) UNSIGNED NOT NULL,
  `PostId` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `message`, `pseudo`, `createdAt`, `updatedAt`, `UserId`, `PostId`) VALUES
(1, 'il fait chaud', 'hamza', '2021-05-29 13:32:04', '2021-05-29 13:32:04', 3, 1),
(2, 'vous partez avec le CE?', 'Abdoulaye', '2021-05-29 13:40:25', '2021-05-29 13:40:25', 4, 3),
(3, 'Oui ils ont des super offres !', 'rayscary', '2021-05-29 13:41:50', '2021-05-29 13:41:50', 2, 3);

-- --------------------------------------------------------

--
-- Structure de la table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `UserId` int(11) NOT NULL,
  `PostId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `likes`
--

INSERT INTO `likes` (`id`, `createdAt`, `updatedAt`, `UserId`, `PostId`) VALUES
(3, '2021-05-28 14:55:27', '2021-05-28 14:55:27', 2, 0),
(5, '2021-05-28 16:05:12', '2021-05-28 16:05:12', 3, 0),
(6, '2021-05-29 13:05:46', '2021-05-29 13:05:46', 2, 3),
(8, '2021-05-29 13:31:47', '2021-05-29 13:31:47', 3, 2),
(9, '2021-05-29 13:40:43', '2021-05-29 13:40:43', 4, 3),
(10, '2021-05-29 13:56:09', '2021-05-29 13:56:09', 2, 2),
(11, '2021-05-29 13:56:38', '2021-05-29 13:56:38', 4, 2);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` text DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `imageUrl` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp(),
  `UserId` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `message`, `link`, `imageUrl`, `createdAt`, `updatedAt`, `UserId`) VALUES
(1, 'bonjour', NULL, NULL, '2021-05-28 16:04:51', '2021-05-28 16:04:51', 3),
(2, 'Bonjour à tous!', NULL, NULL, '2021-05-29 13:04:14', '2021-05-29 13:48:10', 2),
(3, 'Prochaines vacances!!', NULL, 'http://localhost:3000/upload/paysage-enneige,-foret-enneigee,-montagne-enneigee,-traces-dans-la-neige,-etoiles-2574561622293537107.jpg', '2021-05-29 13:05:37', '2021-05-29 13:05:37', 2),
(6, 'bonjour à tous', NULL, 'http://localhost:3000/upload/omar_sharif_45121622542037189.png', '2021-06-01 10:07:17', '2021-06-01 10:07:17', 6);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `bio` varchar(500) DEFAULT NULL,
  `admin` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `pseudo`, `email`, `password`, `photo`, `bio`, `admin`, `createdAt`, `updatedAt`) VALUES
(2, 'rayscary', 'emaildetest@gmail.com', '$2b$10$7Rs66WbgFPzUpcDhDb4eZuzdmptW1AazvUMdTC/Kf4nGS2PZAQph2', 'http://localhost:3000/upload/Michael_Douglas_César_2016_31622296051344.jpg', 'pdg', 0, '2021-05-28 07:08:56', '2021-05-29 13:47:31'),
(3, 'hamza', 'hamza@gmail.com', '$2b$10$C3DH4LvxgwCz/zO2nrtNKOzDmxtP33u9tNC3OFJfUYxBpL2ntdWYO', 'http://localhost:3000/upload/omar_sharif_45121622294279066.png', 'nouvelle photo', 0, '2021-05-28 13:28:28', '2021-05-29 13:17:59'),
(4, 'Abdoulaye', 'abdoulaye@gmail.COM', '$2b$10$fZmqqOKAF02FNG5LXIAPsu4cDjvd08xIlYiUKylyDH09LH.IRn9Ry', 'http://localhost:3000/upload/29421hr_-e1543012920770-592x296-15430146561622295370884.jpg', 'NOUVEAU DANS LA BOITE', 0, '2021-05-29 13:35:30', '2021-05-29 13:36:10'),
(5, 'admin', 'admin@mail.com', '$2b$10$C7JFLxGhr2cD.2N0V0PPB.SEj9UPFcQD7P6VVAna/JZ/Rw42bdx.K', NULL, NULL, 1, '2021-06-01 09:26:44', '2021-06-01 09:26:44'),
(7, 'gerad', 'gerard@mail.com', '$2b$10$038vpPAr8YDUdAuSDGbCY.T1eYyQXvp2rEEz8DKywO72o6PAWZs3.', NULL, NULL, 0, '2021-06-01 10:34:19', '2021-06-01 10:34:19'),
(8, 'tom', 'tom@mail.com', '$2b$10$VeLu3fIWswRC9Gf9OPZOFeQDzxoR9SeXkgByZJbx48/EWOjMmDRN.', NULL, NULL, 0, '2021-06-01 13:38:03', '2021-06-01 13:38:03');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `PostId` (`PostId`),
  ADD KEY `UserId` (`UserId`);

--
-- Index pour la table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserId` (`UserId`),
  ADD KEY `PostId` (`PostId`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserId` (`UserId`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
