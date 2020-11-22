-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2020 at 05:14 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(9, 'Fruits', 1),
(10, 'Heart Disease', 1),
(11, 'Skin Disease', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(1, 'Vishal', 'vishal@gmail.com', '1234567890', 'Test Query', '2020-01-14 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`id`, `firstName`, `lastName`, `email`, `password`) VALUES
(1, 'Michael', 'Jackson', 'michael@gmail.com', 'f732dfdbd0aed62727f958cccca9ec3a5cb13eda'),
(6, 'merlyn', 'joseph', 'gergre@gmail.com', 'fc97a8ab187c128ef2346c4fb2ad79f891c9c1c8'),
(14, 'Lola', 'Kola', 'merlyn@gmail.com', 'eb52002c46871c4ae6471983dc33adbc82ca32d2'),
(15, 'Marlin', 'Monre', 'monre@yahoo.in', '2bfd1f5ac6eb39d7f3c3d34bb9eda587571b7e49'),
(16, 'Kale', 'Pale', 'kale@gmail.com', '70606be7beaf43b06868e735ff0b14a79d5a3588'),
(17, 'Karl', 'Sheen', 'Karl@gmail.in', '00a3e2b0764a0edb351d16c420e401ade36476ac'),
(18, 'Crack', 'Pack', 'Crack@yahoo.com', '8b9fe988556699ed76ba08477c3406f74240d7bb'),
(19, 'Joy', 'Boy', 'joy@gmail.in', 'bd7314810bd7957209084e74085f822371c6c9f5'),
(20, 'Hiyah', 'Fuiyo', 'hiyah@gmail.in', '96702523dbee492397eb568745a417c32f5a805e'),
(21, 'yolo', 'polo', 'yolo@reddiff.com', 'a2e3d039adf93fbda0853a6732cac7daf7f11d18'),
(22, 'Liza', 'Koshy', 'liza@gmail.com', 'ce923c9ec634714258f773711719ebd8744efd68'),
(23, 'Kayla', 'Martins', 'kayla@yahoo.in', '7fb19371b353b53d0ec4e0cb5f534800eaee3b36'),
(24, 'Hiiii', 'Byeee', 'hi@yahoo.in', '49473b69cd4318ca937b5dce5debeddf1b70c504'),
(25, 'Ram', 'Sham', 'ram@yahoo.in', '994769f935bb1a7bf0ded07878a802d921c42fd3'),
(26, 'Mom', 'Dad', 'mom@gmail.com', '3db1ed7b81c6bec21f5c6839e46b5f1fd2c7f432'),
(27, 'Bleh', 'John', 'bleh@gmail.com', '70c079019a5b0a64c27508f3336eb06bd9e17fdd'),
(28, 'Adam', 'Eve', 'adam@gmail.com', '0b18856cc8e912cd80069a90df4e5fa030892017'),
(29, 'Joselyn', 'Joseph', 'joselyn@gamil.com', '6c3ea0676cafb46103d85ad0cd457685f837cd22');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(2000) NOT NULL,
  `meta_desc` varchar(2000) NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `meta_title`, `meta_desc`, `meta_keyword`, `status`) VALUES
(1, 11, 'Holy Basil', 200, 290, 4, '327589776_basil.jpg', 'holy basil is a culinary herb which has antifungal and antibiotic properties. It is very good for the skin. It is a wonderful skin tone booster which can revive dull looking skin. It can also help in soothing, healing, and rejuvenating the skin. Being rich in antioxidants and Vitamins A and C, this herb destroys the harmful free radicals and gives wonderful skin.', 'holy basil is a culinary herb which has antifungal and antibiotic properties. It is very good for the skin. It is a wonderful skin tone booster which can revive dull looking skin. It can also help in soothing, healing, and rejuvenating the skin. Being rich in antioxidants and Vitamins A and C, this herb destroys the harmful free radicals and gives wonderful skin.', 'Basil', '', 'basil, skin, skin disease', 1),
(4, 11, 'Lavender', 400, 390, 12, '836373144_lavender.jpg', 'Lavender can be used as a cure for acne and eczema. Lavender oil has a pleasing scent and it is very calming for the skin. It not only nourishes the skin but also helps in eliminating bacteria which tends to penetrate deep into the pores and cause pimples and flareups. Thus, it is ideal for healing and preventing acne. The antioxidants and antimicrobial properties help curb oxidative harm which can cause premature ageing of the skin.', 'Lavender can be used as a cure for acne and eczema. Lavender oil has a pleasing scent and it is very calming for the skin. It not only nourishes the skin but also helps in eliminating bacteria which tends to penetrate deep into the pores and cause pimples and flareups. Thus, it is ideal for healing and preventing acne. The antioxidants and antimicrobial properties help curb oxidative harm which can cause premature ageing of the skin.', 'Lavender', '', 'lavender, skin', 1),
(5, 7, 'test33', 100, 98, 8, '708794487_64-1.jpg', 'test', 'test', 'test', '', 'test', 1),
(6, 11, 'Aloe vera', 120, 100, 4, '705731765_aloe.jpg', 'Aloe vera (L.) Burm. f. syn. Aloe barbadensis Miller is most biologically active among 400 species [38]. According to report of World Health Organization, this medicinal herb is the best source to prepare natural drugs (Figure 7). The plant is native to southern and eastern Africa. Then, it was introduced into area of northern Africa and other countries.', 'Aloe vera (L.) Burm. f. syn. Aloe barbadensis Miller is most biologically active among 400 species [38]. According to report of World Health Organization, this medicinal herb is the best source to prepare natural drugs (Figure 7). The plant is native to southern and eastern Africa. Then, it was introduced into area of northern Africa and other countries.', 'Aloe vera', '', 'aloe, aloe vera, skin', 1),
(7, 10, 'Green Tea', 140, 125, 1, '898608742_greentea.jpg', 'Time and again, Green tea has emerged as one of the most powerful natural remedies for numerous ailments. It is well recognised for its high antioxidant content which has the capability of fighting harmful free radicals that are responsible for heart disease.\r\n\r\nThe chief antioxidant that is present in green tea is epigallocatechin gallate (EGCG). It has the capability of combating harmful toxins that are generated in the body from numerous physiological processes and digestion of foods. Not only that, harmful toxins called free radicals are generated on exposure to environmental factors such as pollution and smog.\r\n\r\nClinical studies suggest that drinking 5 to 6 cups of green tea per day is essential to reap the benefits of its heart protection capabilities.', 'Time and again, Green tea has emerged as one of the most powerful natural remedies for numerous ailments. It is well recognised for its high antioxidant content which has the capability of fighting harmful free radicals that are responsible for heart disease.\r\n\r\nThe chief antioxidant that is present in green tea is epigallocatechin gallate (EGCG). It has the capability of combating harmful toxins that are generated in the body from numerous physiological processes and digestion of foods. Not only that, harmful toxins called free radicals are generated on exposure to environmental factors such as pollution and smog.\r\n\r\nClinical studies suggest that drinking 5 to 6 cups of green tea per day is essential to reap the benefits of its heart protection capabilities.', 'Green tea packet', '', 'green tea, tea, herbal', 1),
(8, 10, 'Turmeric', 160, 105, 1, '257758810_tumeric.jpg', 'Turmeric is a natural spice that is abundantly present in Indian cooking. Turmeric contains the active ingredient curcumin which has powerful properties that can protect the heart muscle. Curcumin is responsible for the yellow colour of turmeric.', 'Turmeric is a natural spice that is abundantly present in Indian cooking. Turmeric contains the active ingredient curcumin which has powerful properties that can protect the heart muscle. Curcumin is responsible for the yellow colour of turmeric.\r\n\r\nThe benefits of a regular turmeric consumption as a part of your daily diet is not just limited to heart protection. Curcumin has demonstrated in numerous studies to have anti-inflammatory, anti-cancer and antioxidant properties. Not just that, it has an effect on thinning the blood through its antithrombotic properties. A recent study has found that it may even improve your memory power and delay memory loss and Alzheimer’s disease.\r\n\r\nA large part of heart attacks and heart disease is the narrowing of blood vessels i.e. atherosclerosis. As I have previously mentioned in this article, atherosclerosis is a result of underlying inflammation.\r\n\r\nCurcumin in turmeric has anti-inflammatory properties that can in a sense reduce inflammation and atherosclerosis. This means that by regularly consuming turmeric as a part of your diet, you could protect your heart from heart disease.\r\n\r\nIt is simple to have your daily dose of turmeric. You could sprinkle the required amount in your curry or even add a small teaspoon of it to a glass of milk prior to consumption.\r\n\r\nClinical studies have also shown that regular use of curcumin in turmeric can inhibit certain pathways that are responsible for thickening and weakening of the heart muscle. Not just that, curcumin may also prevent the development of irregular heart rhythms by correcting the quantity of calcium that enters the heart muscle.\r\n\r\nThe use of curcumin can be particularly helpful in individuals who are obese or who suffer from a condition called metabolic syndrome. Metabolic syndrome consists of a combination of high blood pressure, diabetes, obesity, high cholesterol and a spectrum of other problems that are all risk factors in heart attacks.\r\n\r\nBy exerting anti-inflammatory effects, curcumin can protect your heart from prematurely ageing. In one particular study, it is found that curcumin could reduce triglycerides which is a type of fat responsible for coronary artery disease. Not just that, it can also increase the levels of good cholesterol i.e. HDL cholesterol. Lower energy cholesterol i.e. bad cholesterol levels were also seen.\r\n\r\nFinally, curcumin can also reduce the risk of developing heart failure. In heart failure, the heart muscle becomes enlarged and is unable to function efficiently as a pump. This is particularly relevant in individuals who suffer from type II diabetes. The high blood sugars in diabetes can damage the heart muscle by exerting oxidative stress. This can be prevented by curcumin in turmeric.\r\n\r\nIn short, turmeric has numerous health benefits and can in particular protect the heart.', 'Tumeric curcumin', '', 'tumeric, curcumin, haldi', 1),
(9, 10, 'Garlic', 103, 95, 3, '190243334_garlic.jpg', 'Garlic (Allium sativum) has achieved a formidable status in the world of medicinal history as an agent that has a number of therapeutic benefits. In fact, the history of garlic dates back to the Egyptian times where it was used to treat conditions such as worms, tumours and even heart disorders.\r\n\r\nGarlic is rich not just in carbohydrates but also contains moderate levels of different nutrients such as potassium, some for, phosphorus, zinc and vitamins A and B complex.', 'Garlic (Allium sativum) has achieved a formidable status in the world of medicinal history as an agent that has a number of therapeutic benefits. In fact, the history of garlic dates back to the Egyptian times where it was used to treat conditions such as worms, tumours and even heart disorders.\r\n\r\nGarlic is rich not just in carbohydrates but also contains moderate levels of different nutrients such as potassium, some for, phosphorus, zinc and vitamins A and B complex.\r\n\r\nThere are a number of different clinical studies that have looked at the health benefits of garlic in preventing heart disease.\r\n\r\n1. Garlic Lowers Cholesterol\r\nAs you will very well know, high cholesterol has been shown to increase the risk of heart disease to an extent. The synthesis of cholesterol takes place in the liver under the influence of an enzyme called hedging giclée reductase. Garlic has been found to contain compounds that can block this enzyme and hence reduce the levels of cholesterol formation in the liver.\r\n\r\n2. Garlic Reduces Stickiness of Blood Cells:\r\nOne feature that is common to heart disease is excessive thickness of the blood. The blood cells called platelets can stick together and form a clot which is called a thrombus. Studies have found that regular consumption of garlic can reduce the stickiness of platelets and hence reduce the formation of blood clots within the arteries. Blood clots within the arteries are a common cause of heart attacks.\r\n\r\n3. Garlic Controls Blood Pressure:\r\nExtracts of garlic have been found to modulate certain factors that are responsible for controlling blood pressure. High blood pressure is a risk factor in the development of heart disease and controlling blood pressure is essential to protect the heart.\r\n\r\n4. Garlic Reduces Oxidative Stress:\r\nOxidative stress refers to the formation of free radicals that are responsible for damaging the heart arteries leading to heart disease. In one particular study that looked at patients with high blood pressure, garlic pearls were given as a regular supplement. These subjects were found to not only have a decrease in their blood pressure but also had lower levels of oxidative stress. In other words, regular consumption of garlic can protect the heart from various damaging free radicals.\r\n\r\nThe Indian diet is already rich in garlic. It is used as a common spice in our cooking. Don’t throw the garlic away. Instead eat it and reap the benefits of cardiac protection.', 'Garlic', '', 'garlic, heart disease', 1),
(10, 10, 'Ginger', 160, 120, 2, '151311385_ginger.jpg', 'Again, ginger is a common spice that is used in cuisine in India. It is even added to tea to make ‘masala chai’.\r\n\r\nThe good news about ginger is that it has a number of different cardiovascular benefits that have been demonstrated in clinical studies.\r\n\r\nIn one particular study that looked at daily ginger consumption, Chinese researchers found that regular consumption of ginger reduced the risk of developing high blood pressure by 8%. In addition to this, they also found that the risk of coronary artery disease also reduced by nearly 13%. The recommended intake of ginger to reap this benefit was 2 to 4 grams per day.', 'Again, ginger is a common spice that is used in cuisine in India. It is even added to tea to make ‘masala chai’.\r\n\r\nThe good news about ginger is that it has a number of different cardiovascular benefits that have been demonstrated in clinical studies.\r\n\r\nIn one particular study that looked at daily ginger consumption, Chinese researchers found that regular consumption of ginger reduced the risk of developing high blood pressure by 8%. In addition to this, they also found that the risk of coronary artery disease also reduced by nearly 13%. The recommended intake of ginger to reap this benefit was 2 to 4 grams per day.\r\n\r\n1. Ginger Lowers Cholesterol:\r\nIn one study conducted at Babol University Of medical sciences, it was found that regular ginger consumption could reduce the levels of bad cholesterol i.e. LDL cholesterol. In addition to that, it also elevated the levels of good cholesterol i.e. HDL cholesterol. Animal studies found that garlic was as effective as taking a cholesterol-lowering medication when it came to lowering bad cholesterol levels.\r\n\r\n2. Ginger Controls Blood Sugars:\r\nDiabetes is an important risk factor in the development of heart disease. High blood sugars are a well-known to damage the blood vessels and cause narrowing of the heart arteries leading to heart attacks and heart failure.\r\n\r\nClinical research has found that using ginger or as a supplement to your daily diet can help reduce fasting blood sugars by almost 12%. In the long term, it is able to lower the blood sugar values by nearly 10%.\r\n\r\nClearly, ginger has a number of different health benefits making it a great herbal remedy to prevent heart disease.', 'Ginger', '', 'ginger, heart disease', 1),
(11, 10, 'Capsicum', 45, 30, 1, '245632022_capsicum.jpg', 'Capsicum contains the active ingredient capsaicin which is responsible for giving it a spicy flavour.', 'Capsicum contains the active ingredient capsaicin which is responsible for giving it a spicy flavour.\r\n\r\nIn a clinical study published in 2015, it was found that capsaicin may have a number of different heart benefits.\r\n\r\nIn particular, it was found that could control blood pressure, lower blood sugar, reduce the strain on the heart muscle and control heart muscle thickness, reduce body weight and slow down atherosclerosis.\r\n\r\nCapsaicin also has the property of thinning the blood and preventing it from clotting. This is important in preventing heart attacks.', 'Capsicum', '', 'capsicum, heart disease', 1),
(12, 10, 'Avocados', 150, 130, 4, '594786610_avocado.jpg', 'Avocados are an excellent source of heart-healthy monounsaturated fats, which have been linked to reduced levels of cholesterol and a lower risk of heart disease (16Trusted Source).', 'Avocados are an excellent source of heart-healthy monounsaturated fats, which have been linked to reduced levels of cholesterol and a lower risk of heart disease (16Trusted Source).\r\n\r\nOne study looked at the effects of three cholesterol-lowering diets in 45 overweight and obese people, with one of the test groups consuming one avocado per day.\r\n\r\nThe avocado group experienced reductions in “bad” LDL cholesterol, including lower levels of small, dense LDL cholesterol, which are believed to significantly raise the risk of heart disease (17Trusted Source).\r\n\r\nAnother study including 17,567 people showed that those who ate avocados regularly were half as likely to have metabolic syndrome (18Trusted Source).\r\n\r\nAvocados are also rich in potassium, a nutrient that’s essential to heart health. In fact, just one avocado supplies 975 milligrams of potassium, or about 28% of the amount that you need in a day (19).\r\n\r\nGetting at least 4.7 grams of potassium per day can decrease blood pressure by an average of 8.0/4.1 mmHg, which is associated with a 15% lower risk of stroke (20Trusted Source).', 'Avacados', '', 'avocado, heart disease', 1),
(13, 11, 'Ashwagandha', 170, 165, 3, '331251803_ashwagandha.jpg', 'It is an ayurvedic herb which is very beneficial for the skin. It is full of antioxidants which help in eradicating the free radicals that can trigger dark spots, wrinkles, blemishes, and fine lines. It has anti-inflammatory, antimicrobial, and antibacterial properties that help heal and prevent wounds and other skin irritants.', 'It is an ayurvedic herb which is very beneficial for the skin. It is full of antioxidants which help in eradicating the free radicals that can trigger dark spots, wrinkles, blemishes, and fine lines. It has anti-inflammatory, antimicrobial, and antibacterial properties that help heal and prevent wounds and other skin irritants.', 'Ashwagandha', '', 'ashwagandha, skin, skin disease', 1),
(14, 11, 'Parsley', 87, 80, 4, '795433160_parsley.jpg', 'Parsley is a miraculous herb for it can balance oil production, lessen inflammation and prevent skin discolouration. This flavoursome herb can fight acne. It can also help diminish fine lines and wrinkles.', 'Parsley is a miraculous herb for it can balance oil production, lessen inflammation and prevent skin discolouration. This flavoursome herb can fight acne. It can also help diminish fine lines and wrinkles.', 'Parsley', '', 'parsley, skin disease', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `mobile`, `added_on`) VALUES
(1, 'Vishal Gupta', '', 'vishal@gmail.com', '1234567890', '2020-01-14 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login_details`
--
ALTER TABLE `login_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
