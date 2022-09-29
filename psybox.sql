-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2022 at 05:13 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `psybox`
--

-- --------------------------------------------------------

--
-- Table structure for table `career`
--

CREATE TABLE `career` (
  `id` bigint(254) NOT NULL,
  `jobTitle` varchar(254) NOT NULL,
  `shortDescription` text NOT NULL,
  `location` varchar(254) NOT NULL,
  `positions` varchar(254) NOT NULL,
  `endDate` varchar(100) NOT NULL,
  `resposibilities` text NOT NULL,
  `qualifications` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `career`
--

INSERT INTO `career` (`id`, `jobTitle`, `shortDescription`, `location`, `positions`, `endDate`, `resposibilities`, `qualifications`) VALUES
(1, 'jobTitle', 'shortDescription', 'location', 'positions', '2022', 'resposibilities', 'qualifications'),
(2, 'jobTitle', 'shortDescription', 'location', 'positions', '2022', 'resposibilities', 'qualifications'),
(3, 'dd', 'ddd', 'dd', 'fff', 'fff', 'res3|+|res3|+|res3', 'res3|+|res3|+|res3'),
(4, 'sa', 'sss', 'ss', 'ss', 'ss', 'res3|+|res3|+|res3', 'res3|+|res3|+|res3'),
(5, 'kavindu', 'ssss', 'sss', 'sss', '7878', 'row1|+|res3|+|res3', 'ddd'),
(6, 'software engineer', 'A software engineer is a person who applies the principles of software engineering to design, develop, maintain, test, and evaluate computer software.', 'ck, London.', '5 vecancies', '25 May 2022', 'Team engagement|+|Development|+|', 'Team engagement|+|Development|+|Javascript With React|+|');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` bigint(254) NOT NULL,
  `name` varchar(254) NOT NULL,
  `email` varchar(254) NOT NULL,
  `transport` varchar(254) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `comment` text NOT NULL,
  `subject` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `transport`, `phone`, `comment`, `subject`) VALUES
(1, 'savindu', '9716c6cf7078cf35d1403234b251484f808f3b213b64445f569d3723c765acb0f261017f33241ee9b29a5a474303eb181aab3df3fb114d02e3850a7436f47d6a65ae02874c668e449f663319e999d1ab993598ac77ac3b397beca745489be6dee038b5a1e67d37cddd69d95f1239d6453f', 't1', '0768755787', 'comment', ''),
(2, 'savindu', 'fde08d612f178e3ca2b9bdb9f8108c5f05dd3270a94104e9e154ab6e65ae14d81c02a0234f00c77cfa5ffb3152721e1ec7e319fcc732b03d7b4712c7898c10850630fa70c69b43e5e3d1a86968304ec715b97fb385b8a0a8f022dc07dfdc0261695686cc8df76b5548def5c76bd38572ef', 't1', '0768755787', 'comment', 'subject'),
(3, 'savindu', '59687282a0239db77a11c90a556effa94693c4bb9e090bbd32f0bca5d1e5ada83b57682046536cb7b3f0f1905e852742c5f4f95fd0e0e5ad7688bdc4ba0331550a2b7f74dda3b87a67eb03cfa45dea169a74e638d75cd4d04aaed48c8c6611f581a13d25e98172d6599efbdf9088eb5ad4', 't1', '0768755787', 'comment', 'subject'),
(4, 'kavindu', '1dfdd5d099725b2cead70221b67ff8211c3f8c3758fbedf320a497b6e87ad2e13924e3a064076e2663471c01e5dd3b8c651c7786ff11a0d0ab1eeb774c4763803e7a047a97f584dbfeb087aef4f1c67e6cb4c24fe9e558154346f5673015c5411eba468365525096b656978477ea5f45e0', 't1', '0768755787', 'comment', 'subject'),
(5, 'kavindu', 'b8e9d3b429db7ce2d61625384d0d77be19210c0c0c86ec5e96f63cc22f9190d8a4fca30d9a8994f3b86833c37980a97601e5dca77ecccfac3503169ba4d796f0eb6dfd6a58dce73c481d3e1f09023d6f32ea0c5b8ef9321ba43bbff182bee40f7be41a891ffe63f123169bde376036743a', 't1', '0768755787', 'comment', 'subject'),
(6, 'savindu pasintha lakmal munasinghe', '10ea94582f09bdfb3552fea7f0598c4bffa171b7d5e95b365793cb9995e4a2bc99d4b0ae7b0a7f1ee9e94dbe420f9ef154378a4f2f546da4e4c91fba6493199b3f8fbb264aa1c459a3119b78495fd3df05f1a8e1a62907a7ef9ce341688eca0b734ec4da0e14212c9d886ca81a0b9017469411ba6ea6492d7dd8', 'Logistics', '+94768755787', 'kkkkkkkkkkkkkkkkkkkkkkkkk', 'subject'),
(7, 'savindu pasintha lakmal munasinghe', '78397324516e0085b46b15a2d12bcd814701617739febcbfbf9f2b5134d821fbf56f4e06b0284abd9bbd34e63f79c81c9ceff9292eb38ceb91357492c6b4078d208395359661f46569902f6f424aa23a32737aa99beb40b81366a5815b6a37591cb6040cc66cba9590684c2c992bfdab99a8c992b5085f84f824', 'Logistics', '+94768755787', 'ssssssssssssssssssssssssss', 'subject'),
(8, 'savindu pasintha lakmal munasinghe', 'c6ad0c5acbc73c556948939398d32e39954c90fad0504748d959cae37b6322739ba407d4a5ee3fd7f160945644824357a0dc3803182f344fffd74a1ae0b6cfe5ede7590406851cb359b262aac861b65cdb81fa9bd8b083d5799313f122f19a4866e13e8388da44b65d831df863cf052a071653be63c6075a44c8', 'Logistics', '+94768755787', 'ssssssssssssssssssssssssss', 'subject');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(254) NOT NULL,
  `author` varchar(254) NOT NULL,
  `category` varchar(254) NOT NULL,
  `shortDescription` text NOT NULL,
  `newsHead` text NOT NULL,
  `contentData` text NOT NULL,
  `blockQuote` text NOT NULL,
  `image` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `author`, `category`, `shortDescription`, `newsHead`, `contentData`, `blockQuote`, `image`) VALUES
(1, 'pubudu', 'category', 'Loren Gray Beech is an American social media personality and singer from Pottstown, Pennsylvania, best known for the TikTok career she began in 2015, at the age of', '', 'Loren Gray Beech is an American social media personality and singer from Pottstown, Pennsylvania, best known for the TikTok career she began in 2015, at the age ofLoren Gray Beech is an American social media personality and singer from Pottstown, Pennsylvania, best known for the TikTok career she began in 2015, at the age ofLoren Gray Beech is an American social media personality and singer from Pottstown, Pennsylvania, best known for the TikTok career she began in 2015, at the age of', 'blockQuote', NULL),
(2, 'author', 'category', 'shortDescription', '', 'contentData', 'blockQuote', NULL),
(3, 'author', 'category', 'shortDescription', 'newsHead', 'contentData', 'blockQuote', NULL),
(4, 'xxx', 'xx', 'xx', 'xx', 'xx', 'xx', NULL),
(5, 'xxx', 'ss', 'ss', 'ss', 'ss', 'ss', NULL),
(6, 'xxx', 'sss', 'ss', 'ss', 'ss', 'sss', NULL),
(7, 'author', 'category', 'shortDescription', 'newsHead', 'contentData', 'blockQuote', NULL),
(8, 'kavindu', 'xx', 'ff', 'ff', 'ff', 'fff', NULL),
(9, 's', 's', 'ss', 'ss', 'ssss/nn/hh/bb/rr/', 'tt', NULL),
(10, 'pubudu', 'ss', 'ss', 'ss', 'ss|+|ssss|+|', 'sss', NULL),
(11, 'USA Top Ten', 'Sport', 'Sky Sports - Sports News, Transfers, Scores | Watch Live Sporthttps://www.skysports.com\nWatch the best live coverage of your favourite sports: Football, Golf, Rugby, Cricket, F1, Boxing, NFL, NBA, plus the latest sports news, transfers & scores.\n‎Football News · ‎News · ‎The Football News blog · ‎Transfer Centre', 'James Lopes Won', '1Sky Sports - Sports News, Transfers, Scores | Watch Live Sporthttps://www.skysports.com\r\nWatch the best live coverage of your favourite sports: Football, Golf, Rugby, Cricket, F1, Boxing, NFL, NBA, plus the latest sports news, transfers & scores.\r\n‎Football News · ‎News · ‎The Football News blog · ‎Transfer Centre|+|2latest sports news, transfers & scores.\r\n‎Football News · ‎News · ‎The Football News blog · ‎Transfer Centre|+|3latest sports news, transfers & scores.\r\n‎Football News · ‎News · ‎The Football News blog · ‎Transfer Centre', '8', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtfeR2gr_Z2U5rNiTKieMXMM9ZY96GbKUQQg&usqp=CAU');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` bigint(254) NOT NULL,
  `email` varchar(254) NOT NULL,
  `username` varchar(254) NOT NULL,
  `password` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `email`, `username`, `password`) VALUES
(1, '46a3b16384cfee26b874dc05ac037a947ce379dd6a657f1f4f5f956ae53a30d5c775eb079659a00466b79bfe27e40dc4cc85df41502f715b319736c2ef3250cea5043902d24e14f55b07d1a0995cb1a8edc62c6bfcd17c5d53d66fc858600176fc4465', 'savi', '32d7f55b6809e57149c5f131c0ee824b2be8ae06ca300729c20b4b1ca93622b5fb213f4d4ab49b04f70f1e6d6c3b6f3bfe6cb0fcf1b08742e7e9c644738af0b479321a4a3ceea391a92e5293bdff0cb3631ab04b2a0a361df65029a5eaddff07da7e'),
(2, 'cd5a408a1759153445426af8348467e89d616d78e46f0053a39eccf8c1935e325f061f9cc0f695157a7d0e7f135dc7e77c34c0d62ac6c2dae2d3ab1de0b9ebb17ec92a9fde84715b25ec6d2ecb2bb70a6c2ff12f789f6a56dc318676aa52c0941432ab', 'savi', 'bd6a86d877dce79efdda784e7a5f238fb0972e309767f26f3e0bb134686bbee6922b6fbb4f8c036ca4a586851bb2a93bca86ca515afd5759e1d489d401aa611c0654e9acc6d57a17048b3c3bac1e862d75bb4e14bb59e4479d6b18de7d9557d6488a'),
(3, 'bcd04960fa6e30de389ecd03e2c876c77ccdce73e5741e619be304b5a6d67d2007cbe1b63d197c4e1ef787e0022ee636dd2f7b707b8a540bf8efbc5d43f3277e17c881f6e4375adc2a89f436d3c0c1c812a45ea8d78e71ea709c4719368fbe0151a91a90f8815cd13fcb83442d65fc58eca6a010f5d0f39c989f', 'mohomed', 'c2045780c0e81d7b56b2a9453256f8bd7060f14b7c43aa1b44e12d6cd3e90dd9ac1d5a8b8cbc6fbfac8b9bf6a1c6175d26e58ac04c41125721ea1a10102f6bb8f7e20916fbc1c25910c0af01445d1048500cda478ff24163c49797957066249bb46f203e39e7'),
(4, 'd9b2a7c7de997f3ad1d7b04bbeae161509b6f49f389542ee5ce41796cce13572fe9049ed8c610d55368b92611d9a2dfed84b1d6d27bdbf6af88e2d62a53eaa550297fd55928754408117e6140ab5cf43052956a6399d43aa25cd4b1d6854e459e977f9f24df8abb827ca9fb579e940cfc0fd89ee2c096fa60879', 'mohomed', '107305b77996a863c93d3324cc29848c5d1980ece70c6c00c0a71bb336dd36a72273f4240dd8cf9373f3e15ebf6fed6f32b510074e09a81f26fe12ff794208fa677e85feae8a1c302c03bf21f53e0c29ee62d7965dca3f9127cb552b6c2087d80f06d399ba79'),
(5, '77d01cea23ba9e651061e898fda6278ff389aef70f97d52f3a239de1882f8a27f6e409ec3140411ca06a7b7e81165d435950416652df3656cde779c4010bbf49706619b6852b4301476cc12dc70e4c5210238bd437151c5b19960d3ba300cb2d559c8bda4d895c', 'savi', '2df2dd7bb6ea42eb3618c09f04b74507fef60ac3a13e7376bee043be6696f29236ebffd813cf7352b11f33fd6efa1f82f4785f83f5d19d1b0683a55acdd9e3cb40e879458b7061082f6b2c1fbc59f73031ffa1e6be626a299c559b1fd93d4b709b09'),
(6, '4baa6d336981d96e192aaaa13f93e660bba70fe6b641b4cd76e160b220a6e00e276029c7ae87f834b658a50735e2dc390c8bb4eb6b5f62b4cf212fdef06051cb3423636b3d109edde1a31f20692babd9033ae8924975dd19b997bed4eefd85e9289e4babb41ba5', 'kavindu', 'ed5063e534ce88093537b5d378b5a84ef1c1fc61825915b30701def4a3c275e7b74dd3377f13ebdf0988ecf02794222481faba997dc0ae4f7e52d1652b077a255680c8db1c3b7383d66963c12b30427d0aaa9e63fbf219cbacd56b1e674fd28e48a3'),
(7, '06b1ae1ae6492c32208bda004bcdd0c755f9889fb34b5129e9476cc08ecd44bcd9d5c050b278ec75c8d3f8699d3ab8a0c599cbeed15e04cfb15b88e464783e120f38ad3545c91da1c8076536988c0594ac31acdd5b31c6b10a98bee9a5d877930018f37d3db4448be0319d6bfd3c83a8f4', 'kavinduabc', '86599580cc84d866de3bd2a5d3b21958db008dc3ffd848203b5e9b2082170a2921142f7daf43033fbc9e26a964ec06ef7e8f0834fc714f1ba3f2c45d706d2b401ddd63e016da63b22193b759898b19c70242b763c24627b3c06815147cc0e2272bd66a788e72944a'),
(8, '92609afa16636dbfb9950a28b16f6b6f6700c45d98146e5cbe95f222b19cc567ff8f196f861962931abd8100ebc6642b1fcc6bb5a62324fb223e18484692a24c23d1d4b4b4db0433e47f1858d238c0b24303599ef6cdc359fe3607f3296fe2f8c97d8df1eaa32801595a8d28dec04f6c8087afd258b4fc605572', 'xxx', '73dab540ef3bd5add2b762d9077db5b995bbf74956b6a3cb7608498095e0c25dd51fdcf52d3978fb1a173bf7309fd827a55346b4642c46e2cf6f2a1c451e23b49a869cc83a81cb70bd63663a761f14ea24774e4e3dc63ca5143e09446076ba50f1936b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `career`
--
ALTER TABLE `career`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `career`
--
ALTER TABLE `career`
  MODIFY `id` bigint(254) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(254) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(254) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` bigint(254) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
