-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 08 2020 г., 17:28
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `zoopark`
--

-- --------------------------------------------------------

--
-- Структура таблицы `animals`
--

CREATE TABLE `animals` (
  `animals_id` bigint(20) NOT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_birth` date NOT NULL,
  `gender_id` bigint(20) NOT NULL,
  `habiat_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `racion_animals_id` bigint(20) NOT NULL,
  `id_vet` bigint(20) NOT NULL,
  `id_smotr` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `bird`
--

CREATE TABLE `bird` (
  `animals_id` bigint(20) NOT NULL,
  `origin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gruppa` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `gender`
--

CREATE TABLE `gender` (
  `gender_id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `mammals`
--

CREATE TABLE `mammals` (
  `animals_id` bigint(20) NOT NULL,
  `origin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gruppa` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal`
--

CREATE TABLE `personal` (
  `user_id` bigint(20) NOT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patronymic` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_birth` date NOT NULL,
  `gender_id` bigint(20) NOT NULL,
  `phone_number` bigint(20) NOT NULL,
  `animals_id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL,
  `married_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `racion_animals`
--

CREATE TABLE `racion_animals` (
  `racion_animals_id` bigint(20) NOT NULL,
  `animals_id` bigint(20) NOT NULL,
  `number_type` int(11) NOT NULL,
  `list_product` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `racion_type_id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `racion_type`
--

CREATE TABLE `racion_type` (
  `racion_type_id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `reptail`
--

CREATE TABLE `reptail` (
  `animals_id` bigint(20) NOT NULL,
  `origin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gruppa` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `sys_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `winter`
--

CREATE TABLE `winter` (
  `animals_id` bigint(20) NOT NULL,
  `contry` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `temperatura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `winter_r`
--

CREATE TABLE `winter_r` (
  `animals_id` bigint(20) NOT NULL,
  `nortmal_t` int(11) NOT NULL,
  `date_winter` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `zona_obitanya`
--

CREATE TABLE `zona_obitanya` (
  `habiat_id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `animals`
--
ALTER TABLE `animals`
  ADD PRIMARY KEY (`animals_id`),
  ADD KEY `FK_animals_gender_gender_id` (`gender_id`),
  ADD KEY `FK_animals_zona_obitanya_habiat_id` (`habiat_id`),
  ADD KEY `FK_animals` (`id_smotr`),
  ADD KEY `FK_animals_personal_user_id` (`id_vet`);

--
-- Индексы таблицы `bird`
--
ALTER TABLE `bird`
  ADD PRIMARY KEY (`animals_id`);

--
-- Индексы таблицы `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`gender_id`);

--
-- Индексы таблицы `mammals`
--
ALTER TABLE `mammals`
  ADD PRIMARY KEY (`animals_id`);

--
-- Индексы таблицы `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `FK_personal_gender_gender_id` (`gender_id`),
  ADD KEY `FK_personal_personal_user_id` (`married_id`),
  ADD KEY `FK_personal_role_role_id` (`role_id`);

--
-- Индексы таблицы `racion_animals`
--
ALTER TABLE `racion_animals`
  ADD PRIMARY KEY (`racion_animals_id`),
  ADD KEY `FK_racion_animals_racion_type_racion_type_id` (`racion_type_id`),
  ADD KEY `FK_racion_animals_animals_animals_id` (`animals_id`);

--
-- Индексы таблицы `racion_type`
--
ALTER TABLE `racion_type`
  ADD PRIMARY KEY (`racion_type_id`);

--
-- Индексы таблицы `reptail`
--
ALTER TABLE `reptail`
  ADD PRIMARY KEY (`animals_id`);

--
-- Индексы таблицы `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Индексы таблицы `winter`
--
ALTER TABLE `winter`
  ADD PRIMARY KEY (`animals_id`);

--
-- Индексы таблицы `winter_r`
--
ALTER TABLE `winter_r`
  ADD PRIMARY KEY (`animals_id`);

--
-- Индексы таблицы `zona_obitanya`
--
ALTER TABLE `zona_obitanya`
  ADD PRIMARY KEY (`habiat_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `animals`
--
ALTER TABLE `animals`
  MODIFY `animals_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `bird`
--
ALTER TABLE `bird`
  MODIFY `animals_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `gender`
--
ALTER TABLE `gender`
  MODIFY `gender_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `mammals`
--
ALTER TABLE `mammals`
  MODIFY `animals_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `personal`
--
ALTER TABLE `personal`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `racion_animals`
--
ALTER TABLE `racion_animals`
  MODIFY `racion_animals_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `racion_type`
--
ALTER TABLE `racion_type`
  MODIFY `racion_type_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `reptail`
--
ALTER TABLE `reptail`
  MODIFY `animals_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `winter`
--
ALTER TABLE `winter`
  MODIFY `animals_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `winter_r`
--
ALTER TABLE `winter_r`
  MODIFY `animals_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `zona_obitanya`
--
ALTER TABLE `zona_obitanya`
  MODIFY `habiat_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `animals`
--
ALTER TABLE `animals`
  ADD CONSTRAINT `FK_animals_bird_animals_id` FOREIGN KEY (`animals_id`) REFERENCES `bird` (`animals_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_animals_gender_gender_id` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`gender_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_animals_mammals_animals_id` FOREIGN KEY (`animals_id`) REFERENCES `mammals` (`animals_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_animals_reptail_animals_id` FOREIGN KEY (`animals_id`) REFERENCES `reptail` (`animals_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_animals_zona_obitanya_habiat_id` FOREIGN KEY (`habiat_id`) REFERENCES `zona_obitanya` (`habiat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `bird`
--
ALTER TABLE `bird`
  ADD CONSTRAINT `FK_bird_winter_animals_id` FOREIGN KEY (`animals_id`) REFERENCES `winter` (`animals_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `personal`
--
ALTER TABLE `personal`
  ADD CONSTRAINT `FK_personal_animals_id_smotr` FOREIGN KEY (`user_id`) REFERENCES `animals` (`id_smotr`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_personal_animals_id_vet` FOREIGN KEY (`user_id`) REFERENCES `animals` (`id_vet`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_personal_gender_gender_id` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`gender_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_personal_personal_user_id` FOREIGN KEY (`married_id`) REFERENCES `personal` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_personal_role_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `racion_animals`
--
ALTER TABLE `racion_animals`
  ADD CONSTRAINT `FK_racion_animals_animals_animals_id` FOREIGN KEY (`animals_id`) REFERENCES `animals` (`animals_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_racion_animals_racion_type_racion_type_id` FOREIGN KEY (`racion_type_id`) REFERENCES `racion_type` (`racion_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `reptail`
--
ALTER TABLE `reptail`
  ADD CONSTRAINT `FK_reptail_winter_r_animals_id` FOREIGN KEY (`animals_id`) REFERENCES `winter_r` (`animals_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
