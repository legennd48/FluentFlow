-- MySQL dump 10.13  Distrib 5.7.42, for Linux (x86_64)
--
-- Host: localhost    Database: FluentFlow_db
-- ------------------------------------------------------
-- Server version	5.7.42

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
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_language` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_text` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_language` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `translated_text` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,NULL,'안녕하세요','en','hello','2024-02-29 15:18:17'),(2,NULL,'test','af','toets','2024-03-02 10:16:02'),(3,NULL,'I am a Nigerian','yo','Omo Naijiria ni mi','2024-03-02 10:36:52'),(4,NULL,'This is interesting\r\n','ja','これは面白い\r\n','2024-03-02 10:41:49'),(5,NULL,'This is a test','af','Hierdie is \'n toets','2024-03-02 11:20:21'),(6,NULL,'this is another test','bn','এটি আরেকটি পরীক্ষা','2024-03-02 11:33:11'),(7,NULL,'Excellent! idea, it is working perfectly!','bn','চমৎকার! ধারণা, এটা পুরোপুরি কাজ করছে!','2024-03-02 11:37:14'),(8,NULL,'This is me testing another thing','af','Dit is ek wat \'n ander ding toets','2024-03-02 11:47:55'),(9,NULL,'I enjoy doing this','af','Ek geniet dit om dit te doen','2024-03-02 11:50:14'),(10,NULL,'I enjoy doing this','af','Ek geniet dit om dit te doen','2024-03-02 11:50:14'),(11,NULL,'Testing translating','af','Toets vertaling','2024-03-02 12:00:11'),(12,NULL,'Testing translating again','af','Toets weer vertaling','2024-03-02 12:01:03'),(13,NULL,'just to see how it goes','af','net om te sien hoe dit gaan','2024-03-02 12:01:34'),(14,NULL,'testing','af','toets','2024-03-02 19:40:54'),(15,NULL,'testing','ja','テスト','2024-03-02 19:41:18'),(16,NULL,'testing','mk','тестирање','2024-03-02 19:41:27'),(17,NULL,'testing','yo','idanwo','2024-03-02 19:41:36'),(18,NULL,'testing','ig','ule','2024-03-02 19:41:54'),(19,NULL,'ule','ig','rie','2024-03-02 19:42:12'),(20,NULL,'ule','en','eat','2024-03-02 19:42:30'),(21,NULL,'i will eat','ig','m ga-eri','2024-03-02 19:43:19'),(22,NULL,'m ga-eri','en','I will eat','2024-03-02 19:43:35'),(23,NULL,'m ga eri','en','I will eat','2024-03-02 19:43:46'),(24,NULL,'mga eri','en','men','2024-03-02 19:44:00'),(25,NULL,'This is a test','ko','이것은 테스트입니다','2024-03-02 20:12:01'),(26,NULL,'This is a test','is','Þetta er próf','2024-03-02 20:12:06'),(27,NULL,'This is a test','ha','Wannan jarabawa ce','2024-03-02 20:12:11'),(28,NULL,'This is a test','yo','Eyi jẹ idanwo kan','2024-03-02 20:12:20'),(29,NULL,'still testing','be','яшчэ тэставанне','2024-03-03 00:03:50'),(30,NULL,'ebi npa mi gidi gan','en','I\'m really hungry','2024-03-03 08:00:59'),(31,NULL,'I\'m really hungry','yo','Ebi npa mi gaan','2024-03-03 08:01:25'),(32,NULL,'Ebi npa mi gaan','ar','أنا حقا جائع','2024-03-03 08:02:14'),(33,NULL,'أنا حقا جائع','en','I\'m really hungry','2024-03-03 08:03:05'),(34,NULL,'I\'m really hungry','ar','أنا حقا جائع','2024-03-03 08:03:35'),(35,NULL,'testing this to see if an error occurs','af','toets dit om te sien of \'n fout voorkom','2024-03-03 09:32:09'),(36,'eng','Scores - SE Foundations In progress\n142.73%\nMonth\nMonth #0 ®\nMonth #1\nMonth #2 #\nMonth #3\nAverage\n159.61% ©\n149.52% 0\n90.83% ©\n160.4% ©','yo','Awọn ikun - Awọn ipilẹ SE Ni ilọsiwaju\n142.73%\nOsu\nOsu #0 ®\nOsu #1\nOsu #2 #\nOsu #3\nApapọ\n159,61% ©\n149.52% 0\n90,83% ©\n160,4% ©','2024-03-03 09:48:30'),(37,'eng','Evaluati\nEvaluation Quiz: Eval','af','Evalueer\nEvaluering Vasvra: Evalueer','2024-03-03 09:49:56'),(38,'eng','Evaluati\nEvaluation Quiz: Eval','af','Evalueer\nEvaluering Vasvra: Evalueer','2024-03-03 09:57:23'),(39,'eng','My evaluation quizzes\n13 Evaluation #2 - 08/25/2023\n• Duration: 39 minutes\n• Score: 84.38%\nDetail','af','My evaluasie vasvrae\n13 Evaluering #2 - 25/08/2023\n• Tydsduur: 39 minute\n• Telling: 84,38%\nbesonderhede','2024-03-03 10:10:10'),(40,'eng','Translations\nid\nint\ntext\ntext\nsourceLanguage varchar (20)\ntargetLanguage varchar (20)\ntranslatedText\ntext\ntimespamp\ntimestamp\nPK','af','Vertalings\nid\nint\nteks\nteks\nsourceLanguage varchar (20)\ntargetLanguage varchar (20)\nvertaalde teks\nteks\ntydspamp\ntydstempel\nPK','2024-03-03 10:44:54'),(41,'eng','project_root/\napp. py\nstatic/\n- css/\nstyle.css\nJ S/\nmain. js\n- images/\ntemplates/\n# Your Flask application file\n# Stylesheets\n# JavaScript files\n# Images','af','projek_wortel/\napp. py\nstaties/\n- css/\nstyle.css\nJ S/\nhoof. js\n- beelde/\nsjablone/\n# Jou fles-toepassingslêer\n# Stylblaaie\n# JavaScript-lêers\n# Beelde','2024-03-03 11:13:33'),(42,'eng','Translations\nid\nint\ntext\ntext\nsourceLanguage varchar (20)\ntargetLanguage varchar (20)\ntranslatedText\ntext\ntimespamp\ntimestamp\nPK','af','Vertalings\nid\nint\nteks\nteks\nsourceLanguage varchar (20)\ntargetLanguage varchar (20)\nvertaalde teks\nteks\ntydspamp\ntydstempel\nPK','2024-03-03 11:14:55'),(43,'eng','project_root/\napp. py\nstatic/\n- css/\nstyle.css\nJ S/\nmain. js\n- images/\ntemplates/\n# Your Flask application file\n# Stylesheets\n# JavaScript files\n# Images','af','projek_wortel/\napp. py\nstaties/\n- css/\nstyle.css\nJ S/\nhoof. js\n- beelde/\nsjablone/\n# Jou fles-toepassingslêer\n# Stylblaaie\n# JavaScript-lêers\n# Beelde','2024-03-03 11:22:43'),(44,'eng','Waiting for an answer from Partner\nYou sent a request to .\nIf a member of your team didn\'t accept your request, you won\'t be paired together.\nStatus\n• Daniel Okoro - Waiting\nCancel the request','af','Wag vir \'n antwoord van Partner\nJy het \'n versoek gestuur na.\nAs \'n lid van jou span nie jou versoek aanvaar het nie, sal julle nie saam gepaar word nie.\nStatus\n• Daniel Okoro - Wag\nKanselleer die versoek','2024-03-03 11:23:15'),(45,NULL,'This is a test!','uk','Це перевірка!','2024-03-03 20:47:05'),(46,NULL,'This is a test to see if the app works','uk','Це тест, щоб перевірити, чи працює програма','2024-03-03 20:47:47'),(47,NULL,'This is a test to see if the app works','ta','ஆப்ஸ் செயல்படுகிறதா என்பதைப் பார்க்க இது ஒரு சோதனை','2024-03-03 20:50:25'),(48,'eng','project_root/\napp. py\nstatic/\n- css/\nstyle.css\nJ S/\nmain. js\n- images/\ntemplates/\n# Your Flask application file\n# Stylesheets\n# JavaScript files\n# Images','af','projek_wortel/\napp. py\nstaties/\n- css/\nstyle.css\nJ S/\nhoof. js\n- beelde/\nsjablone/\n# Jou fles-toepassingslêer\n# Stylblaaie\n# JavaScript-lêers\n# Beelde','2024-03-03 21:02:54'),(49,NULL,'Hello','es','Hola','2024-03-04 13:36:18'),(50,'en','Hello','fr','Bonjour','2024-03-04 13:36:18'),(51,NULL,'Hello','es','Hola','2024-03-04 13:36:18'),(52,NULL,'Hello','es','Hola','2024-03-04 13:45:55'),(53,'en','Hello','fr','Bonjour','2024-03-04 13:45:55'),(54,NULL,'Hello','es','Hola','2024-03-04 13:45:55'),(55,NULL,'Hello','es','Hola','2024-03-04 13:47:02'),(56,'en','Hello','fr','Bonjour','2024-03-04 13:47:02'),(57,NULL,'Hello','es','Hola','2024-03-04 13:47:02'),(58,NULL,'Hello','es','Hola','2024-03-04 14:05:31'),(59,'en','Hello','fr','Bonjour','2024-03-04 14:05:31'),(60,NULL,'Hello','es','Hola','2024-03-04 14:05:31'),(61,NULL,'Hello','es','Hola','2024-03-04 14:19:05'),(62,'en','Hello','fr','Bonjour','2024-03-04 14:19:05'),(63,NULL,'Hello','es','Hola','2024-03-04 14:21:19'),(64,'en','Hello','fr','Bonjour','2024-03-04 14:21:19'),(65,NULL,'This is testing to see if things are working as they should just so we are clear','yo','Eyi jẹ idanwo lati rii boya awọn nkan n ṣiṣẹ bi wọn ṣe yẹ ki a jẹ mimọ','2024-03-05 14:44:46'),(66,'eng','project_root/\napp. py\nstatic/\n- css/\nstyle.css\nJ S/\nmain. js\n- images/\ntemplates/\n# Your Flask application file\n# Stylesheets\n# JavaScript files\n# Images','ja','プロジェクトルート/\nアプリ。パイ\n静的/\n- css/\nスタイル.css\nJS/\n主要。 js\n- 画像/\nテンプレート/\n# Flask アプリケーション ファイル\n# スタイルシート\n# JavaScript ファイル\n# 画像','2024-03-05 14:47:08'),(67,'eng','® https://bireporting43prod.ecobank.com/BOE/BI\nSAP.\nFile\nWelcome: LEONARD Olu...\n000\nData\nC\nAnalyze\n000\nCONTACT CENTER CUSTOMER D....\nCONTACT CEN\nCustomer No\nAc Desc\nCust Ac No\nAc Open Date\nAlt Ac No\nBranch\nAccount Class\nDob\nAddress\nTel\nEmail\nUnique Id Name\nUnique Id Value\nPnd Status\nDormancy Status\nAc Dormant Date\nAcc Off Code\nAcct Off Name\n002318115\nABDULRAZAQ ADEWALE LIASU\n3311047068\n16/10/2006\n0009265560\nC38 ENG IKEJA - UNITY ROAD\nGHSAIN\n09-APR-1990\n39 UNITY ROAD IKEJA LAGOS OGUN\n2348024323386, 07085043569,2347085043569\nLEGENND48@GMAIL.COM\nVOTERS_ID_CARD\n030DF105A6296040345\nYES\nNO\n26/10/2026\nNG04397\nALOKHA Joan\nGo To','af','® https://bireporting43prod.ecobank.com/BOE/BI\nSAP.\nlêer\nWelkom: LEONARD Olu...\n000\nData\nC\nOntleed\n000\nKONTAK SENTRUM KLANT D....\nKONTAK CEN\nKliënt nr\nAc Desc\nCut Ac No\nAc oop datum\nAlt Ac No\nTak\nRekeningklas\nDob\nAdres\nTel\nE-pos\nUnieke ID-naam\nUnieke ID-waarde\nPnd Status\nDormansie Status\nAc dormante datum\nRek af kode\nRek Off Naam\n002318115\nABDULRAZAQ ADEWALE LIASU\n3311047068\n16/10/2006\n0009265560\nC38 ENG IKEJA - UNITY ROAD\nGHSAIN\n09-APR-1990\nEENHEIDSPAD 39 IKEJA LAGOS OGUN\n2348024323386, 07085043569,2347085043569\nLEGENND48@GMAIL.COM\nVOTERS_ID_CARD\n030DF105A6296040345\nJA\nGEEN\n26/10/2026\nNG04397\nALOKHA Joan\nGaan na','2024-03-05 17:23:02'),(68,'eng','® https://bireporting43prod.ecobank.com/BOE/BI\nSAP.\nFile\nWelcome: LEONARD Olu...\n000\nData\nC\nAnalyze\n000\nCONTACT CENTER CUSTOMER D....\nCONTACT CEN\nCustomer No\nAc Desc\nCust Ac No\nAc Open Date\nAlt Ac No\nBranch\nAccount Class\nDob\nAddress\nTel\nEmail\nUnique Id Name\nUnique Id Value\nPnd Status\nDormancy Status\nAc Dormant Date\nAcc Off Code\nAcct Off Name\n002318115\nABDULRAZAQ ADEWALE LIASU\n3311047068\n16/10/2006\n0009265560\nC38 ENG IKEJA - UNITY ROAD\nGHSAIN\n09-APR-1990\n39 UNITY ROAD IKEJA LAGOS OGUN\n2348024323386, 07085043569,2347085043569\nLEGENND48@GMAIL.COM\nVOTERS_ID_CARD\n030DF105A6296040345\nYES\nNO\n26/10/2026\nNG04397\nALOKHA Joan\nGo To','af','® https://bireporting43prod.ecobank.com/BOE/BI\nSAP.\nlêer\nWelkom: LEONARD Olu...\n000\nData\nC\nOntleed\n000\nKONTAK SENTRUM KLANT D....\nKONTAK CEN\nKliënt nr\nAc Desc\nCut Ac No\nAc oop datum\nAlt Ac No\nTak\nRekeningklas\nDob\nAdres\nTel\nE-pos\nUnieke ID-naam\nUnieke ID-waarde\nPnd Status\nDormansie Status\nAc dormante datum\nRek af kode\nRek Off Naam\n002318115\nABDULRAZAQ ADEWALE LIASU\n3311047068\n16/10/2006\n0009265560\nC38 ENG IKEJA - UNITY ROAD\nGHSAIN\n09-APR-1990\nEENHEIDSPAD 39 IKEJA LAGOS OGUN\n2348024323386, 07085043569,2347085043569\nLEGENND48@GMAIL.COM\nVOTERS_ID_CARD\n030DF105A6296040345\nJA\nGEEN\n26/10/2026\nNG04397\nALOKHA Joan\nGaan na','2024-03-05 17:23:38'),(69,'eng','® https://bireporting43prod.ecobank.com/BOE/BI\nSAP.\nFile\nWelcome: LEONARD Olu...\n000\nData\nC\nAnalyze\n000\nCONTACT CENTER CUSTOMER D....\nCONTACT CEN\nCustomer No\nAc Desc\nCust Ac No\nAc Open Date\nAlt Ac No\nBranch\nAccount Class\nDob\nAddress\nTel\nEmail\nUnique Id Name\nUnique Id Value\nPnd Status\nDormancy Status\nAc Dormant Date\nAcc Off Code\nAcct Off Name\n002318115\nABDULRAZAQ ADEWALE LIASU\n3311047068\n16/10/2006\n0009265560\nC38 ENG IKEJA - UNITY ROAD\nGHSAIN\n09-APR-1990\n39 UNITY ROAD IKEJA LAGOS OGUN\n2348024323386, 07085043569,2347085043569\nLEGENND48@GMAIL.COM\nVOTERS_ID_CARD\n030DF105A6296040345\nYES\nNO\n26/10/2026\nNG04397\nALOKHA Joan\nGo To','af','® https://bireporting43prod.ecobank.com/BOE/BI\nSAP.\nlêer\nWelkom: LEONARD Olu...\n000\nData\nC\nOntleed\n000\nKONTAK SENTRUM KLANT D....\nKONTAK CEN\nKliënt nr\nAc Desc\nCut Ac No\nAc oop datum\nAlt Ac No\nTak\nRekeningklas\nDob\nAdres\nTel\nE-pos\nUnieke ID-naam\nUnieke ID-waarde\nPnd Status\nDormansie Status\nAc dormante datum\nRek af kode\nRek Off Naam\n002318115\nABDULRAZAQ ADEWALE LIASU\n3311047068\n16/10/2006\n0009265560\nC38 ENG IKEJA - UNITY ROAD\nGHSAIN\n09-APR-1990\nEENHEIDSPAD 39 IKEJA LAGOS OGUN\n2348024323386, 07085043569,2347085043569\nLEGENND48@GMAIL.COM\nVOTERS_ID_CARD\n030DF105A6296040345\nJA\nGEEN\n26/10/2026\nNG04397\nALOKHA Joan\nGaan na','2024-03-05 17:24:01'),(70,'eng','® https://bireporting43prod.ecobank.com/BOE/BI\nSAP.\nFile\nWelcome: LEONARD Olu...\n000\nData\nC\nAnalyze\n000\nCONTACT CENTER CUSTOMER D....\nCONTACT CEN\nCustomer No\nAc Desc\nCust Ac No\nAc Open Date\nAlt Ac No\nBranch\nAccount Class\nDob\nAddress\nTel\nEmail\nUnique Id Name\nUnique Id Value\nPnd Status\nDormancy Status\nAc Dormant Date\nAcc Off Code\nAcct Off Name\n002318115\nABDULRAZAQ ADEWALE LIASU\n3311047068\n16/10/2006\n0009265560\nC38 ENG IKEJA - UNITY ROAD\nGHSAIN\n09-APR-1990\n39 UNITY ROAD IKEJA LAGOS OGUN\n2348024323386, 07085043569,2347085043569\nLEGENND48@GMAIL.COM\nVOTERS_ID_CARD\n030DF105A6296040345\nYES\nNO\n26/10/2026\nNG04397\nALOKHA Joan\nGo To','af','® https://bireporting43prod.ecobank.com/BOE/BI\nSAP.\nlêer\nWelkom: LEONARD Olu...\n000\nData\nC\nOntleed\n000\nKONTAK SENTRUM KLANT D....\nKONTAK CEN\nKliënt nr\nAc Desc\nCut Ac No\nAc oop datum\nAlt Ac No\nTak\nRekeningklas\nDob\nAdres\nTel\nE-pos\nUnieke ID-naam\nUnieke ID-waarde\nPnd Status\nDormansie Status\nAc dormante datum\nRek af kode\nRek Off Naam\n002318115\nABDULRAZAQ ADEWALE LIASU\n3311047068\n16/10/2006\n0009265560\nC38 ENG IKEJA - UNITY ROAD\nGHSAIN\n09-APR-1990\nEENHEIDSPAD 39 IKEJA LAGOS OGUN\n2348024323386, 07085043569,2347085043569\nLEGENND48@GMAIL.COM\nVOTERS_ID_CARD\n030DF105A6296040345\nJA\nGEEN\n26/10/2026\nNG04397\nALOKHA Joan\nGaan na','2024-03-05 17:29:35'),(71,'eng','< C\nEcobank\nThe Pan African Bank\nX\nHome\nSearch\nE.g. Customer\n(x Not secure | https://fc12-hostapp-1/FCUBSENG_LIVE/SMMDIFRM.jsp?chgbrn=true&loggedInTime=1709307642349#\nMulti Factor Authenticated\n@ Entity : ENTITY_ID1\nILl Branch : C38\n© 2024-03-01\n..•\n- Window\n• LEONARD Oluwatoyin Ruth\nSTDSTDOF\nInteractions\nCustomer\nWorkflow\nPreferences\nDormancy parameter Maintenance\nExecute Query\n• Accounting and MIS\n• Journal Operations\n• Journal Posting Operation\n• Journal View\nA Customer Accounts\nA Customer Accounts Maintenance\n• Dormancy Parameter Maintenance\n• Customer Accounts Operations\n• Customer Accounts View\n• Security Management\n• Teller\nBranch Code * C38\nCustomer A/C * 3311047068|\nAccount Description ABDULRAZAQ ADEWALE\n• No Debit\nNo Credit\nFrozen\nDormant\n+\nRemarks *\nChange Log\nMaker\nChecker\nDate Time:\nDate Time:\nMod No\nRecord Status\nAuthorization\nStatus\nCancel','af','< C\nEkobank\nDie Pan-Afrikaanse Bank\nX\nTuis\nSoek\nBv. Kliënt\n(x Nie veilig nie | https://fc12-hostapp-1/FCUBSENG_LIVE/SMMDIFRM.jsp?chgbrn=true&loggedInTime=1709307642349#\nMulti-faktor geverifieer\n@ Entiteit: ENTITY_ID1\nIll Tak: C38\n© 2024-03-01\n..•\n- Venster\n• LEONARD Oluwatoyin Ruth\nSTDSTDOF\nInteraksies\nKliënt\nWerkvloei\nVoorkeure\nDormansie parameter Onderhoud\nVoer navraag uit\n• Rekeningkunde en MIS\n• Journal Operations\n• Joernaalplasing\n• Journal View\nA kliënt Rekeninge\n\'n Kliëntrekeninge Onderhoud\n• Instandhouding van dormansieparameters\n• Kliëntrekeninge-bedrywighede\n• Kliëntrekeninge-aansig\n• Sekuriteitsbestuur\n• Teller\nTakkode * C38\nKliënt A/C * 3311047068|\nRekeningbeskrywing ABDULRAZAQ ADEWALE\n• Geen debiet nie\nGeen krediet\nGevries\nDormant\n+\nOpmerkings *\nVerander log\nMaker\nChecker\nDatum Tyd:\nDatum Tyd:\nMod No\nRekord Status\nMagtiging\nStatus\nKanselleer','2024-03-05 17:31:18'),(72,'eng','< C\nEcobank\nThe Pan African Bank\nX\nHome\nSearch\nE.g. Customer\n(x Not secure | https://fc12-hostapp-1/FCUBSENG_LIVE/SMMDIFRM.jsp?chgbrn=true&loggedInTime=1709307642349#\nMulti Factor Authenticated\n@ Entity : ENTITY_ID1\nILl Branch : C38\n© 2024-03-01\n..•\n- Window\n• LEONARD Oluwatoyin Ruth\nSTDSTDOF\nInteractions\nCustomer\nWorkflow\nPreferences\nDormancy parameter Maintenance\nExecute Query\n• Accounting and MIS\n• Journal Operations\n• Journal Posting Operation\n• Journal View\nA Customer Accounts\nA Customer Accounts Maintenance\n• Dormancy Parameter Maintenance\n• Customer Accounts Operations\n• Customer Accounts View\n• Security Management\n• Teller\nBranch Code * C38\nCustomer A/C * 3311047068|\nAccount Description ABDULRAZAQ ADEWALE\n• No Debit\nNo Credit\nFrozen\nDormant\n+\nRemarks *\nChange Log\nMaker\nChecker\nDate Time:\nDate Time:\nMod No\nRecord Status\nAuthorization\nStatus\nCancel','af','< C\nEkobank\nDie Pan-Afrikaanse Bank\nX\nTuis\nSoek\nBv. Kliënt\n(x Nie veilig nie | https://fc12-hostapp-1/FCUBSENG_LIVE/SMMDIFRM.jsp?chgbrn=true&loggedInTime=1709307642349#\nMulti-faktor geverifieer\n@ Entiteit: ENTITY_ID1\nIll Tak: C38\n© 2024-03-01\n..•\n- Venster\n• LEONARD Oluwatoyin Ruth\nSTDSTDOF\nInteraksies\nKliënt\nWerkvloei\nVoorkeure\nDormansie parameter Onderhoud\nVoer navraag uit\n• Rekeningkunde en MIS\n• Journal Operations\n• Joernaalplasing\n• Journal View\nA kliënt Rekeninge\n\'n Kliëntrekeninge Onderhoud\n• Instandhouding van dormansieparameters\n• Kliëntrekeninge-bedrywighede\n• Kliëntrekeninge-aansig\n• Sekuriteitsbestuur\n• Teller\nTakkode * C38\nKliënt A/C * 3311047068|\nRekeningbeskrywing ABDULRAZAQ ADEWALE\n• Geen debiet nie\nGeen krediet\nGevries\nDormant\n+\nOpmerkings *\nVerander log\nMaker\nChecker\nDatum Tyd:\nDatum Tyd:\nMod No\nRekord Status\nMagtiging\nStatus\nKanselleer','2024-03-05 17:49:38'),(73,'eng','My evaluation quizzes\n13 Evaluation #2 - 08/25/2023\n• Duration: 39 minutes\n• Score: 84.38%\nDetail','bg','Моите тестове за оценка\n13 Оценка №2 - 25.08.2023 г\n• Продължителност: 39 минути\n• Резултат: 84.38%\nдетайл','2024-03-05 18:07:09'),(74,'eng','DOCUMENT REQUIREMENT FOR BUSINESS NAME\nMaximum of 3mb Size per document type 1\nSN Document\nFile Format\n1 E MEANS OF IDENTIFICATION\nPDF\n2 E SIGNATURE OF BODUNDE ABIODUN BOSEDE(PROPRIETOR)\n3\nD A PASSPORT PHOTOGRAPH OF BODUNDE ABIODUN\nBOSEDE(PROPRIETOR)\n4 D OTHERS\nJPEG/PNG\nIMAGE\nJPEG/PNG\nIMAGE\nPDF\nIs\nRequired\nUpload\nYES\nUpload\nYES\nUpload\nYES\nUpload\nOPTIONAL\nUpload\nStatus\nNOT\nUPLOADED\nNOT\nUPLOADED\nAction','ay','DOCUMENTO WAKICHAWI NEGOCIO SUTINAKA\nMáximo 3mb Tama sapa documento tipo 1\nSN Documento ukaxa\nArchivo Formato ukax mä juk’a pachanakanwa\n1 E MEDIOS DE IDENTIFICACIÓN UKANAKA\nPDF\n2 E FIRMA DE BODUNDE ABIODUN BOSEDE(PROPRIETOR) UKA CHIQA UTJAWIPA .\n3. Ukaxa mä juk’a pachanakwa lurasi\nD MÄ PASAPORTE FOTOGRAFO BODUNDE ABIODUN UKSAN UTJKI UKA UTJAWIPA\nBOSEDE(PROPRIETOR) ukax mä juk’a pachanakanwa.\n4 D YATXATAÑATAKI\nJPEG/PNG ukax mä juk’a pachanakanwa\nJAMUQA\nJPEG/PNG ukax mä juk’a pachanakanwa\nJAMUQA\nPDF\nUkawa\nMayita\nUkax mä juk’a pachanakanwa\nJÏSA\nUkax mä juk’a pachanakanwa\nJÏSA\nUkax mä juk’a pachanakanwa\nJÏSA\nUkax mä juk’a pachanakanwa\nAJLLIWI\nUkax mä juk’a pachanakanwa\nIstaru\nJANIWA\nUKHAMARAKI\nJANIWA\nUKHAMARAKI\nLuraña','2024-03-05 23:00:11'),(75,NULL,'this is a simple translation test!','lv','šis ir vienkāršs tulkošanas tests!','2024-03-05 23:01:16'),(76,NULL,'This is a test!','ja','これはテストです！','2024-03-06 00:01:07'),(77,NULL,'This is a simple test!','ar','هذا اختبار بسيط!','2024-03-06 08:52:32'),(78,NULL,'هذا اختبار بسيط!','en','This is a simple test!','2024-03-06 08:53:09'),(79,'eng','Je ne serai\njamais fatigué de\nremercier Dieu.\nCar lui il ne se\nfatigue pas de\nme réveiller et de\nme bénir tous les\nmatins.','en','I will not be\nnever tired of\nthanks God.\nBecause he doesn\'t\ndon\'t get tired\nwake up and\nbless me all\nmornings.','2024-03-06 09:01:40'),(80,'eng','CE QUE TU PENSES\nTU LE DEVIENS\nCE QUE TU RESSENS\nTU L\'ATTIRES\nCE QUE TU IMAGINES\nTU LE CRÉES\nBOUDDHA\nLE MONDE S\'EVEILLE','en','WHAT YOU THINK\nYOU BECOME IT\nWHAT YOU ARE FEELING\nYOU ATTRACT HIM\nWHAT YOU IMAGINE\nYOU CREATE IT\nBUDDHA\nTHE WORLD IS AWAKENING','2024-03-06 09:02:48'),(81,NULL,'This is a simple Test!','he','זהו מבחן פשוט!','2024-03-06 09:05:13'),(82,NULL,'זהו מבחן פשוט!','en','This is a simple test!','2024-03-06 09:05:25'),(83,'eng','I have a headache\nLet me see\n.... see my headache?\nYah\nDamn, looks painful\nDelivered\nDelete my number','cs','Bolí mě hlava\nNech mě vidět\n....vidíš moji bolest hlavy?\nJo\nSakra, vypadá to bolestivě\nDoručeno\nSmazat moje číslo','2024-03-06 09:05:49'),(84,NULL,'Bolí mě hlava\nNech mě vidět\n....vidíš moji bolest hlavy?\nJo\nSakra, vypadá to bolestivě\nDoručeno\nSmazat moje číslo','en','My head hurts\nLet me see\n....see my headache?\nYeah\nDamn, that looks painful\nDelivered\nDelete my number','2024-03-06 09:06:08'),(85,'eng','CE QUE TU PENSES\nTU LE DEVIENS\nCE QUE TU RESSENS\nTU L\'ATTIRES\nCE QUE TU IMAGINES\nTU LE CRÉES\nBOUDDHA\nLE MONDE S\'EVEILLE','hr','ŠTO MISLIŠ\nVI TO POSTAJETE\nŠTO OSJEĆAŠ\nVI GA PRIVLAČITE\nŠTO ZAMIŠLJAŠ\nVI GA STVARATE\nBUDA\nSVIJET SE BUDI','2024-03-06 09:31:55'),(86,NULL,'This is text i want to translate','ja','これは私が翻訳したいテキストです','2024-03-06 09:38:24'),(87,NULL,'This is text i want to translate','ja','これは私が翻訳したいテキストです','2024-03-06 09:38:24'),(88,NULL,'これは私が翻訳したいテキストです','en','This is the text I want to translate','2024-03-06 09:39:00'),(89,'eng','I have a headache\nLet me see\n.... see my headache?\nYah\nDamn, looks painful\nDelivered\nDelete my number','ar','عندى صداع\nدعنى ارى\n.... ترى صداعى؟\nنعم\nاللعنة، تبدو مؤلمة\nتم التوصيل\nاحذف رقمي','2024-03-06 09:39:36'),(90,NULL,'عندى صداع\nدعنى ارى\n.... ترى صداعى؟\nنعم\nاللعنة، تبدو مؤلمة\nتم التوصيل\nاحذف رقمي','en','I have a headache\nlet me see\n....See my headache?\nYes\nDamn, it looks painful\nDelivered\nDelete my number','2024-03-06 09:39:59'),(91,NULL,'inpute the text to translate','zh','输入要翻译的文字','2024-03-06 10:37:52'),(92,NULL,'This is a asample text','es','Este es un texto de muestra.','2024-03-06 10:56:41'),(93,NULL,'This is a asample text','es','Este es un texto de muestra.','2024-03-06 10:56:41'),(94,NULL,'Este es un texto de muestra.','en','This is a sample text.','2024-03-06 10:57:15'),(95,'eng','I have a headache\nLet me see\n.... see my headache?\nYah\nDamn, looks painful\nDelivered\nDelete my number','cs','Bolí mě hlava\nNech mě vidět\n....vidíš moji bolest hlavy?\nJo\nSakra, vypadá to bolestivě\nDoručeno\nSmazat moje číslo','2024-03-06 10:58:15'),(96,NULL,'This is a simple text','ja','これは簡単なテキストです','2024-03-06 11:01:58'),(97,NULL,'これは簡単なテキストです','en','this is a simple text','2024-03-06 11:02:46'),(98,NULL,'これは簡単なテキストです','en','this is a simple text','2024-03-06 11:02:46'),(99,NULL,'This is a simple text translation attempt!','ja','これは簡単なテキスト翻訳の試みです。','2024-03-06 11:10:14'),(100,NULL,'これは簡単なテキスト翻訳の試みです。','en','This is a simple text translation attempt.','2024-03-06 11:10:45'),(101,'eng','I have a headache\nLet me see\n.... see my headache?\nYah\nDamn, looks painful\nDelivered\nDelete my number','ar','عندى صداع\nدعنى ارى\n.... ترى صداعى؟\nنعم\nاللعنة، تبدو مؤلمة\nتم التوصيل\nاحذف رقمي','2024-03-06 11:11:49'),(102,NULL,'This is a sample text!','la','This is a sample text!','2024-03-06 11:19:17'),(103,NULL,'This is a sample text!','id','Ini adalah contoh teks!','2024-03-06 11:19:37'),(104,NULL,'This is a sample text.','id','Ini adalah contoh teks.','2024-03-06 11:21:08'),(105,NULL,'Ini adalah contoh teks.','en','This is an example text.','2024-03-06 11:21:53'),(106,'eng','I have a headache\nLet me see\n.... see my headache?\nYah\nDamn, looks painful\nDelivered\nDelete my number','el','έχω πονοκέφαλο\nΑσε με να δω\n.... βλέπεις τον πονοκέφαλο μου;\nΝαι\nΓαμώτο, φαίνεται επώδυνο\nΠαραδόθηκε\nΔιαγράψτε τον αριθμό μου','2024-03-06 11:22:53'),(107,NULL,'έχω πονοκέφαλο\nΑσε με να δω\n.... βλέπεις τον πονοκέφαλο μου;\nΝαι\nΓαμώτο, φαίνεται επώδυνο\nΠαραδόθηκε\nΔιαγράψτε τον αριθμό μου','en','I have a headache\nLet me see\n.... do you see my headache?\nYes\nDamn, that looks painful\nDelivered\nDelete my number','2024-03-06 11:23:35'),(108,NULL,'We will be attempmting to translate This text!','el','Θα προσπαθήσουμε να μεταφράσουμε αυτό το κείμενο!','2024-03-06 11:47:05'),(109,NULL,'Θα προσπαθήσουμε να μεταφράσουμε αυτό το κείμενο!','en','We will try to translate this text!','2024-03-06 11:47:59'),(110,'eng','I have a headache\nLet me see\n.... see my headache?\nYah\nDamn, looks painful\nDelivered\nDelete my number','es','Me duele la cabeza\nDéjeme ver\n.... ves mi dolor de cabeza?\nSí\nMaldita sea, parece doloroso\nEntregado\nborrar mi numero','2024-03-06 11:48:53'),(111,NULL,'Me duele la cabeza\nDéjeme ver\n.... ves mi dolor de cabeza?\nSí\nMaldita sea, parece doloroso\nEntregado\nborrar mi numero','en','My head hurts\nLet me see\n....do you see my headache?\nYeah\nDamn it looks painful\nDelivered\ndelete my number','2024-03-06 11:49:39'),(112,NULL,'This is a simple test','ar','هذا اختبار بسيط','2024-03-06 20:55:50'),(113,NULL,'هذا اختبار بسيط','en','This is a simple test','2024-03-06 20:56:17'),(114,'eng','He who collects his clothes from the\ntailor at the due time, must have lied\nabout the day he would wear it.','ko','옷을 수집하는 사람은\n정해진 시간에 재단사, 거짓말을 한 게 틀림없어\n그가 그것을 입을 날에 대해.','2024-03-06 20:57:08'),(115,NULL,'옷을 수집하는 사람은\n정해진 시간에 재단사, 거짓말을 한 게 틀림없어\n그가 그것을 입을 날에 대해.','en','A person who collects clothes\nTailor on time, you must have lied\nAbout the day he wears it.','2024-03-06 20:57:32'),(116,'eng','I have a headache\nLet me see\n.... see my headache?\nYah\nDamn, looks painful\nDelivered\nDelete my number','hu','Fáj a fejem\nHadd lássam\n.... látod a fejfájásomat?\nJah\nBasszus, fájdalmasan néz ki\nSzállítva\nTörölje a számomat','2024-03-06 21:02:49'),(117,NULL,'Fáj a fejem\nHadd lássam\n.... látod a fejfájásomat?\nJah\nBasszus, fájdalmasan néz ki\nSzállítva\nTörölje a számomat','en','I have a headache\nLet me see\n.... can you see my headache?\nYes\nDamn, that looks painful\nDelivered\nDelete my number','2024-03-06 21:03:12'),(118,NULL,'This is a test translation.','fr','Ceci est une traduction test.','2024-03-07 12:04:40'),(119,'eng','Fais de beaux rêves','en','Sweet Dreams','2024-03-07 12:14:34'),(120,NULL,'This is a simple test','ca','Aquesta és una prova senzilla','2024-03-07 12:15:51'),(121,'eng','Fais de beaux rêves','en','Sweet Dreams','2024-03-07 12:25:22'),(122,'eng','Fais de beaux rêves','en','Sweet Dreams','2024-03-07 12:29:01');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-07 15:42:18