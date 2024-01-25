-- MySQL dump 10.13  Distrib 5.7.23, for Win64 (x86_64)
--
-- Host: localhost    Database: myprj1
-- ------------------------------------------------------
-- Server version	5.7.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `myprj1`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `myprj1` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `myprj1`;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'doloribus','qui-recusandae-molestiae-voluptas-veritatis','2024-01-23 08:26:32','2024-01-23 08:26:32'),(2,'expedita','quas-totam-corrupti-veritatis-omnis-et-qui-ducimus','2024-01-23 08:26:32','2024-01-23 08:26:32'),(3,'magnam','voluptas-labore-dolorem-corrupti-qui','2024-01-23 08:26:32','2024-01-23 08:26:32'),(4,'voluptatem','est-sint-repellat-labore-voluptatum-enim-suscipit','2024-01-23 08:26:32','2024-01-23 08:26:32'),(5,'fuga','cumque-nam-quae-nihil','2024-01-23 08:26:32','2024-01-23 08:26:32'),(6,'sequi','quo-totam-praesentium-assumenda-dolor-dolore-perferendis-unde-quas','2024-01-23 08:26:32','2024-01-23 08:26:32'),(7,'qui','provident-fugit-qui-dolorem-qui-nobis','2024-01-23 08:26:32','2024-01-23 08:26:32'),(8,'distinctio','incidunt-quae-sit-est-eos-totam-soluta-et-recusandae','2024-01-23 08:26:32','2024-01-23 08:26:32'),(9,'nihil','aliquam-accusamus-praesentium-facilis','2024-01-23 08:26:32','2024-01-23 08:26:32'),(10,'ad','voluptate-laborum-et-labore-aut-doloribus-excepturi','2024-01-23 08:26:32','2024-01-23 08:26:32'),(11,'molestias','eos-qui-est-deleniti-in-nemo','2024-01-23 08:26:32','2024-01-23 08:26:32'),(12,'earum','adipisci-ullam-alias-ducimus-libero-maiores-vel-praesentium','2024-01-23 08:26:32','2024-01-23 08:26:32'),(13,'nam','quidem-iusto-sit-eum-nobis-sed-at','2024-01-23 08:26:32','2024-01-23 08:26:32'),(14,'accusantium','aut-animi-dolorem-ipsam-nesciunt-libero-est-laudantium','2024-01-23 08:26:32','2024-01-23 08:26:32'),(15,'aut','et-quia-ut-ea-in-laborum-maiores','2024-01-23 08:26:32','2024-01-23 08:26:32'),(16,'tenetur','et-distinctio-est-illum-non','2024-01-23 08:26:32','2024-01-23 08:26:32'),(17,'libero','accusantium-omnis-quaerat-voluptas-animi-ut','2024-01-23 08:26:32','2024-01-23 08:26:32'),(18,'aliquid','rerum-beatae-atque-natus-consequuntur-impedit-veniam-eveniet-velit','2024-01-23 08:26:32','2024-01-23 08:26:32'),(19,'sint','ut-voluptatibus-fuga-a-id-dolorem','2024-01-23 08:26:32','2024-01-23 08:26:32'),(20,'et','consequuntur-quis-ut-sunt-iste-aliquid-necessitatibus','2024-01-23 08:26:32','2024-01-23 08:26:32'),(21,'culpa','et-sapiente-atque-provident-et-ad-voluptatem-mollitia','2024-01-23 08:26:32','2024-01-23 08:26:32'),(22,'harum','ut-consequuntur-qui-quis-veritatis-non-commodi-similique','2024-01-23 08:26:32','2024-01-23 08:26:32'),(23,'error','ut-sed-sit-inventore-voluptatem','2024-01-23 08:26:32','2024-01-23 08:26:32'),(24,'omnis','deserunt-ut-sunt-odio-nobis','2024-01-23 08:26:32','2024-01-23 08:26:32'),(25,'sit','deserunt-et-sunt-ipsum-quis-voluptatem-veritatis','2024-01-23 08:26:32','2024-01-23 08:26:32'),(26,'animi','distinctio-ut-cupiditate-porro-maiores-placeat-excepturi','2024-01-23 08:26:32','2024-01-23 08:26:32'),(27,'officia','beatae-est-facere-optio-ut-eum-adipisci-ducimus','2024-01-23 08:26:32','2024-01-23 08:26:32'),(28,'rem','aut-reiciendis-iure-perspiciatis-alias-ullam','2024-01-23 08:26:32','2024-01-23 08:26:32'),(29,'modi','qui-est-facere-dignissimos-excepturi','2024-01-23 08:26:32','2024-01-23 08:26:32'),(30,'veniam','voluptatem-sed-perferendis-laudantium-ipsam-totam-velit-corporis','2024-01-23 08:26:32','2024-01-23 08:26:32');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_11_07_142857_create_Products_table',1),(6,'2023_11_11_152637_create_cache_table',1),(7,'2023_11_16_103002_create_posts_table',1),(8,'2023_11_18_142019_create_categories_table',1),(9,'2024_01_07_133927_create_comments_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,1,'Officia officiis soluta qui aut pariatur et.','nemo-explicabo-dolor-iusto-qui','<p>Aut ut tenetur pariatur odio quo facilis commodi quasi. Nesciunt debitis et dolor quos. Consequuntur ipsa cumque quia rerum atque voluptas.</p><p>Dolorem reprehenderit quaerat exercitationem. Nesciunt mollitia asperiores sunt harum tempora voluptas. Modi enim eius ea. Quis temporibus est facere et suscipit.</p>','<p>Aut fugiat omnis enim deleniti odit necessitatibus natus. Ut nulla qui repellat ab assumenda quia ducimus voluptas. Et iure laborum nulla qui placeat. Odio voluptas nemo necessitatibus fugit et voluptas mollitia.</p><p>Velit pariatur veritatis omnis omnis. Et ab modi quis nisi ut expedita officia. Non ex omnis labore suscipit.</p><p>Quasi impedit consequatur impedit. Eius accusantium mollitia aut aut laudantium. Quis optio nesciunt qui. Consequatur ut nisi tempore.</p><p>Sint nulla sed ut illum fugit assumenda. Molestiae suscipit voluptatem magnam non ut nisi atque. Molestiae fugit magni odit nihil molestias culpa corporis. Expedita fuga harum nisi et.</p><p>Fugit consequatur laudantium repudiandae dolorem. Alias hic voluptatibus exercitationem alias quo.</p><p>Quis cumque in asperiores. Omnis rerum ipsam temporibus voluptas at quo aliquid. Consequatur molestiae neque autem.</p>','2024-01-23 08:26:32','2024-01-23 08:26:32',NULL),(2,1,2,'Facilis eius qui ut libero ex.','est-cum-libero-culpa-natus-quia','<p>Voluptate corrupti architecto et id voluptatem numquam sapiente. Iusto excepturi atque soluta nulla qui fugit impedit. Voluptatem consequatur velit accusamus repellat dolorem id. Natus qui ullam est est.</p><p>Voluptas esse omnis pariatur vero aliquam. Sunt consequatur vel fuga et consequatur quod fugiat. Enim aut aut non recusandae et. Quo ratione voluptatem labore dolor nihil veritatis minus. Quia sequi sit nam et.</p>','<p>Cupiditate nobis vel et minus ut dignissimos officiis magni. Eaque ad praesentium consectetur dolor enim dolorum fuga fugiat. Provident voluptatem necessitatibus totam possimus doloribus quaerat amet. Vitae mollitia praesentium placeat voluptatum.</p><p>Quam nam aut ratione reprehenderit at id corporis. Sit occaecati harum et facilis qui ea quia. Veritatis ipsum voluptates pariatur adipisci quos unde.</p><p>Accusamus veritatis omnis assumenda ut ut animi consectetur. Autem illo corrupti corporis sed aut quasi accusamus saepe. Voluptas harum corporis rerum eius.</p><p>Alias aperiam dolor nobis. Itaque iste quia eius. Ipsa consequatur qui modi voluptates qui distinctio. Aliquam suscipit optio eaque et.</p><p>Recusandae recusandae et dolores velit non. Quae assumenda quo aliquam quam in omnis. Aspernatur consequuntur reprehenderit sint consequatur cumque minus assumenda reiciendis. Quia exercitationem quo eius et.</p><p>In dolor suscipit et sequi qui perspiciatis velit. Omnis aliquid voluptatibus quisquam tenetur ipsum quasi vitae. Provident accusantium ullam laborum officiis qui laboriosam. Autem delectus voluptatem eligendi.</p>','2024-01-23 08:26:33','2024-01-23 08:26:33',NULL),(3,1,3,'Aut quidem itaque illo veritatis doloribus voluptatem.','nemo-nihil-sint-quaerat-quasi-amet-non-voluptatem','<p>Qui perferendis quod ut. Ut nisi ipsam eos voluptate magnam ad repellat soluta. Eligendi minus qui et occaecati eligendi id. Repellat sit officia earum laboriosam aliquam ab.</p><p>Nihil sequi dolores commodi iure numquam. Nulla magnam quam ut ullam. Perferendis veritatis officiis consequatur itaque sunt ea. Fugit modi voluptate aliquam ab.</p>','<p>Omnis dolores autem pariatur repudiandae. Et quo ipsa soluta aut. Nihil impedit minima ex voluptate repudiandae delectus error.</p><p>Sint perferendis officiis et. Quia cum incidunt aut quo nam eius et. Amet quia officiis quisquam aliquid provident sit iste.</p><p>Officia labore veritatis est dolorum est odio hic. Incidunt blanditiis quaerat et natus nihil quis. Eius quaerat unde dolorem minima.</p><p>Et rerum nostrum quae. Qui cum et in ut nemo aut optio commodi. Expedita dolor aut corporis et rerum corporis eligendi. Laudantium ducimus temporibus consequuntur soluta.</p><p>Eligendi ut recusandae vitae modi temporibus. Deserunt earum incidunt labore nulla neque. Dolores numquam cupiditate in veritatis et dicta. Quod aut nostrum ut.</p><p>Laboriosam ipsam corrupti enim itaque. Aut fugiat eligendi quos repellendus. Voluptates magnam beatae dolores voluptatibus velit quis.</p>','2024-01-23 08:26:33','2024-01-23 08:26:33',NULL),(4,1,4,'Recusandae reiciendis suscipit ex dolor.','id-quae-et-officiis-porro','<p>Voluptas eaque molestiae voluptate doloribus. Provident quia et nobis voluptatum enim excepturi eius. Rerum consectetur quia nihil et repellendus eius aut.</p><p>Nisi et voluptas atque qui rerum. In minus sed ipsum. Consequatur qui consequatur laborum rerum.</p>','<p>Dicta nihil tempore sint. Amet amet aliquam quis aliquid iure nihil est. Voluptas quis consequatur recusandae et asperiores. Cupiditate libero eveniet veniam enim.</p><p>Facilis mollitia impedit a distinctio. Laudantium totam recusandae adipisci et a. Sunt voluptatem reiciendis et facilis ut.</p><p>Exercitationem deserunt sit blanditiis non perspiciatis. Ut expedita voluptatem officiis distinctio qui et.</p><p>Repudiandae vitae praesentium aliquid sunt veniam dolores sit. Tenetur maxime assumenda possimus sed asperiores qui maxime. Deleniti repellat qui sunt. Aut doloribus dicta nobis ullam est voluptas sit.</p><p>Ratione veritatis perferendis voluptatem sunt distinctio. Perspiciatis quibusdam maiores est magnam et et. Distinctio odio voluptatem consequatur quia voluptas.</p><p>Voluptatem atque maiores sed. Rerum rerum eos accusamus consequatur excepturi sit. Modi temporibus autem laudantium similique earum et eos. Debitis nobis dolore tenetur quae aliquid.</p>','2024-01-23 08:26:33','2024-01-23 08:26:33',NULL),(5,1,5,'Eos consequatur est delectus omnis ullam.','ut-quisquam-delectus-distinctio-voluptatibus','<p>Itaque aut perferendis reiciendis id incidunt aliquid. Nihil qui voluptas est dolorem rem. Velit impedit inventore voluptas. Consequatur eligendi quia omnis cum consectetur iure.</p><p>Debitis cum et cum et. Architecto voluptatem id aut ut sunt.</p>','<p>Eos ut cum explicabo nulla magni ipsa qui. Asperiores et maiores et id fugit facere est. Quaerat repudiandae cupiditate ipsam et sint ea ut.</p><p>Qui velit corrupti qui et illo. Omnis et natus eos voluptates aliquam quis saepe. Magnam id quos corrupti fuga vel corrupti.</p><p>Itaque molestias inventore quia sint ea in dolor necessitatibus. Voluptates quia et amet voluptas similique eum. Dolorem voluptatum consequatur beatae voluptates pariatur est sapiente. Ad adipisci earum ut sed.</p><p>Ipsam voluptatum alias tempora atque aperiam laudantium. Atque et doloribus qui nulla.</p><p>Molestias nemo consequatur rerum et reiciendis. Quia modi at et voluptatem eos. Doloribus in nobis fugit voluptatem.</p><p>Fugiat aut assumenda temporibus. Et officiis beatae necessitatibus et dolores amet repellat. Velit officia optio omnis ut. Ut laudantium dolor quo natus omnis sunt suscipit excepturi. Libero enim alias ipsam facilis dolorum.</p>','2024-01-23 08:26:33','2024-01-23 08:26:33',NULL),(6,1,6,'Assumenda et dolores perspiciatis ut totam.','consequuntur-ipsum-amet-saepe','<p>Necessitatibus quasi voluptates sed deleniti animi. Iste sapiente non voluptatem tempore voluptatem quas aliquid. Rerum voluptate quia aspernatur sapiente. Illum doloribus eum similique nisi reprehenderit voluptatibus ipsa.</p><p>Sed veritatis soluta optio perferendis et distinctio. Maiores tempora facilis quia. Quasi quo ipsam autem tenetur molestiae temporibus et.</p>','<p>Eius quasi non beatae sit. Autem odio quis quod similique porro. Facilis sit tempora sunt culpa.</p><p>Dignissimos voluptate et ut fuga beatae. Provident veniam enim aut corporis vitae. Fuga eligendi assumenda quia.</p><p>Est natus porro reiciendis est. Ut molestiae aut vero omnis odio quibusdam provident. Temporibus illum ipsam assumenda tempora officia iusto. Et qui neque facere quasi necessitatibus.</p><p>Aperiam nulla exercitationem quia est consectetur non asperiores aut. Ad et occaecati aut illum. Culpa autem officiis ipsum maxime hic. Sunt ut et quam temporibus dolores id animi.</p><p>Corporis dolorum aut ut sequi ratione illo reiciendis. Cum id ea sed deserunt consequatur. Amet expedita eligendi recusandae alias.</p><p>Et nisi laudantium non. Id amet enim rerum quasi voluptatibus sint. Rerum non quo similique voluptas aperiam sit dolor quo. Aut assumenda sit deserunt dolor nemo quis.</p>','2024-01-23 08:26:33','2024-01-23 08:26:33',NULL),(7,1,7,'Qui molestiae voluptates est tenetur error quam beatae rem.','voluptatem-rerum-quasi-soluta-aut-veritatis-ipsum-impedit','<p>Maiores id optio et id velit ut qui. Repudiandae est facilis aperiam dolorem molestiae. Expedita laboriosam ad consequuntur et unde.</p><p>Numquam ut maxime quam reprehenderit. Harum assumenda alias mollitia similique. Veritatis qui laboriosam dolores voluptatibus repellendus. Inventore porro natus recusandae nobis doloremque consectetur.</p>','<p>Mollitia nihil minima et suscipit. Culpa sunt distinctio ut quod aperiam. Aliquam sed laudantium totam est accusantium nihil.</p><p>Sint voluptatem et est quia qui ut aut. Et blanditiis excepturi qui et dolore magnam architecto. Eos voluptatum sed tenetur dolores recusandae aperiam laborum. Esse consequatur corrupti aut eaque ipsam iusto.</p><p>Nobis sunt dolor optio deserunt qui placeat beatae. Consequatur beatae voluptatem ullam amet quaerat qui. Nobis nesciunt qui voluptatem sint omnis alias.</p><p>Sed repudiandae vitae molestiae aut quas ad. Omnis consequuntur quaerat qui praesentium in. Ut et et accusantium modi dolor illo modi.</p><p>Doloremque aut rerum quia et atque tenetur qui. Molestiae quia consequuntur molestias impedit enim qui quas sed. Praesentium quaerat similique nemo. Quis ducimus soluta quae sit quia.</p><p>Omnis quam et enim nihil natus enim pariatur aut. Quae praesentium autem voluptatum temporibus deserunt. In nobis eligendi minus vitae qui. Voluptas cumque sit dolore aliquid aliquid accusamus aspernatur.</p>','2024-01-23 08:26:33','2024-01-23 08:26:33',NULL),(8,1,8,'Fugiat sit sed quidem aspernatur.','perferendis-nihil-enim-ut-alias-voluptatem','<p>Eveniet ea excepturi neque esse et et asperiores. Provident hic doloribus qui vero. Explicabo error voluptatibus ex quisquam in.</p><p>Iste et facilis explicabo voluptatibus. Officiis eius at aut.</p>','<p>Beatae quia natus vel quis eligendi itaque vitae. Quis sit vel minus nostrum distinctio. Cupiditate id totam praesentium nostrum quaerat dicta in.</p><p>Omnis qui animi nemo earum. Amet quis corrupti similique delectus. Earum maxime quia consequatur. Accusantium et ut nemo blanditiis dolorem voluptas natus.</p><p>Est quia quo accusamus temporibus. Libero molestiae enim et sed accusantium et.</p><p>Velit nihil vel veniam ut cumque. Illo culpa id est et. Ad nesciunt omnis et deleniti in perferendis.</p><p>Qui magni qui sit molestiae. Id velit minus commodi voluptates et. Ipsam doloremque rem illo qui recusandae cumque.</p><p>Ut explicabo quis consequuntur aut hic. Reiciendis hic aut laborum occaecati aut necessitatibus.</p>','2024-01-23 08:26:33','2024-01-23 08:26:33',NULL),(9,1,9,'Totam odit ipsa laborum in expedita illum.','voluptatum-tempora-fuga-sunt-deleniti','<p>Voluptatibus ducimus temporibus quia et. Cum vel repellat ut qui. Est consequatur vero possimus sint. Distinctio aliquam est nulla suscipit repellat repellat molestiae.</p><p>Facere deserunt repudiandae accusamus in praesentium in dolores in. Non expedita qui ut saepe libero. Cupiditate enim sit est sed est similique qui. Modi debitis qui cupiditate commodi praesentium delectus id.</p>','<p>Deleniti quasi autem eos voluptas consequatur recusandae. Atque temporibus qui pariatur officia autem. Quo nihil non tempora porro cupiditate. Eius quasi vel libero earum omnis sunt eveniet.</p><p>Animi voluptates molestias exercitationem et quibusdam eius. Enim impedit et fugiat necessitatibus officia at. Modi consequatur facilis saepe nam dicta. Aliquid autem rerum temporibus eveniet molestiae.</p><p>Eum ducimus aut esse iste. Et quaerat inventore eveniet perspiciatis odio. Et eum eius enim a omnis minima perspiciatis voluptates.</p><p>Labore ut ratione deserunt dolor recusandae. Odio rerum deleniti quasi ullam modi assumenda. Est qui illum quidem sunt voluptatem mollitia magni.</p><p>Et ut dolorem voluptas minima id quam. Facilis modi animi iste asperiores harum quos alias. Facere voluptatibus consequuntur voluptas eos consectetur debitis ad asperiores. Sapiente quos quia doloremque distinctio et consequuntur.</p><p>Accusamus ut dolore reprehenderit mollitia. Qui porro architecto eos nostrum voluptate eligendi maxime. Debitis quae nihil ullam sit.</p>','2024-01-23 08:26:33','2024-01-23 08:26:33',NULL),(10,1,10,'Consequuntur soluta nesciunt voluptatem et quibusdam.','molestias-necessitatibus-culpa-fugiat-qui-modi-iure','<p>Quis sed sit labore commodi accusantium laudantium. Repudiandae quam mollitia odit delectus. Voluptatem ut harum dolores quis voluptatem.</p><p>Voluptates reiciendis eos ullam unde qui voluptas quia. Quisquam magni quisquam et quam. Et fugit consequatur velit facilis voluptas velit.</p>','<p>Nisi accusamus repellendus voluptatibus rerum minus. Quidem corrupti et quo tempore. Repellat dolores ut eum occaecati facilis. Quas reprehenderit nostrum eum et et.</p><p>Iure sunt saepe nemo neque dolor quos maxime. Eos laboriosam aut sed et. Expedita blanditiis voluptas dolorum architecto sint odio quos. Voluptates veritatis quia ut inventore aliquid quia. Est mollitia consequuntur omnis autem omnis repellat excepturi.</p><p>Reprehenderit cum odio omnis et soluta qui exercitationem reprehenderit. Consequatur aliquid expedita quia quidem ut vero. Hic est nostrum fugit nihil consequatur sunt. Nesciunt tempore magni pariatur fuga voluptates exercitationem eveniet.</p><p>Eius animi et occaecati expedita molestias harum. Et laudantium ut non non deserunt dolore tempore. Voluptas qui tenetur dicta. Tempora fugiat soluta molestias quam. Magnam ut placeat est aliquid est autem nihil veritatis.</p><p>Quaerat sunt laborum ex quaerat. Fuga ut rem consequatur labore eum id architecto. Eaque asperiores quisquam cupiditate perferendis. Consequatur blanditiis saepe explicabo at adipisci et.</p><p>Earum et adipisci soluta rerum. Eos suscipit est aut architecto repellat voluptas. Ut velit et vel corporis. Hic eos autem praesentium alias quas.</p>','2024-01-23 08:26:33','2024-01-23 08:26:33',NULL),(11,1,11,'Quisquam recusandae dignissimos sit similique recusandae officiis.','ex-magnam-ut-veritatis-aut-molestiae-ab','<p>Accusamus accusamus est et. Voluptas provident molestias ut quos enim omnis eos quis. Repudiandae labore voluptas et eveniet accusantium aut.</p><p>Totam et officia libero autem vel est voluptas. Dicta est architecto commodi sed quam totam. Id praesentium nihil nulla mollitia. Animi placeat alias non nesciunt omnis deleniti ea.</p>','<p>Beatae excepturi ducimus temporibus quidem aspernatur nesciunt. Doloremque harum error inventore non velit minus. Vitae nesciunt voluptates asperiores consequatur et nisi sapiente. Mollitia quam doloribus maiores ullam accusamus dolorem qui.</p><p>Deserunt molestiae sunt adipisci ut rerum alias sapiente. Dolores quia quos optio eligendi rerum hic minima. Ex molestiae deserunt neque optio debitis aut molestiae.</p><p>Recusandae dignissimos recusandae accusantium nostrum sit qui. Sit et debitis est quis quidem. Neque cumque dicta enim in.</p><p>Consequuntur expedita aut harum quis. Provident atque voluptas assumenda aliquid. Laboriosam similique rerum debitis doloribus quia ut aliquam. Sapiente ullam nostrum necessitatibus rerum nobis accusantium consectetur.</p><p>Iusto et sequi illo ex. Quod quam sint vitae voluptas ea dolor. Inventore deserunt dolorem delectus quo commodi modi ipsum delectus.</p><p>Doloremque tempora aut nobis. Et qui doloribus qui non exercitationem quibusdam molestias. Corrupti eos nisi natus qui exercitationem pariatur. Iusto debitis perspiciatis qui quidem voluptatem rerum alias.</p>','2024-01-23 08:26:33','2024-01-23 08:26:33',NULL),(12,1,12,'Enim quaerat sit saepe sit est qui dolorem.','porro-fuga-similique-velit-laborum-omnis','<p>Labore non amet ut qui. Dolore magnam dolorum ratione voluptas quod. Et distinctio reiciendis ullam illum.</p><p>Quisquam blanditiis aliquam maxime sunt voluptatem. Labore porro qui sed doloremque consequatur. Blanditiis et sint qui consequatur et neque.</p>','<p>Ut aliquam omnis dolor amet sunt qui. Molestiae ad accusantium deleniti soluta. Sed voluptatem aliquam numquam laudantium non minima veniam mollitia. Molestiae culpa asperiores sed ipsum reprehenderit quod et.</p><p>Ipsa praesentium debitis inventore eaque a quo. Sequi magnam dicta similique fuga. Dolores dicta quae provident voluptatem fuga repudiandae in. Odit praesentium tempora et repellat eius officiis quo.</p><p>Deleniti officiis dignissimos molestias praesentium. Sed sit laudantium nemo deleniti. Ut ea ab vel consequatur quidem veniam nihil.</p><p>Deleniti nulla quis reiciendis sed omnis in qui quibusdam. Et sed ab voluptatem quia excepturi impedit. Dolore quia velit delectus quae nesciunt. Odit eius fugit nisi modi vel dolorem.</p><p>Aut molestiae quia non. Iste facilis quo atque et qui adipisci sapiente distinctio. Facilis in unde error et at optio.</p><p>Ad illum placeat nihil placeat aut expedita dolorem. Dolorem temporibus alias voluptatum odio assumenda doloribus. Nulla eligendi fugit cumque harum sit. Exercitationem officiis perspiciatis saepe eos consequatur. Et totam atque minima quia officia in quod.</p>','2024-01-23 08:26:33','2024-01-23 08:26:33',NULL),(13,1,13,'Dolorem quis praesentium voluptates vero alias ea.','reprehenderit-aut-ut-iure-vitae-incidunt','<p>Sunt sit sunt iure culpa. Dolores sit deleniti quidem et quis architecto qui. Iure aspernatur cupiditate illum ea dignissimos dignissimos a et.</p><p>Libero nam quia doloremque ipsa harum maxime rem. Molestiae et consequatur nostrum ut quis et. Qui provident id tenetur vero culpa veritatis ut. Velit ut omnis modi suscipit commodi asperiores.</p>','<p>Earum odit et ipsum totam. Eligendi modi exercitationem ducimus provident dolores. Eius ut qui velit perspiciatis voluptatem dolores quas. Dicta nesciunt odio totam quis et et non.</p><p>Voluptatem nisi voluptatem quia animi necessitatibus dolor in nostrum. Nobis quia sit soluta dicta qui eaque aut. Pariatur atque commodi et expedita.</p><p>Excepturi aut nulla ab unde tempore. Recusandae nostrum nisi eos impedit aut. Aut pariatur qui veniam illo ut asperiores voluptate. Atque enim nostrum nam maxime hic sequi nemo.</p><p>Aut mollitia laboriosam quasi temporibus voluptatem et eius voluptas. Deleniti incidunt sed voluptatem harum qui cupiditate voluptatem. Sit id porro eum enim maiores occaecati animi error.</p><p>Quis eligendi corporis a debitis consequuntur et voluptatibus. Cumque dolores atque necessitatibus amet quam cum. Et inventore blanditiis cupiditate exercitationem iure.</p><p>Iusto sunt velit incidunt labore quisquam adipisci adipisci. Blanditiis accusantium atque fuga ut eos maiores. Ipsum aliquid voluptate et nobis.</p>','2024-01-23 08:26:33','2024-01-23 08:26:33',NULL),(14,1,14,'Est quia rem quas culpa velit est excepturi.','aut-iure-blanditiis-rem-omnis','<p>Mollitia quae totam assumenda aliquam dignissimos voluptas vel nostrum. Maiores dolorem alias omnis sit sit rerum. Assumenda aut ea temporibus laborum fugiat illum omnis.</p><p>Molestias est ut nulla non iure nemo. Aliquam officiis ducimus quisquam possimus. Assumenda sed cupiditate excepturi in et. Ipsa enim commodi et tenetur quibusdam. Qui dolor saepe mollitia distinctio quisquam ut voluptas.</p>','<p>Illum dolorem sunt sapiente. Repellat voluptates voluptate sint in culpa.</p><p>Ad velit blanditiis qui iste. Corporis est illo perspiciatis. Vel libero ut est animi aperiam consequatur. Qui consequuntur laboriosam aspernatur et quia ab.</p><p>Voluptas sit deleniti nulla. Sed omnis aut libero aut vero aspernatur doloremque quas. Molestiae ut vel rerum quo est in.</p><p>Occaecati explicabo ipsum qui ad. Temporibus repudiandae illo vel vero in cum quis. Laborum molestias accusantium maxime neque nesciunt.</p><p>Nihil ut iure velit quaerat. Distinctio eum excepturi veniam iure debitis et et. Dolorem sint et voluptatibus necessitatibus. Ut quisquam fugit quam voluptas itaque ab.</p><p>Quo sint quia quia nobis rerum doloribus dolores possimus. Eveniet aspernatur voluptatem accusamus animi qui labore. Maxime ut possimus aut quaerat. Est suscipit quo pariatur beatae expedita aspernatur.</p>','2024-01-23 08:26:33','2024-01-23 08:26:33',NULL),(15,1,15,'Id sed vitae consectetur id consequatur et.','quod-voluptatem-iure-quas-architecto-vitae-iusto','<p>Omnis est distinctio ducimus perferendis magnam. Laudantium reprehenderit omnis sed fuga. Et sed eum sapiente voluptas fugiat omnis. Dolorem eum soluta aut inventore quo delectus.</p><p>Laborum in dolor pariatur adipisci suscipit officiis. Ut deleniti placeat delectus est enim. Quisquam nemo nesciunt officiis ducimus. Consequatur ducimus consequuntur accusantium maxime molestias itaque.</p>','<p>Commodi tenetur velit velit consequatur. Alias voluptatum blanditiis quibusdam et alias incidunt repellat. Ipsum eos eos hic error.</p><p>Deleniti tempora sunt qui et laboriosam ut veritatis. Repellat perferendis aut doloremque inventore velit. Corrupti perspiciatis quis non qui. Odio fugit iste id aut.</p><p>Nisi ea a aut et laboriosam. Et magnam tempora corporis amet voluptate. Sit aut ab eius architecto sed ut pariatur.</p><p>Deserunt ut in et eligendi sequi mollitia. Animi aliquid exercitationem inventore expedita. At aut mollitia aliquid numquam. Consequatur aspernatur cum voluptatem quasi enim.</p><p>Rerum accusantium sed voluptas voluptate ipsa aut recusandae. Omnis in ullam possimus voluptas beatae et. Autem sapiente deleniti voluptatem provident quisquam et. Est nulla pariatur accusamus.</p><p>Quis sint non iusto quisquam molestiae enim ab. Esse dolore voluptas ipsum amet. Ea facere cumque repellat nostrum nostrum commodi.</p>','2024-01-23 08:26:33','2024-01-23 08:26:33',NULL),(16,1,16,'Ea dolorum corrupti illo dignissimos.','aperiam-sed-illo-nesciunt-excepturi-deserunt-quae-cum-itaque','<p>Fuga vitae ipsa et sed tenetur aliquam voluptate. Vero voluptate nesciunt ea maxime aspernatur. Illum maiores fuga tenetur et. Consequatur magnam deserunt facere ex similique molestiae. Quis enim voluptatem velit vitae id.</p><p>Sunt aut debitis molestiae consectetur. Expedita optio vero quaerat. Maxime est sequi in totam vitae est enim. Deleniti vitae id suscipit corporis.</p>','<p>Architecto quasi earum occaecati nostrum labore. Eligendi placeat velit earum ut iusto voluptas. Fugit quae sit commodi voluptatem tempore excepturi sequi.</p><p>Laudantium est aut laborum. Voluptas aut quidem placeat magni rerum. Quo dolore consequuntur odit nulla deleniti qui sunt. Numquam voluptatem sed cum unde nam eos omnis. Non quo vel ad veritatis sit maxime et quia.</p><p>Unde commodi aliquid itaque neque. Pariatur velit labore tenetur nobis deleniti id dicta. Sequi rem aliquid possimus voluptatum minima ut a.</p><p>Magni sit explicabo numquam alias sed laudantium et corporis. Aut suscipit deserunt quibusdam expedita facere est qui. Rem voluptatum iure at ducimus rerum eaque voluptas.</p><p>Reiciendis ratione aliquid cupiditate id aperiam corporis reiciendis. Veniam id voluptatibus quo nulla illo. Qui assumenda est corrupti cumque qui culpa exercitationem. Dolorem ipsa est mollitia architecto quae eum nesciunt. Enim quia voluptatem corrupti quis impedit nihil delectus.</p><p>Ut ut facere voluptas et. Voluptate veritatis iste harum et ratione consectetur veniam. Dolorem quos amet ipsam qui consectetur sit sit.</p>','2024-01-23 08:26:33','2024-01-23 08:26:33',NULL),(17,1,17,'Cum dolorem eligendi nostrum sed.','ut-illum-aperiam-culpa-quisquam-id-quaerat','<p>Et cupiditate odio eum natus similique error repellat. In quam est numquam et quia beatae. Qui voluptas exercitationem ipsa reiciendis unde tempore sunt. Omnis modi fugiat qui minus.</p><p>Magnam consequatur ex libero molestiae ut labore. Porro aperiam quasi aspernatur debitis vel. Eligendi molestiae itaque aut minus doloribus molestiae deleniti. Cumque adipisci ipsam voluptate accusantium repellat vitae nisi et.</p>','<p>Eligendi quia autem aspernatur. Molestiae amet iusto deleniti qui. Quas ullam consectetur dolor est. Ab facilis unde ducimus sapiente.</p><p>Nam pariatur quae est voluptatem aspernatur et. Qui nisi occaecati aspernatur modi consequatur voluptatem sed. Unde veniam neque est nisi. Omnis eos maxime excepturi nihil. Magnam aliquam et sit voluptatum.</p><p>Aspernatur id minus veritatis aut fugit ea. Eaque reprehenderit aut fugit vel. Et explicabo enim cupiditate dolor et.</p><p>Et deserunt aut amet natus neque voluptatem eaque autem. Ipsum impedit ex eos totam enim. Aut error maiores corrupti ut magni est. Ullam facilis in accusamus.</p><p>Quia error nisi vel porro at dolor quia. Porro assumenda et omnis dicta. Corrupti accusantium ut architecto neque.</p><p>Ut quo quia in excepturi dolores. Rerum animi consequuntur voluptatem aut unde. Corrupti occaecati hic aut illo iure nostrum. Aut error omnis molestias laboriosam tenetur. Distinctio atque quasi esse est a doloremque.</p>','2024-01-23 08:26:33','2024-01-23 08:26:33',NULL),(18,1,18,'Voluptas quod culpa aperiam sit quis eligendi.','consequatur-corporis-et-accusantium-architecto-magnam','<p>Earum corporis quibusdam pariatur ut consectetur nihil. Quia maxime laudantium et earum. Natus quod aut rerum praesentium.</p><p>Ut corrupti est iusto dolore vel. Harum enim iste impedit perferendis error. Voluptatem consequatur enim consequatur adipisci saepe delectus.</p>','<p>Ipsum ea labore consequuntur sit officiis omnis accusamus. Qui voluptatem fuga nam facere tempora et dolorem possimus. Nobis temporibus quia nam illo. Quo eum aut vitae totam aut error.</p><p>Perferendis consequatur necessitatibus qui enim suscipit repellendus. Nisi corporis laudantium non ea quibusdam maiores. Facilis fugiat omnis voluptatem dolorem tempore ea quidem explicabo.</p><p>Consequatur est enim voluptatem dicta. Quo ipsa nobis consequatur mollitia voluptatem omnis. Porro dolores officiis ut dolorem in voluptatibus quia. Eos magnam officiis saepe incidunt. Rem officia et veniam et.</p><p>Doloremque optio deleniti minima qui. Deleniti repudiandae maxime quia sint ipsum. Rerum aut aperiam fugiat. Voluptate quibusdam vero mollitia maiores harum praesentium nobis.</p><p>Nihil alias perferendis labore dolores ut quis perspiciatis distinctio. Atque sit dolore qui ut ducimus adipisci. Voluptatibus neque vitae quibusdam quia aut architecto ullam velit.</p><p>Officiis asperiores aut est. Sed cupiditate assumenda voluptatem quod earum quo. Sequi illo unde ea est et. Tempore quos dolor et atque. Vero in ipsam nemo blanditiis.</p>','2024-01-23 08:26:33','2024-01-23 08:26:33',NULL),(19,1,19,'Esse nulla rerum magnam repellendus ex.','ut-quae-accusantium-fuga-ipsum','<p>Suscipit cum voluptatem dignissimos id aut quo. Voluptatum eveniet ut ut eveniet quod. Sit sit blanditiis nam facilis. Maxime sequi in tempore rerum labore.</p><p>Laudantium quisquam laudantium qui adipisci officia impedit consequatur. Perspiciatis voluptatum eos aliquid hic aut a veritatis. Repudiandae aut reiciendis qui non rerum aspernatur possimus.</p>','<p>Quia autem reiciendis omnis et. Veritatis ad et aperiam sed voluptate. Sint sapiente porro veniam non est qui similique eum. Quos sit nostrum eos et non voluptas soluta.</p><p>Odit ut voluptas consequatur hic exercitationem libero sit. Repellendus id dignissimos ipsa ab delectus inventore. Aliquid exercitationem est officia nostrum veritatis qui. Assumenda accusamus aliquam itaque dolores.</p><p>Quia mollitia quis sint voluptate. Hic itaque voluptas aut. Assumenda consequatur distinctio sapiente illum quia.</p><p>Eveniet molestias quos cupiditate quia. Consequatur rerum eum commodi saepe quam quod. Eaque cupiditate asperiores illum consequuntur quidem quia libero consequuntur.</p><p>Dolores deserunt inventore cumque ea neque. Aut saepe qui et sit unde officia qui. Aliquam officia voluptas reprehenderit occaecati sunt voluptatibus ullam reiciendis. Minus provident illo blanditiis. Fugiat occaecati laborum ea in.</p><p>Corrupti voluptate ea reprehenderit. Omnis iusto in sunt quia. Sit corrupti nobis nisi non.</p>','2024-01-23 08:26:33','2024-01-23 08:26:33',NULL),(20,1,20,'Consequatur velit qui similique magni aut harum aut praesentium.','quidem-aliquid-et-molestias-voluptas','<p>Quo ea et assumenda aperiam quaerat. Neque vero deserunt dolor dolorum. Ratione quis consequatur eum harum. Aut animi debitis est fugit sint vitae aliquam inventore.</p><p>Sunt iure est exercitationem sit dolorum provident non eaque. Pariatur rerum sunt ipsam iusto quia est. Molestias aut qui temporibus quasi ut magnam. Suscipit rerum molestiae amet praesentium rerum voluptatum sit nobis.</p>','<p>Dicta aut dolore voluptas eligendi veniam. Aut ullam eveniet assumenda qui asperiores. Et ut voluptatem ut eum.</p><p>Sunt aut nobis dolores consequatur voluptatem. Repellat consequatur facere totam est voluptatibus deserunt est accusantium. Praesentium dolores fugit repellendus amet molestiae.</p><p>Tempore facilis in libero qui est. Ipsam qui voluptatem assumenda nulla aut aut. Explicabo ut deserunt ut id maxime vel.</p><p>Nesciunt sed porro nostrum quis consequatur. Nobis qui eum consectetur ipsam. Sunt magnam similique aut temporibus. Ut omnis quaerat eaque tenetur modi.</p><p>Sint non unde rem ipsam. Et aut nobis aut fuga est adipisci. Blanditiis id quas est illo eum.</p><p>Velit officiis assumenda qui accusantium minus beatae. Iure eos quam iure consequatur esse provident dicta provident. Autem eaque quia optio molestiae.</p>','2024-01-23 08:26:33','2024-01-23 08:26:33',NULL),(21,1,21,'Repellat minima repudiandae ut vitae at.','qui-adipisci-et-molestiae-facere','<p>Explicabo dolores architecto rerum beatae in quod. Nihil odit voluptatibus ea sapiente. Aut quia aut qui dicta eum ducimus voluptatem. Repellendus aliquid et illo laborum id molestiae.</p><p>Laboriosam et nam ex expedita error laudantium consequatur. Eveniet maiores nihil quaerat numquam animi. Et dolores qui unde voluptas modi temporibus.</p>','<p>Qui qui ab corrupti odio est facilis distinctio. Tenetur et et consectetur similique et odio error. Error et delectus sunt. Aliquam est veritatis autem aut.</p><p>Laboriosam et quia ipsa delectus. Minus eius sit aspernatur magnam. Aliquid voluptatem cumque dolorem neque.</p><p>Atque praesentium dolore officia aut. Sint assumenda voluptates quos veniam possimus. Et et et totam iure eaque. Voluptas perferendis illo culpa qui.</p><p>Nam molestias debitis quia consequatur rerum vitae illum eos. Quisquam sed sint animi error ea commodi. Quasi neque pariatur quis est qui velit.</p><p>Repellendus est cum omnis ab consequatur aut voluptatem. Fugiat ut id libero nesciunt. Consequuntur non minus natus.</p><p>Qui quibusdam recusandae amet corporis et magnam. Pariatur nemo omnis est voluptatem est modi illo. Voluptas et laboriosam magni.</p>','2024-01-23 08:26:33','2024-01-23 08:26:33',NULL),(22,1,22,'Nostrum quasi cupiditate qui sit.','natus-vel-quos-enim-dolores','<p>Nisi dolor possimus modi totam dolores. Quis quae qui distinctio nam qui quidem. Ut velit nihil et beatae ullam occaecati.</p><p>Dolores nostrum amet rerum rem. Corporis aut veniam facere harum. Odio repellendus qui repudiandae vel illum porro voluptate.</p>','<p>Ipsa et officiis ut aliquid aut. Quasi maiores qui ad atque. Non voluptates assumenda architecto quaerat impedit et quis temporibus. Odio dignissimos sint tenetur omnis aperiam dolorem.</p><p>Recusandae officia delectus eos accusantium et earum vero. Ad explicabo corrupti et quo fuga itaque numquam. Animi quos accusamus nihil distinctio. Impedit quibusdam quos reiciendis autem voluptatem laborum. Ea dignissimos et atque voluptas modi saepe.</p><p>Nobis maxime reprehenderit maxime repudiandae ex. Maxime dolores velit corrupti deserunt eos quia in. Et voluptas eum excepturi perspiciatis sunt labore.</p><p>Suscipit deserunt qui iste voluptatem praesentium perferendis. Quaerat et labore ut suscipit est est quasi fuga. Sed aut voluptatem aut qui.</p><p>Et numquam dolor assumenda nihil. Et corporis quisquam harum non. Vero doloribus illum est reiciendis quis.</p><p>Sapiente vitae consequatur ut et nulla deleniti. Cum est pariatur officiis explicabo laborum sunt sequi. Atque et cum excepturi dolores.</p>','2024-01-23 08:26:33','2024-01-23 08:26:33',NULL),(23,1,23,'Est deserunt molestias eligendi iusto velit perspiciatis beatae sed.','voluptas-molestias-qui-fugit-molestiae-voluptas-odit-blanditiis','<p>Quia ut quidem ea laudantium optio. Est ad explicabo neque suscipit. Qui aut fuga libero numquam ea labore ratione sit. Neque veniam quia reiciendis sint est dignissimos. Ut autem ipsum repellendus ut.</p><p>Id ut ipsa rerum est omnis fugit repudiandae. Ut nihil itaque tempore tempora. Rerum voluptate cum totam beatae corrupti dolor possimus.</p>','<p>Dolor non culpa aut. Sunt nam consequatur est veritatis quisquam iure. Aut quibusdam vero eaque explicabo perferendis. Ipsam repudiandae tempore ut aut explicabo explicabo.</p><p>Qui officia cumque esse dolores alias sed nihil voluptate. Consequatur ullam voluptatibus distinctio libero rerum consequatur molestiae. Voluptas quia et est quo.</p><p>Debitis impedit et maxime voluptatem natus. Nihil recusandae recusandae nobis dolor accusamus omnis ullam. Debitis sed perferendis saepe consequuntur vero.</p><p>Doloremque voluptatem quia est exercitationem velit. Pariatur sequi modi vero veritatis ad sequi tempore. Laudantium dolorem enim sint.</p><p>Explicabo fuga quia qui rerum ullam tempore. Enim accusamus quibusdam velit. Doloremque sint quia omnis aut neque optio est. Porro consectetur aspernatur blanditiis vitae consequatur nostrum officia.</p><p>Et excepturi voluptas dolores modi. Voluptatem voluptas ex id aspernatur. Repellat suscipit iusto nostrum asperiores sapiente. Quisquam veniam quia omnis qui molestias similique. In assumenda libero impedit dolores magni.</p>','2024-01-23 08:26:33','2024-01-23 08:26:33',NULL),(24,1,24,'Repellendus sunt unde tenetur omnis quis.','tempore-velit-rerum-est-possimus-nam-dicta','<p>Quia quam incidunt omnis corporis fuga ipsa incidunt sit. Autem reprehenderit corrupti fugiat reprehenderit. Repudiandae expedita repellendus et et dolores.</p><p>Expedita delectus ut tempora voluptatem. Quae qui repudiandae provident et architecto. Non voluptatum asperiores alias molestiae. Quidem tempore excepturi fugiat odio aut quis omnis ratione. Voluptas sequi dolorum perferendis optio laborum reprehenderit consectetur.</p>','<p>Id laudantium quasi molestiae. Doloremque id hic eveniet optio qui fuga nemo. Consequatur magni non est nobis. Cum sapiente ipsam deserunt sed laudantium qui veniam maiores.</p><p>Sit quisquam facilis eum quia dolorem tenetur. Nihil nostrum nemo qui aut numquam. Ullam consequuntur qui alias quos repudiandae quam tempora. Ipsam consequatur velit ipsa facere maxime ipsa.</p><p>At et eaque consequatur consequatur sequi. Illo odio a mollitia maiores. Voluptatem dolor iusto ipsa error sit a vitae praesentium.</p><p>Voluptas dolor doloribus sit minus. Et vel impedit eaque nostrum. Et et est repellat qui et nisi sit numquam.</p><p>Dolores culpa qui beatae. Libero dolores iure quod occaecati est unde est. Tenetur non in aut ut aut qui quia. Veniam fugiat quam voluptas harum ab aperiam maiores.</p><p>Ut quia aliquam laboriosam sit. Totam exercitationem ipsum molestias eos pariatur nemo ea. Molestiae eligendi non veniam est. Qui non sed sed sit placeat architecto aut laborum. Reprehenderit nostrum non et quam.</p>','2024-01-23 08:26:33','2024-01-23 08:26:33',NULL),(25,1,25,'Eos sunt reprehenderit quisquam sit enim voluptatibus.','repudiandae-dolorem-voluptas-repellendus-quia-deleniti-quibusdam','<p>Sint natus sed sint aliquid incidunt commodi similique. Autem commodi id ipsam eos est aliquid. Praesentium porro unde similique aut. Adipisci autem reprehenderit iste atque ut explicabo sed enim.</p><p>Quia ex aliquid quae. Quod esse iure rem. Doloremque voluptatem ex magnam sint.</p>','<p>Ut consequuntur voluptatem quia corrupti mollitia inventore enim. Itaque at qui est velit molestiae beatae voluptas. Consequuntur rerum expedita eos quia.</p><p>Rerum sed voluptate numquam earum distinctio pariatur. Veniam sed dolores optio dolorem ut vel. Eos voluptatum et numquam quo.</p><p>Nihil consequatur ad quasi aut nulla ut at. Eius et totam iure in enim maiores. Dolorum ut sapiente id qui. Officia natus voluptatem aut.</p><p>Ut aut amet facilis perferendis eum iusto. Consequatur consequuntur facilis quia dolorem. Perferendis quisquam inventore quisquam illo dolor quas sequi.</p><p>Consequatur pariatur amet pariatur est et. Et id incidunt temporibus consequatur numquam ex asperiores quia. Id molestiae aut ea id fugit aut.</p><p>Consequatur minus distinctio non dicta excepturi non. Consequatur laborum quis impedit est. Voluptate aut ad quia quod est est delectus laborum. Facere maiores reiciendis dicta voluptatem aut et laborum ipsum.</p>','2024-01-23 08:26:33','2024-01-23 08:26:33',NULL),(26,1,26,'Fugit rerum at quae dolores.','minus-veniam-illo-magnam-architecto-voluptatem-dignissimos','<p>Blanditiis rerum aperiam officiis iure minus. Aut vitae aut id sit dolores id. Est laborum reiciendis tenetur facilis eaque ut. Et a adipisci cum vitae.</p><p>Debitis sed placeat corporis excepturi. Aliquam dolor eveniet voluptate laborum aut nemo. Et est rerum soluta recusandae ex. Nihil doloribus harum reiciendis ullam ut fugit.</p>','<p>Doloribus id earum voluptatum omnis. A cumque consequatur repellat et reprehenderit et. Ducimus ut voluptatum enim dolorem perferendis quo. Deleniti recusandae aspernatur consequatur.</p><p>Et aspernatur cumque incidunt. Eum consectetur odio occaecati pariatur voluptate et dignissimos. Quia dignissimos quas facere nobis quod.</p><p>Impedit ut quibusdam quo facere neque reprehenderit. Quasi et alias nobis quasi reiciendis vel. Est nostrum enim laudantium consequatur molestiae atque numquam odio. Dolor quam sequi esse impedit delectus laborum sed.</p><p>Quod sint quis placeat aliquid est unde. Beatae ut deserunt hic corporis vero. Molestiae minima blanditiis quis ut inventore.</p><p>Ut impedit ullam neque perspiciatis suscipit ducimus. Repudiandae earum omnis neque vel. Dolor velit rerum hic et accusantium. Provident et provident sed dolor facilis ea.</p><p>Veritatis incidunt sed tempora nesciunt. Quae qui molestiae autem et. Rerum alias ut ea autem qui molestiae.</p>','2024-01-23 08:26:33','2024-01-23 08:26:33',NULL),(27,1,27,'Sed provident doloribus ducimus ut voluptate molestiae sapiente.','quae-ratione-ipsa-quia-quod-et','<p>Cumque ut non illum voluptatibus. Magni cumque et iste laudantium. Nostrum fugiat ipsa necessitatibus optio.</p><p>Quibusdam quod commodi eum repudiandae amet sapiente. Porro doloremque porro cupiditate est voluptatum.</p>','<p>Doloremque dolore repudiandae sint aut. Dolorem distinctio aut ratione suscipit earum aut animi est. Nostrum id aut minima quaerat pariatur soluta hic et. Officiis qui aut aut repellat doloribus.</p><p>Voluptate ex non repudiandae id veritatis. Dolor qui et dolores eligendi quos sit aperiam. Officia voluptatem dolores itaque temporibus labore. Fugit eos sit sed molestias. Omnis sed consequatur molestiae molestiae iste est molestias ut.</p><p>Optio illo optio numquam rerum dolore magnam qui et. Ducimus qui qui laudantium corrupti aperiam tempora voluptate. Qui voluptas totam voluptatibus libero quis exercitationem. Omnis quas sed amet qui sit.</p><p>Facilis eveniet ut voluptatem iusto. Et est soluta a esse. Aut nisi ipsa ut et debitis molestiae.</p><p>Iste sed sapiente porro labore consequuntur et. Aut similique numquam iusto et nihil. Possimus occaecati iusto aliquam qui dicta eligendi corporis. Sed dolore ipsam autem.</p><p>Inventore commodi veniam fuga. Nostrum omnis deserunt ipsam blanditiis. Voluptates aspernatur reiciendis ad id quas amet cupiditate unde. Dolore ullam tempora sit illum quas. Ipsam a repellendus possimus aspernatur incidunt.</p>','2024-01-23 08:26:33','2024-01-23 08:26:33',NULL),(28,1,28,'Sint itaque est dolore excepturi a.','quod-quo-perspiciatis-veniam-sequi-sed-accusantium-sit-rerum','<p>Incidunt suscipit voluptatem quae dolorum. Omnis sequi laborum consequuntur quis adipisci praesentium. Ipsum et ullam consequatur quae deleniti eveniet laborum. Asperiores alias dignissimos enim praesentium.</p><p>Cumque aut iusto tenetur et ab beatae. Odio et quo tempora.</p>','<p>Nemo est sequi delectus ea voluptatibus sit. Repellendus quos exercitationem inventore iste aut sint ut. Consectetur commodi aut provident possimus voluptas explicabo suscipit. Aut aut sint porro corrupti ea quia in cupiditate.</p><p>Fugit nulla molestiae pariatur explicabo velit sint. Numquam officia repellat tempora autem id consequuntur inventore.</p><p>Nihil ut harum in et alias. Sit similique quibusdam sit mollitia. Ex illo quos eum quos dolores. A veniam fugiat quod facilis.</p><p>Et ut atque ut quibusdam illum eum. Est aut corporis neque tempore facere qui. Suscipit quod et est et itaque.</p><p>Corporis consectetur mollitia in ut consequatur harum officia. Excepturi dolore voluptatem pariatur voluptatem et.</p><p>Quae eum dolores quidem aperiam sed omnis nostrum. Vel consequatur et qui laborum. Labore et non sunt.</p>','2024-01-23 08:26:33','2024-01-23 08:26:33',NULL),(29,1,29,'Delectus pariatur voluptas architecto numquam.','expedita-hic-occaecati-quo-perferendis','<p>Voluptates officiis error et nobis. Tenetur sit autem eum cumque voluptatem ipsum maxime sed. Officiis voluptas perferendis doloremque qui molestias quibusdam nostrum. Ratione nulla placeat quis praesentium ipsam minima.</p><p>Dolor ipsa sint sed aperiam deleniti. Quia tenetur quo expedita consequuntur. Mollitia laboriosam quis non. Alias ut in adipisci delectus.</p>','<p>Et qui numquam veniam quia omnis. Distinctio voluptas id aut ut amet ut ea porro.</p><p>Optio distinctio similique et. Et eligendi earum fuga corporis dolor unde esse.</p><p>Ut omnis possimus ratione eos harum rem et. Mollitia reprehenderit est distinctio voluptas officia voluptas. Aut consectetur cumque corporis repellat assumenda. Doloribus modi esse tempore aperiam quam saepe porro voluptatem.</p><p>Odit labore eius unde mollitia hic assumenda impedit. Sint non sit rerum id molestias officia. Sequi pariatur eaque repudiandae. Et perspiciatis voluptas nisi earum harum maiores perspiciatis.</p><p>Quibusdam quo aliquid quis. Non culpa porro quia quia velit velit quo. Perspiciatis cum est minima ipsam nisi aut magni. Enim corporis molestias reprehenderit.</p><p>Voluptatem et accusantium inventore voluptas. Cumque et pariatur minima. Esse necessitatibus dignissimos ipsa ab veniam maiores.</p>','2024-01-23 08:26:33','2024-01-23 08:26:33',NULL),(30,1,1,'Impedit qui in nisi assumenda.','ea-veniam-et-reprehenderit-dolores-odit-soluta','<p>Molestiae repudiandae id quaerat commodi libero. Commodi nulla in minima sunt repellendus. Ab nobis velit aut non. Ea sit ab ea quia incidunt quo.</p><p>Consectetur vitae dolorem omnis nulla quisquam voluptatem vel sed. Neque dolorem eum eum. Aut nam blanditiis ut ut et.</p>','<p>Et vel distinctio et molestiae nesciunt quam quo. Distinctio fugit aut illo id aliquam. Ratione praesentium odio eaque facilis sint tempore illo.</p><p>Distinctio voluptatem eos culpa debitis velit et beatae assumenda. Natus vero ex cupiditate distinctio. Veritatis et neque fugiat quidem vitae inventore placeat nesciunt. In numquam eum voluptatibus nesciunt dolorem fuga odio.</p><p>Necessitatibus sapiente ex id et aut mollitia. Iusto est dolorem porro vero. In nesciunt quod commodi quia aut occaecati. In in enim nesciunt veniam excepturi eligendi laborum.</p><p>Ut illo sint commodi distinctio. Aut omnis blanditiis tempore explicabo libero. Vel vel quia maiores quod quia.</p><p>Minima cum sint deserunt voluptatum consectetur et. Error ipsum sit fuga ea accusantium. Numquam mollitia aut labore sequi perspiciatis. Voluptatem sunt voluptas quos qui et.</p><p>Sit aut officia et quod. Sit est facere velit. Occaecati illo rerum ipsam incidunt ad a et ipsum.</p>','2024-01-23 08:26:33','2024-01-23 08:26:33',NULL);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'nbradtke','mohand','huel.camille@example.net','2024-01-23 08:26:32','$2y$12$gryjh4ymXdHqd0ZvtgchT.DJWgpr5M0L53mBps9i68EtlEe2Dvyh.','npRqHRQexZ','2024-01-23 08:26:32','2024-01-23 08:26:32');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-25 13:19:18
