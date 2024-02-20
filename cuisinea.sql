-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 31 jan. 2023 à 17:38
-- Version du serveur : 5.7.36
-- Version de PHP : 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!40101 SET NAMES utf8mb4 */
;

--
-- Base de données : `studi_live_cuisinea`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;

CREATE TABLE IF NOT EXISTS `categories` (
    `id` int(11) NOT NULL AUTO_INCREMENT, `name` varchar(255) NOT NULL, PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = utf8;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO
    `categories` (`id`, `name`)
VALUES (1, 'Entrée'),
    (2, 'Plat'),
    (3, 'Dessert');

-- --------------------------------------------------------

--
-- Structure de la table `recipes`
--

DROP TABLE IF EXISTS `recipes`;

CREATE TABLE IF NOT EXISTS `recipes` (
    `id` int(11) NOT NULL AUTO_INCREMENT, `category_id` int(11) NOT NULL, `title` varchar(255) NOT NULL, `description` text NOT NULL, `ingredients` text NOT NULL, `instructions` text NOT NULL, `image` varchar(255) DEFAULT NULL, PRIMARY KEY (`id`), KEY `category_id` (`category_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 59 DEFAULT CHARSET = utf8;

--
-- Déchargement des données de la table `recipes`
--

INSERT INTO
    `recipes` (
        `id`, `category_id`, `title`, `description`, `ingredients`, `instructions`, `image`
    )
VALUES (
        1, 1, 'Recette 1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        2, 1, 'Recette 2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        3, 1, 'Recette 3', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        4, 1, 'Recette 4', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        5, 1, 'Recette 5', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        6, 1, 'Recette 6', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        7, 1, 'Recette 7', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        8, 1, 'Recette 8', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        9, 1, 'Recette 9', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        10, 1, 'Recette 10', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        11, 1, 'Recette 11', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        12, 1, 'Recette 12', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        13, 1, 'Recette 13', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        14, 1, 'Recette 14', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        15, 1, 'Recette 15', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        16, 1, 'Recette 16', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        17, 1, 'Recette 17', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        18, 1, 'Recette 18', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        19, 1, 'Recette 19', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        20, 1, 'Recette 20', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        21, 1, 'Recette 21', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        22, 1, 'Recette 22', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        23, 1, 'Recette 23', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        24, 1, 'Recette 24', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        25, 1, 'Recette 25', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        26, 2, 'Recette 26', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        27, 2, 'Recette 27', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        28, 2, 'Recette 28', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        29, 2, 'Recette 29', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        30, 2, 'Recette 30', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        31, 2, 'Recette 31', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        32, 2, 'Recette 32', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        33, 2, 'Recette 33', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        34, 2, 'Recette 34', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        35, 2, 'Recette 35', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        36, 2, 'Recette 36', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        37, 2, 'Recette 37', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        38, 2, 'Recette 38', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        39, 2, 'Recette 39', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        40, 2, 'Recette 40', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        41, 2, 'Recette 41', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        42, 2, 'Recette 42', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        43, 3, 'Recette 43', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        44, 3, 'Recette 44', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        45, 3, 'Recette 45', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        46, 3, 'Recette 46', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        47, 3, 'Recette 47', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        48, 3, 'Recette 48', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        49, 3, 'Recette 49', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, amet. Cum labore possimus ad vitae minima nesciunt commodi eos.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', NULL
    ),
    (
        54, 3, 'Mousse au chocolat', 'La mousse au chocolat est une véritable gourmandise qui plaira à tous les amateurs de chocolat. Cette recette est très simple à réaliser et ne nécessite que quelques ingrédients de base.', '200g de chocolat noir à pâtisser\r\n4 oeufs\r\n30g de sucre en poudre\r\n1 pincée de sel\r\nsdfsd', 'Faites fondre le chocolat au bain-marie ou au micro-ondes, puis laissez-le refroidir légèrement.\r\nSéparez les blancs des jaunes d\'oeufs. Mettez les blancs dans un saladier et réservez.\r\nDans un autre saladier, fouettez les jaunes d\'oeufs avec le sucre et le sel jusqu\'à ce que le mélange blanchisse.\r\nAjoutez le chocolat fondu aux jaunes d\'oeufs et mélangez bien.\r\nMontez les blancs en neige ferme et incorporez-les délicatement à la préparation au chocolat en prenant soin de ne pas casser les blancs.\r\nVersez la mousse dans des verrines ou dans un grand bol et réfrigérez pendant au moins 2 heures avant de déguster.', '1-chocolate-au-mousse.jpg'
    ),
    (
        55, 2, 'Gratin dauphinois', 'Le gratin dauphinois est une recette traditionnelle de la région de Dauphiné, située dans les Alpes françaises. Il se compose de fines tranches de pommes de terre cuites dans du lait et du beurre, le tout gratiné au four jusqu\'à ce qu\'il soit doré et croustillant.', '1 kg de pommes de terre à chair ferme\r\n1 litre de lait entier\r\n3 gousses d\'ail\r\n50 g de beurre\r\nSel et poivre', 'Préchauffez le four à 180°C (th. 6). Pelez et rincez les pommes de terre. Coupez-les en fines tranches à l\'aide d\'une mandoline ou d\'un couteau bien aiguisé.\r\nDans une grande casserole, faites chauffer le lait avec les gousses d\'ail épluchées et pressées. Ajoutez une pincée de sel et une poignée de poivre.\r\nQuand le lait commence à frémir, ajoutez les tranches de pommes de terre en les disposant en couches bien serrées. Laissez cuire à feu doux pendant environ 10 minutes, jusqu\'à ce que les pommes de terre soient tendres.\r\nÉgouttez les pommes de terre en conservant le lait chaud. Disposez les tranches de pommes de terre dans un plat à gratin beurré.\r\nVersez le lait chaud sur les pommes de terre en veillant à ce qu\'il recouvre entièrement les tranches. Parsemez le dessus de quelques noisettes de beurre.\r\nEnfournez le gratin pendant 30 à 40 minutes, jusqu\'à ce qu\'il soit doré et bien gratiné. Servez chaud, accompagné d\'une salade verte ou d\'une viande grillée.', '2-gratin-dauphinois.jpg'
    ),
    (
        58, 1, 'Salade de chèvre', 'La salade de chèvre est une préparation fraîche et légère, idéale pour les repas d\'été. Elle se compose de feuilles de salade, de tranches de poire et d\'émietté de chèvre frais, le tout assaisonné avec une vinaigrette légère à base d\'huile d\'olive et de vinaigre de vin.', '1 boule de chèvre frais\r\n1 botte de salade (laitue, roquette, mâche, etc.)\r\n1 poignée de noix (noisettes, amandes, noix de cajou, etc.)\r\n1 poire\r\nQuelques feuilles de menthe\r\n1 cuillère à soupe de vinaigrette (huile d\'olive, vinaigre de vin, moutarde, sel et poivre)', 'Commencez par laver et essorer votre salade. Découpez-la en fines lamelles et répartissez-la dans les assiettes.\r\nCoupez la poire en fines tranches et répartissez-les sur la salade.\r\nÉmiettez le chèvre et répartissez-le sur la salade.\r\nParsemez la salade de noix concassées et de feuilles de menthe ciselées.\r\nPréparez la vinaigrette en mélangeant une cuillère à soupe d\'huile d\'olive, une cuillère à soupe de vinaigre de vin, une pincée de moutarde, du sel et du poivre. Versez-la sur la salade et mélangez bien.\r\nServez la salade de chèvre fraîche, accompagnée d\'un pain croustillant.', '3-salade.jpg'
    );

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;

CREATE TABLE IF NOT EXISTS `users` (
    `id` int(11) NOT NULL AUTO_INCREMENT, `email` varchar(255) NOT NULL, `password` varchar(255) NOT NULL, `first_name` varchar(255) NOT NULL, `last_name` varchar(255) NOT NULL, `role` varchar(255) NOT NULL, PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `recipes`
--
ALTER TABLE `recipes`
ADD CONSTRAINT `recipes_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;