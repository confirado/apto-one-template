-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 18, 2024 at 03:59 PM
-- Server version: 11.2.2-MariaDB
-- PHP Version: 8.1.26

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apto-example-data-installer`
--

-- --------------------------------------------------------

--
-- Table structure for table `apto_acl_entry`
--

DROP TABLE IF EXISTS `apto_acl_entry`;
CREATE TABLE `apto_acl_entry` (
  `surrogate_id` int(11) NOT NULL,
  `shop_id` varchar(36) DEFAULT NULL COMMENT '(DC2Type:AptoPropertyUuid)',
  `model` varchar(255) NOT NULL,
  `entity` int(11) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `mask` int(11) NOT NULL,
  `role_identifier` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `apto_acl_entry`
--

INSERT INTO `apto_acl_entry` (`surrogate_id`, `shop_id`, `model`, `entity`, `field`, `mask`, `role_identifier`) VALUES
(250, NULL, 'Apto\\Base\\Application\\Core\\Query\\Language\\FindLanguages', NULL, NULL, 16, 'ROLE_USER'),
(251, NULL, 'Apto\\Base\\Application\\Backend\\Query\\User\\FindCurrentUser', NULL, NULL, 16, 'ROLE_USER'),
(252, NULL, 'Apto\\Catalog\\Application\\Core\\Commands\\Configuration\\RemoveBasketConfiguration', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(253, NULL, 'Apto\\Base\\Application\\Backend\\Commands\\MediaFile\\AddMediaFile', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(254, NULL, 'Apto\\Base\\Application\\Backend\\Commands\\MediaFile\\AddMediaFileDirectory', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(255, NULL, 'Apto\\Base\\Application\\Backend\\Commands\\MediaFile\\RemoveMediaFile', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(256, NULL, 'Apto\\Base\\Application\\Backend\\Commands\\MediaFile\\RemoveMediaFileByName', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(257, NULL, 'Apto\\Base\\Application\\Backend\\Commands\\MediaFile\\RemoveMediaFileDirectory', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(258, NULL, 'Apto\\Base\\Application\\Backend\\Commands\\MediaFile\\UploadMediaFile', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(259, NULL, 'Apto\\Base\\Application\\Backend\\Commands\\CustomerGroup\\SynchronizeCustomerGroups', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(260, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\AddProduct', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(261, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\RemoveProduct', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(262, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\UpdateProduct', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(263, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\AddProductPrice', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(264, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\UpdateProductPrice', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(265, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\RemoveProductPrice', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(266, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Section\\AddProductSection', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(267, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Section\\AddProductSectionPrice', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(268, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Section\\UpdateProductSection', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(269, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Section\\SetProductSectionIsActive', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(270, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Section\\SetProductSectionIsMandatory', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(271, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Section\\RemoveProductSection', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(272, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Section\\RemoveProductSectionPrice', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(273, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Element\\AddProductElement', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(274, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Element\\AddProductElementRenderImage', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(275, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Element\\AddProductElementPrice', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(276, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Element\\UpdateProductElement', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(277, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Element\\RemoveProductElement', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(278, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Element\\RemoveProductElementRenderImage', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(279, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Element\\RemoveProductElementPrice', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(280, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Element\\SetProductElementIsDefault', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(281, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Element\\SetProductElementIsActive', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(282, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Rule\\AddProductRule', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(283, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Rule\\UpdateProductRule', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(284, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Rule\\RemoveProductRule', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(285, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Rule\\AddProductRuleCondition', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(286, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Rule\\AddProductRuleImplication', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(287, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Rule\\RemoveProductRuleCondition', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(288, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Rule\\RemoveProductRuleImplication', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(289, NULL, 'Apto\\Base\\Application\\Backend\\Query\\MediaFile\\ListMediaFiles', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(290, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Configuration\\FindOrderConfiguration', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(291, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Configuration\\FindCustomerConfiguration', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(292, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Configuration\\FindBasketConfiguration', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(293, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Configuration\\FindPriceByState', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(294, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\Element\\FindRenderImageByState', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(295, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\Rule\\FindRuleImplications', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(296, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\Rule\\FindRuleConditions', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(297, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\Rule\\FindRule', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(298, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\Element\\FindRegisteredElementDefinitions', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(299, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\Element\\FindElementRenderImages', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(300, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\Element\\FindElementPrices', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(301, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\Element\\FindElement', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(302, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\Section\\FindSectionPrices', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(303, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\Section\\FindSectionElements', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(304, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\Section\\FindSection', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(305, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\FindProducts', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(306, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\FindProductPrices', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(307, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\FindProductRules', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(308, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\FindProductSectionsElements', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(309, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\FindConfigurableProduct', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(310, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\FindProductSections', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(311, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\FindProductByIdentifier', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(312, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\FindProduct', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(313, NULL, 'Apto\\Base\\Application\\Core\\Query\\CustomerGroup\\FindCustomerGroups', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(314, NULL, 'Apto\\Base\\Application\\Core\\Query\\Customer\\FindCustomers', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(315, NULL, 'Apto\\Base\\Application\\Core\\Query\\MediaFile\\FindMediaFileByName', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(316, NULL, 'Apto\\Base\\Application\\Core\\Query\\MediaFile\\FindMediaFile', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(317, NULL, 'Apto\\Base\\Application\\Core\\Query\\DomainEvent\\FindGroupedUserIds', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(318, NULL, 'Apto\\Base\\Application\\Core\\Query\\DomainEvent\\FindGroupedTypeNames', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(319, NULL, 'Apto\\Base\\Application\\Core\\Query\\DomainEvent\\FindDomainEventLog', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(321, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Shop\\FindShops', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(322, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\PriceCalculator\\FindPriceCalculators', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(323, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Category\\FindCategories', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(324, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Group\\AddGroup', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(325, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Group\\RemoveGroup', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(326, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Group\\UpdateGroup', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(327, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Group\\FindGroups', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(328, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Group\\FindGroup', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(329, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\Element\\FindElementCustomProperties', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(330, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Element\\AddProductElementCustomProperty', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(331, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Element\\RemoveProductElementCustomProperty', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(332, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\PriceMatrix\\FindPriceMatrix', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(333, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\PriceMatrix\\FindPriceMatrices', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(334, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\PriceMatrix\\FindPriceMatricesByPage', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(335, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\PriceMatrix\\FindPriceMatrixElements', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(336, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\PriceMatrix\\FindPriceMatrixElementPrices', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(337, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\PriceMatrix\\FindPriceMatrixElementCustomProperties', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(338, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\PriceMatrix\\AddPriceMatrix', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(339, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\PriceMatrix\\UpdatePriceMatrix', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(340, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\PriceMatrix\\RemovePriceMatrix', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(341, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\PriceMatrix\\AddPriceMatrixElement', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(342, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\PriceMatrix\\RemovePriceMatrixElement', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(343, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\PriceMatrix\\AddPriceMatrixElementPrice', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(344, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\PriceMatrix\\RemovePriceMatrixElementPrice', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(345, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\PriceMatrix\\AddPriceMatrixElementCustomProperty', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(346, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\PriceMatrix\\RemovePriceMatrixElementCustomProperty', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(347, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\PriceMatrix\\ImportPriceMatrix', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(348, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\CustomerGroup\\SynchronizeCustomerGroups', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(349, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\FindProductDiscounts', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(350, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\Section\\FindSectionDiscounts', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(351, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\Element\\FindElementDiscounts', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(352, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\AddProductDiscount', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(353, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\RemoveProductDiscount', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(354, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Section\\AddProductSectionDiscount', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(355, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Section\\RemoveProductSectionDiscount', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(356, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Element\\AddProductElementDiscount', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(357, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Element\\RemoveProductElementDiscount', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(358, NULL, 'Apto\\Base\\Application\\Backend\\Commands\\MediaFile\\ClearMediaFileCache', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(359, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\AddProductCustomProperty', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(360, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\RemoveProductCustomProperty', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(361, NULL, 'Apto\\Base\\Application\\Backend\\Commands\\CustomerGroup\\AddCustomerGroup', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(362, NULL, 'Apto\\Base\\Application\\Backend\\Commands\\CustomerGroup\\UpdateCustomerGroup', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(363, NULL, 'Apto\\Base\\Application\\Backend\\Commands\\CustomerGroup\\RemoveCustomerGroup', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(364, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\FindProductCustomProperties', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(365, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\FindProductsByCategoryIdentifier', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(366, NULL, 'Apto\\Base\\Application\\Backend\\Commands\\ContentSnippet\\AddContentSnippet', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(367, NULL, 'Apto\\Base\\Application\\Backend\\Commands\\ContentSnippet\\RemoveContentSnippet', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(368, NULL, 'Apto\\Base\\Application\\Backend\\Commands\\ContentSnippet\\UpdateContentSnippet', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(369, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\CopyProduct', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(370, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Section\\AddProductSectionCustomProperty', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(371, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Section\\RemoveProductSectionCustomProperty', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(372, NULL, 'Apto\\Base\\Application\\Core\\Query\\ContentSnippet\\FindContentSnippet', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(373, NULL, 'Apto\\Base\\Application\\Core\\Query\\AptoUuid\\GenerateAptoUuid', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(374, NULL, 'Apto\\Base\\Application\\Core\\Query\\ContentSnippet\\FindContentSnippetTree', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(375, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\Section\\FindSectionCustomProperties', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(376, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Configuration\\FindProposedConfiguration', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(377, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Configuration\\FindGuestConfiguration', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(378, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Configuration\\FindCodeConfiguration', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(379, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Configuration\\FindProposedConfigurations', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(380, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\PriceMatrix\\FindPriceMatrixRules', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(381, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\PriceMatrix\\FindPriceMatrixLookupTable', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(382, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Configuration\\FindHumanReadableState', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(383, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Shop\\FindShopContext', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(386, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Element\\SetProductElementIsMandatory', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(387, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Price\\SetPrices', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(388, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Price\\SetPricesByFormula', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(389, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\FindProductsByFilter', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(390, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\Element\\FindElementComputableValues', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(391, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Configuration\\FindImmutableConfiguration', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(392, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\FindProductsByFilterPagination', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(393, NULL, 'Apto\\Catalog\\Application\\Backend\\Query\\Price\\FindPrices', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(394, NULL, 'Apto\\Catalog\\Application\\Backend\\Query\\Price\\FindPriceMatrixConflicts', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(395, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Section\\SetProductSectionGroup', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(396, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Section\\SetProductSectionAllowMulti', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(397, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Category\\AddCategory', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(398, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Category\\AddCategoryCustomProperty', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(399, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Category\\RemoveCategoryCustomProperty', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(400, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Category\\RemoveCategory', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(401, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Category\\UpdateCategory', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(402, NULL, 'Apto\\Base\\Application\\Core\\Query\\CustomerGroup\\FindCustomerGroup', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(403, NULL, 'Apto\\Base\\Application\\Core\\Query\\CustomerGroup\\FindCustomerGroupByShopAndExternalId', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(404, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Group\\FindGroupByIdentifier', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(405, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\PriceMatrix\\GetPriceMatrixCsvString', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(406, NULL, 'Apto\\Base\\Application\\Core\\Query\\AptoCustomProperty\\FindUsedCustomPropertyKeys', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(407, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Category\\FindCategoryTree', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(408, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Category\\FindCategory', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(409, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Category\\FindCategoryCustomProperties', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(410, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Core\\Commands\\Material\\IncrementMaterialClicks', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(411, NULL, 'Apto\\Plugins\\RequestForm\\Application\\Core\\Commands\\SendProductInquiry', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(412, NULL, 'Apto\\Plugins\\ImageUpload\\Application\\Core\\Commands\\UploadUserImageFile', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(416, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Backend\\Commands\\Material\\AddMaterial', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(417, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Backend\\Commands\\Material\\RemoveMaterial', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(418, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Backend\\Commands\\Material\\UpdateMaterial', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(419, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Backend\\Commands\\PriceGroup\\AddPriceGroup', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(420, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Backend\\Commands\\PriceGroup\\UpdatePriceGroup', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(421, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Backend\\Commands\\PriceGroup\\RemovePriceGroup', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(422, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Backend\\Commands\\Pool\\AddPool', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(423, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Backend\\Commands\\Pool\\UpdatePool', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(424, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Backend\\Commands\\Pool\\RemovePool', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(425, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Backend\\Commands\\Pool\\AddPoolItem', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(426, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Backend\\Commands\\Pool\\RemovePoolItem', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(427, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Backend\\Commands\\Material\\AddMaterialGalleryImage', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(428, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Backend\\Commands\\Material\\RemoveMaterialGalleryImage', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(429, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Backend\\Commands\\Property\\AddGroup', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(430, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Backend\\Commands\\Property\\UpdateGroup', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(431, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Backend\\Commands\\Property\\RemoveGroup', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(432, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Backend\\Commands\\Property\\AddGroupProperty', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(433, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Backend\\Commands\\Property\\RemoveGroupProperty', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(434, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Backend\\Commands\\Material\\AddMaterialProperty', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(435, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Backend\\Commands\\Material\\RemoveMaterialColorRating', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(436, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Backend\\Commands\\Material\\AddMaterialColorRating', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(437, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Backend\\Commands\\Property\\RemovePropertyCustomProperty', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(438, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Backend\\Commands\\Property\\AddPropertyCustomProperty', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(439, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Backend\\Commands\\Property\\UpdateProperty', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(440, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Backend\\Commands\\Material\\RemoveMaterialProperty', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(441, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Core\\Query\\Pool\\FindPoolColors', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(442, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Core\\Query\\Material\\FindMaterialColorRatings', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(443, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Core\\Query\\Property\\FindPropertyCustomProperties', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(444, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Core\\Query\\Property\\FindProperty', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(445, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Core\\Query\\Pool\\FindPoolPropertyGroups', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(446, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Core\\Query\\Pool\\FindPoolPriceGroups', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(447, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Core\\Query\\Pool\\FindPoolItemsFiltered', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(448, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Core\\Query\\Material\\FindNotAssignedMaterialProperties', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(449, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Core\\Query\\Property\\FindGroupProperties', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(450, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Core\\Query\\Property\\FindGroupsByPage', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(451, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Core\\Query\\Property\\FindGroups', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(452, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Core\\Query\\Property\\FindGroup', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(453, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Core\\Query\\Pool\\FindPoolsWithoutMaterial', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(454, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Core\\Query\\Pool\\FindPoolsByPage', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(455, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Core\\Query\\Pool\\FindPoolItems', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(456, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Core\\Query\\Pool\\FindPoolItemsByMaterial', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(457, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Core\\Query\\Pool\\FindNotInPoolMaterials', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(458, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Core\\Query\\Material\\FindMaterialGalleryImages', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(459, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Core\\Query\\Material\\FindMaterialProperties', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(460, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Core\\Query\\Pool\\FindPools', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(461, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Core\\Query\\PriceGroup\\FindPriceGroupsByPage', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(462, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Core\\Query\\Pool\\FindPool', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(463, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Core\\Query\\PriceGroup\\FindPriceGroups', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(464, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Core\\Query\\PriceGroup\\FindPriceGroup', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(465, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Core\\Query\\Material\\FindMaterialsByPage', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(466, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Core\\Query\\Material\\FindMaterials', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(467, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Core\\Query\\Material\\FindMaterial', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(469, NULL, 'Apto\\Base\\Application\\Backend\\Commands\\User\\AddUser', NULL, NULL, 16, 'ROLE_ADMIN'),
(470, NULL, 'Apto\\Base\\Application\\Backend\\Commands\\User\\UpdateUser', NULL, NULL, 16, 'ROLE_ADMIN'),
(471, NULL, 'Apto\\Base\\Application\\Backend\\Commands\\User\\RemoveUser', NULL, NULL, 16, 'ROLE_ADMIN'),
(472, NULL, 'Apto\\Base\\Application\\Backend\\Query\\User\\FindUser', NULL, NULL, 16, 'ROLE_ADMIN'),
(473, NULL, 'Apto\\Base\\Application\\Backend\\Query\\User\\FindUsers', NULL, NULL, 16, 'ROLE_ADMIN'),
(474, NULL, 'Apto\\Base\\Application\\Backend\\Query\\User\\FindUsersByUserIds', NULL, NULL, 16, 'ROLE_ADMIN'),
(475, NULL, 'Apto\\Base\\Application\\Backend\\Query\\User\\FindUserByUsername', NULL, NULL, 16, 'ROLE_ADMIN'),
(476, NULL, 'Apto\\Base\\Application\\Backend\\Query\\User\\FindUserByApiKey', NULL, NULL, 16, 'ROLE_ADMIN'),
(477, NULL, 'Apto\\Base\\Application\\Backend\\Query\\User\\FindUserByApiOrigin', NULL, NULL, 16, 'ROLE_ADMIN'),
(478, NULL, 'Apto\\Base\\Application\\Backend\\Query\\UserRole\\FindUserRoles', NULL, NULL, 16, 'ROLE_ADMIN'),
(479, NULL, 'Apto\\Base\\Application\\Backend\\Commands\\Language\\AddLanguage', NULL, NULL, 16, 'ROLE_ADMIN'),
(480, NULL, 'Apto\\Base\\Application\\Backend\\Commands\\Language\\UpdateLanguage', NULL, NULL, 16, 'ROLE_ADMIN'),
(481, NULL, 'Apto\\Base\\Application\\Backend\\Commands\\Language\\RemoveLanguage', NULL, NULL, 16, 'ROLE_ADMIN'),
(482, NULL, 'Apto\\Base\\Application\\Core\\Query\\Language\\FindLanguage', NULL, NULL, 16, 'ROLE_ADMIN'),
(483, NULL, 'Apto\\Plugins\\SelectBoxElement\\Application\\Backend\\Commands\\SelectBoxItem\\AddSelectBoxItem', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(484, NULL, 'Apto\\Plugins\\SelectBoxElement\\Application\\Backend\\Commands\\SelectBoxItem\\AddSelectBoxItems', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(485, NULL, 'Apto\\Plugins\\SelectBoxElement\\Application\\Backend\\Commands\\SelectBoxItem\\UpdateSelectBoxItem', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(486, NULL, 'Apto\\Plugins\\PricePerUnitElement\\Application\\Backend\\Commands\\PricePerUnitItem\\RemovePricePerUnitPrice', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(487, NULL, 'Apto\\Plugins\\PricePerUnitElement\\Application\\Backend\\Commands\\PricePerUnitItem\\AddPricePerUnitPrice', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(488, NULL, 'Apto\\Plugins\\SelectBoxElement\\Application\\Backend\\Commands\\SelectBoxItem\\SetSelectBoxItemIsDefault', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(489, NULL, 'Apto\\Plugins\\SelectBoxElement\\Application\\Backend\\Commands\\SelectBoxItem\\RemoveSelectBoxItemPrice', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(490, NULL, 'Apto\\Plugins\\SelectBoxElement\\Application\\Backend\\Commands\\SelectBoxItem\\AddSelectBoxItemPrice', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(491, NULL, 'Apto\\Plugins\\SelectBoxElement\\Application\\Backend\\Commands\\SelectBoxItem\\RemoveSelectBoxItems', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(492, NULL, 'Apto\\Plugins\\SelectBoxElement\\Application\\Backend\\Commands\\SelectBoxItem\\RemoveSelectBoxItem', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(493, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\FindProductIdsByFilter', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(494, NULL, 'Apto\\Plugins\\SelectBoxElement\\Application\\Core\\Query\\SelectBoxItem\\FindSelectBoxItem', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(495, NULL, 'Apto\\Plugins\\SelectBoxElement\\Application\\Core\\Query\\SelectBoxItem\\FindSelectBoxItems', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(496, NULL, 'Apto\\Plugins\\SelectBoxElement\\Application\\Core\\Query\\SelectBoxItem\\FindSelectBoxItemPrices', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(497, NULL, 'Apto\\Plugins\\PricePerUnitElement\\Application\\Core\\Query\\PricePerUnitItem\\FindPricePerUnitPrices', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(498, NULL, 'Apto\\Plugins\\FloatInputElement\\Application\\Backend\\Commands\\FloatInputItem\\AddFloatInputPrice', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(499, NULL, 'Apto\\Plugins\\FloatInputElement\\Application\\Backend\\Commands\\FloatInputItem\\RemoveFloatInputPrice', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(500, NULL, 'Apto\\Plugins\\FloatInputElement\\Application\\Core\\Query\\FloatInputItem\\FindFloatInputPrices', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(501, NULL, 'Apto\\Base\\Application\\Backend\\Commands\\MediaFile\\RenameMediaFileDirectory', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(502, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Backend\\Commands\\Pool\\CopyPool', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(503, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Backend\\Commands\\Material\\AddMaterialRenderImage', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(504, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Backend\\Commands\\Material\\RemoveMaterialRenderImage', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(505, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Core\\Query\\Material\\FindMaterialRenderImages', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(506, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Backend\\Commands\\Material\\AddMaterialPrice', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(507, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Backend\\Commands\\Material\\RemoveMaterialPrice', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(508, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Core\\Query\\Material\\FindMaterialPrices', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(509, NULL, 'Apto\\Catalog\\Application\\Backend\\Query\\Price\\FindPriceMatrixIdsByProductIds', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(510, NULL, 'Apto\\Catalog\\Application\\Backend\\Query\\Price\\FindPricesByPriceMatrixIds', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(511, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\FindNextAvailablePosition', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(512, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\CopyProductSection', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(513, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\CopyProductElement', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(514, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\ComputedProductValue\\AddAlias', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(515, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\ComputedProductValue\\RemoveAlias', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(516, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\ComputedProductValue\\AddComputedProductValue', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(517, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\ComputedProductValue\\RemoveComputedProductValue', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(518, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\ComputedProductValue\\UpdateComputedProductValue', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(519, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Filter\\AddFilterProperty', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(520, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Filter\\RemoveFilterProperty', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(521, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Filter\\UpdateFilterProperty', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(522, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Filter\\AddFilterCategory', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(523, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Filter\\RemoveFilterCategory', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(524, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Filter\\UpdateFilterCategory', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(525, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\FindProductComputedValuesCalculated', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(526, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\FindProductComputedValues', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(527, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Filter\\FindFilterProperties', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(528, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Filter\\FindFilterProperty', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(529, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Filter\\FindFilterCategories', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(530, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Filter\\FindFilterCategory', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(531, NULL, 'Apto\\Plugins\\FileUpload\\Application\\Core\\Commands\\FileUpload\\UploadFile', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(532, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Element\\AddProductElementAttachment', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(533, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Element\\RemoveProductElementAttachment', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(534, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\Element\\FindElementAttachments', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(535, NULL, 'Apto\\Base\\Application\\Backend\\Commands\\Cache\\ClearAptoCache', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(536, NULL, 'Apto\\Base\\Application\\Backend\\Commands\\FrontendUser\\AddFrontendUser', NULL, NULL, 16, 'ROLE_ADMIN'),
(537, NULL, 'Apto\\Base\\Application\\Backend\\Commands\\FrontendUser\\RemoveFrontendUser', NULL, NULL, 16, 'ROLE_ADMIN'),
(538, NULL, 'Apto\\Base\\Application\\Backend\\Commands\\FrontendUser\\UpdateFrontendUser', NULL, NULL, 16, 'ROLE_ADMIN'),
(539, NULL, 'Apto\\Base\\Application\\Backend\\Commands\\User\\AcceptLicence', NULL, NULL, 16, 'ROLE_USER'),
(540, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Element\\AddProductElementPriceFormula', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(541, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Element\\RemoveProductElementPriceFormula', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(542, NULL, 'Apto\\Catalog\\Application\\Frontend\\Commands\\Configuration\\AddBasketConfiguration', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(543, NULL, 'Apto\\Catalog\\Application\\Frontend\\Commands\\Configuration\\UpdateBasketConfiguration', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(544, NULL, 'Apto\\Catalog\\Application\\Frontend\\Commands\\Configuration\\AddCustomerConfiguration', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(545, NULL, 'Apto\\Catalog\\Application\\Frontend\\Commands\\Configuration\\ConvertBasketToOrderConfiguration', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(546, NULL, 'Apto\\Catalog\\Application\\Frontend\\Commands\\Configuration\\CopyOrderToBasketConfiguration', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(547, NULL, 'Apto\\Catalog\\Application\\Frontend\\Commands\\Configuration\\AddProposedConfiguration', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(548, NULL, 'Apto\\Catalog\\Application\\Frontend\\Commands\\Configuration\\AddGuestConfiguration', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(549, NULL, 'Apto\\Catalog\\Application\\Frontend\\Commands\\Configuration\\AddImmutableConfiguration', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(550, NULL, 'Apto\\Catalog\\Application\\Frontend\\Commands\\Configuration\\AddCodeConfiguration', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(551, NULL, 'Apto\\Catalog\\Application\\Frontend\\Commands\\Configuration\\AddConfigurationCustomProperty', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(552, NULL, 'Apto\\Plugins\\MaterialPickerElement\\Application\\Backend\\Commands\\Property\\SetGroupPropertyIsDefault', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(553, NULL, 'Apto\\Base\\Application\\Backend\\Query\\FrontendUser\\FindCurrentFrontendUser', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(554, NULL, 'Apto\\Base\\Application\\Backend\\Query\\FrontendUser\\FindFrontendUser', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(555, NULL, 'Apto\\Base\\Application\\Backend\\Query\\FrontendUser\\FindFrontendUserByEmail', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(556, NULL, 'Apto\\Base\\Application\\Backend\\Query\\FrontendUser\\FindFrontendUserByUsername', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(557, NULL, 'Apto\\Base\\Application\\Backend\\Query\\FrontendUser\\FindFrontendUsers', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(558, NULL, 'Apto\\Base\\Application\\Backend\\Query\\FrontendUser\\FindFrontendUsersByFrontendUserIds', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(559, NULL, 'Apto\\Base\\Application\\Backend\\Query\\UserLicence\\FindUserLicence', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(560, NULL, 'Apto\\Base\\Application\\Backend\\Query\\UserLicence\\FindCurrentUserLicence', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(562, NULL, 'Apto\\Base\\Application\\Core\\Query\\CustomerGroup\\FindCustomerGroupByName', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(564, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Configuration\\FindBasketConfigurationsByIdList', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(565, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Configuration\\FindCustomerConfigurations', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(566, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\Element\\FindElementPriceFormulas', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(567, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\Element\\FindRenderImagesByState', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(568, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\Element\\FindPerspectivesByState', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(569, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\FindProductIdByIdentifier', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(570, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\FindSectionIdByIdentifier', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(571, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\FindElementIdByIdentifier', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(572, NULL, 'Apto\\Catalog\\Application\\Frontend\\Query\\Configuration\\GetConfigurationState', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(573, NULL, 'Apto\\Catalog\\Application\\Frontend\\Query\\Product\\FindConfigurableProduct', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(574, NULL, 'Apto\\Catalog\\Application\\Frontend\\Query\\Product\\FindConfigurableProductByConfiguration', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(575, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Element\\AddProductElementGallery', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(576, NULL, 'Apto\\Catalog\\Application\\Backend\\Commands\\Product\\Element\\RemoveProductElementGallery', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(577, NULL, 'Apto\\Catalog\\Application\\Frontend\\Commands\\Configuration\\AddOfferConfiguration', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(578, NULL, 'Apto\\Plugins\\ImageUpload\\Application\\Backend\\Commands\\AddCanvas', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(579, NULL, 'Apto\\Plugins\\ImageUpload\\Application\\Backend\\Commands\\UpdateCanvas', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(580, NULL, 'Apto\\Plugins\\ImageUpload\\Application\\Backend\\Commands\\RemoveCanvas', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(581, NULL, 'Apto\\Catalog\\Application\\Core\\Query\\Product\\Element\\FindElementGallery', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(582, NULL, 'Apto\\Catalog\\Application\\Frontend\\Query\\Product\\FindProductConfiguration', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(583, NULL, 'Apto\\Plugins\\ImageUpload\\Application\\Core\\Query\\Canvas\\FindCanvas', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(584, NULL, 'Apto\\Plugins\\ImageUpload\\Application\\Core\\Query\\Canvas\\FindCanvasList', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(585, NULL, 'Apto\\Plugins\\ImageUpload\\Application\\Core\\Query\\Canvas\\FindCanvasIds', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(586, NULL, 'Apto\\Plugins\\ImageUpload\\Application\\Core\\Query\\ImageMetaData\\FindImageMetaData', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(587, NULL, 'Apto\\Plugins\\ImageUpload\\Application\\Core\\Query\\RenderImage\\FindEditableRenderImage', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(588, NULL, 'Apto\\Plugins\\PartsList\\Application\\Backend\\Commands\\Part\\AddPart', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(589, NULL, 'Apto\\Plugins\\PartsList\\Application\\Backend\\Commands\\Part\\UpdatePart', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(590, NULL, 'Apto\\Plugins\\PartsList\\Application\\Backend\\Commands\\Part\\RemoveRuleUsage', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(591, NULL, 'Apto\\Plugins\\PartsList\\Application\\Backend\\Commands\\Part\\UpdateElementUsage', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(592, NULL, 'Apto\\Plugins\\PartsList\\Application\\Backend\\Commands\\Part\\RemoveProductUsage', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(593, NULL, 'Apto\\Plugins\\PartsList\\Application\\Backend\\Commands\\Part\\AddSectionUsage', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(594, NULL, 'Apto\\Plugins\\PartsList\\Application\\Backend\\Commands\\Part\\UpdateProductUsageQuantity', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(595, NULL, 'Apto\\Plugins\\PartsList\\Application\\Backend\\Commands\\Part\\AddProductUsage', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(596, NULL, 'Apto\\Plugins\\PartsList\\Application\\Backend\\Commands\\Part\\RemovePart', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(597, NULL, 'Apto\\Plugins\\PartsList\\Application\\Backend\\Commands\\Part\\RemoveRuleUsageCondition', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(598, NULL, 'Apto\\Plugins\\PartsList\\Application\\Backend\\Commands\\Part\\UpdateRuleUsageCondition', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(599, NULL, 'Apto\\Plugins\\PartsList\\Application\\Backend\\Commands\\Part\\UpdateRuleUsage', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(600, NULL, 'Apto\\Plugins\\PartsList\\Application\\Backend\\Commands\\Part\\AddRuleUsage', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(601, NULL, 'Apto\\Plugins\\PartsList\\Application\\Backend\\Commands\\Part\\AddElementUsage', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(602, NULL, 'Apto\\Plugins\\PartsList\\Application\\Backend\\Commands\\Part\\UpdateSectionUsageQuantity', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(603, NULL, 'Apto\\Plugins\\PartsList\\Application\\Backend\\Commands\\Part\\AddRuleUsageCondition', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(604, NULL, 'Apto\\Plugins\\PartsList\\Application\\Backend\\Commands\\Part\\RemoveElementUsage', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(605, NULL, 'Apto\\Plugins\\PartsList\\Application\\Backend\\Commands\\Part\\RemoveSectionUsage', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(606, NULL, 'Apto\\Plugins\\PartsList\\Application\\Backend\\Commands\\Unit\\AddUnit', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(607, NULL, 'Apto\\Plugins\\PartsList\\Application\\Backend\\Commands\\Part\\UpdatePartPrice', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(608, NULL, 'Apto\\Plugins\\PartsList\\Application\\Backend\\Commands\\Part\\RemovePartPrice', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(609, NULL, 'Apto\\Plugins\\PartsList\\Application\\Backend\\Commands\\Part\\AddPartPrice', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(610, NULL, 'Apto\\Plugins\\PartsList\\Application\\Backend\\Commands\\Unit\\RemoveUnit', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(611, NULL, 'Apto\\Plugins\\PartsList\\Application\\Backend\\Commands\\Unit\\UpdateUnit', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(612, NULL, 'Apto\\Plugins\\PartsList\\Application\\Core\\Query\\Part\\FindRuleUsage', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(613, NULL, 'Apto\\Plugins\\PartsList\\Application\\Core\\Query\\Part\\FindPart', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(614, NULL, 'Apto\\Plugins\\PartsList\\Application\\Core\\Query\\Part\\FindPartsListCsv', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(615, NULL, 'Apto\\Plugins\\PartsList\\Application\\Core\\Query\\Part\\FindProducts', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(616, NULL, 'Apto\\Plugins\\PartsList\\Application\\Core\\Query\\Part\\FindProductsSectionsElements', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(617, NULL, 'Apto\\Plugins\\PartsList\\Application\\Core\\Query\\Part\\FindParts', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(618, NULL, 'Apto\\Plugins\\PartsList\\Application\\Core\\Query\\Part\\FindPartPrices', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(619, NULL, 'Apto\\Plugins\\PartsList\\Application\\Core\\Query\\Part\\FindElementUsage', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(620, NULL, 'Apto\\Plugins\\PartsList\\Application\\Core\\Query\\Part\\FindElements', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(621, NULL, 'Apto\\Plugins\\PartsList\\Application\\Core\\Query\\Part\\FindSections', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(622, NULL, 'Apto\\Plugins\\PartsList\\Application\\Core\\Query\\Part\\FindElementUsages', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(623, NULL, 'Apto\\Plugins\\PartsList\\Application\\Core\\Query\\Part\\FindSectionUsages', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(624, NULL, 'Apto\\Plugins\\PartsList\\Application\\Core\\Query\\Part\\FindProductUsages', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(625, NULL, 'Apto\\Plugins\\PartsList\\Application\\Core\\Query\\Part\\FindRuleUsages', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(626, NULL, 'Apto\\Plugins\\PartsList\\Application\\Core\\Query\\Unit\\FindUnit', NULL, NULL, 16, 'ROLE_WEBMASTER'),
(627, NULL, 'Apto\\Plugins\\PartsList\\Application\\Core\\Query\\Unit\\FindUnits', NULL, NULL, 16, 'ROLE_WEBMASTER');

-- --------------------------------------------------------

--
-- Table structure for table `apto_basket_configuration`
--

DROP TABLE IF EXISTS `apto_basket_configuration`;
CREATE TABLE `apto_basket_configuration` (
  `surrogate_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `state` longtext NOT NULL COMMENT '(DC2Type:AptoPropertyJsonSerializable)',
  `id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `apto_basket_configuration`
--

INSERT INTO `apto_basket_configuration` (`surrogate_id`, `product_id`, `created`, `state`, `id`) VALUES
(34, 48, '2018-01-18 13:22:39', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"2bd98648-53bb-4912-a3fb-50fd0e58e5a6\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"b5455cf8-a192-4a78-a38c-1cf7cb199baf\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"9b737128-77dc-4a02-9170-c4826f71a6b3\":true}}}}', '52b0cc70-9940-4bf9-84e8-f3cdc36d833c'),
(35, 48, '2018-01-22 09:29:24', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"7e6e415a-d0bb-4841-aa9d-a26a60c87a7a\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"9b737128-77dc-4a02-9170-c4826f71a6b3\":true}}}}', 'bbeeed99-406c-4ab6-8010-f1037cde1c80'),
(36, 48, '2018-01-26 16:25:39', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"5b12256f-1811-4286-a89b-79a03fe18ec4\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"7e6e415a-d0bb-4841-aa9d-a26a60c87a7a\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":300,\"height\":500}}}}}', '5ff8b4f9-1cdc-4fcc-b5dd-d419d55a8460'),
(37, 48, '2018-01-30 08:47:05', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"90578d96-ad0a-4550-88e1-3511bdcdfd7e\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"f1ed1172-45a9-4ec9-8d1c-8a560a3b9295\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":200,\"height\":135}}}}}', '14d802e3-cfdf-409b-95e9-b29da649994a'),
(38, 48, '2018-03-06 18:51:28', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":200,\"height\":190}}}}}', '68261b7d-7a49-4b18-a692-87dceffda853'),
(39, 48, '2018-03-07 08:45:22', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"5b12256f-1811-4286-a89b-79a03fe18ec4\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"23d41997-cffa-4ca0-929c-091eb6e421ed\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3618f577-6bb5-4212-b0f8-8f743e5ac984\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":200,\"height\":200}}}}}', 'a3f15535-9bf2-463f-84f0-cbcda8f65df8'),
(40, 48, '2018-03-07 08:45:27', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"5b12256f-1811-4286-a89b-79a03fe18ec4\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"23d41997-cffa-4ca0-929c-091eb6e421ed\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3618f577-6bb5-4212-b0f8-8f743e5ac984\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":200,\"height\":200}}}}}', '4ae18d9b-c35b-4690-b539-8fe1421bb57c'),
(41, 48, '2018-03-07 08:45:31', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"5b12256f-1811-4286-a89b-79a03fe18ec4\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"23d41997-cffa-4ca0-929c-091eb6e421ed\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3618f577-6bb5-4212-b0f8-8f743e5ac984\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":200,\"height\":200}}}}}', '90e3725e-4788-4b99-bf11-487588a6ef9d'),
(43, 48, '2018-03-09 06:39:39', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"a75b6da5-03e5-423b-a858-d56c6371e30d\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":20,\"height\":30}}}}}', '05cc1c73-cf81-4744-9b47-8f68812888cd'),
(44, 48, '2018-03-09 08:19:24', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"5b12256f-1811-4286-a89b-79a03fe18ec4\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"23d41997-cffa-4ca0-929c-091eb6e421ed\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":200,\"height\":200}}}}}', '29914bd1-b9f6-474f-827c-eb92016d4826'),
(45, 48, '2018-03-09 08:19:25', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"c1859247-d398-40d3-ac55-93526b10e8af\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":200,\"height\":200}}}}}', '9b410826-f93c-445b-9f6f-3308bcd2c57b'),
(46, 48, '2018-03-12 10:51:14', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"7036b73e-8276-464b-8e49-1d8e2698e1d7\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"6bf4d317-8b09-4a9c-a56f-765306055aa1\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"f1ed1172-45a9-4ec9-8d1c-8a560a3b9295\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":85,\"height\":92}}}}}', '66cdd374-5b3c-44df-a2bd-ad1e525e2f48'),
(47, 48, '2018-03-13 15:20:17', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"2bd98648-53bb-4912-a3fb-50fd0e58e5a6\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"f1ed1172-45a9-4ec9-8d1c-8a560a3b9295\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":104,\"height\":94}}}}}', '06209190-e298-4cc9-96f3-7de12cdeb729'),
(49, 48, '2018-03-14 08:38:11', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"2bd98648-53bb-4912-a3fb-50fd0e58e5a6\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":102,\"height\":102}}}}}', 'e443935b-1a5c-41e4-9737-2abbd55237f4'),
(50, 48, '2018-03-14 14:48:20', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"3c4c2d8b-e6e6-4d09-804b-98769d649a20\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3618f577-6bb5-4212-b0f8-8f743e5ac984\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":88,\"height\":126}}}}}', '6ae73fc9-a2b0-4f56-9c1d-701cf6ea5221'),
(51, 48, '2018-03-14 14:48:25', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"3c4c2d8b-e6e6-4d09-804b-98769d649a20\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3618f577-6bb5-4212-b0f8-8f743e5ac984\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":88,\"height\":126}}}}}', '192ea112-a712-4702-9462-afa473ea6d4d'),
(53, 48, '2018-03-15 14:11:28', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"4c519e22-79dd-4bb9-8807-8ae58d44130a\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":100,\"height\":120}}}}}', 'b5a71dc9-1fc4-4c72-b83f-226d85d912ac'),
(54, 48, '2018-03-19 13:28:53', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":100,\"height\":130}}}}}', '0b5b9092-000f-403d-9d97-f38c7e94ac05'),
(55, 48, '2018-03-19 19:52:56', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"26509fb6-4d00-4923-ba90-c7260e6afc40\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3618f577-6bb5-4212-b0f8-8f743e5ac984\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":100,\"height\":119}}}}}', 'd4ce3dd6-0435-4fcb-a94f-f5f1c79da077'),
(56, 48, '2018-03-19 19:53:58', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', '88c68984-e9b5-4378-9f83-e616367d4ca8'),
(57, 48, '2018-03-20 07:38:59', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"7e6e415a-d0bb-4841-aa9d-a26a60c87a7a\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":250,\"height\":250}}}}}', 'f57a31fc-9557-4f09-8285-b0b9371a20a2'),
(58, 48, '2018-03-20 07:39:22', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"7e6e415a-d0bb-4841-aa9d-a26a60c87a7a\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":250,\"height\":250}}}}}', 'fba81be8-2af8-470b-a553-a7e42b55c35b'),
(60, 48, '2018-03-22 06:58:32', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"c1859247-d398-40d3-ac55-93526b10e8af\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"7e6e415a-d0bb-4841-aa9d-a26a60c87a7a\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3618f577-6bb5-4212-b0f8-8f743e5ac984\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"1f9ddcc5-3422-4023-bff4-00a1000a0a95\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":200,\"height\":250}}}}}', 'c88112d9-bad2-4dac-a79a-cc2fd74f3c97'),
(61, 48, '2018-03-23 13:18:17', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"2bd98648-53bb-4912-a3fb-50fd0e58e5a6\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true}}}}', 'ba9d5456-7a4b-43c1-8380-75c96355f184'),
(63, 48, '2018-03-27 09:51:19', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"c9fb7e3a-edcf-4424-ba18-2e4cc8110196\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"6bf4d317-8b09-4a9c-a56f-765306055aa1\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3618f577-6bb5-4212-b0f8-8f743e5ac984\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"1f9ddcc5-3422-4023-bff4-00a1000a0a95\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":250,\"height\":280}}}}}', 'cc09a215-cb64-4569-9d38-1b3c98976148'),
(64, 48, '2018-03-27 10:11:50', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"5b12256f-1811-4286-a89b-79a03fe18ec4\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"7e6e415a-d0bb-4841-aa9d-a26a60c87a7a\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3618f577-6bb5-4212-b0f8-8f743e5ac984\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"1f9ddcc5-3422-4023-bff4-00a1000a0a95\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":100,\"height\":120}}}}}', 'e74506e9-1010-4c9c-a54c-7f2e65765f6b'),
(65, 48, '2018-03-27 10:24:30', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true}}}}', '6e83f4fe-00a6-4dd5-b926-39395c632dbd'),
(66, 48, '2018-03-27 11:35:22', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"2bd98648-53bb-4912-a3fb-50fd0e58e5a6\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":200,\"height\":100}}}}}', '37fbc32e-f7c4-4a22-b4ff-8f5ce3851efc'),
(67, 48, '2018-04-06 05:59:27', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"f1ed1172-45a9-4ec9-8d1c-8a560a3b9295\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":180,\"height\":120}}}}}', 'e84ab539-7ae7-4eca-958f-597be64a0854'),
(68, 48, '2018-04-06 07:21:46', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"26509fb6-4d00-4923-ba90-c7260e6afc40\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":250,\"height\":280}}}}}', '33d3f84f-6355-4acd-a677-dda15d874357'),
(69, 48, '2018-04-06 07:22:01', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"26509fb6-4d00-4923-ba90-c7260e6afc40\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":250,\"height\":280}}}}}', 'c28b1945-d844-4e48-ae6f-4a7d0bc3121b'),
(70, 48, '2018-04-06 18:49:31', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"26509fb6-4d00-4923-ba90-c7260e6afc40\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"56298c5c-eb0c-48a7-9f69-a61014ea3c91\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":250,\"height\":280}}}}}', '8dfedace-7d9e-4552-b1a4-7533bd058683'),
(72, 48, '2018-04-19 10:35:25', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"1f9ddcc5-3422-4023-bff4-00a1000a0a95\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":20,\"height\":30}}}}}', '0e77fd02-f691-40a1-b85e-efb0d96db982'),
(74, 48, '2018-04-26 15:11:50', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"5b12256f-1811-4286-a89b-79a03fe18ec4\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"2bd98648-53bb-4912-a3fb-50fd0e58e5a6\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":50,\"height\":50}}}}}', '0ab06210-381a-41ae-aa2f-1d905e57d049'),
(75, 48, '2018-04-27 17:19:57', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"5b12256f-1811-4286-a89b-79a03fe18ec4\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"2bd98648-53bb-4912-a3fb-50fd0e58e5a6\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3618f577-6bb5-4212-b0f8-8f743e5ac984\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"1f9ddcc5-3422-4023-bff4-00a1000a0a95\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":250,\"height\":280}}}}}', 'f5b30053-1d0e-4294-af0c-4f22140ddc0c'),
(76, 48, '2018-05-16 12:55:50', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"26509fb6-4d00-4923-ba90-c7260e6afc40\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"2bd98648-53bb-4912-a3fb-50fd0e58e5a6\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":30,\"height\":65}}}}}', 'd60878fa-35c1-4a08-a637-3fd8c31be004'),
(78, 48, '2018-05-30 10:20:00', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"2bd98648-53bb-4912-a3fb-50fd0e58e5a6\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":100,\"height\":180}}}}}', '7dd60aba-9083-454c-9b69-d70ee82ba928'),
(79, 48, '2018-06-04 11:14:09', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":250,\"height\":280}}}}}', '1e2384fa-bf3c-4602-95d9-d195d0b00259'),
(80, 48, '2018-06-14 06:22:05', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"c1859247-d398-40d3-ac55-93526b10e8af\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":200,\"height\":150}}}}}', '1dd06e51-9d9e-4a36-8a72-324379b80d71'),
(81, 48, '2018-06-14 06:22:15', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"c1859247-d398-40d3-ac55-93526b10e8af\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":200,\"height\":150}}}}}', 'd4cf7cb5-a18e-4a5d-b8b0-f9b18a21adf5'),
(82, 48, '2018-06-15 06:46:00', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"2bd98648-53bb-4912-a3fb-50fd0e58e5a6\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":56,\"height\":34}}}}}', '3a31eaeb-1f37-4ac1-b0d6-94c1cb33d217'),
(83, 48, '2018-06-20 10:28:12', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"2bd98648-53bb-4912-a3fb-50fd0e58e5a6\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":200,\"height\":120}}}}}', '82161462-b017-4130-b7f8-5c78e993f8d4'),
(85, 48, '2018-06-21 21:01:26', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"2bd98648-53bb-4912-a3fb-50fd0e58e5a6\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":20,\"height\":1}}}}}', '2c8fe2cd-7c2c-494a-8321-cdb72dd3dd77'),
(86, 48, '2018-06-21 21:01:49', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":20,\"height\":1}}}}}', '068e6867-f8bb-4771-aa70-d26d6edb1176'),
(88, 48, '2018-07-04 14:41:35', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"a75b6da5-03e5-423b-a858-d56c6371e30d\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":60,\"height\":100}}}}}', '1ce7b571-31ad-41e2-9938-03132796b8ba'),
(89, 48, '2018-07-04 14:43:09', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"a75b6da5-03e5-423b-a858-d56c6371e30d\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":60,\"height\":100}}}}}', '7c79a7f9-79d7-4328-ba56-f6331d1272a0'),
(90, 48, '2018-07-05 13:28:14', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"2bd98648-53bb-4912-a3fb-50fd0e58e5a6\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":200,\"height\":200}}}}}', 'b8970602-da6e-4846-aad8-700535fea7eb'),
(92, 48, '2018-07-10 13:29:32', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"90578d96-ad0a-4550-88e1-3511bdcdfd7e\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3618f577-6bb5-4212-b0f8-8f743e5ac984\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":25,\"height\":35}}}}}', '134c8b82-21de-4ca5-9f2b-67db7a6cdab3'),
(93, 48, '2018-07-10 13:40:31', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"b499ed96-bc90-4c00-9e12-4af083f295b2\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":20,\"height\":30}}}}}', '87d4a5f7-967f-41f2-a517-2e3b2ba906a4'),
(94, 48, '2018-07-18 16:42:52', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"2bd98648-53bb-4912-a3fb-50fd0e58e5a6\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":20,\"height\":50}}}}}', '779c7f17-e1b0-4103-8b82-8ad1efffc0de'),
(95, 48, '2018-07-23 19:43:19', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"7036b73e-8276-464b-8e49-1d8e2698e1d7\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":220,\"height\":120}}}}}', '911d14fb-2377-46f4-bea8-c7ea2ae33951'),
(96, 48, '2018-07-23 21:08:38', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"c1859247-d398-40d3-ac55-93526b10e8af\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":200,\"height\":200}}}}}', '174c7549-fff5-4beb-b98a-af8098c61a69'),
(98, 48, '2018-07-30 12:44:09', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"2bd98648-53bb-4912-a3fb-50fd0e58e5a6\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"1f9ddcc5-3422-4023-bff4-00a1000a0a95\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":100,\"height\":200}}}}}', 'c6897efe-910d-4f8c-b316-f909333ce953'),
(99, 48, '2018-08-07 19:57:20', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"7036b73e-8276-464b-8e49-1d8e2698e1d7\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"2bd98648-53bb-4912-a3fb-50fd0e58e5a6\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":200,\"height\":250}}}}}', 'c44717ce-d2c9-49d9-954f-3d0c6e82a79c'),
(103, 48, '2018-09-01 19:26:25', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"7e6e415a-d0bb-4841-aa9d-a26a60c87a7a\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"1f9ddcc5-3422-4023-bff4-00a1000a0a95\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":20,\"height\":30}}}}}', '13f7d36a-bf9a-4e9a-a173-2e6bee8b11de'),
(104, 48, '2018-09-05 08:35:30', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"a75b6da5-03e5-423b-a858-d56c6371e30d\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"b499ed96-bc90-4c00-9e12-4af083f295b2\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3618f577-6bb5-4212-b0f8-8f743e5ac984\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"1f9ddcc5-3422-4023-bff4-00a1000a0a95\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":21,\"height\":31}}}}}', 'b56c2835-258d-460d-8f61-193649682c67'),
(105, 48, '2018-09-05 09:25:30', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"f1ed1172-45a9-4ec9-8d1c-8a560a3b9295\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":100,\"height\":100}}}}}', 'c897d906-62c9-4f30-b1a3-33250bedf130'),
(106, 48, '2018-09-05 10:47:59', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"26509fb6-4d00-4923-ba90-c7260e6afc40\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3618f577-6bb5-4212-b0f8-8f743e5ac984\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true}}}}', '047e92f8-66b6-45f5-82d2-a3db89ead4f6'),
(107, 48, '2018-09-06 09:20:48', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"2bd98648-53bb-4912-a3fb-50fd0e58e5a6\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":100,\"height\":100}}}}}', 'cf1a642d-8b2a-4e7b-8957-a1a31731f934');
INSERT INTO `apto_basket_configuration` (`surrogate_id`, `product_id`, `created`, `state`, `id`) VALUES
(108, 48, '2018-09-06 09:21:05', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"2bd98648-53bb-4912-a3fb-50fd0e58e5a6\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":100,\"height\":100}}}}}', 'b55f70a3-16bf-4722-889a-3841c701d48c'),
(109, 48, '2018-09-10 08:58:43', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"3c4c2d8b-e6e6-4d09-804b-98769d649a20\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"4c519e22-79dd-4bb9-8807-8ae58d44130a\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":250,\"height\":100}}}}}', 'b7e385b6-4cf5-41e7-bc99-78fd6f6155ab'),
(110, 48, '2018-09-10 09:00:16', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"26509fb6-4d00-4923-ba90-c7260e6afc40\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":200,\"height\":200}}}}}', '07c6f6fc-a78c-4238-8628-bebe8a9d952c'),
(111, 48, '2018-09-10 09:00:50', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"26509fb6-4d00-4923-ba90-c7260e6afc40\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true}}}}', '5502476e-248a-4012-98bd-1259a0056adc'),
(112, 48, '2018-09-10 09:31:52', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"7e6e415a-d0bb-4841-aa9d-a26a60c87a7a\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"1f9ddcc5-3422-4023-bff4-00a1000a0a95\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":250,\"height\":280}}}}}', '48b4afa8-cc5a-4fb2-9ded-8d0ce9f5cd66'),
(113, 48, '2018-09-12 21:22:17', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"2bd98648-53bb-4912-a3fb-50fd0e58e5a6\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true}}}}', '561bbba5-23fe-41a7-8f61-2bbc3683ba60'),
(115, 48, '2018-09-26 07:07:40', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"7e6e415a-d0bb-4841-aa9d-a26a60c87a7a\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":240,\"height\":240}}}}}', '81d25680-584a-43bb-acf6-9c1f76b30f9e'),
(118, 48, '2018-10-04 12:30:01', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"26509fb6-4d00-4923-ba90-c7260e6afc40\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"56298c5c-eb0c-48a7-9f69-a61014ea3c91\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":250,\"height\":250}}}}}', '1d84f156-06f0-4d33-9e5c-cc70b0cc3abb'),
(119, 48, '2018-10-04 12:49:14', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"c9fb7e3a-edcf-4424-ba18-2e4cc8110196\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"2bd98648-53bb-4912-a3fb-50fd0e58e5a6\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":20,\"height\":279}}}}}', '11fbea91-f04b-4e20-af21-c5ef164eae66'),
(121, 48, '2018-10-05 07:19:45', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"7036b73e-8276-464b-8e49-1d8e2698e1d7\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"6bf4d317-8b09-4a9c-a56f-765306055aa1\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"1f9ddcc5-3422-4023-bff4-00a1000a0a95\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":20,\"height\":30}}}}}', '0ceb20b6-0ef2-488f-88a4-f2854619552e'),
(122, 48, '2018-10-08 14:19:09', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"5b12256f-1811-4286-a89b-79a03fe18ec4\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"2bd98648-53bb-4912-a3fb-50fd0e58e5a6\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":120,\"height\":120}}}}}', '1518db2d-0794-44b3-ad01-d83f70156241'),
(124, 48, '2018-10-10 12:04:01', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":100,\"height\":100}}}}}', 'c4635109-5f71-4eb2-b0c2-b7dd9d3ec6db'),
(125, 48, '2018-10-10 17:29:15', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"7e6e415a-d0bb-4841-aa9d-a26a60c87a7a\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":100,\"height\":100}}}}}', '648c8434-1e00-4d2c-9912-4acd4edfffc5'),
(129, 48, '2018-11-06 12:57:39', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":150,\"height\":140}}}}}', '0ea974fa-98dd-4a75-ad44-838065cdc71a'),
(130, 48, '2018-11-06 12:58:04', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":150,\"height\":140}}}}}', '24efb7f2-9fd5-4942-a1ed-4b5c66b05dc5'),
(132, 48, '2018-11-12 07:34:11', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"c1859247-d398-40d3-ac55-93526b10e8af\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"b499ed96-bc90-4c00-9e12-4af083f295b2\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3618f577-6bb5-4212-b0f8-8f743e5ac984\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":190,\"height\":150}}}}}', '073dbfca-d37f-4122-a0a9-cd4f8d7ed0c8'),
(134, 48, '2018-11-16 01:09:53', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"1f9ddcc5-3422-4023-bff4-00a1000a0a95\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":180,\"height\":140}}}}}', 'e671a45f-4ebf-449b-bb9f-c2d99c911919'),
(135, 48, '2018-11-21 13:44:16', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"2bd98648-53bb-4912-a3fb-50fd0e58e5a6\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":250,\"height\":280}}}}}', 'dcf7c429-a304-4dec-9d90-7a8829fe0cb5'),
(141, 48, '2018-12-11 10:08:30', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"2bd98648-53bb-4912-a3fb-50fd0e58e5a6\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"1f9ddcc5-3422-4023-bff4-00a1000a0a95\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":222,\"height\":255}}}}}', '24a25d08-fd9e-4584-8e5d-3526bc331b96'),
(142, 48, '2018-12-17 13:54:34', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"2bd98648-53bb-4912-a3fb-50fd0e58e5a6\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"14845fe8-2022-46a3-ac4e-649ccc8e982c\":true}}}}', 'c5cbe158-808e-42ad-aa7e-eb55166c4301'),
(143, 48, '2018-12-19 09:23:14', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"1f9ddcc5-3422-4023-bff4-00a1000a0a95\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":150,\"height\":280}}}}}', 'b590c05d-1bd6-47a5-89f5-9d7c551ef304'),
(144, 48, '2018-12-19 09:28:42', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"3c4c2d8b-e6e6-4d09-804b-98769d649a20\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"1f9ddcc5-3422-4023-bff4-00a1000a0a95\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":50,\"height\":280}}}}}', '676ffe95-2b0b-4e61-8885-3c15776f365a'),
(145, 48, '2018-12-19 09:40:15', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"3c4c2d8b-e6e6-4d09-804b-98769d649a20\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"1f9ddcc5-3422-4023-bff4-00a1000a0a95\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":50,\"height\":280}}}}}', '38ae2800-e6be-42b9-ac96-96d0db8b9300'),
(147, 48, '2018-12-19 09:44:13', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"5b12256f-1811-4286-a89b-79a03fe18ec4\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"7e6e415a-d0bb-4841-aa9d-a26a60c87a7a\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3618f577-6bb5-4212-b0f8-8f743e5ac984\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":30,\"height\":30}}}}}', 'c4143ed5-637a-45c2-84d1-16fc2f6608bd'),
(151, 48, '2018-12-19 14:39:53', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"c1859247-d398-40d3-ac55-93526b10e8af\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"b499ed96-bc90-4c00-9e12-4af083f295b2\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":200,\"height\":250}}}}}', '7f17909e-4014-4751-84dc-7bdd3bafca62'),
(154, 48, '2019-01-10 16:02:20', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"2bd98648-53bb-4912-a3fb-50fd0e58e5a6\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true}}}}', '90a4039f-810e-43f2-90f9-3fa997c97a7d'),
(155, 48, '2019-01-10 16:07:59', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":120,\"height\":280}}}}}', '34bbbcee-0f1f-45cd-ba42-8daf2f428839'),
(162, 48, '2019-01-28 12:30:39', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"c1859247-d398-40d3-ac55-93526b10e8af\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"23d41997-cffa-4ca0-929c-091eb6e421ed\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":80,\"height\":250}}}}}', '2fcfe229-6f2d-4d74-a47c-5babceb1bebd'),
(163, 48, '2019-01-29 12:28:44', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":125,\"height\":190}}}}}', '7b75c77d-a70d-486a-a947-e16acbe2bd44'),
(164, 48, '2019-01-29 12:33:25', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"f1ed1172-45a9-4ec9-8d1c-8a560a3b9295\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"1f9ddcc5-3422-4023-bff4-00a1000a0a95\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":50,\"height\":100}}}}}', '6e9e2451-6e11-4423-92be-481c29c4550e'),
(166, 48, '2019-02-06 13:30:25', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"2bd98648-53bb-4912-a3fb-50fd0e58e5a6\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":100,\"height\":100}}}}}', 'b4b82c2b-0a68-416b-bb98-6dfafef381ab'),
(167, 48, '2019-02-07 10:50:23', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"f1ed1172-45a9-4ec9-8d1c-8a560a3b9295\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"1f9ddcc5-3422-4023-bff4-00a1000a0a95\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":35,\"height\":32}}}}}', '2248b6e8-b76b-4fde-bf46-c98d609066b6'),
(168, 48, '2019-02-07 15:15:43', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"7036b73e-8276-464b-8e49-1d8e2698e1d7\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":115,\"height\":125}}}}}', '67355655-2d4c-4d33-9df6-e8c802106502'),
(169, 48, '2019-02-07 15:21:20', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"26509fb6-4d00-4923-ba90-c7260e6afc40\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"1f9ddcc5-3422-4023-bff4-00a1000a0a95\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":250,\"height\":280}}}}}', '9b7c1740-c189-42e2-8638-028e9418f959'),
(172, 48, '2019-02-20 22:26:41', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"c9fb7e3a-edcf-4424-ba18-2e4cc8110196\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"2bd98648-53bb-4912-a3fb-50fd0e58e5a6\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"f1ed1172-45a9-4ec9-8d1c-8a560a3b9295\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":200,\"height\":200}}}}}', '054c21f6-2190-4f01-898e-e1e83c4bb18a'),
(173, 48, '2019-02-26 16:36:28', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"14845fe8-2022-46a3-ac4e-649ccc8e982c\":true},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true}}}}', 'dfc0cfca-bd2d-4105-a75d-e0ce8d1fb9e1'),
(174, 48, '2019-03-01 06:24:46', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"14845fe8-2022-46a3-ac4e-649ccc8e982c\":true},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"c1859247-d398-40d3-ac55-93526b10e8af\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"2bd98648-53bb-4912-a3fb-50fd0e58e5a6\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true}}}}', 'da735661-2535-4edc-bd98-66a158468c71'),
(175, 48, '2019-03-01 14:44:36', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":850,\"height\":455}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true}}}}', '4dd7f41c-4577-41be-a805-320854e5ec0e'),
(176, 48, '2019-03-13 13:13:03', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":1200,\"height\":2400}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"c1859247-d398-40d3-ac55-93526b10e8af\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"1f9ddcc5-3422-4023-bff4-00a1000a0a95\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true}}}}', '12fb7048-6fc5-4e60-9736-45c5f53caef9'),
(177, 88, '2021-02-15 11:41:41', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"581d85d4-e9ea-4ca6-9a1f-0c9cecda0ad6\":{\"5a41d5c5-b35b-4aa0-8b9b-ac6ae94bcd49\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"a12d9d26-4d57-4bf0-89dd-1d75cf66b8de\":{\"ee81ab8f-2433-490a-99a1-80d7399db85d\":true},\"e6e01110-f542-4529-b328-f24f8f91c089\":{\"7d4cbc8d-3f40-42b6-99cc-1c42b9aedba4\":true},\"9cfd8b92-151b-4467-8b3c-9435047bedb6\":{\"7e33dd6a-0cbc-43cb-ac06-0621df6a65d8\":true},\"c44df701-3fc1-4df3-816b-67ccc8ca6374\":{\"3d466845-276f-4f1c-8908-f1d63aa887b4\":true},\"369f053b-2fe6-4c66-910d-22d11cc18308\":{\"b72ffafc-a3cc-400f-84c4-873a326612c6\":true}}}}', '75af6744-52b3-466f-bc56-3533602d29f4'),
(178, 88, '2021-02-15 11:42:30', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"581d85d4-e9ea-4ca6-9a1f-0c9cecda0ad6\":{\"5a41d5c5-b35b-4aa0-8b9b-ac6ae94bcd49\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"a12d9d26-4d57-4bf0-89dd-1d75cf66b8de\":{\"3b6e2c57-0430-4b1f-9775-98d0b562a4da\":true},\"e6e01110-f542-4529-b328-f24f8f91c089\":{\"8803abe9-c4ce-49aa-80fb-5af8e1561f49\":true},\"9cfd8b92-151b-4467-8b3c-9435047bedb6\":{\"7e33dd6a-0cbc-43cb-ac06-0621df6a65d8\":true},\"c44df701-3fc1-4df3-816b-67ccc8ca6374\":{\"3d466845-276f-4f1c-8908-f1d63aa887b4\":true},\"369f053b-2fe6-4c66-910d-22d11cc18308\":{\"b72ffafc-a3cc-400f-84c4-873a326612c6\":true},\"3c84feb5-1234-4b96-8beb-3f4cab56cfba\":{\"45544b71-7daf-48df-bd70-17876123cd7a\":true}}}}', '36af677a-e114-4175-832f-f53ba3c3909e'),
(179, 88, '2021-02-15 11:42:32', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"581d85d4-e9ea-4ca6-9a1f-0c9cecda0ad6\":{\"5a41d5c5-b35b-4aa0-8b9b-ac6ae94bcd49\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"a12d9d26-4d57-4bf0-89dd-1d75cf66b8de\":{\"3b6e2c57-0430-4b1f-9775-98d0b562a4da\":true},\"e6e01110-f542-4529-b328-f24f8f91c089\":{\"8803abe9-c4ce-49aa-80fb-5af8e1561f49\":true},\"9cfd8b92-151b-4467-8b3c-9435047bedb6\":{\"7e33dd6a-0cbc-43cb-ac06-0621df6a65d8\":true},\"c44df701-3fc1-4df3-816b-67ccc8ca6374\":{\"3d466845-276f-4f1c-8908-f1d63aa887b4\":true},\"369f053b-2fe6-4c66-910d-22d11cc18308\":{\"b72ffafc-a3cc-400f-84c4-873a326612c6\":true},\"3c84feb5-1234-4b96-8beb-3f4cab56cfba\":{\"45544b71-7daf-48df-bd70-17876123cd7a\":true}}}}', 'd1a74bc7-ebb7-4416-9326-a1c06f39135e'),
(180, 48, '2021-02-24 09:39:28', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"25fdb6a0-36e8-4637-8d6d-1f96cae6bed7\":{\"active\":true,\"text\":null}},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"927efae3-903d-4512-be1e-09fcb04d88d4\",\"materialName\":\"Stoff 1\",\"priceGroup\":\"Preisgruppe 1\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"12c0bc51-4eed-4efa-8940-89fe1972a141\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in  Fensterfarbe\"}}]}}}}}', 'b0aa4edb-62c3-49de-ac6c-ecb4d1e7d1bd');

-- --------------------------------------------------------

--
-- Table structure for table `apto_category`
--

DROP TABLE IF EXISTS `apto_category`;
CREATE TABLE `apto_category` (
  `surrogate_id` int(11) NOT NULL,
  `name` longtext DEFAULT NULL COMMENT '(DC2Type:AptoPropertyTranslatedValue)',
  `description` longtext DEFAULT NULL COMMENT '(DC2Type:AptoPropertyTranslatedValue)',
  `created` datetime NOT NULL,
  `id` char(36) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `preview_image_id` int(11) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_category_to_custom_property`
--

DROP TABLE IF EXISTS `apto_category_to_custom_property`;
CREATE TABLE `apto_category_to_custom_property` (
  `category_id` int(11) NOT NULL,
  `custom_property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_code_configuration`
--

DROP TABLE IF EXISTS `apto_code_configuration`;
CREATE TABLE `apto_code_configuration` (
  `surrogate_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `state` longtext NOT NULL COMMENT '(DC2Type:AptoPropertyJsonSerializable)',
  `id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `apto_code_configuration`
--

INSERT INTO `apto_code_configuration` (`surrogate_id`, `product_id`, `code`, `created`, `state`, `id`) VALUES
(1, 48, 'z4yqm', '2021-02-22 12:55:07', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', '88962fed-b484-40c3-a35f-7fbca5b08d3b'),
(2, 48, 't351b', '2021-02-22 13:29:49', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', 'b9eef281-60c6-4c59-8946-054452679dec'),
(3, 48, '28kq3', '2021-02-22 13:31:12', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', 'b9070f2d-8328-4967-af7a-d751195c3a70'),
(4, 48, '013lm', '2021-02-22 13:33:50', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', '31abc0a4-6493-4823-b2fb-81675977c3c6'),
(5, 48, 'ro998', '2021-02-22 16:53:25', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"25fdb6a0-36e8-4637-8d6d-1f96cae6bed7\":{\"active\":true,\"text\":null}},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"0ae6de59-3913-4b05-9104-5f09e4126af3\",\"materialName\":\"Stoff 7\",\"priceGroup\":\"Preisgruppe 2\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"24cadf22-b8b6-441a-bcce-f7b466c27e21\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in Rollofarbe\"}}]},\"071a3a92-cc69-43a1-a51b-52158badd21f\":{\"value\":15},\"05f6f3c1-e59d-458c-9687-59490e04f5e8\":{\"aptoElementDefinitionId\":\"apto-element-custom-text\",\"text\":\"keine\"}}}}}', 'd3401b8d-b26a-43d1-a6ee-5580e369f5d3'),
(6, 48, 'zj3f4', '2021-02-22 16:55:31', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"25fdb6a0-36e8-4637-8d6d-1f96cae6bed7\":{\"active\":true,\"text\":null}},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"0ae6de59-3913-4b05-9104-5f09e4126af3\",\"materialName\":\"Stoff 7\",\"priceGroup\":\"Preisgruppe 2\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"24cadf22-b8b6-441a-bcce-f7b466c27e21\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in Rollofarbe\"}}]},\"071a3a92-cc69-43a1-a51b-52158badd21f\":{\"value\":15},\"05f6f3c1-e59d-458c-9687-59490e04f5e8\":{\"aptoElementDefinitionId\":\"apto-element-custom-text\",\"text\":\"keine\"}}}}}', 'fc085084-4aa8-4996-a8a8-d6cff1940220'),
(7, 48, '69hw8', '2021-02-22 19:56:58', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"25fdb6a0-36e8-4637-8d6d-1f96cae6bed7\":{\"active\":true,\"text\":null}},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"0ae6de59-3913-4b05-9104-5f09e4126af3\",\"materialName\":\"Stoff 7\",\"priceGroup\":\"Preisgruppe 2\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"24cadf22-b8b6-441a-bcce-f7b466c27e21\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in Rollofarbe\"}}]},\"071a3a92-cc69-43a1-a51b-52158badd21f\":{\"value\":15},\"05f6f3c1-e59d-458c-9687-59490e04f5e8\":{\"aptoElementDefinitionId\":\"apto-element-custom-text\",\"text\":\"keine\"}}}}}', '0852f776-b98d-4037-90fe-f4029c1e1a67'),
(8, 48, 'zr47q', '2021-02-22 19:57:03', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"25fdb6a0-36e8-4637-8d6d-1f96cae6bed7\":{\"active\":true,\"text\":null}},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"0ae6de59-3913-4b05-9104-5f09e4126af3\",\"materialName\":\"Stoff 7\",\"priceGroup\":\"Preisgruppe 2\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"24cadf22-b8b6-441a-bcce-f7b466c27e21\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in Rollofarbe\"}}]},\"071a3a92-cc69-43a1-a51b-52158badd21f\":{\"value\":15},\"05f6f3c1-e59d-458c-9687-59490e04f5e8\":{\"aptoElementDefinitionId\":\"apto-element-custom-text\",\"text\":\"keine\"}}}}}', '8e5dacd8-66be-4193-8434-2dea985bb1e0'),
(9, 48, 'q609t', '2021-02-23 06:12:57', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}}}}}', 'a45418b2-920b-4fc5-ad43-5d428266212b'),
(10, 48, 'u4bt1', '2021-02-23 06:13:03', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', 'f410bc33-d48b-4a98-a587-76b77e0eeeb4'),
(11, 48, '56ju9', '2021-02-23 06:55:41', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', 'cea82f11-42d5-4706-88d5-8a3a90b430be'),
(12, 48, '4mb08', '2021-02-23 07:01:14', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', 'df60da8b-a3b5-401e-963c-a840cd6bca9f'),
(13, 48, '0u0a9', '2021-02-23 07:01:29', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', '40e0a57c-9edd-4933-afd4-08b10bce2e51'),
(14, 48, '75gbs', '2021-02-23 07:07:27', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', 'dfb8048c-55f6-40c8-bd71-4054bda80d26'),
(15, 48, 'v4344', '2021-02-23 07:08:20', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', '007b74f7-692b-4c1e-98b0-5d8283b27580'),
(16, 48, '68x54', '2021-02-23 07:12:57', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', 'ee5d82ac-e0b1-4eae-8928-96db34c560cf'),
(17, 48, 'vnytq', '2021-02-23 07:15:54', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', '8b633678-96cc-46d7-8a73-028c4c9e31a1'),
(18, 48, 'm7578', '2021-02-23 07:17:27', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', '60272251-8ab0-4b70-be26-3e27479ec7b8'),
(19, 48, 'c3y76', '2021-02-23 07:24:27', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', '8aa5e3fb-83a5-4029-9fa4-db95161ec162'),
(20, 48, 'ocf4v', '2021-02-23 07:26:55', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', '4b375c1f-5156-4af2-8520-65d91dfcb4f6'),
(21, 48, '83req', '2021-02-23 12:35:00', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"d0eb303f-5cfc-4a68-8518-771915dc21ac\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"0ae6de59-3913-4b05-9104-5f09e4126af3\",\"materialName\":\"Stoff 7\",\"priceGroup\":\"Preisgruppe 2\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"24cadf22-b8b6-441a-bcce-f7b466c27e21\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in Rollofarbe\"}}]}}}}}', '5c1b1467-a1f1-4260-921e-0e85dc98d8e5'),
(22, 48, 'v1du8', '2021-02-23 13:18:50', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"d0eb303f-5cfc-4a68-8518-771915dc21ac\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"0ae6de59-3913-4b05-9104-5f09e4126af3\",\"materialName\":\"Stoff 7\",\"priceGroup\":\"Preisgruppe 2\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"24cadf22-b8b6-441a-bcce-f7b466c27e21\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in Rollofarbe\"}}]}}}}}', '7f1de84c-d894-4b9c-bd0a-764793af3420'),
(23, 48, '42cq8', '2021-02-23 15:25:25', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"d0eb303f-5cfc-4a68-8518-771915dc21ac\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"0ae6de59-3913-4b05-9104-5f09e4126af3\",\"materialName\":\"Stoff 7\",\"priceGroup\":\"Preisgruppe 2\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"24cadf22-b8b6-441a-bcce-f7b466c27e21\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in Rollofarbe\"}}]}}}}}', '808a6ad1-cc14-466a-aa44-58eb5f41f3f4'),
(24, 48, 'g203f', '2021-02-23 16:22:34', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"d0eb303f-5cfc-4a68-8518-771915dc21ac\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"0ae6de59-3913-4b05-9104-5f09e4126af3\",\"materialName\":\"Stoff 7\",\"priceGroup\":\"Preisgruppe 2\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"24cadf22-b8b6-441a-bcce-f7b466c27e21\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in Rollofarbe\"}}]}}}}}', '83c5d449-3678-48c7-8302-654f509d5060'),
(25, 48, '547wx', '2021-02-23 16:23:28', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"d0eb303f-5cfc-4a68-8518-771915dc21ac\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"0ae6de59-3913-4b05-9104-5f09e4126af3\",\"materialName\":\"Stoff 7\",\"priceGroup\":\"Preisgruppe 2\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"24cadf22-b8b6-441a-bcce-f7b466c27e21\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in Rollofarbe\"}}]}}}}}', '448b8045-61fa-4834-8c19-322cf0eac7a7'),
(26, 48, 'ho2yt', '2021-02-23 16:53:24', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"d0eb303f-5cfc-4a68-8518-771915dc21ac\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"0ae6de59-3913-4b05-9104-5f09e4126af3\",\"materialName\":\"Stoff 7\",\"priceGroup\":\"Preisgruppe 2\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"24cadf22-b8b6-441a-bcce-f7b466c27e21\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in Rollofarbe\"}}]}}}}}', 'c471b01e-0019-4c7a-9191-f33dcfaee135'),
(27, 48, '57159', '2021-02-23 16:53:54', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"d0eb303f-5cfc-4a68-8518-771915dc21ac\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"0ae6de59-3913-4b05-9104-5f09e4126af3\",\"materialName\":\"Stoff 7\",\"priceGroup\":\"Preisgruppe 2\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true}}}}', 'e145a096-51c9-498f-b9c8-a4acc6f03f73'),
(28, 48, '882t9', '2021-02-23 17:03:01', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"d0eb303f-5cfc-4a68-8518-771915dc21ac\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"0ae6de59-3913-4b05-9104-5f09e4126af3\",\"materialName\":\"Stoff 7\",\"priceGroup\":\"Preisgruppe 2\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"24cadf22-b8b6-441a-bcce-f7b466c27e21\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in Rollofarbe\"}}]}}}}}', 'a85ff9f7-3027-4d55-8c3c-192019f4e526'),
(29, 48, '6y21l', '2021-02-23 17:03:28', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"d0eb303f-5cfc-4a68-8518-771915dc21ac\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"0ae6de59-3913-4b05-9104-5f09e4126af3\",\"materialName\":\"Stoff 7\",\"priceGroup\":\"Preisgruppe 2\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"24cadf22-b8b6-441a-bcce-f7b466c27e21\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in Rollofarbe\"}}]}}}}}', '9e0d5a62-a8ab-49f4-9f90-4eaeae17d464'),
(30, 48, 'uy91p', '2021-02-23 17:06:07', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"d0eb303f-5cfc-4a68-8518-771915dc21ac\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"0ae6de59-3913-4b05-9104-5f09e4126af3\",\"materialName\":\"Stoff 7\",\"priceGroup\":\"Preisgruppe 2\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"24cadf22-b8b6-441a-bcce-f7b466c27e21\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in Rollofarbe\"}}]}}}}}', '4618940c-34ee-42c0-942b-861606f989ee'),
(31, 48, '19d79', '2021-02-23 17:07:02', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"d0eb303f-5cfc-4a68-8518-771915dc21ac\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"0ae6de59-3913-4b05-9104-5f09e4126af3\",\"materialName\":\"Stoff 7\",\"priceGroup\":\"Preisgruppe 2\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"24cadf22-b8b6-441a-bcce-f7b466c27e21\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in Rollofarbe\"}}]}}}}}', 'd5e59ea2-9c24-4857-ac14-ef38a50fc697'),
(32, 48, '11d3z', '2021-02-23 17:08:35', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"d0eb303f-5cfc-4a68-8518-771915dc21ac\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"0ae6de59-3913-4b05-9104-5f09e4126af3\",\"materialName\":\"Stoff 7\",\"priceGroup\":\"Preisgruppe 2\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"24cadf22-b8b6-441a-bcce-f7b466c27e21\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in Rollofarbe\"}}]}}}}}', 'a831a850-5e90-47a1-88b8-de3512955ed5'),
(33, 48, '39gef', '2021-02-23 17:13:07', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"d0eb303f-5cfc-4a68-8518-771915dc21ac\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"0ae6de59-3913-4b05-9104-5f09e4126af3\",\"materialName\":\"Stoff 7\",\"priceGroup\":\"Preisgruppe 2\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"24cadf22-b8b6-441a-bcce-f7b466c27e21\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in Rollofarbe\"}}]}}}}}', '56a254f2-18d7-46cf-bbf0-06c5a1d739a7'),
(34, 48, '53e7l', '2021-02-23 17:13:54', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"d0eb303f-5cfc-4a68-8518-771915dc21ac\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"0ae6de59-3913-4b05-9104-5f09e4126af3\",\"materialName\":\"Stoff 7\",\"priceGroup\":\"Preisgruppe 2\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true}}}}', '14caca0f-42af-4230-9d53-2d8a8aa7b85d'),
(35, 88, '5aes6', '2021-02-23 17:20:04', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"a12d9d26-4d57-4bf0-89dd-1d75cf66b8de\":{\"ee81ab8f-2433-490a-99a1-80d7399db85d\":true},\"e6e01110-f542-4529-b328-f24f8f91c089\":{\"7d4cbc8d-3f40-42b6-99cc-1c42b9aedba4\":true},\"9cfd8b92-151b-4467-8b3c-9435047bedb6\":{\"7e33dd6a-0cbc-43cb-ac06-0621df6a65d8\":true},\"c44df701-3fc1-4df3-816b-67ccc8ca6374\":{\"3d466845-276f-4f1c-8908-f1d63aa887b4\":true},\"369f053b-2fe6-4c66-910d-22d11cc18308\":{\"b72ffafc-a3cc-400f-84c4-873a326612c6\":true}}}}', 'e44cc2d7-2754-40de-8a9e-b3e87c926dc5'),
(36, 88, '8z43l', '2021-02-23 17:21:48', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"a12d9d26-4d57-4bf0-89dd-1d75cf66b8de\":{\"ee81ab8f-2433-490a-99a1-80d7399db85d\":true},\"e6e01110-f542-4529-b328-f24f8f91c089\":{\"7d4cbc8d-3f40-42b6-99cc-1c42b9aedba4\":true},\"9cfd8b92-151b-4467-8b3c-9435047bedb6\":{\"7e33dd6a-0cbc-43cb-ac06-0621df6a65d8\":true},\"c44df701-3fc1-4df3-816b-67ccc8ca6374\":{\"3d466845-276f-4f1c-8908-f1d63aa887b4\":true},\"369f053b-2fe6-4c66-910d-22d11cc18308\":{\"b72ffafc-a3cc-400f-84c4-873a326612c6\":true}}}}', '7845f36f-a1d1-4843-a0e2-2fe499d28226'),
(37, 48, 'i58l7', '2021-02-23 17:23:02', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', '49d7495b-fbfb-4eb1-a51d-c7f390472888'),
(38, 48, '7i7i2', '2021-02-23 17:23:35', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', 'c83dabac-7c1c-4866-9d47-3e0fb22e2780'),
(39, 48, 'spztq', '2021-02-23 17:24:15', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', '210c6da4-d310-4b42-89ec-2f20bba5d9e7'),
(40, 48, '4fm9k', '2021-02-23 20:47:29', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', 'e45ec268-1c8b-4409-875e-92a2fe191709'),
(41, 48, 'bv847', '2021-02-23 20:50:21', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', '2e4b30ec-df80-446e-8253-1521d4c42d23'),
(42, 48, 'r00b8', '2021-02-23 20:52:16', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', 'ea1e49ec-2031-45e1-89fc-675360f98ba5'),
(43, 48, '453au', '2021-02-23 20:52:49', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', 'b93d4c4d-98b6-4f1b-9bd7-e93061c29685'),
(44, 48, 'v541g', '2021-02-23 22:28:39', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', '54561ace-358c-4d56-bb9c-564650e56eab'),
(45, 48, '0cn1z', '2021-02-24 10:02:30', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"25fdb6a0-36e8-4637-8d6d-1f96cae6bed7\":{\"active\":true,\"text\":null}},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"927efae3-903d-4512-be1e-09fcb04d88d4\",\"materialName\":\"Stoff 1\",\"priceGroup\":\"Preisgruppe 1\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"12c0bc51-4eed-4efa-8940-89fe1972a141\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in  Fensterfarbe\"}}]}}}}}', 'da2f4dde-e72f-4252-a1ec-765bf069119d'),
(46, 48, '22tzx', '2021-02-24 10:12:33', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"25fdb6a0-36e8-4637-8d6d-1f96cae6bed7\":{\"active\":true,\"text\":null}},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"927efae3-903d-4512-be1e-09fcb04d88d4\",\"materialName\":\"Stoff 1\",\"priceGroup\":\"Preisgruppe 1\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"12c0bc51-4eed-4efa-8940-89fe1972a141\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in  Fensterfarbe\"}}]}}}}}', 'efd224b0-7e6c-43cb-816f-103cc02ea45b'),
(47, 48, 'p80n8', '2021-02-24 10:13:19', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"25fdb6a0-36e8-4637-8d6d-1f96cae6bed7\":{\"active\":true,\"text\":null}},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"927efae3-903d-4512-be1e-09fcb04d88d4\",\"materialName\":\"Stoff 1\",\"priceGroup\":\"Preisgruppe 1\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"12c0bc51-4eed-4efa-8940-89fe1972a141\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in  Fensterfarbe\"}}]}}}}}', '9bed3faf-b967-4076-b56a-fa55eda48060'),
(48, 48, 'n3652', '2021-02-24 10:13:57', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"25fdb6a0-36e8-4637-8d6d-1f96cae6bed7\":{\"active\":true,\"text\":null}},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"927efae3-903d-4512-be1e-09fcb04d88d4\",\"materialName\":\"Stoff 1\",\"priceGroup\":\"Preisgruppe 1\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"12c0bc51-4eed-4efa-8940-89fe1972a141\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in  Fensterfarbe\"}}]}}}}}', '1226e624-0a26-4eeb-93bb-01b8c82a1da3'),
(49, 48, '09w17', '2021-02-24 10:22:17', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"25fdb6a0-36e8-4637-8d6d-1f96cae6bed7\":{\"active\":true,\"text\":null}},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"927efae3-903d-4512-be1e-09fcb04d88d4\",\"materialName\":\"Stoff 1\",\"priceGroup\":\"Preisgruppe 1\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"12c0bc51-4eed-4efa-8940-89fe1972a141\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in  Fensterfarbe\"}}]}}}}}', 'e1f5c351-9e9b-4592-9140-1a2254e2564b');
INSERT INTO `apto_code_configuration` (`surrogate_id`, `product_id`, `code`, `created`, `state`, `id`) VALUES
(50, 48, '9t6bq', '2021-02-24 12:45:34', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"25fdb6a0-36e8-4637-8d6d-1f96cae6bed7\":{\"active\":true,\"text\":null}},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"927efae3-903d-4512-be1e-09fcb04d88d4\",\"materialName\":\"Stoff 1\",\"priceGroup\":\"Preisgruppe 1\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"12c0bc51-4eed-4efa-8940-89fe1972a141\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in  Fensterfarbe\"}}]},\"071a3a92-cc69-43a1-a51b-52158badd21f\":{\"value\":14},\"05f6f3c1-e59d-458c-9687-59490e04f5e8\":{\"aptoElementDefinitionId\":\"apto-element-custom-text\",\"text\":\"Keine W\\u00fcnsche!\\nBin wunschlos gl\\u00fccklich : )\"}}}}}', 'ffba1c5e-d993-47e2-a163-03eb13a4476f'),
(51, 48, 'ymj4d', '2021-02-24 12:45:37', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"25fdb6a0-36e8-4637-8d6d-1f96cae6bed7\":{\"active\":true,\"text\":null}},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"927efae3-903d-4512-be1e-09fcb04d88d4\",\"materialName\":\"Stoff 1\",\"priceGroup\":\"Preisgruppe 1\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"12c0bc51-4eed-4efa-8940-89fe1972a141\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in  Fensterfarbe\"}}]},\"071a3a92-cc69-43a1-a51b-52158badd21f\":{\"value\":14},\"05f6f3c1-e59d-458c-9687-59490e04f5e8\":{\"aptoElementDefinitionId\":\"apto-element-custom-text\",\"text\":\"Keine W\\u00fcnsche!\\nBin wunschlos gl\\u00fccklich : )\"}}}}}', '88f1efce-17d6-4b2e-acd4-800b017915dc'),
(52, 48, 's2q65', '2021-02-24 12:46:09', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"25fdb6a0-36e8-4637-8d6d-1f96cae6bed7\":{\"active\":true,\"text\":null}},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"927efae3-903d-4512-be1e-09fcb04d88d4\",\"materialName\":\"Stoff 1\",\"priceGroup\":\"Preisgruppe 1\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"12c0bc51-4eed-4efa-8940-89fe1972a141\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in  Fensterfarbe\"}}]},\"071a3a92-cc69-43a1-a51b-52158badd21f\":{\"value\":14},\"05f6f3c1-e59d-458c-9687-59490e04f5e8\":{\"aptoElementDefinitionId\":\"apto-element-custom-text\",\"text\":\"Keine W\\u00fcnsche!\\nBin wunschlos gl\\u00fccklich : )\"}}}}}', 'd57b0433-52b9-49e2-a228-78eb6adc72a0'),
(53, 48, 'aynq9', '2021-02-24 12:46:12', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"25fdb6a0-36e8-4637-8d6d-1f96cae6bed7\":{\"active\":true,\"text\":null}},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"927efae3-903d-4512-be1e-09fcb04d88d4\",\"materialName\":\"Stoff 1\",\"priceGroup\":\"Preisgruppe 1\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"12c0bc51-4eed-4efa-8940-89fe1972a141\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in  Fensterfarbe\"}}]},\"071a3a92-cc69-43a1-a51b-52158badd21f\":{\"value\":14},\"05f6f3c1-e59d-458c-9687-59490e04f5e8\":{\"aptoElementDefinitionId\":\"apto-element-custom-text\",\"text\":\"Keine W\\u00fcnsche!\\nBin wunschlos gl\\u00fccklich : )\"}}}}}', '317fa76a-4c67-4920-8f3a-786be9dbb17c'),
(54, 48, 'pe12v', '2021-02-24 12:46:15', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"25fdb6a0-36e8-4637-8d6d-1f96cae6bed7\":{\"active\":true,\"text\":null}},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"927efae3-903d-4512-be1e-09fcb04d88d4\",\"materialName\":\"Stoff 1\",\"priceGroup\":\"Preisgruppe 1\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"12c0bc51-4eed-4efa-8940-89fe1972a141\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in  Fensterfarbe\"}}]},\"071a3a92-cc69-43a1-a51b-52158badd21f\":{\"value\":14},\"05f6f3c1-e59d-458c-9687-59490e04f5e8\":{\"aptoElementDefinitionId\":\"apto-element-custom-text\",\"text\":\"Keine W\\u00fcnsche!\\nBin wunschlos gl\\u00fccklich : )\"}}}}}', '6bb20bf6-d796-4fc7-9212-dbddf4fbeb33'),
(55, 48, '5673a', '2021-02-24 12:50:33', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"25fdb6a0-36e8-4637-8d6d-1f96cae6bed7\":{\"active\":true,\"text\":null}},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"927efae3-903d-4512-be1e-09fcb04d88d4\",\"materialName\":\"Stoff 1\",\"priceGroup\":\"Preisgruppe 1\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"12c0bc51-4eed-4efa-8940-89fe1972a141\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in  Fensterfarbe\"}}]},\"071a3a92-cc69-43a1-a51b-52158badd21f\":{\"value\":14},\"05f6f3c1-e59d-458c-9687-59490e04f5e8\":{\"aptoElementDefinitionId\":\"apto-element-custom-text\",\"text\":\"Keine W\\u00fcnsche!\\nBin wunschlos gl\\u00fccklich : )\"}}}}}', 'fe4cbe91-01cd-49d5-b622-84d9fa025a87'),
(56, 48, '67i3m', '2021-02-24 12:56:46', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"25fdb6a0-36e8-4637-8d6d-1f96cae6bed7\":{\"active\":true,\"text\":null}},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"927efae3-903d-4512-be1e-09fcb04d88d4\",\"materialName\":\"Stoff 1\",\"priceGroup\":\"Preisgruppe 1\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"12c0bc51-4eed-4efa-8940-89fe1972a141\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in  Fensterfarbe\"}}]},\"071a3a92-cc69-43a1-a51b-52158badd21f\":{\"value\":14},\"05f6f3c1-e59d-458c-9687-59490e04f5e8\":{\"aptoElementDefinitionId\":\"apto-element-custom-text\",\"text\":\"Keine W\\u00fcnsche!\\nBin wunschlos gl\\u00fccklich : )\"}}}}}', '7bc1ca38-6edd-4848-a935-24718006e422'),
(57, 48, 'a150d', '2021-02-24 13:04:21', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"25fdb6a0-36e8-4637-8d6d-1f96cae6bed7\":{\"active\":true,\"text\":null}},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"927efae3-903d-4512-be1e-09fcb04d88d4\",\"materialName\":\"Stoff 1\",\"priceGroup\":\"Preisgruppe 1\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"12c0bc51-4eed-4efa-8940-89fe1972a141\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in  Fensterfarbe\"}}]},\"071a3a92-cc69-43a1-a51b-52158badd21f\":{\"value\":14},\"05f6f3c1-e59d-458c-9687-59490e04f5e8\":{\"aptoElementDefinitionId\":\"apto-element-custom-text\",\"text\":\"Keine W\\u00fcnsche!\\nBin wunschlos gl\\u00fccklich : )\"}}}}}', '234f1d60-36a8-467e-8e80-f779dea13809'),
(58, 48, '8789t', '2021-02-24 13:23:43', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"25fdb6a0-36e8-4637-8d6d-1f96cae6bed7\":{\"active\":true,\"text\":null}},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"927efae3-903d-4512-be1e-09fcb04d88d4\",\"materialName\":\"Stoff 1\",\"priceGroup\":\"Preisgruppe 1\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"12c0bc51-4eed-4efa-8940-89fe1972a141\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in  Fensterfarbe\"}}]},\"071a3a92-cc69-43a1-a51b-52158badd21f\":{\"value\":14},\"05f6f3c1-e59d-458c-9687-59490e04f5e8\":{\"aptoElementDefinitionId\":\"apto-element-custom-text\",\"text\":\"Keine W\\u00fcnsche!\\nBin wunschlos gl\\u00fccklich : )\"}}}}}', 'b461beb3-8970-49e3-8c4b-1e883f09b5d8'),
(59, 48, 'zk8ac', '2021-02-24 13:25:50', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"25fdb6a0-36e8-4637-8d6d-1f96cae6bed7\":{\"active\":true,\"text\":null}},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"927efae3-903d-4512-be1e-09fcb04d88d4\",\"materialName\":\"Stoff 1\",\"priceGroup\":\"Preisgruppe 1\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"12c0bc51-4eed-4efa-8940-89fe1972a141\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in  Fensterfarbe\"}}]},\"071a3a92-cc69-43a1-a51b-52158badd21f\":{\"value\":14},\"05f6f3c1-e59d-458c-9687-59490e04f5e8\":{\"aptoElementDefinitionId\":\"apto-element-custom-text\",\"text\":\"Keine W\\u00fcnsche!\\nBin wunschlos gl\\u00fccklich : )\"}}}}}', '18ee297c-e999-4daf-979b-a0ba3515161e'),
(60, 48, '8d9m4', '2021-02-24 13:26:38', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"25fdb6a0-36e8-4637-8d6d-1f96cae6bed7\":{\"active\":true,\"text\":null}},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"927efae3-903d-4512-be1e-09fcb04d88d4\",\"materialName\":\"Stoff 1\",\"priceGroup\":\"Preisgruppe 1\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"12c0bc51-4eed-4efa-8940-89fe1972a141\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in  Fensterfarbe\"}}]},\"071a3a92-cc69-43a1-a51b-52158badd21f\":{\"value\":14},\"05f6f3c1-e59d-458c-9687-59490e04f5e8\":{\"aptoElementDefinitionId\":\"apto-element-custom-text\",\"text\":\"Keine W\\u00fcnsche!\\nBin wunschlos gl\\u00fccklich : )\"}}}}}', '58d159f9-c422-4e20-99cb-cc7926a3c774'),
(61, 48, 'v119g', '2021-02-24 13:37:10', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"25fdb6a0-36e8-4637-8d6d-1f96cae6bed7\":{\"active\":true,\"text\":null}},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"927efae3-903d-4512-be1e-09fcb04d88d4\",\"materialName\":\"Stoff 1\",\"priceGroup\":\"Preisgruppe 1\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"12c0bc51-4eed-4efa-8940-89fe1972a141\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in  Fensterfarbe\"}}]},\"071a3a92-cc69-43a1-a51b-52158badd21f\":{\"value\":14},\"05f6f3c1-e59d-458c-9687-59490e04f5e8\":{\"aptoElementDefinitionId\":\"apto-element-custom-text\",\"text\":\"Keine W\\u00fcnsche!\\nBin wunschlos gl\\u00fccklich : )\"}}}}}', 'fae9bd67-efae-4beb-be73-04d296a74eb0'),
(62, 48, 'vr1ei', '2021-02-24 13:54:46', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"25fdb6a0-36e8-4637-8d6d-1f96cae6bed7\":{\"active\":true,\"text\":null}},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"927efae3-903d-4512-be1e-09fcb04d88d4\",\"materialName\":\"Stoff 1\",\"priceGroup\":\"Preisgruppe 1\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"12c0bc51-4eed-4efa-8940-89fe1972a141\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in  Fensterfarbe\"}}]},\"071a3a92-cc69-43a1-a51b-52158badd21f\":{\"value\":14},\"05f6f3c1-e59d-458c-9687-59490e04f5e8\":{\"aptoElementDefinitionId\":\"apto-element-custom-text\",\"text\":\"Keine W\\u00fcnsche!\\nBin wunschlos gl\\u00fccklich : )\"}}}}}', '93f773e7-b398-45f7-a29e-823943ce987e'),
(63, 48, '8f80n', '2021-02-24 13:58:19', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"25fdb6a0-36e8-4637-8d6d-1f96cae6bed7\":{\"active\":true,\"text\":null}},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"927efae3-903d-4512-be1e-09fcb04d88d4\",\"materialName\":\"Stoff 1\",\"priceGroup\":\"Preisgruppe 1\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"12c0bc51-4eed-4efa-8940-89fe1972a141\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in  Fensterfarbe\"}}]},\"071a3a92-cc69-43a1-a51b-52158badd21f\":{\"value\":14},\"05f6f3c1-e59d-458c-9687-59490e04f5e8\":{\"aptoElementDefinitionId\":\"apto-element-custom-text\",\"text\":\"Keine W\\u00fcnsche!\\nBin wunschlos gl\\u00fccklich : )\"}}}}}', '334611fe-9eca-49fd-9e2e-f3eb50bd806b'),
(64, 48, '8ukgg', '2021-02-24 13:58:51', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"25fdb6a0-36e8-4637-8d6d-1f96cae6bed7\":{\"active\":true,\"text\":null}},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"00eb782d-3796-414b-bd10-434fbc115bff\":{\"aptoElementDefinitionId\":\"apto-element-material-picker\",\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"productId\":\"55761379-980a-4141-a2df-932ecb88b311\",\"materialId\":\"927efae3-903d-4512-be1e-09fcb04d88d4\",\"materialName\":\"Stoff 1\",\"priceGroup\":\"Preisgruppe 1\",\"materials\":[],\"materialIdSecondary\":\"\",\"materialNameSecondary\":\"\",\"priceGroupSecondary\":\"\",\"materialsSecondary\":[],\"materialColorMixing\":\"monochrome\",\"materialColorArrangement\":\"\",\"materialColorQuantity\":\"\"}},\"071bd613-4be6-4986-8eb9-602f58b1d072\":{\"b2987659-6b6f-40cb-88b5-a8ae74986876\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"1864ad13-a7b2-4767-bba7-8b52f969e935\":{\"7621921b-d90b-48f4-b0e2-7c33558cf664\":{\"boxes\":[{\"id\":\"12c0bc51-4eed-4efa-8940-89fe1972a141\",\"multi\":\"1\",\"name\":{\"de_DE\":\"Griff in  Fensterfarbe\"}}]},\"071a3a92-cc69-43a1-a51b-52158badd21f\":{\"value\":14},\"05f6f3c1-e59d-458c-9687-59490e04f5e8\":{\"aptoElementDefinitionId\":\"apto-element-custom-text\",\"text\":\"Keine W\\u00fcnsche!\\nBin wunschlos gl\\u00fccklich : )\"}}}}}', '466c3994-7e51-43b1-976e-2542d645dcf1'),
(65, 48, 'j59vw', '2021-02-25 09:24:05', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', '65eae623-0885-490c-ab32-73e563a5114c'),
(66, 48, 'u13li', '2021-02-25 09:24:21', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', '8d4f068d-5c9f-4cd8-b32a-1535d77e1db1'),
(67, 48, '9920l', '2021-02-25 09:27:53', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', 'fe88b517-da22-4248-b2be-bacb24001474'),
(68, 48, '2o7dy', '2021-02-25 09:28:01', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', 'c33c72cd-ae14-4963-95cc-950a140dd136'),
(69, 48, 'kmgk7', '2021-02-25 09:28:08', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', 'ca6454be-eac6-403e-9243-aa94d9286ea3'),
(70, 48, '24vyr', '2021-02-25 09:28:13', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', 'bdd42f2a-8d8f-4a06-8a51-21d2d3b3482c'),
(71, 48, 'y0c12', '2021-02-25 09:28:21', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', '744ee1c1-52a2-44fe-a3d2-420417e8ea09'),
(72, 48, '5lb2s', '2021-02-25 09:28:34', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', 'fb01e044-7301-4a1d-9279-1bb32c567fde'),
(73, 48, 'ax5e8', '2021-02-25 09:29:49', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', '006c43a5-3e3a-40f8-b99c-bef72ad75229'),
(74, 48, 'cxi05', '2021-02-25 09:53:46', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', '4925927d-cc3d-4d95-8883-e25f7a350495'),
(75, 48, '624j0', '2021-02-25 09:56:10', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', '53ff0d61-a51f-45dd-8fad-fe91b4488832'),
(76, 48, 's6hca', '2021-02-25 09:56:39', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', 'd6cd66a8-e10b-47c7-931c-ca1074cfde36'),
(77, 48, '4gqi1', '2021-02-25 09:57:25', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', 'c91dddb8-1ac5-4861-8079-fe89d6b8335a'),
(78, 48, '67o82', '2021-02-25 09:57:57', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', '3eca2445-c4a1-47b0-aec6-2f45787a6349'),
(79, 48, 'edb37', '2021-02-25 09:58:53', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', '2224b301-31ea-4597-b75e-703b694f316c'),
(80, 48, 'r9o86', '2021-02-25 10:00:27', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', '5c9638e3-714d-4b59-878b-8fc1ac60ed74'),
(81, 48, '34j16', '2021-02-25 11:31:35', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":[]}}', 'ea303e3a-9d5a-4559-b500-ecf931b8b453');

-- --------------------------------------------------------

--
-- Table structure for table `apto_configuration`
--

DROP TABLE IF EXISTS `apto_configuration`;
CREATE TABLE `apto_configuration` (
  `surrogate_id` int(11) NOT NULL,
  `name` longtext DEFAULT NULL COMMENT '(DC2Type:AptoPropertyTranslatedValue)',
  `created` datetime NOT NULL,
  `state` longtext NOT NULL COMMENT '(DC2Type:AptoPropertyJsonSerializable)',
  `id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_configuration_immutable_to_custom_property`
--

DROP TABLE IF EXISTS `apto_configuration_immutable_to_custom_property`;
CREATE TABLE `apto_configuration_immutable_to_custom_property` (
  `configuration_immutable_id` int(11) NOT NULL,
  `custom_property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_content_snippet`
--

DROP TABLE IF EXISTS `apto_content_snippet`;
CREATE TABLE `apto_content_snippet` (
  `surrogate_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `content` longtext DEFAULT NULL COMMENT '(DC2Type:AptoPropertyTranslatedValue)',
  `id` char(36) NOT NULL,
  `html` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `apto_content_snippet`
--

INSERT INTO `apto_content_snippet` (`surrogate_id`, `parent_id`, `created`, `name`, `active`, `content`, `id`, `html`) VALUES
(1, NULL, '2019-02-04 10:11:22', 'aptoBasket', 1, '[]', '2288e311-c2be-466d-b40f-83078e28829a', 0),
(2, NULL, '2019-02-04 10:11:54', 'AptoLoginController', 1, '[]', '211dc12e-7e01-4d93-a262-52fbaf9e50a5', 0),
(3, NULL, '2019-02-04 10:12:05', 'aptoLogo', 1, '[]', '67093d07-396c-4de8-b575-ce45bc9a30d1', 0),
(4, NULL, '2019-02-04 10:12:20', 'AptoGuestConfigurationDialog', 1, '[]', 'a2c7ad3d-5b4f-42a6-9655-e5b731283f7f', 0),
(5, 3, '2019-02-04 10:12:44', 'link', 1, '{\"de_DE\":\"\"}', 'b06a83c7-ec65-42f7-bdee-cd1b191303a6', 0),
(6, 2, '2019-02-04 10:12:55', 'form', 1, '[]', 'a18a778f-aee5-4e57-904e-186e5d34b4ae', 0),
(7, 6, '2019-02-04 10:13:03', 'login', 1, '{\"de_DE\":\"Anmelden\"}', '4762a456-7dae-4809-a708-292b226e01eb', 0),
(8, 6, '2019-02-04 10:13:07', 'mail', 1, '{\"de_DE\":\"Ihre E-Mail Adresse\"}', '9691eae8-2cca-4a6c-b50f-c1d8a088917a', 0),
(9, 6, '2019-02-04 10:13:19', 'password', 1, '{\"de_DE\":\"Passwort\"}', 'a36aa259-0518-4d61-af68-84fc5b333b3e', 0),
(10, 6, '2019-02-04 10:13:27', 'register', 1, '{\"de_DE\":\"Registrieren\"}', 'ab66f89d-535a-4346-8a81-3e126066cd02', 0),
(11, 4, '2019-02-04 10:14:12', 'form', 1, '[]', '2df4f5dd-c987-4bee-a333-87ef466a8a17', 0),
(12, 4, '2019-02-04 10:14:18', 'beforeSave', 1, '[]', '73653012-f68b-42c1-b56b-600d0b9da086', 0),
(13, 4, '2019-02-04 10:14:25', 'afterSave', 1, '[]', 'c8c1a44d-953c-44c0-884c-10853853ccc2', 0),
(14, 13, '2019-02-04 10:15:01', 'close', 1, '{\"de_DE\":\"Schlie\\u00dfen\"}', 'e9e43fe2-52be-4cc5-83e7-90ecc2505c51', 0),
(15, 13, '2019-02-04 10:15:17', 'header', 1, '{\"de_DE\":\"Konfiguration gespeichert\"}', 'c2fc0829-2df9-466d-a3b5-6770e7636e7a', 0),
(16, 13, '2019-02-04 10:15:55', 'info', 1, '{\"de_DE\":\"Wir haben Ihnen eine Email mit dem Link zur aktuellen Konfiguration geschickt.\"}', '2a04031f-30d0-4d64-b02a-092d0bb0cc8a', 0),
(17, 12, '2019-02-04 10:16:28', 'header', 1, '{\"de_DE\":\"Konfiguration speichern\"}', '325c9d99-e963-4dbd-a0be-3032f9b06faa', 0),
(18, 12, '2019-02-04 10:16:41', 'info', 1, '{\"de_DE\":\"Sie bekommen einen Link zur aktuellen Konfiguration per E-Mail gesendet.\"}', 'e48c175e-c70f-4d0f-a319-a70e7278d6b0', 0),
(19, 11, '2019-02-04 10:16:55', 'mail', 1, '{\"de_DE\":\"Ihre E-Mail Adresse\"}', 'ed65e3d0-6d47-41f9-9dcd-bef0fd9b66d6', 0),
(20, 11, '2019-02-04 10:17:07', 'name', 1, '{\"de_DE\":\"Name\"}', '8ff1edff-8cd8-4264-8ea1-66e80ca3da9b', 0),
(21, 11, '2019-02-04 10:17:18', 'submit', 1, '{\"de_DE\":\"Speichern\"}', 'e88c18f2-5b56-4a2f-b6e1-a954b71b78e7', 0),
(22, 1, '2019-02-04 10:17:50', 'back', 1, '{\"de_DE\":\"Jetzt weiter konfigurieren\"}', '67e4075e-11d3-45c9-9a8d-5de08c55f6b9', 0),
(23, 1, '2019-02-04 10:18:03', 'cart', 1, '{\"de_DE\":\"Zum Warenkorb\"}', '44517937-9ac5-41df-a861-cbce57e70bf1', 0),
(24, 1, '2019-02-04 10:18:18', 'checkout', 1, '{\"de_DE\":\"Zur Kasse\"}', '69407c05-4138-4229-b0d5-e3f873d05fb3', 0),
(25, 1, '2019-02-04 10:18:32', 'empty', 1, '{\"de_DE\":\"<br \\/>Noch kein Artikel im Warenkorb!<br \\/><br \\/>\"}', '505b4d29-c656-4366-abc9-1c7f46f0981d', 0),
(26, 1, '2019-02-04 10:19:29', 'pricePrefix', 1, '{\"de_DE\":\"je\"}', 'cdb6b08d-4b32-4b81-8f15-4fbefccd07fb', 0),
(27, 1, '2019-02-04 10:19:42', 'subtotal', 1, '{\"de_DE\":\"Zwischensumme\"}', '79fd3b82-2a72-4ecd-b243-d19fa6704add', 0),
(28, 1, '2019-02-04 10:19:52', 'confirmDeleteDialog', 1, '[]', '5094086c-d978-4ca6-8de3-1cca9979fc05', 0),
(29, 28, '2019-02-04 10:20:04', 'cancel', 1, '{\"de_DE\":\"Abbrechen\"}', '1854b071-c65c-4ef0-9863-c209396d3788', 0),
(30, 28, '2019-02-04 10:20:17', 'confirm', 1, '{\"de_DE\":\"Konfiguration l\\u00f6schen\"}', 'ed5a0d76-8652-4b02-b7ce-5686c957e7d9', 0),
(31, 28, '2019-02-04 10:20:32', 'text', 1, '{\"de_DE\":\"M\\u00f6chten Sie die Konfiguration <br \\/>wirklich aus dem Warenkorb entfernen?\"}', '661128ff-2fa8-4e48-8dbf-20a21416be47', 0),
(32, NULL, '2019-03-07 08:51:46', 'aptoPageNotFound', 1, '[]', '9f7e4446-be9c-4d0b-9cb2-9bd6e8616a41', 0),
(33, 32, '2019-03-07 08:52:41', 'info', 1, '{\"de_DE\":\"<h2>Seite wurde nicht gefunden.<\\/h2>\",\"en_GB\":\"<h2>Page not found.<\\/h2>\"}', '4d273ba9-b4d5-4529-b9e0-221c9cbac4c5', 1),
(34, NULL, '2019-03-07 11:19:54', 'aptoLanguageSwitch', 1, '[]', '209688bd-b851-4b05-9b22-bc03136649e2', 0),
(35, 34, '2019-03-07 11:20:20', 'switch', 1, '{\"de_DE\":\"Sprache w\\u00e4hlen:\"}', '831b6d50-2c23-4db3-8d15-688d05de08e6', 0),
(36, NULL, '2019-03-07 11:24:16', 'aptoLinksToShop', 1, '[]', '04844dff-8ac4-4e6c-b1e7-bb0e707209cc', 0),
(37, 36, '2019-03-07 11:24:37', 'register', 1, '{\"de_DE\":\"Anmelden \\/ Registrieren\"}', '0422db83-ff96-46d3-8f20-f31f5387d602', 0),
(38, 36, '2019-03-07 11:24:59', 'account', 1, '{\"de_DE\":\"Mein Konto\"}', 'b7613f64-4a55-4ca8-b46a-71693881ea2e', 0),
(39, 36, '2019-03-07 11:25:31', 'basket', 1, '{\"de_DE\":\"Warenkorb\"}', 'def45590-a28c-42b8-a210-5c63b320f44e', 0),
(40, 36, '2019-03-07 11:25:49', 'logout', 1, '{\"de_DE\":\"Logout\"}', '64f989a4-68dd-45d8-93e4-166dc47a3075', 0),
(41, NULL, '2019-03-07 12:00:02', 'aptoFooterNav', 1, '[]', 'd064c62a-cefd-42cc-a91e-59dc11824f44', 0),
(42, 41, '2019-03-07 12:03:17', 'menu', 1, '[]', '22f0d518-2d66-4200-ae01-ed0c97dd691e', 0),
(43, 42, '2019-03-07 12:04:09', 'entry1', 1, '[]', '9c140499-a6b1-4f46-9939-90beb25cef96', 0),
(44, 42, '2019-03-07 12:04:19', 'entry2', 1, '[]', 'd648963f-3c66-4595-a8b6-994900bc8cb5', 0),
(45, 42, '2019-03-07 12:04:25', 'entry3', 1, '[]', '2fccd6df-8454-4b87-999f-b36aa1630908', 0),
(46, 42, '2019-03-07 12:04:31', 'entry4', 1, '[]', '833b29b8-dd14-4ea9-a1aa-629bf19b779b', 0),
(47, 42, '2019-03-07 12:04:38', 'entry5', 1, '[]', '388deda1-8c97-4838-ab25-ba5e4d1346a4', 0),
(48, 43, '2019-03-07 12:18:13', 'text', 1, '{\"de_DE\":\"Kontakt\"}', '0ffec990-3338-4b93-9d9f-adbc11f8d15f', 0),
(49, 44, '2019-03-07 12:18:18', 'text', 1, '{\"de_DE\":\"Impressum\"}', '018434bf-79aa-4189-b1a1-fb166e829ce3', 0),
(50, 45, '2019-03-07 12:18:22', 'text', 1, '{\"de_DE\":\"AGB\"}', 'ebd7bf48-7fd0-4f74-bf81-d78df6745cb3', 0),
(51, 46, '2019-03-07 12:18:26', 'text', 1, '{\"de_DE\":\"Widerrufsrecht\"}', '5fd284f2-3037-456d-94d3-589d885fa809', 0),
(52, 47, '2019-03-07 12:18:31', 'text', 1, '{\"de_DE\":\"Datenschutz\"}', '591400c8-1823-4f99-be48-ee56ff7b5037', 0),
(53, 43, '2019-03-07 12:18:39', 'link', 1, '[]', 'c89940a3-9788-4d9c-aef9-2660f95c76a7', 0),
(54, 44, '2019-03-07 12:18:44', 'link', 1, '[]', '299d0622-ccec-46e4-8477-4b27d1dd9342', 0),
(55, 45, '2019-03-07 12:18:48', 'link', 1, '[]', 'cca1e5a8-da95-4881-a9c1-67a9e80f213b', 0),
(56, 46, '2019-03-07 12:18:52', 'link', 1, '[]', '1614fd5e-b850-45f1-a4b0-ba99d6ae32bf', 0),
(57, 47, '2019-03-07 12:18:57', 'link', 1, '[]', 'd92f73ab-f081-48a3-9035-aa6f3acbeb12', 0),
(58, NULL, '2019-03-07 12:33:52', 'AptoLoadConfigurationDialog', 1, '[]', '96beeeb4-e70e-4dc1-ba73-767d0e7737ac', 0),
(59, 58, '2019-03-07 12:34:13', 'header', 1, '{\"de_DE\":\"Konfiguration gefunden\"}', '73f11802-76ff-40c5-9b02-8a2ff42643ec', 0),
(60, 58, '2019-03-07 12:34:29', 'info', 1, '{\"de_DE\":\"Auf diesem Ger\\u00e4t wurde bereits eine Konfiguration gestartet.\"}', '92b3af52-6d3e-40f7-9cf8-0a161739dabe', 0),
(61, 58, '2019-03-07 12:36:35', 'restore', 1, '{\"de_DE\":\"Konfiguration aufrufen\"}', '97decd6b-8dfb-4bc6-b8a5-22ce618a325d', 0),
(62, 58, '2019-03-07 12:36:52', 'continue', 1, '{\"de_DE\":\"Neu Konfigurieren\"}', '9017b199-af90-4fbf-aeba-5cc8e333190b', 0),
(63, NULL, '2019-03-07 13:12:02', 'aptoSelect', 1, '[]', '4245ba8c-6d97-4492-bdbd-909cfd6996d7', 0),
(64, 63, '2019-03-07 13:12:17', 'suffix', 1, '{\"de_DE\":\"St\\u00fcck\"}', '87748a23-61b3-456e-b2f7-a4eaed1a0b16', 0),
(65, NULL, '2019-03-07 13:19:53', 'aptoSummary', 1, '[]', '290cf70c-6111-4180-a65b-6058dd8995bc', 0),
(66, 111, '2019-03-07 13:36:36', 'requestForm', 1, '[]', 'c6c64110-cb5d-48d5-962a-f571f346202a', 0),
(67, 66, '2019-03-07 13:36:52', 'aptoSummary', 1, '[]', 'e93c2d4f-473d-4760-ada1-8191d46c8f83', 0),
(68, 65, '2019-03-07 13:43:53', 'tax', 1, '[]', 'a916065d-bc44-408d-8d71-009ea722dd8f', 0),
(69, 68, '2019-03-07 13:44:06', 'withTax', 1, '{\"de_DE\":\"St\\u00fcckpreis inkl. MwSt.\"}', '46cc4965-b9a9-4a41-a64c-743dd41c3bff', 0),
(70, 68, '2019-03-07 13:44:22', 'withoutTax', 1, '{\"de_DE\":\"St\\u00fcckpreis zzgl. MwSt.\"}', '804915c6-3a88-4108-b57f-29611628da12', 0),
(71, 65, '2019-03-07 13:46:10', 'addToBasket', 1, '{\"de_DE\":\"In den Warenkorb legen\"}', '1c9d35d1-4c47-4c6a-92f6-e2a5104eded9', 0),
(72, 67, '2019-03-07 13:48:32', 'sendForm', 1, '{\"de_DE\":\"Anfrage senden\"}', '43074c08-7168-4a8d-b1ad-518bb0077b2b', 0),
(73, 67, '2019-03-07 13:56:05', 'declarationOfConsent', 1, '{\"de_DE\":\"Durch das Absenden des Formulares erkl\\u00e4ren Sie sich damit einverstanden, dass wir Ihre Angaben f\\u00fcr die Bearbeitung Ihrer Anfrage bzw. zur Kontaktaufnahme verwenden.<br \\/>\\nWeitere Informationen zum Datenschutz finden Sie in unserer <a href=\\\"https:\\/\\/www.confirado.de\\/rechtliches\\/datenschutz.html\\\" target=\\\"_blank\\\">Datenschutzerkl\\u00e4rung<\\/a>.<br \\/>\\nAlle auf confirado.de genannten Preise sind Nettopreise (zzgl 19% USt.).\"}', '046f458d-27a9-4619-bc0d-fe05ebb50349', 0),
(74, 65, '2019-03-07 13:59:00', 'headline', 1, '{\"de_DE\":\"Zusammenfassung Ihrer Konfiguration\"}', '9ea913b2-370e-4bf2-b6e3-6cf77e442d2a', 0),
(75, 67, '2019-03-07 14:00:08', 'requiredMessage', 1, '{\"de_DE\":\"Alle Pflichtfelder sind mit einem Stern (*) gekennzeichnet.\"}', '8e1ffb17-2af7-4f4b-a274-99d3e7ec8fae', 0),
(76, 67, '2019-03-07 14:01:32', 'afterSend', 1, '[]', '0561a641-fb6b-4e66-81bd-338b9a5218ed', 0),
(77, 67, '2019-03-07 14:01:42', 'beforeSend', 1, '[]', 'ea99786c-1a90-4733-a5e1-c70928f91c97', 0),
(78, 76, '2019-03-07 14:02:07', 'headline', 1, '{\"de_DE\":\"Ihre Anfrage wurde erfolgreich versendet!\"}', 'ff4a653a-6655-4b36-8ab8-c9d950c63fb3', 0),
(79, 77, '2019-03-07 14:02:20', 'headline', 1, '{\"de_DE\":\"Ihre Kontaktdaten\"}', 'e801de71-01df-40c2-af60-66bb94be9688', 0),
(80, 67, '2019-03-07 14:05:34', 'labels', 1, '[]', '06040d94-b661-4f47-905d-305d720b78ab', 0),
(81, 80, '2019-03-07 14:06:33', 'gender', 1, '{\"de_DE\":\"Anrede\"}', 'be6ae297-50e1-47f3-bdfa-84a484d87ef2', 0),
(82, 67, '2019-03-07 14:06:56', 'values', 1, '[]', 'fd05c9f3-10c4-4b9c-bf4f-a985d5dd185e', 0),
(83, 82, '2019-03-07 14:07:02', 'gender', 1, '[]', 'c0c6e37c-e1be-4ddd-b894-852c7cf8207e', 0),
(84, 83, '2019-03-07 14:07:11', 'ms', 1, '{\"de_DE\":\"Frau\"}', '64be5c44-48af-4b11-ba7b-2175bad6c9b4', 0),
(85, 83, '2019-03-07 14:07:23', 'mr', 1, '{\"de_DE\":\"Herr\"}', '8040b07e-db73-4eec-8453-b914913678b2', 0),
(86, 80, '2019-03-07 14:11:31', 'name', 1, '{\"de_DE\":\"Name\"}', '0bde204a-fb79-4aeb-9fe9-3c6a98a1ddca', 0),
(87, 80, '2019-03-07 14:11:37', 'email', 1, '{\"de_DE\":\"E-Mail\"}', 'c1b0f037-9f8f-45e3-afb1-abd1e2ebe4e1', 0),
(88, 80, '2019-03-07 14:11:49', 'company', 1, '{\"de_DE\":\"Firma\"}', 'bf2520f7-d866-4edd-9e0d-03866afcc045', 0),
(89, 80, '2019-03-07 14:11:59', 'street', 1, '{\"de_DE\":\"Adresse\"}', '55892674-56b0-42fc-9578-7d1f2488fcfa', 0),
(90, 80, '2019-03-07 14:12:07', 'city', 1, '{\"de_DE\":\"Ort\"}', '51ae6aa8-7582-4939-b77a-913187102ba7', 0),
(91, 80, '2019-03-07 14:12:17', 'phone', 1, '{\"de_DE\":\"Telefon\"}', 'b519b8b5-8201-488b-a01b-c0c3b570ee8b', 0),
(92, 80, '2019-03-07 14:13:48', 'zipCode', 1, '{\"de_DE\":\"PLZ\"}', 'fc98cfff-5cff-475b-ad79-a9bb02d15087', 0),
(93, 80, '2019-03-07 14:15:01', 'message', 1, '{\"de_DE\":\"Ihre Nachricht\"}', '1ed2f5dd-481c-40cc-9462-4f53514f682b', 0),
(94, NULL, '2019-03-07 14:31:27', 'aptoSidebarBasket', 1, '[]', '66b1b40e-de15-46cf-9cd1-4da4edf16786', 0),
(95, 94, '2019-03-07 14:31:41', 'addToBasket', 1, '{\"de_DE\":\"In den Warenkorb legen\"}', '6ed98ece-ffad-4e90-8e8d-e21174c215d2', 0),
(97, NULL, '2019-03-07 14:44:36', 'aptoSliderAction', 1, '[]', '0a9840af-7170-44c5-91fe-ba3d71319659', 0),
(98, 97, '2019-03-07 14:46:02', 'save', 1, '{\"de_DE\":\"Speichern\"}', 'c4edd3d0-d21a-4fd8-ac2c-d3de058bdae3', 0),
(99, 97, '2019-03-07 14:46:13', 'share', 1, '{\"de_DE\":\"Teilen\"}', '65c31f14-10b3-4646-beab-6da14bcaac7b', 0),
(100, NULL, '2019-03-07 15:03:02', 'aptoSidebarInfo', 1, '[]', '2f840e9f-139b-4fc1-a7f8-9f718eeaa00d', 0),
(101, 100, '2019-03-07 15:03:10', 'tax', 1, '[]', '67ee5e37-2a9b-4a19-a274-99843e094c69', 0),
(102, 101, '2019-03-07 15:03:24', 'withTax', 1, '{\"de_DE\":\"inkl. MwSt.\"}', '4f998966-8b80-40ac-a49e-0fbc2ba7ca12', 0),
(103, 101, '2019-03-07 15:03:53', 'withoutTax', 1, '{\"de_DE\":\"zzgl. MwSt.\"}', '47b0abc3-85e3-44a9-ae45-5387f23a3782', 0),
(104, 100, '2019-03-07 15:04:23', 'shipping', 1, '[]', 'd9f7505e-dc2f-42cd-bd31-df9e3160cc0a', 0),
(105, 104, '2019-03-07 15:04:43', 'prefix', 1, '{\"de_DE\":\"zzgl.\"}', 'f3502741-4cb5-4494-bf04-feabf7bba78f', 0),
(106, 104, '2019-03-07 15:04:55', 'link', 1, '[]', 'ec2d78da-fd3e-4768-a667-60ee4b4ff378', 0),
(107, 106, '2019-03-07 15:05:10', 'href', 1, '[]', 'b649981b-7f25-4939-bf76-9ed7e142b40a', 0),
(108, 106, '2019-03-07 15:05:23', 'text', 1, '{\"de_DE\":\"Versandkosten\"}', 'e5b186fa-dac3-4fe2-812b-bc1b2e7ccfb7', 0),
(109, 101, '2019-03-07 15:15:16', 'withoutShop', 1, '{\"de_DE\":\"inkl. MwSt.\"}', '6aa3feaf-1999-436c-baa1-13968dadaaa3', 0),
(111, NULL, '2019-03-07 15:20:39', 'plugins', 1, '[]', '71321299-1f2e-488d-be1f-0396a63aaa33', 0),
(112, 111, '2019-03-07 15:20:48', 'imageUpload', 1, '[]', 'b75cf3a8-ae1a-483b-9e1a-8c5fd7bb77ac', 0),
(113, 112, '2019-03-07 15:26:22', 'error', 1, '[]', '975544fb-0ee6-421f-b754-beee932caae7', 0),
(114, 113, '2019-03-07 15:26:31', 'pattern', 1, '{\"de_DE\":\"Folgende Dateitypen sind erlaubt:\"}', '4a1fee05-d7cc-4efc-b8e0-cc6751d6e57e', 0),
(115, 113, '2019-03-07 15:26:37', 'maxSize', 1, '[]', '2759ff72-2a9d-4275-ae2e-362f918db0f3', 0),
(116, 113, '2019-03-07 15:26:44', 'default', 1, '{\"de_DE\":\"Beim Upload ist ein Fehler aufgetreten. Bitte versuchen Sie es erneut.\"}', '45fac58e-a8eb-49ca-a4a9-e3a7bb1e49e6', 0),
(117, 115, '2019-03-07 15:27:18', 'prefix', 1, '{\"de_DE\":\"Die Dateigr\\u00f6\\u00dfe darf\"}', '7ee8fe5b-6ebe-4817-a445-4e766fa8af0c', 0),
(118, 115, '2019-03-07 15:27:31', 'suffix', 1, '{\"de_DE\":\"nicht \\u00fcberschreiten.\"}', 'bab3a0c2-5e7b-4b25-b8ce-73a8758632d9', 0),
(119, 112, '2019-03-07 15:29:18', 'upload', 1, '[]', '03d13fcd-5890-4f24-8bed-8939e6aef349', 0),
(120, 119, '2019-03-07 15:29:28', 'delete', 1, '{\"de_DE\":\"L\\u00f6schen\"}', 'b6246224-061e-40c1-a645-7f0ab3fa24c6', 0),
(121, 119, '2019-03-07 15:29:40', 'edit', 1, '{\"de_DE\":\"Bearbeiten\"}', 'c0d686fa-e7db-45d2-9ae6-768c8fbfb2fc', 0),
(122, 119, '2019-03-07 15:29:51', 'cancel', 1, '{\"de_DE\":\"Abbrechen\"}', '115b2438-d8e7-4b0a-9123-ee7f90b46afc', 0),
(123, 119, '2019-03-07 15:30:05', 'save', 1, '{\"de_DE\":\"Speichern\"}', '681f5ded-e21b-403e-baed-90ffafd32ea5', 0),
(124, 119, '2019-03-07 15:32:35', 'dragover', 1, '{\"de_DE\":\"Datei-Upload via Drag\'n\'Drop oder Klick\"}', '95cec141-7e1c-47bf-8427-a9dfed3426c1', 0),
(125, NULL, '2019-09-23 13:04:42', 'aptoProductIsNotAvailable', 1, '[]', '5d06fde4-2f9e-4d52-8b29-37896dd4361a', 0),
(126, 125, '2019-09-23 13:05:01', 'message', 1, '{\"de_DE\":\"Das Produkt ist nicht verf\\u00fcgbar. Bitte wenden Sie sich an den Shopbetreiber.\"}', '186152c7-6a7e-4a8f-b8a4-653636c21f72', 0),
(127, 66, '2019-12-16 15:15:42', 'mail', 1, '{\"de_DE\":\"\"}', 'eb43ffc1-91ce-4ab8-9a74-4d0f8b5bb417', 0),
(128, 66, '2020-01-21 10:39:38', 'pdf', 1, '[]', '34869dd9-3a51-4f37-a8b7-1e8051aab685', 0),
(129, 128, '2020-01-21 10:40:43', 'company', 1, '[]', '0ed1b4d1-881b-4a7b-9321-849ffc9221f8', 0),
(130, 129, '2020-01-21 10:40:55', 'city', 1, '{\"de_DE\":\"Bad Neustadt\"}', '12748208-47c0-45ef-9902-3c8fdc677749', 0),
(131, 129, '2020-01-21 10:41:57', 'street', 1, '{\"de_DE\":\"Salzpforte\"}', 'e6f14054-b336-4da3-9f08-9b67bb4b8577', 0),
(132, 127, '2020-01-21 10:52:32', 'customer', 1, '[]', 'd296efce-2ce2-406c-b0d8-344f9d353ee9', 0),
(133, 132, '2020-01-21 10:52:51', 'dear', 1, '{\"de_DE\":\"Guten Tag,\"}', '451a2536-2f70-4d9d-8e4a-e377f0781afe', 0),
(134, 132, '2020-01-21 10:53:02', 'dearMisses', 1, '{\"de_DE\":\"Sehr geehrte Frau\"}', '843c6405-9d20-4c22-b915-ca3ff0b30e93', 0),
(135, 132, '2020-01-21 10:53:28', 'dearMister', 1, '{\"de_DE\":\"Sehr geehrter Herr\"}', '870d19b4-1478-4145-8406-2de961be484f', 0),
(136, 132, '2020-01-21 10:53:41', 'WeHaveReceivedYourConfiguration', 1, '{\"de_DE\":\"Vielen Dank, dass Sie unseren Konfigurator genutzt haben.\"}', '100352da-6d64-437b-add1-00930818f8be', 0),
(137, 132, '2020-01-21 10:54:02', 'YoursSincerely', 1, '{\"de_DE\":\"<p>Herzlichste Gr\\u00fc\\u00dfe,<\\/p>\"}', '7940d6f7-90ea-4cd9-8abe-8194f9fd0d85', 1),
(138, 132, '2020-01-21 13:04:47', 'title', 1, '{\"de_DE\":\"Produktanfrage\"}', 'e4d9a13c-812b-43a7-ba89-56a85bd8320d', 0),
(139, 129, '2020-01-21 13:07:08', 'name', 1, '{\"de_DE\":\"Confirado GmbH & Co. KG\"}', '8de7eda7-feb3-4f75-a9ce-f6777ce821e6', 0),
(140, 129, '2020-01-21 13:07:44', 'zip', 1, '{\"de_DE\":\"97616\"}', '017847bb-4b9e-4883-be7a-88f44191540b', 0),
(141, 128, '2020-01-21 13:09:16', 'footer', 1, '[]', '104d029f-06a4-4b0e-a115-74602dcecb4a', 0),
(142, 141, '2020-01-21 13:09:39', 'city', 1, '{\"de_DE\":\"Bad Neustadt an der Saale\"}', '055e15e1-2e0b-4692-ac14-7ed77bcfbef7', 0),
(143, 141, '2020-01-21 13:10:08', 'titleAddress', 1, '{\"de_DE\":\"Adresse:\"}', 'edfc9568-2919-4d0a-9457-bb06cdbb68dd', 0),
(144, 141, '2020-01-21 13:10:18', 'titleInternet', 1, '{\"de_DE\":\"Internet:\"}', '5a26cd27-9742-47bf-92a6-a397b0763c45', 0),
(145, 141, '2020-01-21 13:10:40', 'titleMail', 1, '{\"de_DE\":\"E-Mail:\"}', '656b8db8-be5e-43ef-9acd-f3bd9286f3dd', 0),
(146, 141, '2020-01-21 13:10:51', 'titlePhone', 1, '{\"de_DE\":\"Tel.:\"}', '646c8cc2-0092-4e2f-b6e2-0d166a64edaf', 0),
(147, 148, '2020-01-21 13:11:10', 'logo', 1, '[]', 'fe288913-16e7-436c-bd38-616cc50d713a', 0),
(148, 128, '2020-01-21 13:11:20', 'header', 1, '[]', '584d9608-5a27-4284-a499-d2e5e8b0f0b2', 0),
(149, 148, '2020-01-21 13:11:45', 'mail', 1, '[]', 'af34b1c7-56fc-4ff5-93f6-68e637cc8a38', 0),
(150, 148, '2020-01-21 13:11:53', 'phone', 1, '[]', '86a46c88-c2b6-4fd5-a4c5-c095e3d6d93b', 0),
(151, 129, '2020-01-21 13:12:25', 'websiteLink', 1, '{\"de_DE\":\"https:\\/\\/www.confirado.de\\/\"}', '3182468d-6e06-495e-a4f6-10ac31cb0012', 0),
(152, 129, '2020-01-21 13:12:55', 'website', 1, '{\"de_DE\":\"www.confirado.de\"}', 'b54a4938-b73a-4daa-9cf4-8313105e311a', 0),
(153, 129, '2020-01-21 13:13:27', 'mail', 1, '{\"de_DE\":\"info@confirado.de\"}', '0922fea0-a9ac-4116-9c79-ace2d1eceedd', 0),
(154, 129, '2020-01-21 13:13:56', 'phone', 1, '{\"de_DE\":\"09771 - 68 78 250\"}', 'caaaa094-26f4-4731-9a84-ffac8a768a5e', 0),
(155, 128, '2020-01-21 13:15:00', 'body', 1, '[]', 'ab677f10-7962-4417-8632-e38c3c2d91f8', 0),
(156, 155, '2020-01-21 13:15:08', 'briefingInfo', 1, '{\"de_DE\":\"Ein verbindliches Angebot mit Festpreis und einem festen Fertigstellungsdatum k\\u00f6nnen wir nach der Erstellung des Funktionsbriefings nennen.\"}', '6573ea9f-ffae-4a8c-bc1d-adce91668ca3', 0),
(157, 155, '2020-01-21 13:17:17', 'coverLetter1', 1, '{\"de_DE\":\"die Umsetzung  m\\u00f6chten wir Ihnen wie folgt anbieten.\"}', '5cd671fb-2d28-4166-bd89-cae4b6b264d5', 0),
(158, 155, '2020-01-21 13:17:36', 'coverLetter2', 1, '{\"de_DE\":\"Ihre konfigurierbaren Produkte:\"}', 'd98fcb4c-d1bf-47e0-9f59-fb5817ce108b', 0),
(159, 155, '2020-01-21 13:18:39', 'betweenOffers', 1, '{\"de_DE\":\"Optional zu unserer L\\u00f6sung bieten wir Ihnen im folgenden an. Diese muss unabh\\u00e4ngig der Produktanzahl nur einmalig erworben werden.\"}', '817deaec-d313-4784-8537-41f3fd968b09', 0),
(160, 155, '2020-01-21 13:18:56', 'ourOffer', 1, '{\"de_DE\":\"Unser Vorabangebot\"}', '3c8f8189-d02a-4a87-b6e6-143894e031c2', 0),
(161, 155, '2020-01-21 13:19:10', 'payment1', 1, '{\"de_DE\":\"- Bei Auftragsbest\\u00e4tigung: Abrechnungen der Lizenzen und Module inkl. dazugeh\\u00f6riger Installationsarbeiten.\"}', 'f1ada37c-1524-4b05-8c3e-7b5ae356a027', 0),
(162, 155, '2020-01-21 13:19:33', 'payment2', 1, '{\"de_DE\":\"- Individuelle Anpassungen werden schrittweise durchgef\\u00fchrt\"}', '53b58fa0-80ba-4199-9f52-5f8158d5315c', 0),
(163, 155, '2020-01-21 13:20:19', 'payment3', 1, '{\"de_DE\":\"\"}', 'b946a6f6-f855-4d06-8894-b0e8419d365a', 0),
(164, 155, '2020-01-21 13:21:57', 'paymentPlan', 1, '[]', 'a6e5e014-1093-48fc-8008-aef3b456a0b6', 0),
(165, 155, '2020-01-21 13:22:09', 'paymentTitle', 1, '[]', '99fe7dfc-c4ed-483f-8f65-5af2c666f74b', 0),
(166, 155, '2020-01-21 13:22:27', 'performance', 1, '{\"de_DE\":\"Leistung\"}', 'd4ee96fe-6f42-4ba2-805c-0606b6963caf', 0),
(167, 155, '2020-01-21 13:22:36', 'price', 1, '{\"de_DE\":\"Preis\"}', '86029719-6ae8-4711-b1e6-cd10811309b7', 0),
(168, 155, '2020-01-21 13:23:45', 'productTitle', 1, '{\"de_DE\":\"\"}', 'ecef2396-6e72-4fe8-bbe8-03fadad9b156', 0),
(169, 155, '2020-01-21 13:24:07', 'quotationInfo', 1, '{\"de_DE\":\"Bei der in diesem Angebot aufgef\\u00fchrten Einsch\\u00e4tzung handelt es sich um ein unverbindliches Preisangebot.\"}', '3516f34f-fb63-463c-ad77-9bedd9b1a4f3', 0),
(170, 155, '2020-01-21 13:25:06', 'salutationD', 1, '{\"de_DE\":\"Sehr geehrte Damen und Herren\"}', '7130fb8b-a9bb-4aca-a855-efb604bd2cf1', 0),
(171, 155, '2020-01-21 13:25:29', 'salutationM', 1, '{\"de_DE\":\"Sehr geehrter Herr\"}', 'beffcbb6-a3aa-4d38-aa53-85826eb19e5e', 0),
(172, 155, '2020-01-21 13:25:50', 'salutationW', 1, '{\"de_DE\":\"Sehr geehrte Frau\"}', '049f968f-2082-4c46-9b38-a4762245c62e', 0),
(173, 155, '2020-01-21 13:27:12', 'signature', 1, '[]', '3d6bcc19-c433-46b0-b625-9c6a1b8e02ae', 0),
(174, 155, '2020-01-21 13:27:39', 'signatureText', 1, '{\"de_DE\":\"Dieses PDF - Dokument wurde von unserer Konfigurator-Software Apto.ONE automatisiert erstellt.\"}', '8d1e1422-7848-411d-b03b-270ffda3404b', 0),
(175, 155, '2020-01-21 13:28:31', 'termsAndConditions1', 1, '{\"de_DE\":\"Es gelten unsere Allgemeinen Gesch\\u00e4ftsbedingungen, die unter\"}', 'bdd6eb7e-e74e-4d2e-b99f-5f00116e8328', 0),
(176, 155, '2020-01-21 13:29:25', 'termsAndConditions2', 1, '{\"de_DE\":\"einzusehen sind.\"}', '39425228-c6c0-4cbd-af65-d1047d44ca83', 0),
(177, 155, '2020-01-21 13:29:55', 'termsAndConditionsLink', 1, '{\"de_DE\":\"https:\\/\\/www.confirado.de\\/agb\\/\"}', 'cafb1f0c-f3c9-4a78-a111-659e9ecec1a0', 0),
(178, 155, '2020-01-21 13:30:26', 'termsAndConditionsLinkText', 1, '{\"de_DE\":\"www.confirado.de\\/agb\\/\"}', 'e5bf66a2-1d84-4556-9b0b-89d847485235', 0),
(179, 155, '2020-01-21 13:31:03', 'yoursSincerely', 1, '{\"de_DE\":\"Mit freundlichen Gr\\u00fc\\u00dfen\"}', 'af86d79a-0bca-4668-ac7b-cd32ccbb42f2', 0),
(180, 65, '2020-01-14 12:05:51', 'back', 1, '{\"de_DE\":\"Zur\\u00fcck\"}', 'b9db6780-6225-4035-a6fd-f04122ac0d9c', 0),
(181, NULL, '2020-01-14 14:12:23', 'AptoSoftRuleDialog', 1, '[]', '71749993-1a89-47fd-b987-97cd68e8dbbd', 0),
(182, 128, '2020-01-14 14:12:31', 'title', 1, '{\"de_DE\":\"Achtung!\"}', '5b0c9a5e-a607-4dc1-948b-9b457ce77094', 0),
(183, 128, '2020-01-14 14:14:27', 'accept', 1, '{\"de_DE\":\"Auswahl verwerfen\"}', '8dd4301f-71f3-492f-9e6f-3f3729899a07', 0),
(184, 128, '2020-01-14 14:14:52', 'refuse', 1, '{\"de_DE\":\"Auswahl \\u00fcbernehmen\"}', 'e0879326-e70f-42cf-a41b-23fa3cfde537', 0),
(185, 83, '2020-03-20 14:06:28', 'di', 1, '{\"de_DE\":\"keine Angabe\"}', '9f1826fd-7b23-450a-bde6-6840e09e92b7', 0),
(186, 67, '2020-03-20 14:59:14', 'back', 1, '{\"de_DE\":\"zur\\u00fcck\"}', 'a664b56b-704c-4785-a40c-d3f3ceb7d9ec', 0),
(187, 181, '2020-03-20 15:00:36', 'title', 1, '{\"de_DE\":\"Achtung!\"}', '67deff42-0d82-4596-bdb8-88d738e0ceaa', 0),
(188, 181, '2020-03-20 15:00:46', 'accept', 1, '{\"de_DE\":\"Auswahl verwerfen\"}', 'a0c0d9bb-80f0-4911-8d4e-9881c1796a14', 0),
(189, 181, '2020-03-20 15:01:09', 'refuse', 1, '{\"de_DE\":\"Auswahl \\u00fcbernehmen\"}', '4dedc4cd-100e-45c5-b270-0101c57ea8de', 0),
(191, 80, '2020-03-20 15:15:53', 'requirePhone', 1, '{\"de_DE\":\"false\"}', '48c89249-fd19-405f-9c1e-7994754369d7', 0),
(192, NULL, '2020-07-21 14:48:48', 'aptoOnePage', 1, '[]', 'c46849b2-272a-4a82-a966-630878bc2241', 0),
(193, NULL, '2020-07-21 14:49:12', 'aptoStepByStep', 1, '[]', '748bf092-d6f9-4658-bb9f-e19e7b2d2881', 0),
(194, NULL, '2020-07-21 17:07:27', 'aptoFooterPaymentProvider', 1, '{\"de_DE\":\"\"}', '39a5cf25-9380-4667-9c51-b54ed3ebeb98', 0),
(195, 194, '2020-07-21 17:13:16', 'paymentImage', 1, '{\"de_DE\":\"\\/paymentimage.png\"}', 'e16a2526-3e27-4546-8b41-4a8da6c64688', 0),
(196, NULL, '2020-07-21 17:49:04', 'aptoDefaultElementDefinition', 1, '[]', 'bf7335dd-0274-4513-bd56-8aa171f5adfe', 0),
(197, 196, '2020-07-21 17:49:32', 'buttons', 1, '[]', '8f577861-ae4b-4452-8bc0-f4b003ba7d44', 0),
(198, 197, '2020-07-21 17:49:43', 'remove', 1, '{\"de_DE\":\"Abw\\u00e4hlen\"}', '02e9022f-bbdc-4d31-bfce-dba89e9226d0', 0),
(199, 197, '2020-07-21 17:49:58', 'update', 1, '{\"de_DE\":\"Aktualisieren\"}', 'a0484131-720e-433c-9286-dbe48212da2b', 0),
(200, 197, '2020-07-21 17:50:05', 'select', 1, '{\"de_DE\":\"Ausw\\u00e4hlen\"}', '8a61e354-90cd-4621-b7a4-6281d2d67aeb', 0),
(201, 197, '2020-07-21 17:50:21', 'select-continue', 1, '{\"de_DE\":\"Ausw\\u00e4hlen & Weiter\"}', '744fad47-2564-43f1-93f6-41b446ea0d28', 0),
(204, NULL, '2020-07-21 18:20:00', 'aptoFavoriteDesigns', 1, '[]', '34a94603-783b-4a3f-bf6b-9eb22a7d6ae3', 0),
(205, 204, '2020-07-21 18:20:22', 'favoriteDesigns', 1, '{\"de_DE\":\"Beliebte Designs zum konfigurieren\"}', 'f1165828-ee22-4b08-b376-2d30ffe14ee0', 0),
(206, NULL, '2020-07-21 18:22:13', 'aptoFavoriteDesignsItem', 1, '[]', '1f0651ec-5713-4dae-b526-ff1eb8c591fc', 0),
(207, 206, '2020-07-21 18:22:45', 'productName', 1, '{\"de_DE\":\"Produktname\"}', '41e69536-e82b-4d7e-858a-ae53dd500610', 0),
(208, 204, '2020-07-21 18:23:15', 'price', 1, '{\"de_DE\":\"ab 230,00 \\u20ac\"}', '1771e2bd-3e0f-4a6c-a178-a48dc90707ab', 0),
(209, 192, '2020-07-21 18:35:19', 'sidebarElements', 1, '[]', '33885818-1cf3-4efd-9804-8e22af2afb9d', 0),
(210, 209, '2020-07-21 18:35:50', 'filter', 1, '{\"de_DE\":\"Filtern\"}', 'e105d7ca-4ee5-4c2c-8bb0-722ec78f706d', 0),
(211, 193, '2020-07-21 18:49:29', 'sidebarSummary', 1, '[]', '8bef7fcf-fba1-48ce-8b82-1867a2f684da', 0),
(212, 211, '2020-07-21 18:49:57', 'basePrice', 1, '{\"de_DE\":\"Grundpreis:\"}', '966b80e0-3009-4987-8762-5351f867c682', 0),
(213, 211, '2020-07-21 18:51:06', 'sum', 1, '{\"de_DE\":\"Summe:\"}', 'df2d552d-8d19-42de-abdf-0cc1ac6fa47e', 0),
(214, 211, '2020-07-21 18:51:52', 'taxes', 1, '{\"de_DE\":\"inkl. MwSt., zzgl.\"}', 'bc5bedeb-dbba-4504-861a-871e8de60195', 0),
(215, 211, '2020-07-21 18:52:16', 'shippingCosts', 1, '{\"de_DE\":\"Versandkosten\"}', '76931cab-5c03-49d5-9249-e67441399778', 0),
(216, 211, '2020-07-21 18:52:25', 'cart', 1, '{\"de_DE\":\"In den Warenkorb legen\"}', 'cf1f1ad9-0c37-4930-a228-b9be5361b76d', 0),
(217, 211, '2020-07-21 18:53:24', 'basketNotification', 1, '{\"de_DE\":\"Schlie\\u00dfen Sie alle Schritte ab, um Ihre Konfiguration in den Warenkorb legen zu k\\u00f6nnen.\"}', '585c9308-cbce-4fbe-8420-f7e944d5ed87', 1),
(218, 211, '2020-07-21 19:00:45', 'summary', 1, '{\"de_DE\":\"Zusammenfassung\"}', '8e02875f-84c6-469a-8636-381fb8834a87', 0),
(219, 193, '2020-07-21 19:02:00', 'elementsContainer', 1, '[]', '6cbaa047-2a1a-4581-ae03-6b832985e494', 0),
(220, 219, '2020-07-21 19:02:22', 'configure', 1, '{\"de_DE\":\"Konfigurieren Sie Ihr Produkt\"}', '7cd0f5a4-c186-4152-81c3-9241e02efc8b', 0),
(221, 219, '2020-07-21 19:02:46', 'stepForward', 1, '{\"de_DE\":\"Schritt vor\"}', '3f48623f-5693-4d90-b44a-8f5b07be2bfb', 0),
(222, 219, '2020-07-21 19:02:58', 'stepBack', 1, '{\"de_DE\":\"Schritt zur\\u00fcck\"}', '570a4d27-9ae7-4164-ae16-73af4c78833b', 0),
(223, 219, '2020-07-21 19:03:08', 'nextMultiple', 1, '{\"de_DE\":\"Weiter\"}', 'afd4d2dc-0a09-4bd8-b0c7-9363c3616b8e', 0),
(224, 219, '2020-07-21 19:03:45', 'filter', 1, '{\"de_DE\":\"Nach Eigenschaft filtern\"}', '467285e1-640b-4f7f-ad7c-e745a4d7fd77', 0),
(225, 219, '2020-07-21 19:04:32', 'nextStep', 1, '{\"de_DE\":\"Weiter\"}', 'fb7e2871-94b9-4c12-b8de-cc1639d49a57', 0),
(226, 211, '2020-07-23 08:16:02', 'shippingCostsLink', 1, '{\"de_DE\":\"\"}', '250096f2-91d8-42d1-ab42-2fb9b34ea57b', 0),
(227, 211, '2020-10-08 14:34:42', 'basketNotificationTitle', 1, '{\"de_DE\":\"Hinweis\"}', '556d4aee-348a-40f9-9a21-de967fd00276', 0),
(228, 3, '2021-01-19 20:39:27', 'openInNewTab', 1, '{\"de_DE\":\"active\"}', '91e62a4d-946b-42b6-933f-6342eb92de3e', 0),
(229, NULL, '2021-01-19 20:41:23', 'aptoTrackingCodes', 1, '[]', '9eb640e4-adc8-427e-9afb-da69923a4fbd', 0),
(230, 229, '2021-01-19 20:41:34', 'scripts', 1, '[]', 'dc42e3b1-0dec-4e69-a566-8cfe20c633bc', 0),
(231, 111, '2021-02-22 15:57:45', 'configurationToPdf', 1, '[]', 'f25fac4c-5fee-467a-9f32-130fd9827b05', 0),
(232, 231, '2021-02-22 15:57:55', 'pdf', 1, '[]', 'f5d40b94-df60-431c-9361-913f807f025a', 0),
(233, 232, '2021-02-22 15:58:05', 'header', 0, '{\"de_DE\":\"<p>Header 1<br \\/>Header 2<br \\/>Header 3<\\/p>\"}', 'b3c6ae84-89b2-4b4e-b982-4392bc552634', 1),
(234, 232, '2021-02-22 15:58:13', 'footer', 0, '{\"de_DE\":\"<p>Footer 1<br \\/>Footer 2<br \\/>Footer 3<br \\/>Footer 4<br \\/>Footer 5<br \\/><\\/p>\"}', '0d506ec4-06ee-4912-8645-7a981b1514b2', 1),
(235, 231, '2021-02-22 16:27:34', 'form', 1, '[]', '2e3219dc-de96-4e2e-bae8-70bfb40c088e', 0),
(236, 235, '2021-02-22 16:27:45', 'fields', 1, '[]', '7d757e10-6976-434d-8d74-736d8cf187c4', 0),
(237, 236, '2021-02-22 16:28:27', 'salutation', 1, '[]', 'b910ef28-d73d-4ec8-b77c-f501fbbfb8bc', 0),
(238, 236, '2021-02-22 16:28:41', 'title', 1, '[]', 'f0b383cb-8393-4900-bdbd-7cfbf897679c', 0),
(239, 236, '2021-02-22 16:28:51', 'firstname', 1, '[]', '8f8e22a0-9548-41cf-a16f-e758c3ce1915', 0),
(240, 236, '2021-02-22 16:28:58', 'lastname', 1, '[]', 'bf478215-e2c6-4692-a40f-f5eff6eca9f6', 0),
(241, 236, '2021-02-22 16:29:23', 'mail', 1, '[]', '30ac54ee-9e5b-4d7e-9f3d-184a11d5a1d3', 0),
(242, 239, '2021-02-22 16:29:50', 'position', 1, '{\"de_DE\":\"30\"}', '82fef8d4-21b6-42b4-9702-423920789310', 0),
(243, 240, '2021-02-22 16:30:11', 'position', 1, '{\"de_DE\":\"40\"}', '1ce1df14-5c36-4b5f-bf49-51c5d1dd6c24', 0),
(244, 237, '2021-02-22 16:30:26', 'position', 1, '{\"de_DE\":\"10\"}', '65af5591-2379-4935-b97c-344e8ef5238f', 0),
(245, 241, '2021-02-22 16:30:34', 'position', 1, '{\"de_DE\":\"50\"}', '06a3c850-1c52-4ef0-9099-ff34267c3cbe', 0),
(247, 239, '2021-02-22 16:31:56', 'label', 1, '{\"de_DE\":\"Vorname\"}', '91a1dce7-4825-4c63-8c0f-5b49cab5a6dc', 0),
(248, 240, '2021-02-22 16:32:05', 'label', 1, '{\"de_DE\":\"Nachname\"}', '355478cc-4077-44c5-a44f-1fe15a5970cc', 0),
(249, 241, '2021-02-22 16:32:22', 'label', 1, '{\"de_DE\":\"E-Mail\"}', '78606a8f-5d5f-440c-ad10-b85adfb94677', 0),
(250, 237, '2021-02-22 16:32:32', 'label', 1, '{\"de_DE\":\"Anrede\"}', '48be58ce-6e2a-4d35-9857-974e07e4b8fc', 0),
(251, 238, '2021-02-22 16:32:43', 'label', 1, '{\"de_DE\":\"Titel\"}', '96842910-cbfc-419a-98d5-b1758517d4b6', 0),
(252, 235, '2021-02-22 16:33:50', 'title', 1, '{\"de_DE\":\"Konfiguration speichern\"}', '11e0bef3-cdfc-4167-8c00-0326baf18e03', 0),
(253, 235, '2021-02-22 16:35:30', 'info', 1, '{\"de_DE\":\"<p>Sie erhalten ein PDF mit Code f\\u00fcr Ihre aktuelle Konfiguration per E-Mail.<\\/p>\"}', '7d9dcbbd-ecea-45d6-b821-11e7b008e1e4', 1),
(254, 235, '2021-02-22 16:37:01', 'termOfUse', 1, '{\"de_DE\":\"<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.<\\/p>\"}', 'af1f4f9d-dec0-4167-a07c-41cede9b9a6f', 1),
(255, 238, '2021-02-22 19:52:48', 'position', 1, '{\"de_DE\":\"20\"}', 'de1615b3-34a9-4f37-bd4f-322e5939d071', 0),
(256, 232, '2021-02-23 11:45:29', 'summary', 1, '[]', 'd715723e-d1e1-4118-8b83-66e26f7f3a57', 0),
(257, 256, '2021-02-23 11:45:42', 'head', 1, '[]', '3822a7f5-79ef-47d0-8c2f-2b6b9d7d37f7', 0),
(258, 257, '2021-02-23 11:46:38', 'description', 1, '{\"de_DE\":\"Artikelbezeichnung\"}', 'd1ee9da3-9e96-4fdd-8442-70eeadd67867', 0),
(259, 257, '2021-02-23 11:46:51', 'quantity', 1, '{\"de_DE\":\"Anzahl\"}', 'a8dc4748-06a1-4e1c-b23d-2cf7ddba0c3a', 0),
(260, 257, '2021-02-23 11:47:42', 'price', 1, '{\"de_DE\":\"St\\u00fcckpreis\"}', '509ff7a3-7d30-4edd-bb51-b9147f249da3', 0),
(261, 256, '2021-02-23 11:56:05', 'codeInfo', 1, '{\"de_DE\":\"Ihr Konfigurationscode:\"}', 'b76f6a47-67e6-4b9c-a47c-e628da795ec4', 0),
(262, 256, '2021-02-23 12:03:16', 'date', 1, '{\"de_DE\":\"Datum:\"}', 'dc7fb4ab-c7e2-4ef1-a015-a732c1b36bf8', 0),
(263, 256, '2021-02-23 12:03:45', 'info', 0, '{\"de_DE\":\"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\"}', '449321e6-656d-4bca-95f9-f35c6683d9bc', 0),
(264, 232, '2021-02-23 12:10:40', 'customer', 1, '[]', '281f82b9-e303-49ec-9d0a-e503f2eb0115', 0),
(265, 264, '2021-02-23 12:11:19', 'headline', 1, '{\"de_DE\":\"Ihre Angaben\"}', '8e429f88-63c9-467c-97f7-875277dd219c', 0),
(266, 256, '2021-02-23 12:23:39', 'codeLink', 1, '{\"de_DE\":\"Konfiguration ansehen\"}', '4d18c038-5224-4f71-99ec-4166914eaa2f', 0),
(267, 237, '2021-02-23 21:28:25', 'select', 1, '{\"de_DE\":\"keine Angabe|Herr|Frau\"}', 'b419054e-2cc1-478a-becd-b92ca5128c31', 0),
(268, 241, '2021-02-23 21:54:12', 'type', 1, '{\"de_DE\":\"email\"}', '1e2ce2c6-dbb5-4c3a-861a-579845c0aaa4', 0),
(269, 241, '2021-02-23 22:06:28', 'required', 1, '{\"de_DE\":\"required\"}', '392a8a92-a0e0-4cc0-9c30-6746bb545d82', 0),
(270, 235, '2021-02-24 12:41:34', 'requiredError', 1, '{\"de_DE\":\"<p>Bitte f\\u00fcllen Sie alle Pflichtfelder aus.<\\/p>\"}', 'edba260a-98ca-4b20-9f69-27eeeffb88f4', 1),
(271, 237, '2021-02-24 12:45:21', 'required', 1, '{\"de_DE\":\"required\"}', '1f60f949-3f37-4aa1-8dc0-d5cbcab7ca0b', 0),
(272, 235, '2021-02-24 12:47:26', 'sendSuccess', 1, '{\"de_DE\":\"Ihre Konfiguration wurde Ihnen per E-Mail zugeschickt. Bitte \\u00fcberpr\\u00fcfen Sie Ihr Postfach.\"}', '1c9eb1ca-881c-4306-bcde-0ba57e34f270', 0),
(273, 235, '2021-02-24 12:49:02', 'sendError', 1, '{\"de_DE\":\"Es gab ein Problem beim Versenden der Email. Bitte wenden Sie sich an den Seitenbetreiber.\"}', '3c0ee6b0-c4f4-491c-ab6a-03400767cac0', 0),
(274, 257, '2021-02-24 14:22:04', 'image', 1, '{\"de_DE\":\"Artikelbild\"}', '6f538002-b7f7-4143-a829-4ed2876ed5c0', 0),
(275, 231, '2021-02-25 08:23:34', 'mail', 1, '[]', 'bdb58429-287a-4de8-8d06-b6dea231d3bb', 0),
(276, 275, '2021-02-25 08:23:47', 'linkText', 1, '{\"de_DE\":\"Konfiguration \\u00f6ffnen\"}', '376b7d59-96e7-4641-8de7-6f95410fe9eb', 0),
(277, 275, '2021-02-25 08:24:00', 'message', 1, '{\"de_DE\":\"<p>Im Anhang finden Sie die PDF zu Ihrer aktuellen Konfiguration.\\n<br \\/>\\u00dcber den folgenden Link k\\u00f6nnen Sie die Konfiguration direkt im Browser wiederherstellen.<\\/p>\"}', '1cc75b68-18f8-4af5-8a01-93b97a1d4bc6', 1),
(278, 275, '2021-02-25 08:24:11', 'subject', 1, '{\"de_DE\":\"Ihre Konfiguration als PDF\"}', '2cf56ffb-75df-4d4e-af04-d30dfb728dac', 0),
(279, 275, '2021-02-25 08:25:03', 'salutation', 1, '{\"de_DE\":\"<p>Guten Tag,<\\/p>\"}', 'ae633f47-31da-4e81-a09d-1b75a1822ec7', 1),
(280, 275, '2021-02-25 08:25:16', 'signature', 1, '{\"de_DE\":\"<p>Mit freundlichen Gr\\u00fc\\u00dfen<br \\/>Ronny Baumann<\\/p>\"}', 'cf9b2aa3-0786-474a-99eb-5e8c6cf70949', 1),
(281, 235, '2021-02-25 11:49:28', 'buttonSend', 1, '{\"de_DE\":\"Abschicken\"}', '1accca34-0302-4b25-a61d-1dcf5288a6f6', 0),
(282, 235, '2021-02-25 11:49:39', 'buttonSendAgain', 1, '{\"de_DE\":\"Erneut senden\"}', '185eba5e-55c6-4932-9b56-2edea95e2fe6', 0),
(285, 236, '2021-02-27 14:49:15', 'address', 0, '[]', '1ec49de9-dcc4-42ab-972a-05e86fd6d87f', 0),
(286, 285, '2021-02-27 14:49:31', 'label', 1, '{\"de_DE\":\"Adresse2\"}', 'c83456a3-8de2-4296-9b62-fa77ba5eead8', 0),
(287, 3, '2021-06-07 15:02:15', 'logoImg', 1, '{\"de_DE\":\"\\/logo.png\"}', 'dbaeea2c-c76d-497d-8ab4-ffd0a576fa60', 0),
(288, 3, '2021-06-07 15:02:40', 'logoImgMobile', 1, '{\"de_DE\":\"\\/logo-mobile.png\"}', 'bfdf332f-17a2-4ffa-ad76-7b3dab648b95', 0),
(289, 97, '2021-11-25 14:01:43', 'shareLinks', 1, '[]', 'aa866199-6615-49b5-847a-ee6aa5b9d9c5', 0),
(290, 289, '2021-11-25 14:01:55', 'facebook', 1, '[]', '23218c3d-227c-4bce-a52f-272bd347a67c', 0),
(291, 289, '2021-11-25 14:02:03', 'twitter', 1, '[]', '6bbd0493-c87f-4618-9883-094b70dbbbed', 0),
(292, 290, '2021-11-25 14:02:13', 'link', 1, '{\"de_DE\":\"https:\\/\\/www.facebook.com\\/sharer.php?u={_currentUrl_}\"}', '6d369070-0722-43c6-a722-afee81059ca6', 0),
(293, 291, '2021-11-25 14:02:18', 'link', 1, '{\"de_DE\":\"https:\\/\\/twitter.com\\/share?url={_currentUrl_}\"}', '19560956-8d40-4373-8ea9-29e78032be5a', 0),
(294, 290, '2021-11-25 14:02:28', 'iconClass', 1, '{\"de_DE\":\"fa-facebook-square\"}', '04b3699e-93f4-4a9c-9069-af0b73dc1494', 0),
(295, 291, '2021-11-25 14:02:34', 'iconClass', 1, '{\"de_DE\":\"fa-twitter\"}', 'f7e8ea20-dc75-45c1-9f41-0e554a2db56e', 0),
(296, 290, '2021-11-25 14:02:42', 'target', 1, '{\"de_DE\":\"_blank\"}', 'b55e2df1-3d4f-40b0-a7cd-50c60fa6c7a4', 0),
(297, 291, '2021-11-25 14:02:55', 'target', 1, '{\"de_DE\":\"_blank\"}', 'b73c4182-4570-400d-b7be-d5a7d3ef5d2d', 0);

-- --------------------------------------------------------

--
-- Table structure for table `apto_customer`
--

DROP TABLE IF EXISTS `apto_customer`;
CREATE TABLE `apto_customer` (
  `surrogate_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `external_id` varchar(255) DEFAULT NULL,
  `gender` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `id` char(36) NOT NULL,
  `shop_id` varchar(255) DEFAULT NULL COMMENT '(DC2Type:AptoPropertyUuid)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `apto_customer`
--

INSERT INTO `apto_customer` (`surrogate_id`, `created`, `email`, `active`, `first_name`, `last_name`, `external_id`, `gender`, `username`, `id`, `shop_id`) VALUES
(1, '2018-08-09 12:47:02', 'a.renk@confirado.de', 0, 'Andreas', 'Renk', '2', 1, 'a.renk@confirado.de', '38b25016-3d6f-46a9-b687-15621cfb3d85', '6bd4f597-ddc3-4c5a-ba1f-e90e3ae5028b');

-- --------------------------------------------------------

--
-- Table structure for table `apto_customer_configuration`
--

DROP TABLE IF EXISTS `apto_customer_configuration`;
CREATE TABLE `apto_customer_configuration` (
  `surrogate_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `state` longtext NOT NULL COMMENT '(DC2Type:AptoPropertyJsonSerializable)',
  `id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_customer_group`
--

DROP TABLE IF EXISTS `apto_customer_group`;
CREATE TABLE `apto_customer_group` (
  `surrogate_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `input_gross` tinyint(1) NOT NULL,
  `show_gross` tinyint(1) NOT NULL,
  `external_id` varchar(255) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `shop_id` varchar(255) DEFAULT NULL COMMENT '(DC2Type:AptoPropertyUuid)',
  `fallback` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `apto_customer_group`
--

INSERT INTO `apto_customer_group` (`surrogate_id`, `created`, `name`, `input_gross`, `show_gross`, `external_id`, `id`, `shop_id`, `fallback`) VALUES
(1, '2017-05-05 09:40:59', 'Shopkunden', 1, 1, '00000000-0000-0000-0000-000000000000', 'fe34971d-f345-415f-b2fa-bdf914e11124', '133c31ee-7fd3-4032-a27d-a6959dd31aac', 1),
(2, '2021-03-19 15:26:42', 'Händler', 1, 1, 'H', '5e820507-45eb-4c9c-8d67-5140e4ecb03a', '133c31ee-7fd3-4032-a27d-a6959dd31aac', 0);

-- --------------------------------------------------------

--
-- Table structure for table `apto_custom_property`
--

DROP TABLE IF EXISTS `apto_custom_property`;
CREATE TABLE `apto_custom_property` (
  `surrogate_id` int(11) NOT NULL,
  `keyname` varchar(255) NOT NULL,
  `value` longtext DEFAULT NULL,
  `translatable` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_discount`
--

DROP TABLE IF EXISTS `apto_discount`;
CREATE TABLE `apto_discount` (
  `surrogate_id` int(11) NOT NULL,
  `discount` double NOT NULL DEFAULT 0,
  `name` longtext DEFAULT NULL COMMENT '(DC2Type:AptoPropertyTranslatedValue)',
  `description` longtext DEFAULT NULL COMMENT '(DC2Type:AptoPropertyTranslatedValue)',
  `id` char(36) NOT NULL,
  `customer_group_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_element_float_input_item`
--

DROP TABLE IF EXISTS `apto_element_float_input_item`;
CREATE TABLE `apto_element_float_input_item` (
  `surrogate_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `product_id` varchar(36) NOT NULL COMMENT '(DC2Type:AptoPropertyUuid)',
  `section_id` varchar(36) NOT NULL COMMENT '(DC2Type:AptoPropertyUuid)',
  `element_id` varchar(36) NOT NULL COMMENT '(DC2Type:AptoPropertyUuid)',
  `id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_element_float_input_item_to_apto_price`
--

DROP TABLE IF EXISTS `apto_element_float_input_item_to_apto_price`;
CREATE TABLE `apto_element_float_input_item_to_apto_price` (
  `float_input_item_surrogate_id` int(11) NOT NULL,
  `apto_price_surrogate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_element_price_per_unit_item`
--

DROP TABLE IF EXISTS `apto_element_price_per_unit_item`;
CREATE TABLE `apto_element_price_per_unit_item` (
  `surrogate_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `product_id` varchar(36) NOT NULL COMMENT '(DC2Type:AptoPropertyUuid)',
  `section_id` varchar(36) NOT NULL COMMENT '(DC2Type:AptoPropertyUuid)',
  `element_id` varchar(36) NOT NULL COMMENT '(DC2Type:AptoPropertyUuid)',
  `id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `apto_element_price_per_unit_item`
--

INSERT INTO `apto_element_price_per_unit_item` (`surrogate_id`, `created`, `product_id`, `section_id`, `element_id`, `id`) VALUES
(1, '2020-09-24 19:37:52', '55761379-980a-4141-a2df-932ecb88b311', 'ec6e552f-f810-4f5a-8e1f-1b125748cadd', '25fdb6a0-36e8-4637-8d6d-1f96cae6bed7', 'e8a0797e-19b4-4364-98bc-ebfd449ed41f');

-- --------------------------------------------------------

--
-- Table structure for table `apto_element_price_per_unit_item_to_apto_price`
--

DROP TABLE IF EXISTS `apto_element_price_per_unit_item_to_apto_price`;
CREATE TABLE `apto_element_price_per_unit_item_to_apto_price` (
  `price_per_unit_item_surrogate_id` int(11) NOT NULL,
  `apto_price_surrogate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `apto_element_price_per_unit_item_to_apto_price`
--

INSERT INTO `apto_element_price_per_unit_item_to_apto_price` (`price_per_unit_item_surrogate_id`, `apto_price_surrogate_id`) VALUES
(1, 4418);

-- --------------------------------------------------------

--
-- Table structure for table `apto_element_select_box_item`
--

DROP TABLE IF EXISTS `apto_element_select_box_item`;
CREATE TABLE `apto_element_select_box_item` (
  `surrogate_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `name` longtext NOT NULL COMMENT '(DC2Type:AptoPropertyTranslatedValue)',
  `product_id` varchar(36) NOT NULL COMMENT '(DC2Type:AptoPropertyUuid)',
  `section_id` varchar(36) NOT NULL COMMENT '(DC2Type:AptoPropertyUuid)',
  `element_id` varchar(36) NOT NULL COMMENT '(DC2Type:AptoPropertyUuid)',
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `apto_element_select_box_item`
--

INSERT INTO `apto_element_select_box_item` (`surrogate_id`, `created`, `name`, `product_id`, `section_id`, `element_id`, `is_default`, `id`) VALUES
(2, '2020-09-24 20:04:24', '{\"de_DE\":\"Griff in  Fensterfarbe\"}', '55761379-980a-4141-a2df-932ecb88b311', '1864ad13-a7b2-4767-bba7-8b52f969e935', '7621921b-d90b-48f4-b0e2-7c33558cf664', 0, '12c0bc51-4eed-4efa-8940-89fe1972a141'),
(3, '2020-09-24 20:04:46', '{\"de_DE\":\"Griff in Rollofarbe\"}', '55761379-980a-4141-a2df-932ecb88b311', '1864ad13-a7b2-4767-bba7-8b52f969e935', '7621921b-d90b-48f4-b0e2-7c33558cf664', 0, '24cadf22-b8b6-441a-bcce-f7b466c27e21');

-- --------------------------------------------------------

--
-- Table structure for table `apto_element_select_box_item_to_apto_price`
--

DROP TABLE IF EXISTS `apto_element_select_box_item_to_apto_price`;
CREATE TABLE `apto_element_select_box_item_to_apto_price` (
  `select_box_item_surrogate_id` int(11) NOT NULL,
  `apto_price_surrogate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_event_store`
--

DROP TABLE IF EXISTS `apto_event_store`;
CREATE TABLE `apto_event_store` (
  `event_id` int(11) NOT NULL,
  `event_body` longtext NOT NULL,
  `type_name` varchar(255) NOT NULL,
  `occurred_on` datetime NOT NULL,
  `user_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `apto_event_store`
--

INSERT INTO `apto_event_store` (`event_id`, `event_body`, `type_name`, `occurred_on`, `user_id`) VALUES
(1, '{\"name\":\"Apto.ONE\",\"id\":\"133c31ee-7fd3-4032-a27d-a6959dd31aac\",\"occurredOn\":\"2023-02-28T19:35:07+01:00\"}', 'Apto\\Catalog\\Domain\\Core\\Model\\Shop\\ShopNameUpdated', '2023-02-28 19:35:07', NULL),
(2, '{\"name\":\"Apto.ONE\",\"id\":\"133c31ee-7fd3-4032-a27d-a6959dd31aac\",\"occurredOn\":\"2023-02-28T19:35:07+01:00\"}', 'Apto\\Catalog\\Domain\\Core\\Model\\Shop\\ShopNameUpdated', '2023-02-28 19:35:07', NULL),
(3, '{\"name\":\"Apto.ONE\",\"id\":\"133c31ee-7fd3-4032-a27d-a6959dd31aac\",\"occurredOn\":\"2023-02-28T19:35:07+01:00\"}', 'Apto\\Catalog\\Domain\\Core\\Model\\Shop\\ShopNameUpdated', '2023-02-28 19:35:07', NULL),
(4, '{\"id\":\"a1f7a918-73f6-4eb9-8160-8813c3340163\",\"occurredOn\":\"2023-02-28T19:36:04+01:00\"}', 'Apto\\Base\\Domain\\Backend\\Model\\User\\UserAdded', '2023-02-28 19:36:04', 'superadmin'),
(5, '{\"username\":\"apto\",\"id\":\"a1f7a918-73f6-4eb9-8160-8813c3340163\",\"occurredOn\":\"2023-02-28T19:36:04+01:00\"}', 'Apto\\Base\\Domain\\Backend\\Model\\User\\UserUsernameUpdated', '2023-02-28 19:36:04', 'superadmin'),
(6, '{\"id\":\"a1f7a918-73f6-4eb9-8160-8813c3340163\",\"occurredOn\":\"2023-02-28T19:36:04+01:00\"}', 'Apto\\Base\\Domain\\Backend\\Model\\User\\UserPasswordUpdated', '2023-02-28 19:36:04', 'superadmin'),
(7, '{\"email\":\"42@example.com\",\"id\":\"a1f7a918-73f6-4eb9-8160-8813c3340163\",\"occurredOn\":\"2023-02-28T19:36:04+01:00\"}', 'Apto\\Base\\Domain\\Backend\\Model\\User\\UserEmailUpdated', '2023-02-28 19:36:04', 'superadmin'),
(8, '{\"active\":true,\"id\":\"a1f7a918-73f6-4eb9-8160-8813c3340163\",\"occurredOn\":\"2023-02-28T19:36:04+01:00\"}', 'Apto\\Base\\Domain\\Backend\\Model\\User\\UserActiveUpdated', '2023-02-28 19:36:04', 'superadmin'),
(9, '{\"rte\":\"trumbowyg\",\"id\":\"a1f7a918-73f6-4eb9-8160-8813c3340163\",\"occurredOn\":\"2023-02-28T19:36:04+01:00\"}', 'Apto\\Base\\Domain\\Backend\\Model\\User\\UserRteUpdated', '2023-02-28 19:36:04', 'superadmin'),
(10, '{\"userRoles\":[\"80368e25-ab66-4833-aa4c-b1496e3aa1b4\"],\"id\":\"a1f7a918-73f6-4eb9-8160-8813c3340163\",\"occurredOn\":\"2023-02-28T19:36:04+01:00\"}', 'Apto\\Base\\Domain\\Backend\\Model\\User\\UserUserRolesUpdated', '2023-02-28 19:36:04', 'superadmin'),
(11, '{\"id\":\"1c82e7f9-61eb-45d0-a9bd-197ef8eb6a57\",\"occurredOn\":\"2023-02-28T19:40:42+01:00\"}', 'Apto\\Base\\Domain\\Backend\\Model\\User\\UserAdded', '2023-02-28 19:40:42', NULL),
(12, '{\"username\":\"apto\",\"id\":\"1c82e7f9-61eb-45d0-a9bd-197ef8eb6a57\",\"occurredOn\":\"2023-02-28T19:40:42+01:00\"}', 'Apto\\Base\\Domain\\Backend\\Model\\User\\UserUsernameUpdated', '2023-02-28 19:40:42', NULL),
(13, '{\"id\":\"1c82e7f9-61eb-45d0-a9bd-197ef8eb6a57\",\"occurredOn\":\"2023-02-28T19:40:42+01:00\"}', 'Apto\\Base\\Domain\\Backend\\Model\\User\\UserPasswordUpdated', '2023-02-28 19:40:42', NULL),
(14, '{\"email\":\"noreply@dev.confirado.de\",\"id\":\"1c82e7f9-61eb-45d0-a9bd-197ef8eb6a57\",\"occurredOn\":\"2023-02-28T19:40:42+01:00\"}', 'Apto\\Base\\Domain\\Backend\\Model\\User\\UserEmailUpdated', '2023-02-28 19:40:42', NULL),
(15, '{\"active\":true,\"id\":\"1c82e7f9-61eb-45d0-a9bd-197ef8eb6a57\",\"occurredOn\":\"2023-02-28T19:40:42+01:00\"}', 'Apto\\Base\\Domain\\Backend\\Model\\User\\UserActiveUpdated', '2023-02-28 19:40:42', NULL),
(16, '{\"rte\":\"trumbowyg\",\"id\":\"1c82e7f9-61eb-45d0-a9bd-197ef8eb6a57\",\"occurredOn\":\"2023-02-28T19:40:42+01:00\"}', 'Apto\\Base\\Domain\\Backend\\Model\\User\\UserRteUpdated', '2023-02-28 19:40:42', NULL),
(17, '{\"userRoles\":[\"80368e25-ab66-4833-aa4c-b1496e3aa1b4\"],\"id\":\"1c82e7f9-61eb-45d0-a9bd-197ef8eb6a57\",\"occurredOn\":\"2023-02-28T19:40:42+01:00\"}', 'Apto\\Base\\Domain\\Backend\\Model\\User\\UserUserRolesUpdated', '2023-02-28 19:40:42', NULL),
(18, '{\"operatorName\":\"\",\"id\":\"133c31ee-7fd3-4032-a27d-a6959dd31aac\",\"occurredOn\":\"2023-02-28T19:41:42+01:00\"}', 'Apto\\Catalog\\Domain\\Core\\Model\\Shop\\ShopOperatorNameUpdated', '2023-02-28 19:41:42', 'superadmin'),
(19, '{\"operatorName\":\"Confirado Development\",\"id\":\"133c31ee-7fd3-4032-a27d-a6959dd31aac\",\"occurredOn\":\"2023-02-28T19:41:52+01:00\"}', 'Apto\\Catalog\\Domain\\Core\\Model\\Shop\\ShopOperatorNameUpdated', '2023-02-28 19:41:52', NULL),
(20, '{\"id\":\"29eab133-ba26-4a29-be64-c5669da0137c\",\"occurredOn\":\"2023-02-28T19:41:52+01:00\"}', 'Apto\\Base\\Domain\\Backend\\Model\\User\\UserAdded', '2023-02-28 19:41:52', NULL),
(21, '{\"username\":\"apto\",\"id\":\"29eab133-ba26-4a29-be64-c5669da0137c\",\"occurredOn\":\"2023-02-28T19:41:52+01:00\"}', 'Apto\\Base\\Domain\\Backend\\Model\\User\\UserUsernameUpdated', '2023-02-28 19:41:52', NULL),
(22, '{\"id\":\"29eab133-ba26-4a29-be64-c5669da0137c\",\"occurredOn\":\"2023-02-28T19:41:52+01:00\"}', 'Apto\\Base\\Domain\\Backend\\Model\\User\\UserPasswordUpdated', '2023-02-28 19:41:52', NULL),
(23, '{\"email\":\"noreply@dev.confirado.de\",\"id\":\"29eab133-ba26-4a29-be64-c5669da0137c\",\"occurredOn\":\"2023-02-28T19:41:52+01:00\"}', 'Apto\\Base\\Domain\\Backend\\Model\\User\\UserEmailUpdated', '2023-02-28 19:41:52', NULL),
(24, '{\"active\":true,\"id\":\"29eab133-ba26-4a29-be64-c5669da0137c\",\"occurredOn\":\"2023-02-28T19:41:52+01:00\"}', 'Apto\\Base\\Domain\\Backend\\Model\\User\\UserActiveUpdated', '2023-02-28 19:41:52', NULL),
(25, '{\"rte\":\"trumbowyg\",\"id\":\"29eab133-ba26-4a29-be64-c5669da0137c\",\"occurredOn\":\"2023-02-28T19:41:52+01:00\"}', 'Apto\\Base\\Domain\\Backend\\Model\\User\\UserRteUpdated', '2023-02-28 19:41:52', NULL),
(26, '{\"userRoles\":[\"80368e25-ab66-4833-aa4c-b1496e3aa1b4\"],\"id\":\"29eab133-ba26-4a29-be64-c5669da0137c\",\"occurredOn\":\"2023-02-28T19:41:52+01:00\"}', 'Apto\\Base\\Domain\\Backend\\Model\\User\\UserUserRolesUpdated', '2023-02-28 19:41:52', NULL),
(27, '{\"operatorName\":\"\",\"id\":\"133c31ee-7fd3-4032-a27d-a6959dd31aac\",\"occurredOn\":\"2023-02-28T19:42:05+01:00\"}', 'Apto\\Catalog\\Domain\\Core\\Model\\Shop\\ShopOperatorNameUpdated', '2023-02-28 19:42:05', 'superadmin'),
(28, '{\"content\":{\"de_DE\":\"\"},\"id\":\"b06a83c7-ec65-42f7-bdee-cd1b191303a6\",\"occurredOn\":\"2024-01-18T15:58:28+01:00\"}', 'Apto\\Base\\Domain\\Core\\Model\\ContentSnippet\\ContentSnippetContentChanged', '2024-01-18 15:58:28', 'superadmin');

-- --------------------------------------------------------

--
-- Table structure for table `apto_filter_category`
--

DROP TABLE IF EXISTS `apto_filter_category`;
CREATE TABLE `apto_filter_category` (
  `surrogate_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `name` longtext DEFAULT NULL COMMENT '(DC2Type:AptoPropertyTranslatedValue)',
  `identifier_value` varchar(255) NOT NULL,
  `id` char(36) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_filter_property`
--

DROP TABLE IF EXISTS `apto_filter_property`;
CREATE TABLE `apto_filter_property` (
  `surrogate_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `name` longtext DEFAULT NULL COMMENT '(DC2Type:AptoPropertyTranslatedValue)',
  `identifier_value` varchar(255) NOT NULL,
  `id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_filter_property_to_filter_category`
--

DROP TABLE IF EXISTS `apto_filter_property_to_filter_category`;
CREATE TABLE `apto_filter_property_to_filter_category` (
  `filterProperty_id` int(11) NOT NULL,
  `filterCategory_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_group`
--

DROP TABLE IF EXISTS `apto_group`;
CREATE TABLE `apto_group` (
  `surrogate_id` int(11) NOT NULL,
  `name` longtext DEFAULT NULL COMMENT '(DC2Type:AptoPropertyTranslatedValue)',
  `created` datetime NOT NULL,
  `id` char(36) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `identifier_value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `apto_group`
--

INSERT INTO `apto_group` (`surrogate_id`, `name`, `created`, `id`, `position`, `identifier_value`) VALUES
(1, '{\"de_DE\":\"Gruppe 1\"}', '2021-02-17 18:49:08', '85ed3307-cda6-431d-827a-5980bb6476c3', 10, 'gruppe-1'),
(2, '{\"de_DE\":\"Gruppe 2\"}', '2021-02-17 18:49:14', '43bd5abe-91a0-4527-8e60-c5e0b534a7bc', 20, 'gruppe-2'),
(3, '{\"de_DE\":\"Gruppe 3\"}', '2021-02-17 18:49:21', '147e720e-98f6-4b01-8cef-7cc011234411', 30, 'gruppe-3');

-- --------------------------------------------------------

--
-- Table structure for table `apto_guest_configuration`
--

DROP TABLE IF EXISTS `apto_guest_configuration`;
CREATE TABLE `apto_guest_configuration` (
  `surrogate_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `state` longtext NOT NULL COMMENT '(DC2Type:AptoPropertyJsonSerializable)',
  `id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `apto_guest_configuration`
--

INSERT INTO `apto_guest_configuration` (`surrogate_id`, `product_id`, `email`, `name`, `created`, `state`, `id`) VALUES
(2, 48, 'ronny.buck@clickit-fotobox.de', 'Ronny', '2018-09-07 06:27:00', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"c9fb7e3a-edcf-4424-ba18-2e4cc8110196\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"f1ed1172-45a9-4ec9-8d1c-8a560a3b9295\":true}}}}', '9787a933-11c1-4ab0-ba3f-891c9149b784'),
(3, 48, 'ronny.buck@clickit-fotobox.de', 'Buck', '2018-09-07 16:49:24', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"2bd98648-53bb-4912-a3fb-50fd0e58e5a6\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true}}}}', '1ae84871-394d-4e11-9945-6670ad5ea4c4'),
(6, 48, 'm.zehetner@steyr-mannlicher.com', 'Zehetner', '2018-12-19 09:28:28', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"3c4c2d8b-e6e6-4d09-804b-98769d649a20\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"1f9ddcc5-3422-4023-bff4-00a1000a0a95\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":50,\"height\":280}}}}}', 'caf89f44-16a6-46ee-a817-bafa794bdaf6'),
(7, 48, 'benedikt.guenzinger@schreinerei-daxenberger.de', 'Bene', '2019-01-10 16:02:14', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"2bd98648-53bb-4912-a3fb-50fd0e58e5a6\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true,\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true}}}}', '475ed98a-aebc-4a34-bb98-d7a5a99bd721'),
(14, 48, 'johanna.teglas@gmail.com', 'Johanna', '2019-06-24 11:08:52', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":900,\"height\":1250}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"25fdb6a0-36e8-4637-8d6d-1f96cae6bed7\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"56298c5c-eb0c-48a7-9f69-a61014ea3c91\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"cd6eba99-346f-4ca1-9960-bd27cc400e27\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true}}}}', '7e0f964a-f4f1-4027-a713-874b6970ccad'),
(15, 48, 'fehr-fenstertechnik@t-online.de', 'Peter', '2019-09-13 13:52:34', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":1200,\"height\":1350}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"59c3d714-26bb-42b0-911e-36d1a7f87092\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"832ce09f-c471-47a1-be72-44bf8f916f92\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"1f9ddcc5-3422-4023-bff4-00a1000a0a95\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true}}}}', '9ca6522f-e649-4680-b43c-4f3a3367eeee'),
(22, 48, 'ico.balukcic@gmail.com', 'ilija', '2020-04-10 09:48:17', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":850,\"height\":2200}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"59c3d714-26bb-42b0-911e-36d1a7f87092\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true}}}}', '828f7d48-8e5c-4470-81f8-b882f1d07bd2'),
(25, 48, 'geffke@gmaill.com', 'AG', '2020-07-08 05:27:09', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":1000,\"height\":2000}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"d0eb303f-5cfc-4a68-8518-771915dc21ac\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"2273ce2a-2c16-4455-81c2-8e37283b1843\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"698cf94c-5010-4aa8-93da-8cab5d4400ea\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true}}}}', '615fc70a-0f29-4bf8-841d-13ec8a90af2a'),
(26, 48, 'info@baustoffhandel-dueck.de', 'Peter DÃ¼ck', '2020-07-15 23:54:52', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"aptoElementDefinitionId\":\"apto-element-width-height\",\"width\":900,\"height\":500}},\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"25fdb6a0-36e8-4637-8d6d-1f96cae6bed7\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"1c923096-71db-47dd-855d-2f38e2f54092\":true},\"c433956d-3090-4b53-a4af-63ef48ffbc7a\":{\"a7fd8430-fde1-462a-8227-21d5fa9e6edf\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"309f96c8-debe-40fc-90a1-865459434ae2\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"4820d536-53f4-4f83-814d-d89349030d6f\":true}}}}', 'e3a6a65e-1f0a-46f2-8143-1dfb3bfd1c95');

-- --------------------------------------------------------

--
-- Table structure for table `apto_immutable_configuration`
--

DROP TABLE IF EXISTS `apto_immutable_configuration`;
CREATE TABLE `apto_immutable_configuration` (
  `surrogate_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `state` longtext NOT NULL COMMENT '(DC2Type:AptoPropertyJsonSerializable)',
  `id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_language`
--

DROP TABLE IF EXISTS `apto_language`;
CREATE TABLE `apto_language` (
  `surrogate_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `name` longtext DEFAULT NULL COMMENT '(DC2Type:AptoPropertyTranslatedValue)',
  `id` char(36) NOT NULL,
  `isocode` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `apto_language`
--

INSERT INTO `apto_language` (`surrogate_id`, `created`, `name`, `id`, `isocode`) VALUES
(20, '2017-02-15 20:35:00', '{\"de_DE\":\"Deutsch\",\"en_GB\":\"German\",\"fr_FR\":\"Allemand\"}', '8255bfa3-1588-48df-ad4a-b31960431488', 'de_DE'),
(22, '2017-02-15 20:36:17', '{\"de_DE\":\"Englisch\",\"fr_FR\":\"Anglais\",\"en_GB\":\"English\"}', '8be4abae-9d07-4ca0-a84d-b152e197620a', 'en_GB'),
(23, '2017-02-15 20:36:30', '{\"de_DE\":\"Franz\\u00f6sisch\",\"fr_FR\":\"Fran\\u00e7ais\",\"en_GB\":\"French\"}', 'a734bd54-9cac-4917-a9cd-5e255d10dc86', 'fr_FR');

-- --------------------------------------------------------

--
-- Table structure for table `apto_media_file`
--

DROP TABLE IF EXISTS `apto_media_file`;
CREATE TABLE `apto_media_file` (
  `surrogate_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `size` bigint(20) NOT NULL,
  `md5_hash` char(32) NOT NULL,
  `id` char(36) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `extension` varchar(255) NOT NULL,
  `directory` varchar(511) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `apto_media_file`
--

INSERT INTO `apto_media_file` (`surrogate_id`, `created`, `size`, `md5_hash`, `id`, `filename`, `extension`, `directory`) VALUES
(361, '2018-01-18 11:14:31', 330, '191901b5769f895fbaeaf2ae13bbdcc7', '8895f20e-3d77-4cb3-afec-4a2b15b7a540', 'gelb', 'jpg', '/fenster/vorschau'),
(362, '2018-01-18 11:16:36', 330, 'ca3f3becd14c3ceaeb98de2cff105fcd', '889270b2-21c4-4289-8aed-43c7a8548f40', 'rot', 'jpg', '/fenster/vorschau'),
(363, '2018-01-18 11:16:52', 329, '1b4650cfabc41058d96c790244fd606d', 'b3faecbf-dc14-48d1-a7a2-b38283c9020a', 'gruen', 'jpg', '/fenster/vorschau'),
(364, '2018-01-18 11:17:00', 330, '9b7c1a5cfdc67b50b95c39d84ac5151d', 'c0027bdc-2b75-4f39-a9ac-77a95b60e0ac', 'blau', 'jpg', '/fenster/vorschau'),
(365, '2018-01-18 11:17:10', 326, '5fcda9e2678ad48a15f10dccbf7e4838', '7329d0d2-8da6-4b64-89f8-73e1a18efe03', 'schwarz', 'jpg', '/fenster/vorschau'),
(366, '2018-01-18 11:17:21', 326, 'b0cb837403c07282bf891f60461a5cf3', '2dbdd4fa-a650-48c8-8933-bd3c146d83e5', 'weiss', 'jpg', '/fenster/vorschau'),
(367, '2018-01-18 11:17:29', 326, '89b3f8e085b1048643b43f3b376145fc', 'c889f82e-ccab-4b94-b723-aa473171d19c', 'silber', 'jpg', '/fenster/vorschau'),
(368, '2018-01-18 11:17:38', 330, '9c05d5daae8d19db55d7251dd0a1484c', '15191f8e-2535-441a-8021-e7a493afc21c', 'orange', 'jpg', '/fenster/vorschau'),
(511, '2018-03-01 07:48:32', 153212, '74c6b6127acde53a47ab880b38f9a4b2', '643b2b29-f3c6-4d3f-ab15-16f8da9530de', 'fotolia_142125339', 'jpg', '/fenster/section_picture'),
(512, '2018-03-01 07:49:06', 130979, '942c714921d6691a83a775b68d70b9b9', '1e4fff18-b14b-4007-a468-14b424f8af6d', 'fotolia_131361461', 'jpg', '/fenster/section_picture'),
(513, '2018-03-01 07:51:31', 49831, '84467735d7b5def04ae6c39543f27113', 'a0acb4c4-7131-4189-9890-96c3e0b7490e', 'fotolia_163353729', 'jpg', '/fenster/section_picture'),
(514, '2018-03-01 08:02:04', 39903, '6cffaaf1d5d8835902b4ec7bc1c72229', 'e744c7e9-ae0a-4256-974c-75706e85c69d', '2verglasung', 'png', '/fenster/section_picture'),
(516, '2018-03-01 08:09:52', 40473, '2daa1f1c9d801f1b48bddf64bb54f8d8', 'c971b625-33c6-45db-8e43-3d97ece37196', '3verglasung', 'png', '/fenster/section_picture'),
(517, '2018-03-01 08:27:20', 6473, 'c7ef22f1a36b285621bf3e5d165f93b9', '78913ede-1200-4aed-abfd-75707726ebf3', 'schall1', 'png', '/fenster/section_picture'),
(518, '2018-03-01 08:27:38', 7854, '1e425e609ec0129968e4f8fb98000dcb', 'c78c4df2-7e37-49b9-b89b-55ff94833bef', 'schall2', 'png', '/fenster/section_picture'),
(519, '2018-03-01 08:28:16', 7536, 'fc786bd11fb6290b087b0271e6cfc7ec', '5a9aebe7-5afe-41d3-a2c0-4350d78addc7', 'schall3', 'png', '/fenster/section_picture'),
(520, '2018-03-01 08:42:46', 46742, '52177614c3b6e625dcc4841d74180c3e', '3cd1bbb7-cbe0-4f45-99a0-bf8ee04b89e3', 'fotolia_89975944', 'jpg', '/fenster/section_picture'),
(526, '2018-03-01 10:14:36', 13835, 'c717d70f337de46db924525e15cc3ab6', '632d10f9-9d7e-4a43-907f-39b2e1d78c33', 'schloss1', 'png', '/fenster/section_picture'),
(527, '2018-03-01 10:14:44', 20576, 'b6308c7b54e3302ca210ebc31eb0bfe6', '705b59bd-f04d-4493-8a77-d662ff1dabac', 'schloss2', 'png', '/fenster/section_picture'),
(528, '2018-03-01 10:21:01', 41025, '468743f925e533a05c15b6dde6b026ee', 'b002ff29-21ee-4592-9fd1-60ea5c3234d2', 'fotolia_105254141', 'jpg', '/fenster/section_picture'),
(529, '2018-03-01 10:25:58', 43425, '2462225837cea142b5994778ff21e7ab', '47c39698-13da-46fb-ae47-99326c6fbe2b', 'fotolia_72634870', 'jpg', '/fenster/section_picture'),
(530, '2018-03-01 10:51:34', 12094, '3a51ab5b28645de9efb9246b5c95b674', 'e796014c-d804-442f-874a-a15099c3055a', 'fenstergroessen', 'png', '/fenster/section_picture'),
(531, '2018-03-01 12:08:05', 7133, '6fee208ddd4c4005fc12e314677f7c97', 'cdeac94a-5178-412f-962a-e14d31a17e82', 'schloss', 'png', '/fenster/section_picture'),
(922, '2019-03-19 14:48:39', 2753, 'cc760dc0969b70c993e01e34a44155a6', '2966e06d-808c-464a-bb03-04fa0b27e10a', 'massefenster', 'png', '/fenster/masse'),
(923, '2019-03-19 15:20:10', 2597, '9815ade6b75fab356e742d6383850872', 'b43628eb-c44f-4e25-b31f-26742a936282', 'farbeweiss', 'png', '/fenster/vorschau'),
(924, '2019-03-19 15:20:26', 3019, 'ed4391c2b7600dd16607b2bd75cfd6b7', 'f6e94360-614d-4cd4-8183-ecf0c9608903', 'fensterweiss', 'png', '/fenster/farben'),
(925, '2019-03-19 15:21:33', 3062, 'bdbeb2ab6ff30c2cbe0aebe5b1d836e4', '78578433-c91a-4412-a698-c8b7212ba3d6', 'fensterhellgrau', 'png', '/fenster/farben'),
(926, '2019-03-19 15:21:34', 2601, 'cb470ff6f09c8f194b3c36c9e9b2730d', '382991fc-3b41-4279-92ac-7bf8ae1d9c58', 'farbehellgrau', 'png', '/fenster/vorschau'),
(927, '2019-03-19 15:25:07', 3035, 'a1ef986d7983efae7370c83288a1e855', 'db1e0288-9356-4541-88c1-8fb6c8f4fce2', 'fensterdunkelgrau', 'png', '/fenster/farben'),
(928, '2019-03-19 15:25:10', 2525, '4111874e1e31492486aa1404cb76cc2d', '2843b4c1-ade3-486c-a415-3885c91847f7', 'farbedunkelgrau2', 'png', '/fenster/vorschau'),
(929, '2019-03-19 15:25:51', 3121, 'ff193035735cc19642890d86d3916437', '7e9585c5-e8f1-4a1d-ae23-6a5971834faf', 'fensterhellblau', 'png', '/fenster/farben'),
(930, '2019-03-19 15:25:52', 2626, 'f6b2354435b3a3a070b61458d600daf0', '705e9cf9-38fc-4be8-bdd4-060138c41e3d', 'farbehellblau', 'png', '/fenster/vorschau'),
(931, '2019-03-19 15:26:13', 3110, '1aecef445ea4fda67844bbbb1986fb76', '0d036d79-fe7f-4720-ae40-3af950c8c0ae', 'fensterdunkelblau', 'png', '/fenster/farben'),
(932, '2019-03-19 15:26:15', 2590, '1a7adfc9d5944bec09258c3785e85c4e', '3eb4373a-039a-4c47-81d8-9f70caf91cad', 'farbedunkelblau', 'png', '/fenster/vorschau'),
(933, '2019-03-19 15:26:39', 3124, '2e1d812e98d77431e0c64674025477d3', 'dc0f3a15-0e33-4ab7-9e98-40aa82d9ed4b', 'fenstergelb', 'png', '/fenster/farben'),
(934, '2019-03-19 15:26:41', 2590, '0cabb4d8ece9ae923b19da47848d943d', 'f82ca60f-c2dc-456b-88ba-426204467419', 'farbegelb', 'png', '/fenster/vorschau'),
(935, '2019-03-19 15:27:09', 3115, 'adaa596584efedde8be7d87efe619d70', 'ae3727a7-9a2d-44f2-8030-b0adda4346da', 'fensterrot', 'png', '/fenster/farben'),
(936, '2019-03-19 15:27:10', 2563, 'bb402151b5b59aed3f48fefc843fdec7', 'c73cf1db-52f1-47f9-bbca-eb9112d9c669', 'farberot', 'png', '/fenster/vorschau'),
(937, '2019-03-19 15:28:50', 3069, '2b5969b0319999af139b052d802e6092', '6ea91d3f-bc91-4eea-87d1-e8323bf5ed0b', 'fensterschwarz', 'png', '/fenster/farben'),
(938, '2019-03-19 15:28:52', 2477, '3e8566ad15f614e41048f9fad0a7460f', '46d9aede-50d2-44cd-8878-241b594af60e', 'farbeschwarz', 'png', '/fenster/vorschau'),
(939, '2019-03-19 16:00:22', 6843, '9e792f19ae031ce761d898c05556ab05', '1218081f-7df4-4dc9-b933-fedaf083a2dc', 'fensterrollo', 'png', '/fenster/masse'),
(940, '2019-03-19 16:05:40', 4053, '0e7d25adf6a1538eb4f4107b43f5eeb5', '23dfe190-b574-445c-b529-4ac5dbe30268', 'fensterrollo2', 'png', '/fenster/masse'),
(941, '2019-03-19 16:06:59', 2708, 'ff9b2b35cffac454c55f064371e0523c', '649534c7-8964-43f5-adec-0582af5eaea1', 'rollograu', 'png', '/fenster/rollo'),
(942, '2019-03-20 08:13:14', 2703, '24f3744aaf3a3ac127d8e775639fedb6', 'cfb1b285-5f95-43e3-a316-e7846837dbc9', 'rollobraun', 'png', '/fenster/rollo'),
(943, '2019-03-20 08:13:15', 3282, 'c1da437a5cf59e3fd5487956004517fa', '93f5f80c-7886-46e0-877a-1c9ffa6b35f4', 'farbebraun', 'png', '/fenster/vorschau'),
(944, '2019-03-20 08:13:27', 2628, '79c8a4bf7acb9df5d6e269fc49631c42', 'c64b6106-bbd3-4d99-967a-e6412829411b', 'rolloweiss', 'png', '/fenster/rollo'),
(945, '2019-03-20 08:14:11', 2669, 'd48caf0d72a63569b960710b95b223bf', 'e0569415-b128-4f7a-bef6-5a1b8d885e61', 'rolloblau', 'png', '/fenster/rollo'),
(946, '2019-03-20 08:14:45', 2645, 'cf28d8f23c5bc2096fac29c450745ab1', '1a15af57-e827-404d-9c00-552000a0ea94', 'rollohellgrau', 'png', '/fenster/rollo'),
(947, '2019-03-20 08:26:09', 4135, '592d0b85d317dabcd64ba016a7ff135f', '228801ff-3da4-4de3-842b-d41161784364', 'lock1', 'png', '/fenster/sicherung'),
(948, '2019-03-20 08:26:16', 6199, 'c84bcc8600054f68ba858694c6134e45', '0874b8d3-3223-4ee5-aa54-80a624906a4f', 'lock2', 'png', '/fenster/sicherung'),
(949, '2019-03-20 09:07:38', 10405, '3f4236d615e3714a0bb9299cdb72ae42', '8511c1b5-5f06-40de-aa72-0343281d9df6', '2-1-1', 'png', '/fenster/scheiben'),
(950, '2019-03-20 09:07:44', 10749, '4d72ecbb331ef48bc4fb353b847016bc', '4e5b4bc9-81b3-4189-8ca9-dbcd07e8ab2f', '2-1-0', 'png', '/fenster/scheiben'),
(951, '2019-03-20 09:07:51', 11858, '8242204213d53f6595827b2e752d04d7', 'fa8ad18d-d907-4ded-bfe9-96c2663a6e65', '3-0-7', 'png', '/fenster/scheiben'),
(952, '2019-03-20 09:07:55', 11817, 'f7b9e10be435921bdc053cb1db80b262', '9359d0ea-7817-4f02-9c8f-fd92e8c7a31e', '3-0-6', 'png', '/fenster/scheiben'),
(953, '2019-03-20 09:14:47', 2443, '2744c4f6ba0deddc05bff08b446737b1', '8f9aa20f-677a-477c-afba-364e944d50bc', 'volume1', 'png', '/fenster/volume'),
(954, '2019-03-20 09:15:45', 4977, 'e6970bd526cb300bab98db1ddf1768cf', 'f7e17279-d6af-49ed-836f-b002f4277eb1', 'volume2', 'png', '/fenster/volume'),
(955, '2019-03-20 09:15:50', 6762, '52081e6b555e72ca9dc79e8d42230516', '26083d76-45e1-45a5-ba7a-6296ffa9ab3b', 'volume3', 'png', '/fenster/volume'),
(956, '2019-03-20 09:39:16', 4394, '2d248d49f62d87935cbce60212190646', '79c8c1ad-d1b8-4e23-bae4-3629ebeea223', 'gurt', 'png', '/fenster/bedienung'),
(957, '2019-03-20 09:42:37', 3538, 'fa76fdf909d3a0abe18638de803d51cf', 'e1f2edeb-60e5-4614-ae1a-6722f882a1a2', 'gurt-2', 'png', '/fenster/bedienung'),
(958, '2019-03-20 09:50:37', 14127, 'e45f81bdef7ffae274dc88c958b01ac0', '452e7733-98b3-49d0-9c7e-1816b711eebc', 'motor', 'png', '/fenster/bedienung'),
(959, '2021-11-15 09:40:25', 152402, '44118d69a270db29c13aaa34ec5aafd6', '26ad00e9-fd86-4118-aaa4-494a3f1b641c', 'weiss_front', 'png', '/tasse/farben'),
(960, '2021-11-15 09:40:50', 171143, '678611c1300580e84f31c40dd8b0cf6a', 'cfdea328-cb04-4866-a31a-6e232b397407', 'weiss_back', 'png', '/tasse/farben'),
(961, '2021-11-15 09:41:01', 167699, '024982c62ee151b226c93a92033a9480', '622ad02c-1917-4e6c-8c56-5461cfd44450', 'weiss_top', 'png', '/tasse/farben'),
(962, '2021-11-15 09:41:31', 284883, '9294e1e4099e1280adfb1e43cbe4d9cb', '50b9288b-856b-47e5-a042-4638defb2d63', 'pastellrosa_front', 'png', '/tasse/farben'),
(963, '2021-11-15 09:41:39', 255793, 'c0e036e760239784f180df9b69634069', 'd68ebb01-1e9b-4ea7-afec-070de20ab2c6', 'pastellrosa_back', 'png', '/tasse/farben'),
(964, '2021-11-15 09:42:24', 296869, '7a85aecb20ec4b69a1414375f1474faf', '3ebecac1-72df-4a49-be98-916ed9244ab0', 'pink_back', 'png', '/tasse/farben'),
(965, '2021-11-15 09:42:33', 314446, '0cf2a3a55e313318263c40d0bc7ba23b', '8dc30960-34e8-4a60-bea3-9d3592d6fd79', 'pink_front', 'png', '/tasse/farben'),
(966, '2021-11-15 09:42:44', 221914, '9924c01c55884ca1e9d02d9c1931fd32', '73ccefa7-bf05-488b-b62a-a4fe13fe0526', 'pink_top', 'png', '/tasse/farben'),
(967, '2021-11-15 09:43:26', 275366, '3d4769d2397cc919fe503b5836ac3365', 'a61962ed-a862-4036-b1f9-75340edebe80', 'tuerkis_back', 'png', '/tasse/farben'),
(968, '2021-11-15 09:43:49', 288356, '22f83a046ec3f997b8a0da7636eb655f', '41099a61-4846-4296-bcc8-a23f6fb315d6', 'tuerkis_front', 'png', '/tasse/farben'),
(969, '2021-11-15 09:43:59', 220185, 'e2404096b4d1b305ef4351cf5aaedd8d', '97c2a264-da52-4fd3-a701-bf897d00327a', 'tuerkis_top', 'png', '/tasse/farben'),
(970, '2021-11-15 09:44:24', 1185, 'aaf83ba59b3731de32284a447f35aee3', 'a61a8a2a-0559-48f0-9d87-27e56e9636ff', 'tuerkis', 'jpg', '/tasse/preview'),
(971, '2021-11-15 09:44:35', 1184, '273dc7f86f5b8af9974039d521dc3c71', 'ed3689f4-2a76-49ea-9867-e202eae3e064', 'pink', 'jpg', '/tasse/preview'),
(972, '2021-11-15 09:44:42', 1184, '815dcc2b9ff22fa478ab5ce5983666a6', '195f6301-2c2d-4316-858c-29c2a63b16dd', 'pastellrosa', 'jpg', '/tasse/preview'),
(973, '2021-11-15 09:45:09', 268727, 'c6786f7e12c15ff35293a3d1e4ac3e61', 'ead995d5-19a8-440b-9ee0-a0f1c02d1c15', 'blau_back', 'png', '/tasse/farben'),
(974, '2021-11-15 09:45:35', 1185, '925c4f458df61b920e3353bfdffb10b1', 'e226a1b1-f07a-4f47-ab22-f081845d610a', 'blau', 'jpg', '/tasse/preview'),
(975, '2021-11-15 09:45:51', 287349, '1ec54087d32ff5a4eaf4b63522f51561', '994af8e1-fa4e-47aa-8146-3e64321daf98', 'blau_front', 'png', '/tasse/farben'),
(976, '2021-11-15 09:46:01', 220012, 'b142d2a57c6be73547c0258fd631af3f', 'c08a673d-0d1f-4571-9af1-e1e5407fc612', 'blau_top', 'png', '/tasse/farben'),
(977, '2021-11-15 09:49:55', 1181, '47286619ddbf54995b7f04e48550b536', 'cc08b6d1-abef-4c83-a936-2027c776277e', 'schwarz', 'jpg', '/tasse/preview'),
(978, '2021-11-15 09:50:15', 1185, 'ed18328b0b6f4ebe31a4ce5788efdc5e', '99515b55-c107-43ff-a94b-262aace5c121', 'blau-innen', 'jpg', '/tasse/preview'),
(979, '2021-11-15 09:50:33', 1185, '70538c22fc02afe81e6ff9bac851b439', 'f701d334-d814-476f-b35d-e857bad34cf2', 'rot', 'jpg', '/tasse/preview'),
(980, '2021-11-15 09:53:13', 460, 'dd5d4fe718c1c58305c5b38c997425d6', 'e8226931-2dce-4509-9a32-29cf9618b28e', 'upload', 'png', '/tasse'),
(981, '2021-11-15 09:58:19', 2036, 'e217fc7b0e178c96edbc842f8f029167', '74e013d7-7207-4dc3-a257-2dec2573b489', 'girlsday', 'jpg', '/tasse/preview'),
(982, '2021-11-15 09:58:34', 2065, 'df62e5c9b5fa24464e01b02a01b2f52e', '50be3751-8ebd-4030-bd41-728f5d3f78d9', 'none', 'jpg', '/tasse/preview'),
(983, '2021-11-15 10:00:10', 87898, '27aae1d2e10b5da19a3cda9610508e84', 'd4ba7e50-d4ad-451b-8787-f95d9462d827', 'maske_front', 'png', '/tasse/masken'),
(984, '2021-11-15 10:00:36', 75366, '77deeae08a77a99c46d11c1fbdc79f25', 'cbc22b14-09b1-4246-ac8e-47b159c4d535', 'maske_top', 'png', '/tasse/masken'),
(985, '2021-11-15 10:00:48', 260615, '794d28a4151c353276c48b1656d217d0', 'bc748e77-069c-4797-b67c-2eab68b179c7', 'maske_back_v2', 'png', '/tasse/masken'),
(986, '2021-11-15 10:02:14', 131451, '444d46b0cc0eca15048852eee58e1b25', 'da579f1b-ed89-4c5e-8c2e-90504a5d529e', 'girlsday_back', 'png', '/tasse/Logos'),
(987, '2021-11-15 10:02:31', 163755, '65f8a42f8d23f7820e6790bef65d91a4', 'a07ac6e3-f44e-4560-9b75-81e7f050320a', 'girlsday_front', 'png', '/tasse/Logos'),
(988, '2021-11-15 10:26:39', 64933, '56a0d37474244448705f7cbb4a5c1f93', '88501dce-51c1-4679-9294-b0f442543987', 'grundriss_rechteck3', 'png', '/haus'),
(989, '2021-11-15 10:27:10', 159229, '11a22a9678a720bee0369f3899f167f6', '03511005-3faa-45c9-a815-c2a330b32ab2', 'grundriss_rechteck_ausschnitt3', 'png', '/haus'),
(990, '2021-11-15 10:29:42', 1038573, '946241c4ffd272e194bb44266400b7a0', 'c7634031-68e3-4f61-8e8d-23cd5f08ce71', 'Einfamilienhaus3', 'jpg', '/haus'),
(991, '2021-11-15 10:30:14', 1509085, '8f3f3942edff342c097ada5aee73bc0c', '3ac130b5-ffb7-4377-9375-3d4e5c8f2268', 'mehfamlienhaus4', 'jpg', '/haus'),
(992, '2021-11-15 10:30:33', 285969, '261ed705a353b0192fe7bc0b252cd5ba', '0b3c742c-44da-4287-9a3b-74d258d2904b', 'villa2', 'jpg', '/haus'),
(993, '2021-11-15 10:45:16', 650249, 'cd9512e9328e7df0cf8d548c9e3cf450', '9571b3c3-654c-4a86-b3c4-4f13e6970308', 'villa1', 'jpg', '/haus'),
(994, '2021-11-15 10:47:40', 1617220, '9648c78d0b5b7bd94660a16ee0198f3a', 'ac92d0f0-982a-4790-9a7e-e19d43c8a712', 'mehfamlienhaus1', 'jpg', '/haus'),
(995, '2021-11-15 10:48:18', 595054, '2f023309744e3a769ce5fd0fe9b83d3d', '76261da6-3fdf-4100-91d6-8dbb4bee515c', 'mehfamlienhaus2', 'jpg', '/haus'),
(996, '2021-11-15 10:49:07', 544605, '26991af91e847a7e7baeaae995979834', 'a84fb8df-8c85-4820-8c05-9f476e28a705', 'mehfamlienhaus3', 'jpg', '/haus'),
(997, '2021-11-15 10:50:48', 701142, 'b76e9c7f3a35cb1d41b7909f24777859', '63674fc7-1411-443b-b980-679385435ad9', 'villa3', 'jpg', '/haus'),
(998, '2021-11-15 10:51:54', 1738968, '22bdde45b6d4ead6c478e144beb3fa9d', 'c434317b-1bc5-44eb-bf77-f853b75a1f1f', 'Einfamilienhaus1', 'jpg', '/haus'),
(999, '2021-11-15 10:52:51', 999622, 'abb2bf3c3212b9220e19157c4f5c7b14', '59533a0a-b62d-4cfc-af1d-c8c91d128c42', 'Einfamilienhaus2', 'jpg', '/haus'),
(1000, '2021-11-15 10:59:47', 88923, '7ef63b1d7a35b7607ee0032bd7a7769a', '591e3323-833b-47e3-8a2e-0cb15dc89ae9', 'dach-grau', 'png', '/haus'),
(1001, '2021-11-15 11:00:00', 88009, 'f589883905a8e44af47981f4e3071d65', 'b70daba3-eb9f-488b-bc13-fc59bb0c0528', 'dach-rot', 'png', '/haus'),
(1002, '2021-11-15 11:00:11', 75837, '46e3dea2acd4ef8783e074f8857c5ca9', 'aa9daac2-07eb-43aa-8f87-0f4e6e391b9a', 'dach-rotbraun', 'png', '/haus'),
(1003, '2021-11-15 11:00:28', 45400, '515423185538976d7feb8007e371fe8b', 'bca7fe73-e83e-447e-af85-d76cfb0d82aa', 'dach-rund-grau', 'png', '/haus'),
(1004, '2021-11-15 11:00:40', 111249, '2fcd629ce1f2dca6cfc7b251ace1ff37', 'e6dbebef-1f2a-41ba-8a10-0be0cc1de48c', 'dach-rund-rotbraun', 'png', '/haus'),
(1005, '2021-11-15 11:00:51', 63510, 'ad2b94b8733bcbde14561c148a17b628', 'bfcea414-8fbb-40be-b092-61ec0b8a4582', 'dach-rund-blau', 'png', '/haus'),
(1006, '2021-11-15 11:05:49', 102855, 'b1ba9bdb6ce13193d1bd1fa0cb89f3ff', '47e08371-e230-4193-9c5a-ba9fa41ff368', 'boden-teppich-blau', 'png', '/haus'),
(1007, '2021-11-15 11:06:00', 112216, '92d8a8770667cc9ddf568aa09c318ebc', 'f83b5ae7-911b-4c45-b977-b0445e4fcf6b', 'boden-teppich-grau', 'png', '/haus'),
(1008, '2021-11-15 11:06:20', 101499, '842e71a957e168e23791a0efd45b7028', 'ef707db8-f429-4de5-ba07-4242e10aedba', 'boden-stein', 'png', '/haus'),
(1009, '2021-11-15 11:06:30', 144814, '28fe2f3a218263acc29891f8f053212c', '4df4f62a-c70f-4aad-ae01-a5fb94043781', 'boden-marmor', 'png', '/haus'),
(1010, '2021-11-15 11:06:40', 141634, 'cd8b5d4b058de77faebe7db30a6c469d', '6fad93ee-7125-4009-80f4-be567be386a5', 'boden-laminat', 'png', '/haus'),
(1011, '2021-11-15 11:06:50', 141815, '281a3619b7582e27087659373b596b9a', '20783faa-7785-465e-ac84-c2f66ebc0ea4', 'boden-kork', 'png', '/haus'),
(1012, '2021-11-15 11:06:59', 95667, '8bbcf293af5ea60425bd99201f644fbe', '0316af81-814f-4872-9d82-80b1b9eb08ac', 'boden-holz-weis', 'png', '/haus'),
(1013, '2021-11-15 11:07:11', 131890, '5760869986d96499f9b51242ca50c966', '32b835f6-68f9-4dee-952d-11ebd4bad60f', 'boden-holz-rot', 'png', '/haus'),
(1014, '2021-11-15 11:07:19', 147495, 'd255241f2f7ce9feeaeee1946fe2bf67', 'a3c12be2-56f7-41d3-9016-5ee34318d42f', 'boden-holz-braun', 'png', '/haus'),
(1015, '2021-11-15 11:07:27', 150021, 'd05f4f5aa3fcc9fee9c3e156e19d40ab', '3f3ed1ae-933e-4a8a-a79b-7c1aa1ec7417', 'boden-holz-alt', 'png', '/haus'),
(1016, '2021-11-15 11:08:57', 65638, '1e961093fe758388d30b42de3ba65d3f', 'bb0bb77c-6fde-4273-80aa-0ec318391fba', 'heizung-waermepumpe', 'png', '/haus'),
(1017, '2021-11-15 11:11:11', 61961, '1045aa54d74305a026dc5bef946b7a91', '68639256-f0e9-4806-ae6f-d7e87004f2b2', 'heizung-gas', 'png', '/haus'),
(1018, '2021-11-15 11:11:40', 133714, '4bf3dcffc67f49e4a13d7b804611a1d6', '5ff3804e-389c-44d7-b8dd-d43f6672e430', 'heizung-pellet', 'png', '/haus'),
(1019, '2021-11-15 11:15:08', 108325, 'af96d240efdab6ff55049a6af666cb48', 'f2b9c79c-a319-47a4-b41a-0e2d99018133', 'extra-kamin', 'png', '/haus'),
(1020, '2021-11-15 11:15:33', 61364, '1f375d7de124e416a916dd54fd39379c', 'ddca0074-fe2d-4144-9277-16c243fef340', 'extra-smartHome', 'png', '/haus'),
(1021, '2021-11-15 11:15:55', 109987, '481ff6013e6ba9cc27303555deae4e8c', 'ee4e4a09-2d12-4e14-a51e-8b06fca41598', 'extra-fussbodenheizung', 'png', '/haus'),
(1022, '2021-11-15 11:16:35', 54438, '2c8670c52157a120388c188221137095', 'a3ffe56a-c3b5-4ee5-a90e-742b049c8fe8', 'extra-eRollo', 'png', '/haus'),
(1023, '2021-11-15 11:17:14', 78179, '8d1949f39b89234846bf7e04623d4193', 'cf870d74-6efd-49d0-ad68-d974bf4fe3ea', 'extra-photovoltaik', 'png', '/haus'),
(1024, '2021-11-15 11:17:36', 79867, '336eed670af87e26ce3fd99556d7cd78', '09e33fb4-b0c8-4201-b99b-bae94706e8b9', 'extra-solar', 'png', '/haus'),
(1025, '2021-11-15 11:18:03', 62633, '0a406769fdf00ab73a0e34f9e9799610', 'e431df17-e77a-4fe2-ba1b-8443d6d3dd37', 'extra-windrad', 'png', '/haus'),
(1026, '2021-11-15 11:18:29', 274878, '0e45f335eba0f53e0be5f922aa703859', '2c9c1f2f-0fb4-4aff-aa92-1a90f497ae94', 'extra-eauto2', 'png', '/haus'),
(1027, '2021-11-15 11:36:37', 71347, 'ab567fb921c9ef50cf3bea160304b088', '774a1149-4019-495e-b1f1-f53ae9c0aaa3', 'pick-up-weiss-pos1', 'jpg', '/pick-up'),
(1028, '2021-11-15 11:37:23', 66407, '8f07304b26c80f661f39f9baea91cb04', '20c80457-d871-4d5b-9a90-ad806d65fb69', 'pick-up-weiss-pos2', 'jpg', '/pick-up'),
(1029, '2021-11-15 11:39:45', 51844, '206b19bc5e82a0cf40040d10fd216e24', 'c5c28d01-9cbd-4762-98f8-cb02155ccecd', 'pick-up-weiss-pos3', 'jpg', '/pick-up'),
(1030, '2021-11-15 11:40:02', 48485, '0f5feda71b2fdb9a1744cfb4c27a5e30', '338eb9ee-79aa-46b3-8e42-beb9cd24f575', 'pick-up-weiss-pos4', 'jpg', '/pick-up'),
(1031, '2021-11-15 11:40:19', 81496, 'f3cfa760808080e91f51ae164e092ea0', '95a8ca11-ddd9-47f3-ae3b-bca58dd6886e', 'pick-up-blau-pos1', 'jpg', '/pick-up'),
(1032, '2021-11-15 11:40:53', 76272, 'b840435c4daab3fcea5cec7e46c50603', '2d0aa7fe-1ba5-4b25-a59e-7f5bf3f3174f', 'pick-up-blau-pos2', 'jpg', '/pick-up'),
(1033, '2021-11-15 11:41:03', 60522, 'd693469837e3b2d276c93cbff3afa073', '2f64b29a-0c1e-4be7-a83a-3ffb797a4520', 'pick-up-blau-pos3', 'jpg', '/pick-up'),
(1034, '2021-11-15 11:41:13', 59633, '6af1e17018d044add2d817cf369bc491', 'a8e43416-5dce-44ee-9a70-f11a9bca6f5e', 'pick-up-blau-pos4', 'jpg', '/pick-up'),
(1035, '2021-11-15 11:41:40', 80174, '0bc7649551a5c019c823d82c4da12167', '7d1252c8-096a-427d-a96c-2f3ee3f21533', 'pick-up-rot-pos1', 'jpg', '/pick-up'),
(1036, '2021-11-15 11:41:51', 75130, '715c89b9c3348fca4638d9a1ea3539bf', '2878fce2-7d5d-47f5-989e-6998d8205db6', 'pick-up-rot-pos2', 'jpg', '/pick-up'),
(1037, '2021-11-15 11:42:03', 57968, '1c27b134039b7740769fb5be627377a5', 'b14872ce-c0e6-41c2-bcb0-119571757d0d', 'pick-up-rot-pos3', 'jpg', '/pick-up'),
(1038, '2021-11-15 11:42:12', 57344, '61fb4f175833ebd9f0d52479ccbff280', '5f8fe728-b9ea-4748-b8eb-b6108b6c6efd', 'pick-up-rot-pos4', 'jpg', '/pick-up'),
(1039, '2021-11-15 11:45:05', 3895, '87bf756d8c455a8f55c76c10c11d9e77', 'a81dd663-6d11-4e3f-83a3-b63c2bc76cd8', 'v8-posx', 'png', '/pick-up'),
(1040, '2021-11-15 11:49:03', 10653, 'e143ed1afa6ae239e34af440586c52d8', 'f8ed85cb-d316-43a7-a71e-a6d7b1298ac4', 'v8', 'jpg', '/pick-up'),
(1041, '2021-11-15 11:49:12', 11052, 'a71aad47022a58ef33734645853aedf4', '0efc135a-8b26-429f-b4f5-d89d22853659', 'v10', 'jpg', '/pick-up'),
(1042, '2021-11-15 11:49:22', 3885, '30d706d3850b7dc5040eb70481718f7d', '4e7a6bf5-c95c-4279-9ea3-0d7c907697fc', 'v10-posx', 'png', '/pick-up'),
(1043, '2021-11-15 11:51:28', 4069, '2875eb36c67955d66b3f6dd9a362c4d1', 'c0ca6bf5-60e6-4bf4-86fd-8dde98632448', 'v12-posx', 'png', '/pick-up'),
(1044, '2021-11-15 11:52:03', 11453, '76178aa0a72cdd06d3b0530ca04f18e6', '04b16b33-b5b8-445e-8b4f-ec69ee13f8e7', 'v12', 'jpg', '/pick-up'),
(1045, '2021-11-15 12:57:31', 4305, 'd21a5a2b320c6be6e4dedbb2dd804d12', 'cfca974a-5866-4c95-a415-7e8ce28620cf', 'PreviewwheelStandard', 'jpg', '/pick-up/preview'),
(1046, '2021-11-15 12:57:39', 4787, '2cda185a4b88805bd25e90ee75f2f160', '0a00e735-78e4-4e8d-83a7-f5d0fabd4fd6', 'PreviewwheelAdvanced', 'jpg', '/pick-up/preview'),
(1047, '2021-11-15 13:01:36', 4328, 'f33b1ad51bbc52b69436f49f4fc9fcd2', '0b97b815-1e9b-4ad5-b728-ab75675a04bd', 'FelgenStandardPreview', 'jpg', '/pick-up/preview'),
(1048, '2021-11-15 13:02:35', 4152, '1caa927e7fe47002e09f2ddf8da85626', '640464e1-17bf-4a56-97f0-8740f1dd6bbb', 'FelgenSchwarzPreview', 'jpg', '/pick-up/preview'),
(1049, '2021-11-15 13:02:44', 5174, '26fae67395cb34c1f82243bce1cf5ed1', 'b1837b7c-6af5-4194-98fb-c6ef90e9cb0d', 'FelgenRotPreview', 'jpg', '/pick-up/preview'),
(1050, '2021-11-15 13:02:52', 4920, '9e4ec6022aef6ce99ae37141ebb441da', 'cc7e438c-d0c2-4b98-b5e5-10c0962d9973', 'FelgenOrangePreview', 'jpg', '/pick-up/preview'),
(1051, '2021-11-15 13:03:00', 4992, '69ea6706c0ff5e81210c0756b46bf2c4', '872eab71-a7f3-4bf8-b9c3-da23fcd7483c', 'BlauGruen', 'jpg', '/pick-up/preview'),
(1052, '2021-11-15 13:06:55', 3376, '816c1fa26d4bdee4fee087a8566d3c0f', '68b51458-d72e-4a9b-94ad-d5754be01eca', 'previewAptoGW', 'jpg', '/pick-up/preview'),
(1053, '2021-11-15 13:07:05', 3611, '729ac95ea832ec4c5e1771f8df6432af', '30a32e2d-c72b-4ada-8071-d0fa87f4095b', 'previewAptoBW', 'jpg', '/pick-up/preview'),
(1054, '2021-11-15 13:07:12', 3808, 'dd04e9cd812c6d5b10119e2a01778e72', 'df7eb7e3-47cb-496a-880e-436c42acbd7d', 'previewAptoBG', 'jpg', '/pick-up/preview'),
(1055, '2021-11-15 13:08:40', 20898, 'ded74ad4d40db2bf072d5420efca47e7', '43d45de0-e522-4921-8828-e091439518b4', 'AufkleberAptoGWpersp1', 'png', '/pick-up/aufkleber'),
(1056, '2021-11-15 13:08:51', 8315, '0b817a99b276786e55f2194a84fa1c02', 'cf177f58-9039-4098-bb70-2d200321b48b', 'AufkleberAptoGWpersp3', 'png', '/pick-up/aufkleber'),
(1057, '2021-11-15 13:09:05', 9250, 'f7d28ae4bb7ea4dd8bea45cdc34803eb', '0e5e1419-61fa-485d-bfa3-059fd4b5b009', 'AufkleberAptoGWpersp4', 'png', '/pick-up/aufkleber'),
(1058, '2021-11-15 13:09:51', 21468, '749f57b355c28be688b7c91df4bc30c3', 'd57289ff-299b-476c-8c84-a029d198e0b3', 'AufkleberAptoBWpersp1', 'png', '/pick-up/aufkleber'),
(1059, '2021-11-15 13:10:14', 8338, 'cc5c1b6ab19c14310814b932e25f79e0', 'da92b4c3-c4a3-4295-8646-ee06a3c95724', 'AufkleberAptoBWpersp3', 'png', '/pick-up/aufkleber'),
(1060, '2021-11-15 13:10:26', 9305, 'f138dd28c6792f248db2726542911ed4', '8cbd1643-24be-4823-8336-36638f8284df', 'AufkleberAptoBWpersp4', 'png', '/pick-up/aufkleber'),
(1061, '2021-11-15 13:10:41', 23384, 'a7ce5f8d5abfc5254fb8e2a01c7c21d2', '3478d6d9-4382-422e-badd-f712debc66c0', 'AufkleberAptoBGpersp1', 'png', '/pick-up/aufkleber'),
(1062, '2021-11-15 13:10:48', 8423, 'c4ad4f4f064055bd0cef8b4f1864fc76', '322d6a17-e851-4613-9ffb-9a45500160bb', 'AufkleberAptoBGpersp3', 'png', '/pick-up/aufkleber'),
(1063, '2021-11-15 13:10:56', 9415, 'aa2719878577bb3c58ee1cde8afa638b', 'e8075d3a-733a-4461-baa2-e2475f691379', 'AufkleberAptoBGpersp4', 'png', '/pick-up/aufkleber'),
(1064, '2021-11-15 13:13:13', 2606, '5df2d684acc700b7b4be4714105a13c0', 'd5e89329-39f0-4b6b-baab-03e66863f02b', 'previewConfiradoAufkl', 'jpg', '/pick-up/preview'),
(1065, '2021-11-15 13:13:39', 14156, '73e0f983d030aa0c68cdb897a92864a6', '07631205-fd3a-48e5-ac72-09952ffd7403', 'WindschutzvornePersp1', 'png', '/pick-up/aufkleber'),
(1066, '2021-11-15 13:13:48', 15150, '145915f3255af792f0b8d5f74fa6c5fb', '2ff7f61c-b139-48cb-b980-c102c69166b6', 'WindschutzvornePersp2', 'png', '/pick-up/aufkleber'),
(1067, '2021-11-15 13:14:00', 20911, '08b481e8c8786161632a55156c6cd7c0', 'e4ce2c6f-a892-4b0c-81cd-3db52ac31c32', 'WindschutzvornePersp4', 'png', '/pick-up/aufkleber'),
(1068, '2021-11-15 13:15:46', 4062, 'e7511f8852f39aa4a85bbfb0c732f69b', 'ab6ad054-863b-48c9-aa5f-3cc02cd29775', 'previewNone', 'jpg', '/pick-up/preview'),
(1069, '2021-11-15 13:16:29', 3418, '12da9c09f21484dbfd3a7263e17ef278', 'f0d5ee33-1c8e-480c-8bfb-663852f110a7', 'paket-safari-posx', 'png', '/pick-up'),
(1070, '2021-11-15 13:17:03', 1444, 'd077e4f0513e542f05621ccf74e60dbc', 'a6c19cd2-a297-4f0b-bad8-ee7f709395fc', 'paket-safari-thumb', 'png', '/pick-up'),
(1071, '2021-11-15 13:17:42', 3722, 'd857a6904de1d10b44891839cd3acc0a', '35619b1d-90f4-4b7e-9c1c-8f35680e366e', 'paket-climber-posx', 'png', '/pick-up'),
(1072, '2021-11-15 13:18:32', 1287, '5b6150bc962c43deb2764676c0504d86', '33da1d93-2660-49fe-9860-c25657ef33d1', 'paket-climber-thumb', 'png', '/pick-up'),
(1073, '2021-11-15 13:33:46', 55735, 'be9508cb302e447a932c04ea5d92e472', '0dd9b7b8-ded5-4b15-920d-7c9f52cc4cbb', 'FelgenBlau', 'png', '/pick-up'),
(1074, '2021-11-15 13:34:17', 55517, '9f872826d460cef2a896ea76d989749f', 'daf5cb49-f740-4ab5-90a0-307c4250e321', 'FelgenOrange', 'png', '/pick-up'),
(1075, '2021-11-15 13:34:47', 53793, 'c1e2dd2345d2fa486925465fe4aa51e4', 'fcbf38f8-14e6-42ff-8028-1ac6555896d9', 'FelgenSchwarz', 'png', '/pick-up'),
(1076, '2021-11-15 13:35:31', 55165, '250adaf7382ba6d50ca7c5d51b5f9746', 'a30eb5b2-d1ec-4d5e-b045-028a9981cdba', 'FelgenRot', 'png', '/pick-up'),
(1077, '2021-11-15 13:51:28', 43007, '2956c37a18eb469b867ec668afa5f42d', '1df11485-0d50-4c54-9362-50ea6b42f242', 'bg', 'jpg', '/garagentor'),
(1078, '2021-11-15 13:55:16', 10714, '23ba8a1fcd6749fe13ecb3b84f817cad', 'c2226d58-9446-4ad0-9451-ede4a73a2174', 'bild1', 'png', '/garagentor'),
(1079, '2021-11-15 13:59:12', 10052, '15b365b0e9052d7599aff8ba6fbb9263', '6a383da3-2e4c-457e-bbd1-ce91a7182970', 'hoermann', 'jpg', '/garagentor'),
(1080, '2021-11-15 13:59:30', 3873, 'f4fc8d6a31932ec97608b257aae63e1f', '070a8724-6f63-4d01-b998-d7ef8c9cf818', 'novoferm', 'jpg', '/garagentor'),
(1081, '2021-11-15 13:59:44', 6018, 'b0fc2ee38715b16fb3ddd48bf239e253', '24c91e4a-7192-40d3-8624-c7f911264680', 'teckentrup', 'jpg', '/garagentor'),
(1082, '2021-11-15 14:07:36', 52225, '79dd597fa6749ea16e68542bc6287eec', '92c2e1ec-5ccb-47a5-9140-901457e9d989', 'ri-rot', 'png', '/garagentor'),
(1083, '2021-11-15 14:07:41', 735, '3025025bc15a2f92b1631e41c9ef4096', 'f5fe1486-36e3-488d-a97b-207d2bb53a60', 'farbe1', 'jpg', '/garagentor'),
(1084, '2021-11-15 14:07:59', 31949, 'f1129db7caffd2f9af3ae5dcfde4a9bf', '8652cdba-654e-4389-ac6a-1dcc7f1ad435', 'ri-blau', 'png', '/garagentor'),
(1085, '2021-11-15 14:08:02', 735, 'b05cd0b8213f08986f0f1e70b2b3169e', 'a1fe049d-a790-4087-af9b-d2a5d2667312', 'farbe2', 'jpg', '/garagentor'),
(1086, '2021-11-15 14:08:21', 31442, '1010179c37c4e9fa873e5803f1db7d09', '3166fead-d517-49f4-aa08-e4824073483e', 'ri-gruen', 'png', '/garagentor'),
(1087, '2021-11-15 14:08:24', 735, '9aaac64d9f7bf5017f1b7e81b3854d46', '58eef003-3307-41fe-aac9-fc7817f02ceb', 'farbe3', 'jpg', '/garagentor'),
(1088, '2021-11-15 14:13:16', 1862, 'db6b2a2d02fb2e9f75e1d8ee23ec7451', 'ef7d2752-16d6-41d6-a7d8-4d0b02946c91', 'ri-typ2_v1', 'png', '/garagentor'),
(1089, '2021-11-15 14:13:19', 3620, '0314a79e4455563446d24dfe809d71e9', 'f1cfa114-4f95-4160-951d-8b9b097a16ce', 'typ1', 'jpg', '/garagentor'),
(1090, '2021-11-15 14:13:44', 2912, 'ae0d1d4d660ec25d92ffba70e3b2103a', 'bbc67ae8-ecac-465a-9e26-4c2d915413c1', 'typ2', 'jpg', '/garagentor'),
(1091, '2021-11-15 14:14:12', 4630, '1d893183641e79fee59345f7057b6727', 'a795b9fa-d7af-442e-afb0-13f1e6c29b3e', 'typ3', 'jpg', '/garagentor'),
(1092, '2021-11-15 14:14:29', 3047, '827a8d4d0869fb86fb2646a7f8a4bcd8', '21505b24-bead-41b9-9219-957cad92224b', 'ri-typ3_v1', 'png', '/garagentor'),
(1093, '2021-11-15 14:14:55', 1245, 'ee7d77eff93d71b263c10feec5dd8eae', '66110a1c-18f7-4df3-9b7d-c152784ac416', 'ri-typ2', 'png', '/garagentor'),
(1094, '2021-11-15 14:16:04', 5499, '70cc9a9a1dae0b99ccbf613b5d992f07', 'd91c85d6-1ada-4079-a755-72bb7dc72e17', 'bedienung_manuell', 'png', '/garagentor'),
(1095, '2021-11-15 14:16:14', 4851, '9e6ddef6e9e8f449b8bdae26cb2e11dd', 'c75c2518-9738-4992-ae0c-b2b0bae1a4df', 'bedienung_elektrisch_2', 'png', '/garagentor'),
(1096, '2021-11-15 14:16:59', 6985, '0a1beedec1a2169eb101145538e4c5ea', '6fc9c960-9d01-495a-bfac-30161ef50a32', 'bedienung_speed', 'png', '/garagentor'),
(1097, '2021-11-15 14:18:20', 6775, '36488bbce05c3f40e6b69315c87b2fb6', '12cb60eb-8f57-47be-84da-4a68acf890b6', 'bedienung_elektrisch', 'png', '/garagentor'),
(1098, '2021-11-15 14:18:38', 5813, '0f76b6a629abc4b36523224e49011cf0', 'fa26fd84-be86-4c93-bb3f-e7cba65a45c3', 'paket_licht', 'png', '/garagentor'),
(1099, '2021-11-15 14:19:07', 7617, '1a6412f00cd3c4d8378d84b1f0c2c2e7', 'ed8a71db-9c66-495a-8c9b-78150264e7b7', 'paket_luft', 'png', '/garagentor'),
(1100, '2021-11-15 14:20:46', 5869, '87d82aa9b65be38035bca4e750834f17', 'e418e178-ac59-4bbe-88d1-a5188c7be38a', 'service_montage', 'png', '/garagentor'),
(1101, '2021-11-15 14:21:08', 5263, '0e16f76a0f0d79ad300861aaf1be0dca', 'd03e3f49-7e70-4cbf-a4f5-b8b569624bbd', 'service_demontage', 'png', '/garagentor'),
(1102, '2021-11-15 14:40:26', 332779, 'a86a72b2c56097dbb6fbbf4e78dce2b6', '97e5e337-2187-423b-bde3-b7e48ae8ec1e', 'ankle_boot-front_oberleder-APEPitone116.07', 'png', '/ankle-boot/feines_glattleder_/persp1'),
(1103, '2021-11-15 14:40:52', 231943, '195f3cabe825c3855c85183fbce3f73d', '0f4834ef-83a0-463d-abb5-6622b42e5ab2', 'ankle_boot-back_oberleder-APEPitone116.01', 'png', '/ankle-boot/feines_glattleder_/persp2'),
(1104, '2021-11-15 14:41:25', 408414, 'f26fcb190256029e5bc332d4c7b1a246', 'e9ac616a-746b-40be-b66d-89c1fe31805f', 'ankle_boot-front_oberleder-APEPitone116.01', 'png', '/ankle-boot/feines_glattleder_/persp2'),
(1105, '2021-11-15 14:41:45', 407593, 'b20745b6672ffb7a09eb2b15bcda6c9c', '46aeb530-cfe9-4fdb-8a23-f89c5cc87c0b', 'ankle_boot-front_oberleder-APEPitone116.05', 'png', '/ankle-boot/feines_glattleder_/sohle'),
(1106, '2021-11-15 14:42:14', 68963, '776d76d82c90b6febc75147b4a20627b', '246c4fc3-03b0-4b00-affe-1504b005fb07', 'ankle_boot-front_oberleder-APEPitone116.03', 'png', '/ankle-boot/feines_glattleder_/top'),
(1107, '2021-11-15 14:42:17', 213044, 'd6f007982c6998bdde508171c85730ae', '2c99f477-97cc-4762-9193-84b65cf97b0a', 'material-exotisch_gepraegtes_leder-THEPitonNamibiaRocciay', 'png', '/ankle-boot/feines_glattleder_'),
(1108, '2021-11-15 14:43:24', 220446, 'ba0f023446ff35c34c1e92e1f7e57528', '2655e0e9-3f11-496f-a83e-edd2f09d861a', 'ankle_boot-front_oberleder-MAS320019.07', 'png', '/ankle-boot/feines_glattleder_/persp1'),
(1109, '2021-11-15 14:43:52', 249646, '80188f86d8c76dedfc7aa18bb68620fd', '755544fb-dab4-4f65-a669-d235687cbf7e', 'ankle_boot-front_oberleder-MAS320019.01', 'png', '/ankle-boot/feines_glattleder_/persp2'),
(1110, '2021-11-15 14:44:24', 262013, 'b2b4733acdd7af3984df4f1f121dc476', 'b162bd86-9cb2-460a-989c-fb76f5de2bad', 'ankle_boot-front_oberleder-MAS320019.05', 'png', '/ankle-boot/feines_glattleder_/sohle'),
(1111, '2021-11-15 14:44:48', 49853, '1ca4794d0dddb8eaff09470e684b438c', '1d4dea85-c067-463d-826c-652780d85c20', 'ankle_boot-front_oberleder-MAS320019.03', 'png', '/ankle-boot/feines_glattleder_/top'),
(1112, '2021-11-15 14:45:25', 147928, '8b1f8b920a013105e20d3c1c20e7b5cc', 'b50451b8-e763-4030-b114-22b35da69642', 'ankle_boot-front_oberleder-MAS100001.07', 'png', '/ankle-boot/feines_glattleder_/persp1'),
(1113, '2021-11-15 14:45:40', 118814, '86e78e6de1212ce5a7e7efc13a2c09ce', 'b536f90f-ba73-4bd4-b5e8-7565872c3d23', 'ankle_boot-front_oberleder-MAS100001.01', 'png', '/ankle-boot/feines_glattleder_/persp2'),
(1114, '2021-11-15 14:45:42', 60290, '8fdeee23ab60efa8aed8d3128cc518bc', 'd3917301-f7b4-4955-9f57-c6adb200d654', 'material-glattleder-mas100001', 'png', '/ankle-boot/feines_glattleder_'),
(1115, '2021-11-15 14:45:59', 129991, 'f5770e58c5aa34ecff96e3ed480a2496', '6d4cffaa-d5de-4580-a734-b33e6843bd10', 'ankle_boot-front_oberleder-MAS100001.05', 'png', '/ankle-boot/feines_glattleder_/sohle'),
(1116, '2021-11-15 14:46:19', 45226, 'f73d139bdb926ad73fe5f79f86ed6c61', '6d6e1026-8ed5-42e3-a7e0-c3b815c33591', 'ankle_boot-front_oberleder-MAS100001.03', 'png', '/ankle-boot/feines_glattleder_/top'),
(1117, '2021-11-17 05:56:36', 5364, '79b52f2d2f8f40a77642827dc7abb1ab', '4e1f6739-b2cd-4529-a593-e356383309fe', 'ankle_boot-absatzfleck-beige_leather.01', 'png', '/ankle-boot/absatzfleck/persp2'),
(1118, '2021-11-17 05:56:49', 5346, '8983cbea5dfe9556d79068156456b7e6', '6c91d21f-e3b5-452f-a821-b8d4944652e7', 'ankle_boot-absatzfleck-beige_leather.05', 'png', '/ankle-boot/absatzfleck/sohle'),
(1119, '2021-11-17 05:57:01', 5322, 'eb7852d7c3950ba67d06086289bc3f4a', '625d144c-a421-4eb1-a1cf-20c3be362aa9', 'ankle_boot-absatzfleck-beige_leather.03', 'png', '/ankle-boot/absatzfleck/top'),
(1120, '2021-11-17 05:57:05', 88441, '54f5e3cfc016432efb3322e7e880679f', '5b8f863e-abe1-4b22-8a27-2c1dbe39df16', 'material-sohle-rubber_beige', 'png', '/ankle-boot/absatzfleck'),
(1121, '2021-11-17 05:57:32', 4642, '5e459580b7201fb084c55e0a33ccd5a2', '7448ff18-2ec7-468d-8af1-f2a46fb10044', 'ankle_boot-absatzfleck-black_leather.01', 'png', '/ankle-boot/absatzfleck/persp2'),
(1122, '2021-11-17 05:57:43', 5166, '74e7fbb487531a4c3e61a7a7cc2fb1b8', 'c89ec05a-4f9b-49bd-b1ac-bf9456eae2eb', 'ankle_boot-absatzfleck-black_leather.05', 'png', '/ankle-boot/absatzfleck/sohle'),
(1123, '2021-11-17 05:58:00', 4937, 'cb1e9bfa8a64853797c18eb2077ae4a1', '273e8f3e-aba2-42b6-b7e7-d8c50f5c4d16', 'ankle_boot-absatzfleck-black_leather.03', 'png', '/ankle-boot/absatzfleck/top'),
(1124, '2021-11-17 05:58:03', 42486, 'cbae9d1b0b50afffa43654a0c9226185', '9fff2fad-b073-4a79-9fb0-b910ab91b129', 'material-sohle-rubber_black', 'png', '/ankle-boot/absatzfleck'),
(1125, '2021-11-17 05:59:35', 7111, '8f36ea72c27f3aa718966d67795bb445', 'ccf46853-be95-4187-8787-7b2eb2d0d592', 'ankle_boot-sohle_rund-black_leather.07', 'png', '/ankle-boot/sohle/persp1'),
(1126, '2021-11-17 05:59:50', 21347, 'd239f70343352896174536fd3d4b2d6f', 'f811c784-26b0-4af9-99b4-83be252e5130', 'ankle_boot-sohle_rund-black_leather.01', 'png', '/ankle-boot/sohle/persp2'),
(1127, '2021-11-17 06:00:11', 21168, 'aa8ba019dc4447f3260581ab35c3d706', 'd6aa2c12-a7c1-4dd3-8640-5059e2b545f3', 'ankle_boot-sohle_rund-black_leather.05', 'png', '/ankle-boot/sohle/sohle'),
(1128, '2021-11-17 06:00:27', 29239, '619ae4649979eab220671e0ab27e51a8', '63686ec1-22e0-472b-a496-a77a6e2c0fd3', 'ankle_boot-sohle_rund-black_leather.03', 'png', '/ankle-boot/sohle/top'),
(1129, '2021-11-17 06:00:33', 42486, 'cbae9d1b0b50afffa43654a0c9226185', 'bb2bb956-e9d2-4582-a4ef-3ba23caaf699', 'material-sohle-rubber_black', 'png', '/ankle-boot/sohle'),
(1130, '2021-11-17 06:01:32', 10991, '26bfe429bc6f3b4f0b56d8d26b905f9f', '883a00b6-f460-4284-8e28-916f7c3e00c5', 'ankle_boot-sohle_rund-lightblue_pantone2708U.07', 'png', '/ankle-boot/sohle'),
(1131, '2021-11-17 06:02:07', 30734, '9acc7d432ffb8bd53e06ccc82f4583d8', 'cde0f59b-3737-4f43-9b08-8ff942d9fafb', 'ankle_boot-sohle_rund-lightblue_pantone2708U.01', 'png', '/ankle-boot/sohle'),
(1132, '2021-11-17 06:02:30', 30211, '0d45d2f9fce4c8399d64f87072740050', '874d963a-a965-47c0-b002-d99f19b0b095', 'ankle_boot-sohle_rund-lightblue_pantone2708U.05', 'png', '/ankle-boot/sohle'),
(1133, '2021-11-17 06:02:48', 51077, 'a6303bf5b902b10b25995123cda8d5d2', 'be9d2b8b-6d3a-4dbc-b715-a4140b346105', 'ankle_boot-sohle_rund-lightblue_pantone2708U.03', 'png', '/ankle-boot/sohle'),
(1134, '2021-11-17 06:02:54', 27629, '43508f7b2fc70173dc22b683af4022db', '8eeb732b-e318-4416-be6e-636ac2930e19', 'material-sohle-lightblue_pantone2708U', 'png', '/ankle-boot/sohle'),
(1135, '2021-11-17 06:10:43', 81093, '795ec331b9e00e969f77a30641935e8e', '20ab2aaf-a61f-4ac0-affc-0cf38e309aee', 'ankle_boot-back_oberleder-MAS100001.03', 'png', '/ankle-boot/feines_glattleder_/top'),
(1136, '2021-11-17 06:11:15', 57094, '1feee2ae113ffab65eb210d5017cdc57', '5edd55db-553a-40ec-b970-e0f00bf5629b', 'ankle_boot-back_oberleder-MAS100001.01', 'png', '/ankle-boot/feines_glattleder_/persp2'),
(1137, '2021-11-17 06:11:39', 69066, '8a84af4a2f637770e5b924f5a9439eed', 'b9577177-b672-4e5a-a7e3-72804be72913', 'ankle_boot-back_oberleder-MAS100001.05', 'png', '/ankle-boot/feines_glattleder_/sohle'),
(1138, '2021-11-17 06:13:34', 146318, 'a654be1217aa2d525ea89a56dcb85e1b', '0af99ec1-f2f4-4953-958c-56e05b184f23', 'ankle_boot-back_oberleder-MAS320019.01', 'png', '/ankle-boot/feines_glattleder_/persp2'),
(1139, '2021-11-17 06:13:36', 182919, '180453947a28ef94340fdb1f5dbcc263', '334d3278-1644-43bc-83ac-c389794aa9de', 'material-glattleder-mas340047', 'png', '/ankle-boot/feines_glattleder_'),
(1140, '2021-11-17 06:13:56', 136038, '0d3dec0c630fa28c86764132c01879ec', '5632be51-584e-4c17-8ba1-53958afa5137', 'ankle_boot-back_oberleder-MAS320019.05', 'png', '/ankle-boot/feines_glattleder_/sohle'),
(1141, '2021-11-17 06:14:11', 140968, '61f4edabe5379a428ef390dbca742fc9', '61276544-af12-428f-8a24-7d42a5e4561d', 'ankle_boot-back_oberleder-MAS320019.03', 'png', '/ankle-boot/feines_glattleder_/top'),
(1142, '2021-11-17 06:14:51', 210979, 'd877567c6aaab86550600d0bda78dd0c', '0426279c-309a-4404-ab92-356e178d8f6b', 'ankle_boot-back_oberleder-APEPitone116.05', 'png', '/ankle-boot/feines_glattleder_/sohle'),
(1143, '2021-11-17 06:15:04', 217554, '2cf5502b5c43aaa965d90da171bf4898', 'd83539b6-2eff-4518-a4e8-c576b4f2ee06', 'ankle_boot-back_oberleder-APEPitone116.03', 'png', '/ankle-boot/feines_glattleder_/top'),
(1144, '2021-11-17 06:18:11', 9169, 'b20d9fdc952d0ac01e3de5f59f0c667c', '337dfa6e-023e-4a82-b7d8-c53a59072a1d', 'ankle_boot-zipper-ZipperYKK_085beige.07', 'png', '/ankle-boot/reissverschluss/persp1'),
(1145, '2021-11-17 06:18:33', 30252, '01b4ee526c852083e5ce05ea12a34cb9', '627a06b6-d350-4933-ba3d-fb49ad37d524', 'ankle_boot-zipper-ZipperYKK_085beige.05', 'png', '/ankle-boot/reissverschluss/sohle'),
(1146, '2021-11-17 06:18:57', 57258, '23aa17c3bf4e1769ef21233fb98424f7', '08f954de-158a-4540-8821-ff6d5bde6476', 'material-zipper_ZipperYKK_085beige', 'png', '/ankle-boot/reissverschluss'),
(1147, '2021-11-17 06:20:35', 10165, 'eada810c77abf2b690410edc983c6427', '556a7fde-da58-4f74-8021-c9a2feaf7846', 'ankle_boot-zipper-ZipperYKK_085beige.03', 'png', '/ankle-boot/reissverschluss/top'),
(1148, '2021-11-17 06:24:18', 8447, '6fb4ed9e235bf33e7d5f827997c37d4f', '6e79752d-670c-452d-bef1-e70fe893231e', 'ankle_boot-zipper-ZipperYKK_088dark_brown.07', 'png', '/ankle-boot/reissverschluss/persp1'),
(1149, '2021-11-17 06:24:40', 30646, 'a4dc4ead7d23df063cf1d63b7eeb0075', '6ce918cc-5431-4bae-a0d3-c687ba59f287', 'ankle_boot-zipper-ZipperYKK_088dark_brown.05', 'png', '/ankle-boot/reissverschluss/sohle'),
(1150, '2021-11-17 06:25:19', 9323, '9ea4c980a467be57e07c70530cf11c59', '5636ac9e-21ea-4bb8-bbb8-0c5d5d8c4ff2', 'ankle_boot-zipper-ZipperYKK_088dark_brown.03', 'png', '/ankle-boot/reissverschluss/top'),
(1151, '2021-11-17 06:25:53', 49980, 'dbd72c04c0b45aec7ea0c40368cc1366', '7a0b5ac3-aa04-414d-a993-c65a49041bdf', 'material--zipper_ZipperYKK_088dark_brown', 'png', '/ankle-boot/reissverschluss'),
(1152, '2021-11-17 06:27:23', 8309, '613d4ab234bcd69660629b9a3e43d857', 'de49952b-4425-430e-a643-a41bcf441b4e', 'ankle_boot-zipper-ZipperYKK_580black.07', 'png', '/ankle-boot/reissverschluss/persp1'),
(1153, '2021-11-17 06:27:36', 28861, '860abbeee2d2ba4dac07f5c1dc3f6fad', '43022d61-04dd-4cff-94ec-e86cb1612b81', 'ankle_boot-zipper-ZipperYKK_580black.05', 'png', '/ankle-boot/reissverschluss/sohle'),
(1154, '2021-11-17 06:27:48', 9177, '8ee48b46ffdb5275dd114f7c43614446', '270753c1-ed11-4256-987c-3a3aedf3b836', 'ankle_boot-zipper-ZipperYKK_580black.03', 'png', '/ankle-boot/reissverschluss/top'),
(1155, '2021-11-17 06:27:50', 3397, '15dc276b4a3c8945de6bcad5e8857f06', 'ea72078d-5ac0-4b03-ae25-8bed51a391b8', 'material--zipper_ZipperYKK_580black', 'png', '/ankle-boot/reissverschluss'),
(1156, '2021-11-17 06:30:28', 14207, '4dde72c5edf87bad6fa8aeeb3ea8c6b5', '4ef3562f-ec71-4365-8f49-8265ac2acc98', 'ankle_boot-innenleder_rund-TII306.07', 'png', '/ankle-boot/innenleder/persp1'),
(1157, '2021-11-17 06:30:31', 66285, '3c159ff90629cce959c05871709ad493', 'e5531954-a5ad-4b1b-a451-872863b304b7', 'material-innenleder-TII206', 'png', '/ankle-boot/innenleder'),
(1158, '2021-11-17 06:31:12', 29060, '83fa16d092efe97f04bc16b3ba1b6fe8', '8fa11082-ffc6-415e-8c0b-5b03150e5b3b', 'ankle_boot-innenleder_rund-TII342.07', 'png', '/ankle-boot/innenleder/persp1'),
(1159, '2021-11-17 06:31:15', 95511, 'ecdd6992be6f875131f33105fbde2ee1', '2dec42d2-1fd7-4d31-95b1-f454b96080a8', 'material-innenleder-342', 'png', '/ankle-boot/innenleder'),
(1160, '2021-11-17 06:31:39', 28928, '95f200c25be375f59a16d4104ca0bdd1', 'a598523f-26c8-483b-b8d5-764306b25890', 'ankle_boot-innenleder_rund-TII7039.07', 'png', '/ankle-boot/innenleder/persp1'),
(1161, '2021-11-17 06:31:40', 97077, '2b884b505f88436945512eb58c06de20', '49b06ad7-dab5-4c6c-b10d-063174cfeb83', 'material-innenleder-7039', 'png', '/ankle-boot/innenleder'),
(1162, '2021-11-17 06:34:07', 37570, '03df77a04bedbed1b45a49aa05d9f5a4', 'c444c7fa-14b0-4a9a-a6d3-fa21bda287be', 'ankle_boot-heel-AIS330.01', 'png', '/ankle-boot/absatz/persp2'),
(1163, '2021-11-17 06:34:21', 39724, 'a5e38a33c2aa7b03523fa3816d140092', 'ad0a5e33-1234-481b-94d3-ebfdee6318cc', 'ankle_boot-heel-AIS330.05', 'png', '/ankle-boot/absatz/sohle'),
(1164, '2021-11-17 06:34:57', 61464, '75f18491a99183215ea9f18131a1f9c2', '1f5dca30-e459-48f3-a65c-e7d1de7f2cc8', 'ankle_boot-heel-AIS330.03', 'png', '/ankle-boot/absatz/top'),
(1165, '2021-11-17 06:35:13', 55147, 'aa375979e9f0dc86d123061f063a3c8c', '679747bf-06bf-4d9a-85b3-714b6b9237b6', 'material-senkel-SLB79108', 'png', '/ankle-boot/absatz'),
(1166, '2021-11-17 06:37:35', 26235, 'f344fbfbc14a0abf36e8b941c74a44ff', '4d0ba118-48ce-49d9-be1f-bea79c5896ae', 'ankle_boot-heel-MAP100035.01', 'png', '/ankle-boot/absatz/persp2'),
(1167, '2021-11-17 06:37:58', 27517, '41a9aea939790a8e004314b723becd09', 'e69f82d3-ce0f-4dc1-8e96-825f60331aa9', 'ankle_boot-heel-MAP100035.05', 'png', '/ankle-boot/absatz/sohle'),
(1168, '2021-11-17 06:38:14', 39871, 'e82d683623fed3129a3496698df49043', 'a34d7026-9ef4-470a-95b6-280eac5ae449', 'ankle_boot-heel-MAP100035.03', 'png', '/ankle-boot/absatz/top'),
(1169, '2021-11-17 06:38:44', 51487, 'c15ee9c81f986af5de33b48e56c84323', 'c1985923-f506-4ba4-be8e-570ce8a0f068', 'ankle_boot-heel-APEPitone116.01', 'png', '/ankle-boot/absatz/persp2'),
(1170, '2021-11-17 06:38:54', 52847, 'e84bd4e1179f613ee21d400dcd9f4002', '8f296e98-2e84-4331-933f-dad6e6eb9ff2', 'ankle_boot-heel-APEPitone116.05', 'png', '/ankle-boot/absatz/sohle'),
(1171, '2021-11-17 06:39:04', 89402, 'e359ec1aa77d1aaff27d418b4199560f', 'c707287e-5779-476e-b676-811e7c07c378', 'ankle_boot-heel-APEPitone116.03', 'png', '/ankle-boot/absatz/top'),
(1172, '2021-11-17 06:39:11', 213044, 'd6f007982c6998bdde508171c85730ae', '645272aa-95a4-473b-8256-0fc6299bd6b9', 'material-exotisch_gepraegtes_leder-THEPitonNamibiaRocciay', 'png', '/ankle-boot/absatz'),
(1173, '2021-11-17 07:25:18', 166967, 'f375726f8c53c13a2c387272f6667479', '84b1fd1f-8eb8-4bc7-9637-8933f3ba1c1c', '001_01_271_1_9-hemdsaum-0-gerade_regular_fit', 'png', '/masshemd'),
(1174, '2021-11-17 07:26:21', 165029, '2f6a2713eb667c0bd610a1b5693ac268', 'ac0d53da-d2fe-4fae-8a0b-d29528295a9c', '001_01_271_1_9-hemdsaum-0-gerade_slim_fit', 'png', '/masshemd'),
(1175, '2021-11-17 07:28:55', 67946, '7ee4a1f028832ae01714f6553603809d', 'aa858754-05e2-4298-a08d-dcb3104d7c70', '002_01_176_3_4-00-ohne-knopfleiste_9-hemdsaum-0-gerade', 'png', '/masshemd'),
(1176, '2021-11-17 07:28:57', 3469, '4f3f67840b72e232d84a078c2cbe2bb6', '8458b12f-ce5f-4b40-a889-f51b2612506c', 'thumb-knopfleiste-00-ohne', 'jpg', '/masshemd'),
(1177, '2021-11-17 07:30:14', 26994, '672a10ac79f142a16ed578d5d8a2d43d', '37117f8d-6fff-42d7-90c3-0d86f9c3417e', '002_01_176_3_4-01-aufgesetzte-knopfleiste_9-hemdsaum-0-gerade', 'png', '/masshemd'),
(1178, '2021-11-17 07:30:16', 3492, '37c4e5a05b1d313f541500fcd0ddac5e', '4b898ce0-9523-4386-8e66-a01f04e636e8', 'thumb-knopfleiste-01-aufgesetzt', 'jpg', '/masshemd'),
(1179, '2021-11-17 07:31:03', 20332, 'dd6be2062b0fc2d8dae8758a84a4ea96', '006bca6d-9dfe-407b-a464-d9f218e0db0d', '002_01_176_3_4-02-verdeckte-knopfleiste_9-hemdsaum-0-gerade', 'png', '/masshemd'),
(1180, '2021-11-17 07:31:05', 3690, '0cf11c824488670c4ca9f8cc736ae0fe', '4ca98c5d-7cc0-4858-9d03-bacd3cfeba46', 'thumb-knopleiste-02-verdeckt', 'jpg', '/masshemd'),
(1181, '2021-11-17 07:36:58', 118409, '9e0858f46d44c1f519f5d433206a595a', '7d58ac0f-f9f9-4b89-9ab9-23a1909b24f0', '003_01_176_3_5-01-umschlag-manschette-abgerundet_regular_fit', 'png', '/masshemd'),
(1182, '2021-11-17 07:38:58', 116824, 'f0bdf8bbc45c38243fac18f3689f2e09', '2239f8f4-13ce-46f4-9d4f-0defeafffa1c', '003_01_176_3_5-02-sport-manschette_regular_fit', 'png', '/masshemd'),
(1183, '2021-11-17 07:39:32', 116879, 'ccca5079d29b68b94afa39923965c16b', 'd1728173-4864-499e-898e-22246c36ecb9', '003_01_176_3_5-05-zweiknopf-manschette_regular_fit', 'png', '/masshemd'),
(1184, '2021-11-17 07:40:03', 132559, 'dbd8d1924d13b820304f2a84170923d4', 'bb570d32-282a-4363-974a-707621261719', '003_01_214_5_5-01-umschlag-manschette-abgerundet_regular_fit', 'png', '/masshemd'),
(1185, '2021-11-17 07:41:25', 114545, '49db843abc603f80d727bbfab2ebd184', 'ba093b52-dbf5-4dda-8cac-347dccaccdac', '003_01_176_3_5-02-sport-manschette_slim_fit', 'png', '/masshemd'),
(1186, '2021-11-17 07:44:38', 22464, '9c14fbc2b9b3facd61d8637f7b5ab05e', '00eae8f8-a492-42da-bd22-99911d324cb0', '005_01_176_3_3-30-kent-windsor', 'png', '/masshemd'),
(1187, '2021-11-17 07:44:41', 3998, 'b81871aa34e74a021f50df9a73f711e4', '672abb02-b606-41f8-80f2-2118424c744b', 'thumb-kragen-30-kent-windsor', 'jpg', '/masshemd'),
(1188, '2021-11-17 07:45:15', 21768, '7934ac05009b21e5a813128e58779a7c', '861b0b3e-e449-425e-ba57-8afe95b3af24', '005_01_176_3_3-14-haifisch', 'png', '/masshemd'),
(1189, '2021-11-17 07:45:16', 4027, 'ecfdae311629f1c2aef235f8e2480c95', '9c87b0a8-e12c-4fa0-8bd9-374618f62390', 'thumb-kragen-14-haifisch', 'jpg', '/masshemd'),
(1190, '2021-11-17 07:45:55', 21039, '74d5c580fea394315ee217b4b47327a1', '15ea72a6-2fac-469e-abfa-535761209bf6', '005_01_176_3_3-33-button-down-windsor', 'png', '/masshemd'),
(1191, '2021-11-17 07:46:19', 25465, '221fbc4f017f23bd26151c836279a58c', '46472510-2b6e-4dde-9362-2e3b361f531c', '005_01_176_3_3-21-twin', 'png', '/masshemd'),
(1192, '2021-11-17 07:46:22', 4064, 'ea9aab1678d9ba8b68155d8c0d0e7a7f', '8d0e4895-1e89-4fbf-8333-f490f8e023e1', 'thumb-kragen-21-twin', 'jpg', '/masshemd'),
(1193, '2021-11-17 07:46:45', 22599, 'e6ad39cf1c2c3d0a66ec3f3442c94035', '5206f14f-2351-4876-87c5-35ee614d7c73', '005_01_176_3_3-17-milano', 'png', '/masshemd'),
(1194, '2021-11-17 07:46:47', 3930, '186e45ac7f4682dd09b5bcd8039dbc17', '652f138f-7756-48ab-9de3-c58d86d0d8c7', 'thumb-kragen-17-milano', 'jpg', '/masshemd'),
(1195, '2021-11-17 07:47:16', 22270, '9f504c7911f68fb4e4cf1aa14c8789d0', 'b1d57180-937b-4fab-8c82-c3a7f51f5332', '005_01_214_5_3-04-paris', 'png', '/masshemd'),
(1196, '2021-11-17 07:47:18', 3726, '4a30332314a1fca6630079195a395578', '80ec6ac1-3327-459d-a774-0eca1e06d9e7', 'thumb-kragen-04-paris', 'jpg', '/masshemd'),
(1197, '2021-11-17 07:47:36', 15193, '9cebbc9a4beeaaa0a9238c05f50ec51a', 'b16c3138-2007-431c-b1c8-619e2f4189c4', '005_01_176_3_3-22-stehkragen', 'png', '/masshemd'),
(1198, '2021-11-17 07:47:38', 3379, '4f52d39677591106ae52d46912e12509', '6e23521e-d9ff-42ee-958b-32ff30d3bf8e', 'thumb-kragen-22-stehkragen', 'jpg', '/masshemd'),
(1199, '2021-11-17 07:47:57', 18909, 'c38257c54926cc100e8486e7a7f61597', 'fcbb9c6c-67a8-4655-96d2-841f5b14e5df', '005_01_176_3_3-08-frack', 'png', '/masshemd'),
(1200, '2021-11-17 07:47:58', 3681, '68496b31a9809e408b62d52b532850ac', 'a626a277-45d8-4c1f-bd4d-45a0ef594a10', 'thumb-kragen-08-frack', 'jpg', '/masshemd'),
(1201, '2021-11-17 07:51:28', 172034, '2726f15952d8986ef0e174dea3cb4aad', 'd387b6b2-1b0e-4817-904e-3ee5d5c03841', '001_01_176_3_9-hemdsaum-2-abgerundet_slim_fit', 'png', '/masshemd'),
(1202, '2021-11-17 07:52:13', 224252, '68c57355953c55695e04c1a683c12fa1', '05a0a8e6-04e7-4446-9f55-7d6865ac29c9', '001_01_214_5_9-hemdsaum-0-gerade_slim_fit', 'png', '/masshemd'),
(1203, '2021-11-17 07:52:39', 229291, '1e61dddd6d24a42aa478cbcd5491797c', '2cd189ad-914b-43b8-a8bf-42d37c057c7f', '001_01_214_5_9-hemdsaum-2-abgerundet_regular_fit', 'png', '/masshemd'),
(1204, '2021-11-17 08:39:55', 1630748, 'cec28d4345ec9f4ca1222843ed673b68', 'de5f5541-a623-4653-bc2d-14e05e456df9', 'mbDESIGN_KV1-DC_glanzgrau-poliert_2080', 'png', '/alurad');
INSERT INTO `apto_media_file` (`surrogate_id`, `created`, `size`, `md5_hash`, `id`, `filename`, `extension`, `directory`) VALUES
(1205, '2021-11-17 08:40:12', 1866522, 'cb9815404102cd18cbb8ce8abad7ca70', '1d506163-8bb7-472e-bac5-8436482776da', 'mbDESIGN_KV1-DC_glanzgrau-poliert_2082', 'png', '/alurad'),
(1206, '2021-11-17 08:40:29', 1589776, '24f0a92172a666f3935ac4e38f477fb0', 'e42d3dbf-176e-47ed-8b51-de2344c6e509', 'mbDESIGN_KV1-DC_glanzgrau-poliert_2083', 'png', '/alurad'),
(1207, '2021-11-17 08:40:30', 2092, '820ca7e9ee76b795a605c7d7df8583d3', '2e625b92-5f8e-45aa-af95-fe7a76153820', 'mbdesign_kv1-dc_glanzgrau-poliert_thumb', 'png', '/alurad'),
(1208, '2021-11-17 08:41:12', 1453742, 'b3c5723e4a731cfebb7bf94d8fa3af5b', '6c803eeb-771f-45ca-8d81-404334bb0e49', 'mbDESIGN_KV1-DC_glanzschwarz_2333', 'png', '/alurad'),
(1209, '2021-11-17 08:41:29', 1693873, '9970041f9e029b20bbbda0748712d6a6', '8b792b74-3e7b-4cf5-8873-659c0d6729f9', 'mbDESIGN_KV1_glanzschwarz_2425', 'png', '/alurad'),
(1210, '2021-11-17 08:41:55', 1574862, '4d71442f871a27c41a7aec0b46b004c3', 'c9c472c3-82fd-421c-a925-2404ef1d54ab', 'mbDESIGN_KV1_glanzschwarz_2426', 'png', '/alurad'),
(1211, '2021-11-17 08:42:01', 2293, '6064b47644d7e9de44d24ed170017cc4', '94d6af07-fe89-4506-8e14-75b8f7727b97', 'mbdesign_kv1_glanzschwarz_thumb', 'png', '/alurad'),
(1212, '2021-11-17 08:42:40', 1534033, 'f82e51bbaf50cb2ca2d2bd724c9a7b58', '6151e8af-007f-41ee-abe7-74e52475539e', 'mbDESIGN_KV1_glanzschwarz-poliert_2418', 'png', '/alurad'),
(1213, '2021-11-17 08:42:57', 1705251, '6cc3e46cc425039c12a23a18d8c63361', 'ee31bcfa-2645-4378-bae2-27ad230aabc6', 'mbDESIGN_KV1_glanzschwarz-poliert_2420', 'png', '/alurad'),
(1214, '2021-11-17 08:43:09', 1540257, '4aa18888d986a6bb5c744a0f4f317d6d', 'c2b6e71b-483d-4508-b155-b0d24b410a58', 'mbDESIGN_KV1_glanzschwarz-poliert_2421', 'png', '/alurad'),
(1215, '2021-11-17 08:43:11', 2302, 'd57a79d1ec528ba4dee7fa194f22b1ec', '1323373a-79d0-42eb-a46e-99ead604f666', 'mbdesign_kv1_glanzschwarz-poliert_thumb', 'png', '/alurad'),
(1216, '2021-11-17 08:45:55', 1568527, 'd7ef96052e8b842e9445e665d417608f', '40502d8b-146e-44c4-8c37-2eabe639a68a', 'mbDESIGN_KV1-DC_mattgrau_2088', 'png', '/alurad'),
(1217, '2021-11-17 08:46:08', 1779767, '5d5ed334853a9522001eedf8e905b4af', '58bc1420-d6f5-4499-8055-194e1a540478', 'mbDESIGN_KV1_mattgrau_2167', 'png', '/alurad'),
(1218, '2021-11-17 08:46:34', 1592488, '580c5f52196f9d186e69f10ebc01b595', 'e966298c-681a-42da-b981-656c868fb5dc', 'mbDESIGN_KV1_mattgrau_2168', 'png', '/alurad'),
(1219, '2021-11-17 08:46:40', 2166, '71cab6fb11991b19648e67adf8264ba1', 'ffc659be-0d18-4b4c-9942-522e49f771d4', 'mbdesign_kv1_mattgrau_thumb', 'png', '/alurad'),
(1220, '2021-11-17 08:47:22', 1451583, '85d3cc0d1a867fd346351b4e50bfcbae', 'f5346a8f-6e36-4ad0-8e28-8efd7d738788', 'mbDESIGN_KV1_mattschwarz_2175', 'png', '/alurad'),
(1221, '2021-11-17 08:47:33', 1570360, '7a303b980bf8e15883fced5fa3adea62', '01756890-8829-4250-91d6-b8ba0ad20c4e', 'mbDESIGN_KV1_mattschwarz_2177', 'png', '/alurad'),
(1222, '2021-11-17 08:48:37', 1493361, 'f85c6b329b513c6f5434566f5ed306a3', 'ca9c3418-20dd-48ce-b570-a25b6f42aaca', 'mbDESIGN_KV1_mattschwarz_2178', 'png', '/alurad'),
(1223, '2021-11-17 08:48:39', 2020, '4ef6226c99e9791f590dfc761bfbf03f', 'c2ecc5dc-ede3-4ca5-9b47-1023789b6d91', 'mbdesign_kv1_mattschwarz_thumb', 'png', '/alurad'),
(1224, '2021-11-17 08:50:19', 1481821, '2b8fea29a2688a1f5e5955b11b3ea9e6', 'd640314e-bc35-4b44-8b72-f5217d661684', 'mbDESIGN_KV1_mattschwarz-poliert_2427', 'png', '/alurad'),
(1225, '2021-11-17 08:50:31', 1573676, '6944c79141b345d3ad683f838ecc819a', '79e92cd9-e99e-441c-a87e-5fe8a3d4097b', 'mbDESIGN_KV1_mattschwarz-poliert_2429', 'png', '/alurad'),
(1226, '2021-11-17 08:50:47', 1453573, '0ab337dd9a0076a3199fefdc58a3754e', 'e9217f47-eedd-47ed-a555-c4d4a02f56fd', 'mbDESIGN_KV1_mattschwarz-poliert_2430', 'png', '/alurad'),
(1227, '2021-11-17 08:50:50', 2103, '34ea8e9f95793d008a1b988e3b3facb9', '4936cc26-d818-462b-aac6-ae5db78fb42e', 'mbdesign_kv1_mattschwarz-poliert_thumb', 'png', '/alurad'),
(1228, '2021-11-17 08:51:36', 1588768, 'a3a87fa0375a4139d27bfb8960abd0fe', '039d542e-14d7-4441-a60a-8bc41db086e8', 'mbDESIGN_KV1_silber_2180', 'png', '/alurad'),
(1229, '2021-11-17 08:51:50', 1701371, '28bab986589ecc62a72050d846b11f7d', '6a80eaff-82ac-4811-bcbd-810517ba8a42', 'mbDESIGN_KV1_silber_2182', 'png', '/alurad'),
(1230, '2021-11-17 08:51:58', 1552504, '54cf1bd959d61c7712e8d70e14cc8719', '45c4b8c7-0fc6-4fb7-9994-2a69e14028f7', 'mbDESIGN_KV1_silber_2183', 'png', '/alurad'),
(1231, '2021-11-17 08:52:02', 2148, '0a7e37c6a901de622320b8da171c7cfd', '809b93d0-f1bd-49c5-9a1b-f2752d79fd10', 'mbdesign_kv1_silber_thumb', 'png', '/alurad'),
(1232, '2021-11-17 08:54:10', 1786925, '6d026d082d9af69d58ba46cd4683198e', '339c68ab-6bd7-4903-9c19-2f6cc7336da9', 'mbDESIGN_KV1_glanzgrau-poliert_2086', 'png', '/alurad'),
(1233, '2021-11-17 08:54:20', 1446531, 'f52b20003870e20541cda2d892eb3696', 'f185747f-9de3-4951-8401-b7287f6716e8', 'mbDESIGN_KV1_glanzgrau-poliert_2087', 'png', '/alurad'),
(1234, '2021-11-17 08:54:23', 2283, 'c0c825f0f02246bfd863ee7135c5d6c9', 'd523822d-0c02-40e2-b62b-55a91395cccc', 'mbdesign_kv1_glanzgrau-poliert_thumb', 'png', '/alurad'),
(1235, '2021-11-17 13:14:49', 12309, 'caa7c156976f70cb3a4d599de5f02d43', '8676240a-86e9-4148-a9b3-06ccbd6eb38f', 'zehentrenner_karabinerschlaufe_10_persp1', 'png', '/zehentrenner/persp1'),
(1236, '2021-11-17 13:15:31', 8135, '968177335922ea8b526bf3a5bdbc7973', '828f7674-8617-45a2-8270-564582f04698', 'zehentrenner_karabinerschlaufe_10_persp2', 'png', '/zehentrenner/persp2'),
(1237, '2021-11-17 13:15:49', 13708, '8568b6faa2b2dbdd5e9997443b3c9393', '8a9ecb2e-2efa-427e-96db-eb7ab45bf147', 'zehentrenner_karabinerschlaufe_10_top', 'png', '/zehentrenner/top'),
(1238, '2021-11-17 13:19:05', 121141, '1bfd7ccaeaf5098b2a0772e54e784f07', '0afebe4f-191e-4740-9c74-d0cf701d35a7', 'zehentrenner_sohle_2_dot_persp1', 'png', '/zehentrenner/persp1'),
(1239, '2021-11-17 13:19:37', 81901, '4afa599008138a13f5f6f95fa2b0482b', 'c4e326f8-1fd2-4fb7-9522-9a72c92d23d4', 'zehentrenner_sohle_2_dot_persp2', 'png', '/zehentrenner/persp2'),
(1240, '2021-11-17 13:19:42', 12154, '367017b75b4337532b94ed70369c71d6', '328d99c0-bcbf-4904-9b0f-9f8b38de64b7', '56x56_sohle_dot', 'jpg', '/zehentrenner/preview/sohle'),
(1241, '2021-11-17 13:20:20', 95542, '9bc6413f58324dbe1290fbe9464b8c92', '139592d8-4d4a-4e0a-906f-9edd61afc4d2', 'zehentrenner_sohle_2_hexagrip_persp1', 'png', '/zehentrenner/persp1'),
(1242, '2021-11-17 13:20:32', 11142, '65d3c84c1230db15b9eeb1ce77ece106', '7c18a442-1309-423c-ae3b-0379083993d2', '56x56_sohle_hexa-grip', 'jpg', '/zehentrenner/preview/sohle'),
(1243, '2021-11-17 13:21:23', 155285, '35d247e4d904acdc74b909c1c96a6802', '9ba2dac1-4574-4489-b185-ddbeebc59005', 'zehentrenner_sohle_2_ledersohle_persp1', 'png', '/zehentrenner/persp1'),
(1244, '2021-11-17 13:21:38', 109994, '782dcf9e9936882a4b68c7cc6696f9cf', '5b989374-a31e-4eae-9f18-368c8adbf296', 'zehentrenner_sohle_2_ledersohle_persp2', 'png', '/zehentrenner/persp2'),
(1245, '2021-11-17 13:21:41', 10781, '3e07bb61323c168b60a9a27b65eec146', '4d63321a-3a2a-4bf7-8288-9cec894778a4', '56x56_sohle_leder', 'jpg', '/zehentrenner/preview/sohle'),
(1246, '2021-11-17 13:22:21', 166510, '18713c80ddcadb67fb654502b6ab35b7', 'b8717775-a563-487d-af2f-c4ba490ae391', 'zehentrenner_sohle_2_mountain-gruen_persp1', 'png', '/zehentrenner/persp1'),
(1247, '2021-11-17 13:24:18', 10641, 'd51844cba0d613d188dda14a7794572e', '408c93e3-c5bf-4aa6-bbae-e901170f0a26', '56x56_sohle_mountain-gruen', 'jpg', '/zehentrenner/preview/sohle'),
(1248, '2021-11-17 13:25:05', 225022, '0c8e195893ba5232fce593b990c0f995', '517def2c-64d9-453c-9e06-4e1e1b4ff2a3', 'zehentrenner_sohle_2_mountain-rot_persp1', 'png', '/zehentrenner/persp1'),
(1249, '2021-11-17 13:25:29', 143257, '8dc1397dd141dd3a96f686d68f7c8577', 'a706d99b-dca6-471a-a398-dea5f60fccfa', 'zehentrenner_sohle_2_mountain-rot_persp2', 'png', '/zehentrenner/persp2'),
(1250, '2021-11-17 13:25:32', 12159, 'a8ec7b59f858e9045119a2e69f663a91', 'd94383bf-bb7d-425f-aeca-6bb5e133ed85', '56x56_sohle_mountain-rot', 'jpg', '/zehentrenner/preview/sohle'),
(1251, '2021-11-17 13:26:08', 124026, '34c19769a89964664d53e96770319d68', 'c9c95550-f931-40aa-a014-a7635ebf9eb8', 'zehentrenner_sohle_2_vibram_persp1', 'png', '/zehentrenner/persp1'),
(1252, '2021-11-17 13:26:22', 84212, '65e526b52e261546463706aedb60d67b', 'd2cc40d2-28c0-4cea-a9a0-ee5737115199', 'zehentrenner_sohle_2_vibram_persp2', 'png', '/zehentrenner/persp2'),
(1253, '2021-11-17 13:26:24', 10927, 'b74a93ae7e25af9055d326ffdd77a923', '872ac8d6-0246-413b-b95e-4e96a3a09489', '56x56_sohle_vibram', 'jpg', '/zehentrenner/preview/sohle'),
(1254, '2021-11-17 13:28:11', 19455, 'a365f7e5d65bab7acb0c48e0f2a348cb', '6dd72708-bac2-4438-9fc3-826fad343f79', 'zehentrenner_etikett_11_persp1', 'png', '/zehentrenner/persp1'),
(1255, '2021-11-17 13:38:26', 19339, '155634c6a1aa5d50c890b70475e139ea', '7ec70d65-9f8d-4f8f-9b85-e8984bfb38e0', 'zehentrenner_steg_8_blau_persp1', 'png', '/zehentrenner/persp1'),
(1256, '2021-11-17 13:39:43', 12917, '58e976f559109e13b8ecffaf617c9e5d', 'df68dc1d-85da-42d7-8504-a2c21a63cc22', 'zehentrenner_steg_8_blau_persp2', 'png', '/zehentrenner/persp2'),
(1257, '2021-11-17 13:39:57', 10188, '0fc349ca1e600e3811d88bf2bb39e99e', '1cfa953e-7e8f-4193-b84a-4b4cbf3e969e', 'zehentrenner_steg_8_blau_top', 'png', '/zehentrenner/top'),
(1258, '2021-11-17 13:40:00', 12880, 'f2feb1ebaee1e844db5315bc583c5f30', '370d06bc-9c1c-460b-baa8-84f64dac66b1', '56x56_zwischendaempfung-blau', 'jpg', '/zehentrenner/preview/zehentrenner-o'),
(1259, '2021-11-17 13:40:53', 19166, 'a931b219d9c30b440dfaaf40b35b9fa3', '457fb180-7993-4567-ac3a-fc4d8b880770', 'zehentrenner_steg_8_bordeaux_persp1', 'png', '/zehentrenner/persp1'),
(1260, '2021-11-17 13:43:32', 12743, '1240d7a6f64c3cb67ac50843a9f7578d', 'c2cbe826-8982-4834-a55e-b9a22ba261b0', 'zehentrenner_steg_8_bordeaux_persp2', 'png', '/zehentrenner/persp2'),
(1261, '2021-11-17 13:43:47', 10022, '32e71d5a115f953088826c1b0c3a5395', '97cac90e-95c2-480a-8a37-83a8f74f363c', 'zehentrenner_steg_8_bordeaux_top', 'png', '/zehentrenner/top'),
(1262, '2021-11-17 13:45:38', 18338, '8f44b4d7ad0ecdfeaf4084280dd968e2', '11b68a9d-d812-47cf-8702-1ab1660bc513', 'zehentrenner_steg_8_dunkelgruen_persp1', 'png', '/zehentrenner/persp1'),
(1263, '2021-11-17 13:45:53', 12229, '0ec93e8f160eb82e32478ada540b5818', 'f42aa601-4948-4d69-b9fc-c8217ae5b3b8', 'zehentrenner_steg_8_dunkelgruen_persp2', 'png', '/zehentrenner/persp2'),
(1264, '2021-11-17 13:46:07', 9618, 'e5ccda4c3ac06ffe73ef4449976b3e26', '5b9c49a4-c853-4c2f-a76a-d92dd62e110f', 'zehentrenner_steg_8_dunkelgruen_top', 'png', '/zehentrenner/top'),
(1265, '2021-11-17 13:46:12', 10903, '29a004457636bcc13b9f4554f0ef1b5c', 'a3796140-f057-4c1b-b656-a894453a60b1', '56x56_steg_dunkelgruen', 'jpg', '/zehentrenner/preview/steg'),
(1266, '2021-11-17 13:47:35', 9545, '8392189779fe40fb56c0b92fa077b7ff', 'e9164e36-769e-4b47-b570-5f2e288c445a', 'zehentrenner_steg_8_grau_top', 'png', '/zehentrenner/top'),
(1267, '2021-11-17 13:48:10', 11567, 'd0046de30acca5e7a767469075c96ee7', '5b88da2f-2ac7-4d38-906d-ab320d6571b4', 'zehentrenner_steg_8_grau_persp2', 'png', '/zehentrenner/persp2'),
(1268, '2021-11-17 13:48:40', 17440, 'd9efa48988396a104839e01de1ca10fa', '476de14c-62ef-4999-aa13-7cac11658928', '56x56_steg_grau', 'jpg', '/zehentrenner/preview/steg'),
(1269, '2021-11-17 13:49:17', 9005, 'ade7f6fe383e153934516c817e99027e', '1ccc72ac-7a66-47fa-8496-bab1308144e3', 'zehentrenner_steg_8_grau-stadt_top', 'png', '/zehentrenner/top'),
(1270, '2021-11-17 13:49:40', 15234, '9119fb4bde5a47c8454c435507c23b8d', '543d937a-3c10-4e84-9073-fb3123c960da', 'zehentrenner_steg_8_grau-stadt_persp1', 'png', '/zehentrenner/persp1'),
(1271, '2021-11-17 13:50:11', 11594, '85e7827a2df559274361158fbf35ae5e', '0c36218b-51ff-4409-9267-0839dc2dbacc', 'zehentrenner_steg_8_grau-stadt_persp2', 'png', '/zehentrenner/persp2'),
(1272, '2021-11-17 13:50:58', 19809, '4fbe22480e27030d9ec0720d09a1d118', '39f02b41-1428-47d7-bed4-22768a553c01', 'zehentrenner_steg_8_lila_persp1', 'png', '/zehentrenner/persp1'),
(1273, '2021-11-17 13:51:29', 12855, '7923aa64405941780023ad6d57e84014', '81851fa7-10e7-497a-945f-fb7e4803c429', 'zehentrenner_steg_8_lila_persp2', 'png', '/zehentrenner/persp2'),
(1274, '2021-11-17 13:51:52', 10313, 'ace3c7a5a9f19f240ef985f774bee14b', 'bcb59b37-fd43-421b-a613-43d1cba858ce', 'zehentrenner_steg_8_lila_top', 'png', '/zehentrenner/top'),
(1275, '2021-11-17 13:56:09', 20181, 'c12cdc9d16bfc944b59110dd0b8313a6', '6b40371c-7806-4dd3-b81c-66b12a52504a', 'zehentrenner_steg_8_meliert-bunt_persp1', 'png', '/zehentrenner/persp1'),
(1276, '2021-11-17 13:56:24', 13089, '30a8abe29d105136da61e7220ce3e16c', 'd1b66bd8-a751-4b0d-867f-499f2fab5cb8', 'zehentrenner_steg_8_meliert-bunt_persp2', 'png', '/zehentrenner/persp2'),
(1277, '2021-11-17 13:58:26', 10364, '5b4060909edb2280ccd4276925ec66a4', 'c19ebbfe-c693-4280-a776-892a9831b159', 'zehentrenner_steg_8_meliert-bunt_top', 'png', '/zehentrenner/top'),
(1278, '2021-11-17 13:58:53', 12140, '9d70b5a8e5ff935c53adbd30b6ca837f', 'aaade36c-b5ae-4ed6-afb7-1121c1e17283', '56x56_steg_meliert', 'jpg', '/zehentrenner/preview/steg'),
(1279, '2021-11-17 13:59:49', 19402, 'ebc5ca96e5468b0a2d08863b706c000f', '66dd4a4b-f082-49de-a0e5-59ae4603e128', 'zehentrenner_steg_8_meliert-lila_persp1', 'png', '/zehentrenner/persp1'),
(1280, '2021-11-17 14:00:23', 12649, 'be252ba377b4f2949ae8218797f7a7a7', '1f077e87-e5af-497f-9562-4bb17e2d39ed', 'zehentrenner_steg_8_meliert-lila_persp2', 'png', '/zehentrenner/persp2'),
(1281, '2021-11-17 14:00:42', 10034, '198409db1dfc0b428373c0afe6960347', '45837663-51a8-41e9-bc2c-4b803ad445fc', 'zehentrenner_steg_8_meliert-lila_top', 'png', '/zehentrenner/top'),
(1282, '2021-11-17 14:00:44', 11186, 'b21de48afb618c8503babb08086c9943', '79ab0ad5-781a-4feb-8f3c-572aeb31c1b7', '56x56_steg_lila', 'jpg', '/zehentrenner/preview/steg'),
(1283, '2021-11-17 14:01:24', 20270, '1405ef7662c71a9703ad0e54d4c730f0', 'b4850706-25ea-442e-8d98-effea3ae102d', 'zehentrenner_steg_8_neongruen_persp1', 'png', '/zehentrenner/persp1'),
(1284, '2021-11-17 14:01:48', 12875, 'd2c449f84ef4c0025f78c1400a952f71', '855257a5-8dc5-4409-974f-28c256be3c37', 'zehentrenner_steg_8_neongruen_persp2', 'png', '/zehentrenner/persp2'),
(1285, '2021-11-17 14:02:06', 10318, 'e817007c83a93959180fd9ffc6e8bf74', 'c8a0a29c-22a2-4fae-a934-cd750241f980', 'zehentrenner_steg_8_neongruen_top', 'png', '/zehentrenner/top'),
(1286, '2021-11-17 14:02:08', 12224, '3d803458b5594bf7a77b19847e7a7411', 'f1c69e1d-317d-4740-b2fb-1c11ca9ce847', '56x56_steg_neongruen', 'jpg', '/zehentrenner/preview/steg'),
(1287, '2021-11-17 14:02:55', 19556, 'db5141206851964bc43010c64f2bc16f', '10adeb5e-a521-4a10-86e2-ab5dd4a68ce5', 'zehentrenner_steg_8_neonorange_persp1', 'png', '/zehentrenner/persp1'),
(1288, '2021-11-17 14:03:11', 12835, 'ee341d6a1a735e8a154607621f426042', 'db229476-d0a6-4ad6-a71b-84d44eb7c94d', 'zehentrenner_steg_8_neonorange_persp2', 'png', '/zehentrenner/persp2'),
(1289, '2021-11-17 14:03:27', 10254, 'e1c570fe2b730d4d1c836e552b96522e', '8d739c0c-6309-4d74-a184-39d323fd6e90', 'zehentrenner_steg_8_neonorange_top', 'png', '/zehentrenner/top'),
(1290, '2021-11-17 14:03:29', 11201, 'cbdfc6673a9b8a0862719ab46f61cb95', '3760ab44-0a46-4f2e-9cb7-6b341c56f98e', '56x56_steg_neonorange', 'jpg', '/zehentrenner/preview/steg'),
(1291, '2021-11-17 14:04:15', 20275, 'abb10e5cd9adf9ff78c2bd8ba9418f1e', '5272d064-908e-40e4-ad3f-9985ae6e0c0d', 'zehentrenner_steg_8_neonpink_persp1', 'png', '/zehentrenner/persp1'),
(1292, '2021-11-17 14:04:30', 13074, 'e4e5d5a08e9fc8cc14fc12955fe66e00', 'a1c10349-b484-412c-a025-73ca207c8f88', 'zehentrenner_steg_8_neonpink_persp2', 'png', '/zehentrenner/persp2'),
(1293, '2021-11-17 14:04:55', 10501, '8f1234c69537bc69f9d0345c7a9d1e73', '9c8917be-938f-4297-a58c-d35933bdb113', 'zehentrenner_steg_8_neonpink_top', 'png', '/zehentrenner/top'),
(1294, '2021-11-17 14:04:58', 11704, 'b0586d5f6443aefc0ea65342e73f3c36', '7106e82d-4605-445b-9dee-e114ccabedba', '56x56_steg_neonpink', 'jpg', '/zehentrenner/preview/steg'),
(1295, '2021-11-17 14:05:47', 20014, '0e1338a62911beb25c44948e2a39f2ca', '7ba385b7-b1f7-4b5b-9e64-4e5f08defd7a', 'zehentrenner_steg_8_rot_persp1', 'png', '/zehentrenner/persp1'),
(1296, '2021-11-17 14:06:01', 12992, '5722d054f603a3f61a657de5567fa144', '597addca-ce2c-4ad0-8171-9f2cac3edcfc', 'zehentrenner_steg_8_rot_persp2', 'png', '/zehentrenner/persp2'),
(1297, '2021-11-17 14:06:12', 10218, '176ae6f3bb2f941888970ede77a3317b', '33091ecd-ce11-4c6e-9d26-0b0282d18e2c', 'zehentrenner_steg_8_rot_top', 'png', '/zehentrenner/top'),
(1298, '2021-11-17 14:06:14', 12301, '96ac8995a3287f9d73ddbb5f1ec726d5', '3c9dbb76-85a9-46a8-b66f-08aee82ed7d0', '56x56_steg_rot', 'jpg', '/zehentrenner/preview/steg'),
(1299, '2021-11-17 15:02:26', 58491, '31fce898366d4c1cfc63bad6b6c5c78a', '03b69b5b-6d94-4578-8a05-9205f1083bb5', 'zehentrenner_fersendaempfung_4_gelb_persp1', 'png', '/zehentrenner/persp1'),
(1300, '2021-11-17 15:02:40', 36535, 'f1bcbce2882d0d011e0fdad0841acedd', '0ea223fb-794f-48f2-b3f1-969941096fb5', 'zehentrenner_fersendaempfung_4_gelb_persp2', 'png', '/zehentrenner/persp2'),
(1301, '2021-11-17 15:02:42', 11060, 'd6b0091d498b614aeab27a0bcd50b114', '6dffb569-5ed7-460a-b18f-8ee99a7d694f', '56x56_fersendaempfung_gelb', 'jpg', '/zehentrenner/preview/Fersendaempfung'),
(1302, '2021-11-17 15:03:39', 60499, '661ef71a0605a057b9bba932784730ad', 'f541d013-2029-4efa-bebe-440f5366b515', 'zehentrenner_fersendaempfung_4_himbeer_persp1', 'png', '/zehentrenner/persp1'),
(1303, '2021-11-17 15:03:49', 43905, 'b914eee35539a35281e2a96bed748cf1', '0f987de1-a529-4e5e-b41a-39f69c958f75', 'zehentrenner_fersendaempfung_4_himbeer_persp2', 'png', '/zehentrenner/persp2'),
(1304, '2021-11-17 15:03:54', 10978, 'ea446d724b063c8f07a5dbdd0940b7c8', '30d7fda0-6cf6-4615-aec5-011b29435b83', '56x56_fersendaempfung_himbeer', 'jpg', '/zehentrenner/preview/Fersendaempfung'),
(1305, '2021-11-17 15:04:21', 13676, 'c354a8f0ac44dd43760c76d495944012', '0f1094c5-a2fb-4067-b324-955d974514ad', '56x56_fersendaempfung_kork', 'jpg', '/zehentrenner/preview/Fersendaempfung'),
(1306, '2021-11-17 15:04:34', 58872, 'abb76d4323f8cd8a97c4977fc86fa6ec', 'f84f641d-32cd-4bb4-997b-5cb18f23a7ad', 'zehentrenner_fersendaempfung_4_kork_persp2', 'png', '/zehentrenner/persp2'),
(1307, '2021-11-17 15:04:45', 63739, '3d9bd03a92409b459c8dc32bd41be949', '1cee2553-c243-49c1-9616-fd7d153fc2bb', 'zehentrenner_fersendaempfung_4_kork_persp1', 'png', '/zehentrenner/persp1'),
(1308, '2021-11-17 15:05:29', 62846, '8a5d9d456e51a5aa3a4add828f7b10b9', '425d11ab-99ac-44df-af3c-8e21ba7e06c5', 'zehentrenner_fersendaempfung_4_limette_persp1', 'png', '/zehentrenner/persp1'),
(1309, '2021-11-17 15:05:41', 45182, '8f7bde52d7c64890b442ff4ba77611fc', '618e9a71-e499-4961-a001-ef73cda2983e', 'zehentrenner_fersendaempfung_4_limette_persp2', 'png', '/zehentrenner/persp2'),
(1310, '2021-11-17 15:05:43', 10876, '77112861319b239727292c509a019a37', '2ac4ea04-d465-44f8-93b3-20670005169c', '56x56_fersendaempfung_limette', 'jpg', '/zehentrenner/preview/Fersendaempfung'),
(1311, '2021-11-17 15:06:22', 63661, '20c0b6338d87df5c9faa555ee724f56b', 'c96f3aab-7560-407e-9117-d03ee7994f74', 'zehentrenner_fersendaempfung_4_orange_persp1', 'png', '/zehentrenner/persp1'),
(1312, '2021-11-17 15:06:33', 49452, '7da0cae00b4a6f3abcd1215dd381d420', 'f4b37fa5-5330-4f1e-be88-9ffba33a29da', 'zehentrenner_fersendaempfung_4_orange_persp2', 'png', '/zehentrenner/persp2'),
(1313, '2021-11-17 15:06:36', 10991, 'a98c8c5596fd3148f1e050c39a9957fb', 'c69fc540-c4e1-4792-ae19-f8593c49db06', '56x56_fersendaempfung_orange', 'jpg', '/zehentrenner/preview/Fersendaempfung'),
(1314, '2021-11-17 15:07:06', 63134, '1a8e4a62b2efc81127018291ae52bf97', '08fb3946-93a1-4c13-8040-f97a023fc183', 'zehentrenner_fersendaempfung_4_rot_persp1', 'png', '/zehentrenner/persp1'),
(1315, '2021-11-17 15:07:16', 47699, '944696b01a4dd41548a4076d9a14ba95', 'e02d89d4-e7a8-406b-bedd-64c9e598acd6', 'zehentrenner_fersendaempfung_4_rot_persp2', 'png', '/zehentrenner/persp2'),
(1316, '2021-11-17 15:07:36', 10834, 'a0543ee86850af68efc1b8f5c20263d3', 'dfcc23ae-d603-4fb1-8b1d-a9f6e4485b7c', '56x56_fersendaempfung_rot-nicht-optimiert', 'jpg', '/zehentrenner/preview/Fersendaempfung');

-- --------------------------------------------------------

--
-- Table structure for table `apto_media_file_to_custom_property`
--

DROP TABLE IF EXISTS `apto_media_file_to_custom_property`;
CREATE TABLE `apto_media_file_to_custom_property` (
  `media_file_id` int(11) NOT NULL,
  `custom_property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_order_configuration`
--

DROP TABLE IF EXISTS `apto_order_configuration`;
CREATE TABLE `apto_order_configuration` (
  `surrogate_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `state` longtext NOT NULL COMMENT '(DC2Type:AptoPropertyJsonSerializable)',
  `id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `apto_order_configuration`
--

INSERT INTO `apto_order_configuration` (`surrogate_id`, `customer_id`, `product_id`, `name`, `created`, `state`, `id`) VALUES
(1, 1, 48, NULL, '2018-08-09 12:47:02', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"b5a10157-0658-4c0a-bab8-e011447408d7\":{\"2bd98648-53bb-4912-a3fb-50fd0e58e5a6\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"da4433c1-c11a-42e9-afb0-401464f5d736\":{\"a388aca6-30b8-49ea-bad6-37566a16b07f\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":25,\"height\":250}}}}}', '214d59d0-5c30-4ca0-92f7-763f47f789a6'),
(2, 1, 48, NULL, '2018-08-09 12:47:02', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Configuration\\\\State\\\\State\",\"json\":{\"state\":{\"ec6e552f-f810-4f5a-8e1f-1b125748cadd\":{\"813dc11e-076d-4925-a2e9-f4d09db7520f\":true},\"48562933-fed0-46ea-bfec-713f2ed6e8bd\":{\"1c796d4a-dfa9-4474-ac67-9fce4818e7da\":true},\"8b6f95cc-37ab-42ee-9278-9a10633a79d7\":{\"3e816ae2-13cf-49ff-9664-54bc1ebb5c8f\":true},\"6f19227d-54c2-4d1d-9b4b-1277133602ee\":{\"8c5dab1a-4fda-45f4-ac48-67320b72bffa\":true},\"3cbf6e24-4516-4407-872d-1ff8c3f63005\":{\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\":{\"width\":25,\"height\":250}}}}}', '9060da6e-356e-4cf8-86ec-25f0588de200');

-- --------------------------------------------------------

--
-- Table structure for table `apto_plugin_frontend_user`
--

DROP TABLE IF EXISTS `apto_plugin_frontend_user`;
CREATE TABLE `apto_plugin_frontend_user` (
  `surrogate_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `active` tinyint(1) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `external_customer_group_id` varchar(255) NOT NULL,
  `id` char(36) NOT NULL,
  `username` varchar(255) NOT NULL,
  `customer_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_plugin_request_form_offer_data`
--

DROP TABLE IF EXISTS `apto_plugin_request_form_offer_data`;
CREATE TABLE `apto_plugin_request_form_offer_data` (
  `surrogate_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `number` varchar(255) NOT NULL,
  `data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_plugin_request_form_offer_html`
--

DROP TABLE IF EXISTS `apto_plugin_request_form_offer_html`;
CREATE TABLE `apto_plugin_request_form_offer_html` (
  `surrogate_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `number` varchar(255) NOT NULL,
  `header` longtext NOT NULL,
  `footer` longtext NOT NULL,
  `body` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_plugin_request_form_random_number`
--

DROP TABLE IF EXISTS `apto_plugin_request_form_random_number`;
CREATE TABLE `apto_plugin_request_form_random_number` (
  `surrogate_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_price`
--

DROP TABLE IF EXISTS `apto_price`;
CREATE TABLE `apto_price` (
  `surrogate_id` int(11) NOT NULL,
  `id` char(36) NOT NULL,
  `price_amount` bigint(20) NOT NULL,
  `price_currency_code` varchar(255) NOT NULL,
  `customer_group_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `apto_price`
--

INSERT INTO `apto_price` (`surrogate_id`, `id`, `price_amount`, `price_currency_code`, `customer_group_id`) VALUES
(3793, '59a9ed76-0c78-4aa2-834e-c5a79fbf2824', 3000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(4416, '865f529e-032b-4253-ac97-97635949ddb4', 3000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(4418, '13732c8c-5e31-4dec-8fc1-da387878219f', 1200, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(4419, '59c66160-d231-4f9f-bf50-c65b085d3b9e', 10000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(4421, '4bd64e05-e6aa-4f27-bdc0-7eaba21e2596', 20000, 'EUR', '5e820507-45eb-4c9c-8d67-5140e4ecb03a'),
(4422, '61ea51b8-8972-499b-ba02-f9c562d22094', 30000, 'CHF', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(4423, 'e15df8a1-af13-4401-a982-cc80dff949a2', 40000, 'CHF', '5e820507-45eb-4c9c-8d67-5140e4ecb03a'),
(4424, '031f252e-ec50-4072-be97-9a9f6b88399c', 5000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(4977, 'a5e54118-09c0-4b3e-9acc-f3f88d57f61a', 320, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(4978, 'f7007912-7ca2-4c03-a59c-799ccb3f4509', 360, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(4979, '72229646-e32a-4008-990d-3ca2d951d71d', 400, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(4980, '2ccbfe2b-b2a9-4f5f-b8cc-688eef5857c2', 440, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(4981, 'f47ca0b6-f7d3-4640-a6f3-f3770abd72c0', 480, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(4982, '1d34165b-abe1-48ad-9791-664a201a113e', 520, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(4983, '66b7d4f8-54b4-4661-8b10-c6c2ea38a362', 560, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(4984, 'a9d45498-13ad-4e22-b925-204c31c2a63d', 600, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(4985, '30c53133-feb9-4af3-afb8-8dbaa5b8a652', 640, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(4986, '416184fa-80ac-427c-a14d-8cd057790c6a', 680, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(4987, '84e6f869-bcc8-4d79-ab4e-294fcee825ac', 720, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(4988, '71b91f2b-2bc8-4b67-b341-feba1f8a7a34', 760, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(4989, '13487ac0-5308-41fa-929a-a30da60b9727', 800, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(4990, 'f4a75256-a3af-4b68-9980-9f5aff1296af', 840, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(4991, '2e7bcc59-3160-4ed1-94dc-b82ba5472244', 880, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(4992, 'd4f09694-aabe-4f7d-9283-fb9940eee7eb', 920, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(4993, 'c60e1081-d65b-4c9c-8785-d6503eb8b616', 960, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(4994, '059fb74a-c766-4039-9025-2e20613abaec', 1000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(4995, '0092b27b-25a2-4a7a-a613-f6f69fc629d1', 1040, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(4996, 'ab794ead-a19d-461d-825b-b5b3c58adcdd', 1080, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(4997, '5610502f-db1e-4816-a523-691b34cd6264', 1120, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(4998, 'ee83c3ad-cfff-4398-9d7f-df4b6cdec6d5', 1160, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(4999, 'a563977c-3b32-4ba0-97ac-3ca72acb4159', 400, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5000, 'b0d6f3cb-2518-4dfc-9ec8-4e9d6faec7a1', 450, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5001, '00f459e2-76e5-4b36-9d95-c45c504b67a0', 500, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5002, '834b387d-6df0-4caf-99fa-5c580a7dad96', 550, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5003, 'b8b486c3-9bc4-43cf-89e3-e57857ba8b81', 600, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5004, 'da5e5b74-0f31-4fb5-96db-ad72cda8de1c', 650, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5005, 'ab220e9c-ab46-4863-96f9-fc7603afab59', 700, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5006, '9b79970f-6062-4227-8323-f3b370a43419', 750, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5007, '13cf5533-2e34-4768-86ca-f0d3e81908b7', 800, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5008, '051b222e-13a1-48cc-9108-33c267ffedf8', 850, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5009, 'c1d0b9cb-fce5-4e7d-a4f2-7fa6f3774c42', 900, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5010, '9b2c956f-280d-4d9f-962d-5820d038f052', 950, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5011, '35eb4fe1-c731-435d-9a4b-201f09f44473', 1000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5012, '7c6f6342-69e0-417a-bfa1-0f2c95bcb86b', 1050, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5013, 'abcb515a-703d-4f0b-b5df-114905d5863c', 1100, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5014, '72e7a65a-8c1f-4c35-878f-87ba26ff490a', 1150, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5015, '1214b15c-b6ae-4e70-8d88-d106b053d332', 1200, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5016, '88efcfcf-8324-4fdb-8efe-1e54d23ba789', 1250, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5017, 'c64cd145-6d7c-4e43-8f30-8b7d676d10d3', 1300, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5018, '1c29656b-fd43-4216-b710-5d26bbcd6be5', 1350, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5019, '9a168abb-53d0-4f4f-af8f-e691c134672f', 1400, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5020, '3fa37005-2637-4e18-b720-dc4158e5e667', 1450, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5021, 'd427f60d-1831-4874-95e4-683370788b7e', 480, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5022, '99a5d6b8-0349-422c-abd8-eb1a489f0d56', 540, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5023, 'f3d63483-6444-4cbc-a83a-428d4ed44537', 600, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5024, '6e6c1594-2da3-4e6d-a923-1ec98cdf69f4', 660, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5025, 'c8992d7f-a1d8-490b-9b4a-cb2bf3568bf6', 720, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5026, '20140809-edcd-44c7-afe0-5fb197d154f3', 780, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5027, '15be81d5-7abe-428a-acff-96aeff23290f', 840, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5028, '71181477-ad78-4c60-9f6f-cac99f0596d2', 900, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5029, '028e24d8-b8c8-4eca-9f87-c3f9270be17c', 960, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5030, '633afac8-5912-41b4-94b4-bd8e302922a4', 1020, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5031, '9dce227b-ba1d-4752-b454-2a1101f9239d', 1080, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5032, '617c84e0-50a9-41a8-8cf8-4ab34123a05a', 1140, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5033, '76c56906-1859-48f4-8183-1ae8afa8713c', 1200, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5034, 'd251e5f0-8257-4642-9c9d-b6defd78b551', 1260, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5035, '9e35f026-7c0a-4af7-a7c0-73d77020dc07', 1320, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5036, '22d264bf-4be2-4d18-950e-1e8dbdd38415', 1380, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5037, 'fb40f3ba-7769-443b-a869-cd3ec915abc8', 1440, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5038, '119d5b7c-815c-4bac-a012-f53bb3beccef', 1500, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5039, '91365913-ef1e-4d10-afb2-a777eb8a130b', 1560, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5040, '0cfcc495-cb92-4903-8c9c-fe18bd4f088d', 1620, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5041, '962ea1e3-441a-4296-8d75-46d41a92ea09', 1680, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5042, '52e4c6bb-043c-474a-a175-62827793431a', 1740, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5043, '6688dfdb-cd1b-4ad1-8a5d-5592ddde8eee', 560, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5044, '3c1a8cb2-12d4-4a05-abe7-9434f07e237d', 630, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5045, '4a6de4ab-86f3-47c0-aaa9-daf1b2436594', 700, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5046, 'e865e25b-dd88-4d84-8e16-bda69f38993b', 770, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5047, '4671ef58-dedc-4b07-b7a6-ec099e5bb370', 840, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5048, 'bfd0536b-ac52-4bd3-b8a1-6a30fd59da86', 910, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5049, 'b5731d0f-c7a9-4d3a-b9c7-941176eb7a9e', 980, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5050, '6be8e36c-7243-4b8f-9ca0-b53916f63aa0', 1050, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5051, '8c3be6d7-e804-489b-8371-da7266b929e7', 1120, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5052, 'bf55e92d-6e57-4b73-834a-25285ff4edbb', 1190, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5053, '375fc36b-f9a0-494c-a9ef-0aa17876ed72', 1260, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5054, 'e61027d6-18ff-423f-9226-7d1f484c129d', 1330, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5055, '657c1dab-9e58-47ba-aa58-73af0c184096', 1400, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5056, '093bf0a5-df6b-4838-b68b-3f391825dc02', 1470, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5057, 'c429a856-bcde-4926-8ff3-72035979bd24', 1540, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5058, 'f2cb7337-83c0-41c0-b470-e40b97a4201b', 1610, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5059, '096441c1-e718-4f81-aec7-f8519ad82cad', 1680, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5060, 'c1c590bc-b65c-4183-aed7-f761b184b1a7', 1750, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5061, '5a5e17a8-4326-4e78-beec-e740cd050b67', 1820, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5062, '7d3db2a1-c8d4-43ba-8352-5d4d49f7a1ae', 1890, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5063, '85752df8-b847-4d95-b661-b0f0044da6fb', 1960, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5064, '08760ae4-f4e5-4b8f-b989-fa727d899ab7', 2030, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5065, 'a71868c0-e07a-47f0-a173-e7571d01d600', 640, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5066, 'be0d37db-a7e8-4770-bd66-f51eae80ee4b', 720, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5067, 'e18414e3-99af-420d-98d8-6ce573be64a3', 800, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5068, 'c466cd82-fd50-4359-8529-ab791cab4c6f', 880, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5069, 'c70c29a3-e5d9-4ff8-a46e-10ece7e9eaec', 960, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5070, '74fe01e2-a367-408a-9806-4887e60a71ec', 1040, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5071, 'f840175a-119a-43ed-80bd-8aff6cee1096', 1120, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5072, 'b98748d9-006d-46cb-9e98-57be5e1f478d', 1200, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5073, '81522c41-0dd4-4c54-9786-6fdde639a9a5', 1280, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5074, '4bd7257a-edca-40e6-97d2-99b789f952f8', 1360, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5075, '04a7575e-2395-4661-bd62-e2d478a1a0b2', 1440, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5076, '0c535374-b512-4258-b742-3c49df2b1805', 1520, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5077, 'f42b99d1-d056-4cc1-8ca8-128ae7733633', 1600, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5078, '0973d227-fb31-41c6-be4e-b7fbb55984bb', 1680, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5079, 'a76d3797-2e46-4903-8ab1-1e54ed27007c', 1760, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5080, '25cccfc9-7c97-441c-a943-b5047f99ed7e', 1840, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5081, 'ab1722a2-8590-4894-8f4c-c3886e50163e', 1920, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5082, 'dfecba00-46f2-4442-87f1-e6b410e117b9', 2000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5083, '87bd7478-de7e-4ebd-b37e-cb2c3c151990', 2080, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5084, '97289a15-fa8d-4fd4-97e1-e4735fbbd905', 2160, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5085, 'df964f17-11ab-45b0-9250-af2eac1b2e20', 2240, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5086, '873ca8ec-9da5-4100-ab4d-e3f9b2ae476e', 2320, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5087, 'b85c5bad-7f0d-43fe-a9b0-d70164bf5e00', 720, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5088, '4afae65e-e2e1-4873-970f-68f73a8be861', 810, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5089, 'd8dcecea-70ff-46d1-80b7-b4d2f7c17397', 900, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5090, '3d3a2afe-3ec1-4002-ae50-fe26b4dda82d', 990, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5091, '95b58cc8-2cb3-48a3-883b-b91100a46e0e', 1080, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5092, '89a36395-6f1b-4b2e-a8f6-429d065a9364', 1170, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5093, '2b36643d-3f2a-4b74-a606-953e2c1790ec', 1260, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5094, 'f161bf89-661f-4a1f-b929-636baaea2c0e', 1350, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5095, '767b0deb-b7c9-49ff-977c-1fe990e3a94f', 1440, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5096, 'ec7a4d1f-fd70-4078-86b3-37d52beeeb05', 1530, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5097, '1c4ff752-6dd3-4819-9942-47e9ab6abb23', 1620, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5098, '31ebc028-5e1f-4e66-b71a-a864c79ad434', 1710, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5099, '5f69f065-a551-4168-9ca1-9e9868265cb8', 1800, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5100, '19319b83-22da-46e3-8dc6-f1797e829ec5', 1890, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5101, '43f9b897-edf8-402e-977c-425fbb3d66ed', 1980, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5102, 'cec81cdb-df50-4c12-9efb-6f22366fd72f', 2070, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5103, '7dcabc8f-b111-493f-b6b9-3204e1eb801b', 2160, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5104, '81123c71-9da5-4e01-b071-be59467a4027', 2250, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5105, '7e7ff5e9-4e2a-463e-8c46-c637023ae650', 2340, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5106, '6679a1a3-45c8-4ca2-853f-f0939792ba9b', 2430, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5107, 'e1561e75-2699-4582-8471-e4e60362713c', 2520, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5108, '4ada9c12-2c15-4f4c-abac-bfafaa88e926', 2610, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5109, 'aab30999-5b21-4855-845a-430539328b9b', 800, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5110, 'a832de6a-bfcb-405e-a25e-a91eb085a697', 900, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5111, '64c27a69-39bf-4083-b667-2238de13f145', 1000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5112, '7781b2d3-ffa1-4ee8-8aaa-4ece8e936b8c', 1100, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5113, 'a745bd9a-fbae-440a-8238-7641b98ab61f', 1200, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5114, 'd4d01c79-fa70-4e56-b120-09750dd1168d', 1300, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5115, '661d28e1-35d6-4e2c-b549-9d0163c7478d', 1400, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5116, '602c8d65-f28e-437b-a2b9-fc52b3be80be', 1500, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5117, '7a49fbab-d55d-4b6d-bda6-b1c10c042050', 1600, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5118, '7000d28b-2db0-4800-93f7-b47554edc23d', 1700, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5119, '09cfb4ef-acc7-49af-8b5b-4338e91a5d39', 1800, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5120, '2de072b6-76d1-4b0c-bcb4-68dc2e367dd9', 1900, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5121, 'c500079c-72c7-4d72-a928-814c33ab71a9', 2000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5122, '49c590e4-47f5-4a96-9ce8-95adaac5b78b', 2100, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5123, '330de0d9-9016-44cc-a67c-1f5ac78802fc', 2200, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5124, '64ae8348-46bf-4649-b20e-a2955bd5f74b', 2300, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5125, '89ee69a8-1db9-408f-8fd2-383c88aa50fe', 2400, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5126, '51498087-77cf-4b82-a192-61c7d2b767fc', 2500, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5127, 'ddff81c0-3654-4a42-9176-3a40c85c3e93', 2600, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5128, '6b58ead5-cb47-4b12-8cdc-a84479327008', 2700, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5129, '1bdbf1f8-4649-445c-a52f-5b05a6c695fe', 2800, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5130, '250c738b-0bfc-45ee-bc80-46dd5cd08aaf', 2900, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5131, 'eeeedd3a-bec1-49ac-8fd3-3030bf5b6d23', 880, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5132, 'c1c5a9e6-f60c-4af0-9889-f9cda803df81', 990, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5133, '1291ee88-e577-4123-ba64-fac4396260a9', 1100, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5134, '52430d65-0318-4566-8080-f355afb22851', 1210, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5135, 'ca680ba8-98bd-49d6-867b-83e6812476df', 1320, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5136, '0b6fe3f6-6aff-4b4c-827b-8c8d4f843824', 1430, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5137, 'd462e11d-9696-4fa2-b3ce-6a513f8d0b95', 1540, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5138, '244992fb-6b5e-4c80-8e53-74fcc5394d40', 1650, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5139, '6dc6750a-62ad-41e8-beca-31ed0893118b', 1760, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5140, 'b7a6f8c1-3d45-4097-a57a-d36929bec730', 1870, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5141, '7d37daba-8cd1-4c74-9976-15c7db237b71', 1980, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5142, 'c12a0ad8-93d4-4968-b5c7-d9aae8491c60', 2090, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5143, '16066157-d884-441c-bf3a-00284c43486b', 2200, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5144, 'c93f5336-f93d-44b6-9448-fa354dfbf361', 2310, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5145, '787d5e40-3a58-462e-86ee-dff4eb87e2c9', 2420, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5146, 'e9a8989b-cdcf-44ed-9de9-0e304cf3303d', 2530, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5147, 'c8a6ce43-768d-4325-be04-0f059fff76ed', 2640, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5148, '7739b3f9-b5ae-4f77-8dc6-a81a2c344cb4', 2750, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5149, 'a910c90b-df0b-42b4-9049-e92aa3d9336c', 2860, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5150, '34280ce6-9bed-4643-a4e3-ab9ac521bba9', 2970, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5151, '2997edec-3271-49f1-8348-326ede0e1267', 3080, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5152, '788e6975-e39e-4e55-b73c-db2c7854bfa4', 3190, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5153, 'd26889ad-acfa-4ec2-bb36-de29a17650cc', 960, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5154, '857bd160-ddb2-4f2a-9f5e-4aac54fb3654', 1080, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5155, 'de57c3da-c323-4963-b95e-500351489702', 1200, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5156, 'd66a730f-0a6b-4203-9bab-bc9fc6015de0', 1320, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5157, 'd3e21668-6444-47d7-9964-ccf876e3456d', 1440, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5158, '638f441f-4a1a-40f3-a815-4df6bd4a7e23', 1560, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5159, '9f710d2f-c795-4078-8762-ae3c4d4e3437', 1680, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5160, 'afcf67eb-f195-429b-b2df-b95270c4bef8', 1800, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5161, '41f42c85-3f90-41e8-a0d5-7e949a3e0afe', 1920, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5162, '2c0fe856-dd2d-4db5-bd1d-753dc1ba9de5', 2040, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5163, '509e5494-ff5a-43a7-9a04-a1a1f71f8e7f', 2160, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5164, 'fe69917b-f8de-45e7-90af-cdad102c8167', 2280, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5165, '11261466-ee4b-4423-8cb8-d44c8dc5b303', 2400, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5166, '2d99d29c-615d-4142-ab4e-f757f54f2726', 2520, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5167, '30a69782-6b5f-4695-aea6-b8490b7d13ef', 2640, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5168, '2837e349-ce4b-4aa4-b539-61e574010e68', 2760, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5169, '6f8c98b9-bbcf-4100-9702-719829a90f3b', 2880, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5170, '9f8f2040-dc92-43d4-b638-d5c322fbf12b', 3000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5171, '1f097854-e1da-4287-a7ca-472394db9079', 3120, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5172, '699bba75-d75f-4fa5-a48e-d273ad514991', 3240, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5173, 'b8e9503b-f2b1-4887-9041-f29c7df8066b', 3360, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5174, 'b0eac320-359a-4abe-8b0c-adcdc99e1cf1', 3480, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5175, '52055ecd-c9e2-474e-b7fb-3f44d86bd0aa', 1040, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5176, '6ea7fb77-5cbc-48d0-b079-ef73ecb6e7cc', 1170, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5177, '00bcfc34-bc92-4f2e-8356-0792a0fcb1eb', 1300, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5178, '4fce3eae-8ae8-488b-aac8-d1e5e5e37eb9', 1430, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5179, '2e003ec8-6b42-45d6-9265-eb7f68bbbed8', 1560, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5180, '07334512-07ce-4d23-a788-1b5fc509014e', 1690, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5181, '929ab80e-39f4-4c64-bac4-ec9a307defad', 1820, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5182, '11fd2145-cf81-42a4-8f7d-15f5f51ce1ad', 1950, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5183, '7d0cbb2c-242f-4d2b-a939-4106ae5e0cc9', 2080, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5184, 'af2e5f28-7983-4eda-aefa-3a20a3d5135f', 2210, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5185, 'a5319b03-926e-4624-a813-249618ec4683', 2340, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5186, '454c92dd-b94e-4f8e-a751-6ad6d91e2ea3', 2470, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5187, 'd25e440c-8f6a-4afd-910f-75084834ceb1', 2600, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5188, 'a0d15d2a-18ed-41bc-90b6-7d0bbbbbb802', 2730, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5189, '9c01b9dc-69ce-4e34-ab10-8632d4d9cee5', 2860, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5190, '701a45f5-026e-41ca-b7e2-bcc4e33d2039', 2990, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5191, 'b79304bc-022f-4eec-aeb7-ba68b27aff9f', 3120, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5192, '99be6cf2-b039-42f7-9a07-274acb52f569', 3250, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5193, '896e96e2-7612-4704-935b-26474a11ef2b', 3380, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5194, '52e863a6-bdc2-4953-a695-e52ace504c80', 3510, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5195, '904b4917-0734-412a-af37-e28fa1380cfc', 3640, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5196, 'edd7469a-938f-4259-9d0a-aa20c2c3866a', 3770, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5197, 'a238616b-8f43-471e-bada-28f6f7647f3b', 1120, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5198, '1771918b-32b3-4b80-bcd5-4b94f1918ee5', 1260, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5199, '7782d255-2e66-4598-b610-b7339bcaaceb', 1400, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5200, '32bf5d48-73bc-494c-9614-22643481cc75', 1540, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5201, 'c8f404fd-ba5d-498d-904d-e803360513bd', 1680, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5202, '258e2e92-5886-498f-9478-dba42e5794e5', 1820, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5203, 'd24cff88-8b4b-48a2-9ae1-8cd22b3cde2d', 1960, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5204, '7c38c47b-64e4-47b6-bdf5-85664c5933b2', 2100, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5205, '0fdc80cb-c8e9-43e6-bf6a-3ee5e882c1d6', 2240, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5206, 'a80c5d26-0d13-427b-bae1-643ff3868ea8', 2380, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5207, 'e93031f7-9e5b-4cf6-bfb4-6df05da792af', 2520, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5208, '812e15f4-5b19-4274-91de-fbad8664b06b', 2660, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5209, '854b27ff-6f9b-496d-8c34-55d0eb7c8435', 2800, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5210, '11513946-a2b8-49bf-98c3-90a9dc447369', 2940, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5211, '4c831c31-1680-4a73-b767-37ba6459417f', 3080, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5212, '4d19c7fc-907a-4ad3-8fc6-6aef97919294', 3220, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5213, 'b0f621e9-c0dc-41d7-8a28-7c07bc6ca80a', 3360, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5214, '9c92f24f-cf3d-4546-86ae-47a33297b97a', 3500, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5215, 'b4bf6059-9d94-4534-9756-da7772cf650d', 3640, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5216, '99f4b42b-467d-4486-8978-519014f14888', 3780, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5217, '6ff2e803-d8e4-4145-81d8-f6469e981eee', 3920, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5218, '0b1bb077-445a-48c3-a4b5-22d6fe08d04a', 4060, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5219, '294b23ca-2b62-4ef8-8189-4236de1bc58c', 1200, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5220, 'e8293cab-2b47-400b-a3df-068059c5ac28', 1350, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5221, '411da884-ff76-4162-8ced-f4aef20e77c0', 1500, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5222, '95609070-de71-488a-b562-535c383f411e', 1650, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5223, '9983ff90-e499-4874-b07b-57ffcc9951a0', 1800, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5224, '6aac1c34-c447-4ae8-9564-fdc1a630807e', 1950, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5225, 'e66dfb99-0d95-4594-a15f-076f24ddaad3', 2100, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5226, 'ee796dcd-26ac-444d-8777-7b69e1f48f7b', 2250, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5227, '26dbcbf1-4c49-44b1-a56c-b750c060cc4f', 2400, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5228, '4279da98-10a0-4bd3-a283-5834eb47b79c', 2550, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5229, '286ca5ac-96e3-4866-84ac-4b41ddf666d6', 2700, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5230, '66c89e34-2202-42a9-81ac-cd9a51bf736e', 2850, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5231, '2d8fa116-3964-4f3a-ab80-0ed9c2024fb6', 3000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5232, '6e25dca3-b102-42ce-ba2a-7137feb189bd', 3150, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5233, '9fec8109-e5d4-4d2c-b8da-f0b4b6c3c7e0', 3300, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5234, '11ecf9c5-b0df-427a-9bea-1e4965a828df', 3450, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5235, 'a4ab080a-f418-4f4d-851c-d348907b4175', 3600, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5236, '360fa94d-1a5e-40da-bb55-105d799daa9f', 3750, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5237, '9f1cc07d-180b-49fb-8722-5412ac1adb7b', 3900, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5238, 'f81a457f-d4a5-4b42-aa28-da1ddae1d120', 4050, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5239, 'bc133e0c-86a4-4df5-8a9c-dcd7883d16bb', 4200, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5240, '671771ba-9632-43d4-b4f9-7dce1b13c355', 4350, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5241, '4f0e25b9-4daa-4e35-91f8-84baaf2f12e1', 1280, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5242, '16b8f1af-33c6-448f-a167-513e84e90fb5', 1440, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5243, 'd7f19063-40d4-4b58-bd95-a4f4765b4585', 1600, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5244, 'fa7878f9-1f50-4719-a490-47949bd808cd', 1760, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5245, '505df879-3c6b-4889-92c4-99561067369f', 1920, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5246, 'affd2b91-bdec-4220-9212-718daae3863d', 2080, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5247, '83b1d0f9-be42-4e05-8a08-fff899f4d202', 2240, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5248, 'ae6eeed5-076c-4d8f-bf91-bc6907dff5a0', 2400, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5249, 'b05a08d3-a442-4a74-b7cd-eedd263451f1', 2560, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5250, 'b447fbf3-b1e3-4eb1-b1c3-6b9664002c64', 2720, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5251, '24f3590d-994a-45d7-8116-50e743b8edee', 2880, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5252, 'feb73f48-262a-4ea3-9b45-f0528012c5f6', 3040, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5253, 'cc90ec2e-35eb-4f10-8783-da67abc62394', 3200, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5254, '0393f4da-3b8c-4ce3-9893-a6108b72ba6d', 3360, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5255, '7c4a8ee2-cd3e-4f98-8dd0-e54b58bcd15a', 3520, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5256, '50e3ef53-790e-499a-b779-34934093bfa2', 3680, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5257, '0cfd04ae-d685-4846-a541-2c38c0dcde58', 3840, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5258, '074943df-5f19-4139-946b-12587ed623fc', 4000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5259, '2930d2a4-d45b-4a0a-973c-fb919178ceea', 4160, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5260, 'd0fd1712-31b0-489b-8171-ee33d889ac00', 4320, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5261, 'fdcf5bf7-1a45-401f-9c7d-95abba8ec654', 4480, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5262, '9e45e339-8a6c-406b-8d33-a318f7b7ac3e', 4640, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5263, '7b690005-d0ae-4d74-8bdd-3e04765f7425', 1360, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5264, 'db0acd8a-786f-4b89-9a64-6ee48a5246a6', 1530, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5265, '6f1b350d-ce49-47b9-94e6-095ced6029f0', 1700, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5266, '8646092c-52b4-4afa-aa1b-b6eb995b1763', 1870, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5267, 'a0fb03a1-a385-4a79-b170-4e8cfb65980c', 2040, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5268, '1319372a-f314-403b-80bd-040f66b7519d', 2210, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5269, '52f26657-8ac2-4465-8735-2eb2875227aa', 2380, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5270, '5a0ea071-cc2d-443a-b755-f01e669d14b7', 2550, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5271, '1c7beb46-f012-4fe2-8ed5-1409a6446467', 2720, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5272, '9db2719a-cfa5-4dad-8b6c-c688bd3dad57', 2890, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5273, '812e566a-5c3b-4987-a41c-fabfdf912b49', 3060, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5274, 'dac1346f-d14c-43a4-9b03-d954c2d76141', 3230, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5275, '5dae414b-1d5c-41af-91ea-e71dceb42ad5', 3400, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5276, '4a53aafe-c7b8-4a7c-bafb-64daf667fce8', 3570, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5277, '067b94b7-c287-4e88-84e1-e7c29a038eca', 3740, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5278, 'da18d13f-97b9-4f5e-85d1-8e07b33c40e9', 3910, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5279, 'ebd3cb70-ec1a-4694-83d3-e8085dc51f6e', 4080, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5280, '70bd4779-b290-46b6-91e1-ea044c21a2d8', 4250, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5281, '21d12921-620d-4789-88a3-d1c5fbb95fcc', 4420, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5282, 'dc3a6f46-0149-4c07-b101-2bcc7b436863', 4590, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5283, 'f86ea241-6c7e-4ff2-9173-a277697a0d22', 4760, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5284, 'a1f3750b-14dc-43c7-ad70-9b0b522878fe', 4930, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5285, '7c45bec5-97ab-46ea-9a41-34c003ad4a3c', 1440, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5286, '34281d11-ca76-44da-961d-d8d83285c4e0', 1620, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5287, '00c613c7-a0a3-45d7-8838-4958358786a0', 1800, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5288, '145fe7e6-6da8-4fd7-8dd3-afb5fbd53197', 1980, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5289, '56e63c62-9efd-4426-84ee-7abe881bd692', 2160, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5290, '8df435e2-d1e4-4c2e-8021-4f0286edd12d', 2340, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5291, 'b3340dd2-88d9-4109-9d7d-4aecebd0d5dc', 2520, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5292, '13757309-a082-4aea-8104-c6bd17ed9b21', 2700, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5293, 'ad911320-7475-40ba-b509-8901b3810fa9', 2880, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5294, '09c0032e-7b2e-4aea-9f0c-9f37409bbcd4', 3060, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5295, 'e5f5599a-f003-47dd-ae3e-4ae5520c11c8', 3240, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5296, 'bd365b09-f997-43af-b0da-813b33070211', 3420, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5297, '5399b463-7f24-436b-bde3-9a8d0aa214fc', 3600, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5298, '123456dc-19ad-4c93-9b64-0da8b21b31c3', 3780, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5299, 'af1de99f-54f9-4d7f-8cfe-96c65109c3f0', 3960, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5300, '2fa1cf0c-9924-4ef1-9fdf-5293c723581a', 4140, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5301, '08ed509b-a4d9-4703-b142-d2ca8fbdb9f5', 4320, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5302, 'ae164598-92bf-4020-b18d-68a4f9d3a522', 4500, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5303, '0c37e05f-c58d-4e32-bc57-c99db9a9a59b', 4680, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5304, 'd9c77dbe-7508-4ce7-89b1-68ae20b255e0', 4860, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5305, 'b45aa3c9-f5f2-40c8-bf1c-160e80e236e4', 5040, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5306, '266999a0-2ed5-41aa-b602-940df6a82ab8', 5220, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5307, '01b00ed2-95de-4900-8495-44016121e02c', 1520, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5308, '381b4793-efab-4393-b269-c5ba0f7b1eed', 1710, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5309, 'a8962df3-3676-43c8-959d-14d77cdd892f', 1900, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5310, 'c0a345c7-e769-4039-8e27-a65ce456ac08', 2090, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5311, '10710ae5-7cef-4d3e-9eee-df452af6a74a', 2280, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5312, '237d5bf6-4b51-43a8-849d-61298abbedd5', 2470, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5313, 'b9289edd-9fae-4fef-8fd8-5962296e8693', 2660, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5314, '6ac74f4b-5b4f-4180-be2d-a4f0d46bbbc3', 2850, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5315, '4e76f419-83f9-4f17-808b-4d5c681574bf', 3040, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5316, '853f6bb7-9dd4-42c2-842e-84b86471d6d7', 3230, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5317, '6a890a79-d2cd-4fa5-ae06-901b3d64b384', 3420, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5318, 'aefe8892-8097-4a34-96fb-9d773b0bbb99', 3610, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5319, '75f93e8d-f443-465a-a7e5-635d91a1aad1', 3800, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5320, 'c15d7758-d4c5-4da0-9f75-2efe2ac3b083', 3990, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5321, 'b7a68543-bb61-41de-afe1-3660de868113', 4180, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5322, 'fd913d37-e94b-4bf1-a89d-61004395da22', 4370, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5323, '21f24270-19bb-43f0-98e3-ba5aade87798', 4560, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5324, 'b34d9683-eb18-4d74-86ba-43061770fbbe', 4750, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5325, 'a055a158-07e4-40bf-9ca6-19b1292912ce', 4940, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5326, '9e7e2eae-924c-4ba0-a8b1-e655888427bf', 5130, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5327, 'a1d6f302-b986-4953-8123-70491a2ce5f3', 5320, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5328, '8879a497-6364-4060-a97d-f077e82d6aff', 5510, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5329, '64f03b2c-e776-4653-a12e-f495fc077821', 1600, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5330, '02d942f7-f5f2-41da-a582-97761d193485', 1800, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5331, '24000d4e-cde7-43a7-8276-5cef41f0f020', 2000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5332, '2ec04f50-88d8-48ac-b019-a2b77e884fe2', 2200, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5333, '63ebbdf1-a58d-48a8-8c67-431b8f5dbeca', 2400, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5334, '9d3d0f36-5b67-46c8-a29a-f5754fddbdea', 2600, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5335, '98c4ce10-64d7-4a45-a17e-035f271b9f81', 2800, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5336, '24e459a0-40bd-4e7a-a3e7-35a4eccb6f95', 3000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5337, 'a3177097-fe19-4b5f-8139-25eede0d1e98', 3200, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5338, '5c886a56-1ecc-47d0-a8d2-8b0ef6dc8983', 3400, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5339, 'c4cd7653-395f-4f3c-8f1e-9347f2610910', 3600, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5340, 'cd701267-04da-4611-8bec-a5d6bf72640b', 3800, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5341, '554604cd-e667-479a-a7a4-a239489aba10', 4000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5342, 'ac3a1d3d-850e-4ce7-8489-f83de075859d', 4200, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5343, '5c70c316-cae6-4d53-b4d8-f6badff64f32', 4400, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5344, '5459b5e3-b678-4b0f-a121-a73e86fd17b2', 4600, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5345, 'ed45a6a4-45d2-44f8-a4a6-9faf8b49ed19', 4800, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5346, '7920e4fc-2c39-49b2-b6dc-fdda3bb2360b', 5000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5347, '7d286b90-82ae-4339-ad84-88a5ca45f29e', 5200, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5348, 'c8744fcc-367b-4e6a-93f9-89fc29363a17', 5400, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5349, 'fb35fefe-f055-49d1-ba91-4843c6121073', 5600, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5350, '36c94870-fa13-43a3-9f02-645bbd9febe6', 5800, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5351, '0641bae7-0b9c-4e63-82f8-9b954775205d', 1680, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5352, '6c48d25a-45c7-4070-a27a-8889a5c5a723', 1890, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5353, 'd98e8fa6-f40d-49a4-aa32-c6d1164b2744', 2100, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5354, 'ce698733-83d3-49eb-bd76-6af5068e2a87', 2310, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5355, '9abc3527-aa5c-4fa5-b1eb-9c267e1ba6d8', 2520, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5356, '999801a7-eac8-4747-a631-61f1ea42f31d', 2730, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5357, 'a0acfa97-e738-4ba8-a192-615244b17b30', 2940, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5358, 'f1be3e4b-956f-4e76-a74f-0c763b29bf8b', 3150, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5359, '123f9707-e80b-4bc4-9496-a52fa5c35be9', 3360, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5360, '1261128b-6faf-47ce-a248-2a38e391e2b2', 3570, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5361, '659a6aa5-acc5-4326-b093-3b2b218edaaa', 3780, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5362, 'd846b2fc-897c-46c7-9800-c171acc59a83', 3990, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5363, 'f795d735-2184-4101-8add-9a9941888ae7', 4200, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5364, 'd7f51c36-9f1f-45af-81d9-f2d131426dd4', 4410, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5365, '06fff90f-b109-4c6f-8848-1393ed6e39b1', 4620, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5366, '2840501b-e440-4230-93d5-a16c9c42b275', 4830, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5367, '75284759-a088-4e18-bffc-a2dbf98fdd68', 5040, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5368, '6819e60f-f592-4f2b-a967-62f8b9160cb3', 5250, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5369, '55395fb1-7a8b-4645-a17d-24f0b2575f81', 5460, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5370, '6ff94664-3c4f-44d1-ac23-5f0778ecc71a', 5670, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5371, '3dd98ef0-7bc0-4772-8496-ae8b6605d612', 5880, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5372, '9208b652-d2e3-40b0-a975-59d46860a0a4', 6090, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5373, '4dd3bc78-d607-42a3-8428-c5aa534ca476', 1760, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5374, '9edb32d6-87ec-4d6e-afdb-7a63a5e1c416', 1980, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5375, '25c18142-f511-49e0-aec9-dd855367e79e', 2200, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5376, '0c04d1e9-171b-43b6-adcc-e8b2cc475449', 2420, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5377, 'e94093c8-a16c-40df-8eea-0eaabdf048a8', 2640, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5378, '83d1298f-66cd-4eaf-a8bc-e60529361a0f', 2860, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5379, 'ebfe0945-8685-4cbc-a6da-cfd3284e6fc6', 3080, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5380, '05206bd0-b63b-4580-93d4-febd812c766a', 3300, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5381, 'afd5f3eb-e392-4e3b-bb6c-18230b77cad8', 3520, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5382, 'e4b4ff46-ca76-4b0a-801c-e6db58e7a94e', 3740, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5383, '74236cb4-b2e5-405e-b161-dea1dca9de79', 3960, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5384, '408892bc-2904-4b6f-ae77-a554f4d96671', 4180, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5385, 'd9ddc08d-6b5f-4921-85fb-c9fde4bd96b7', 4400, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5386, 'cc4a2fe6-0f18-4ed6-9fb5-2cc80d1fc2f2', 4620, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5387, '979b2f67-822c-4c18-8d1c-61858fcf946b', 4840, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5388, 'fbd7b6ab-00d4-4460-9cda-d0046e8af14a', 5060, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5389, '947c19b6-8a4c-4357-8bcc-8c4160269de8', 5280, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5390, 'deca37ce-6afc-47c9-9421-cf9e68ced68c', 5500, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5391, '27cd0aa9-289f-4ed0-af3a-e5416c92de08', 5720, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5392, 'de4552f2-4885-47c5-a254-b7a5de8f2874', 5940, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5393, '653c129b-fd0e-4f5c-afb3-1fa981ce6187', 6160, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5394, '2feb704c-b35c-4ef3-aa97-b65026e6b9cd', 6380, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5395, '4c10a187-b7bb-4151-9570-e6abbe20119f', 1840, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5396, 'a6a96e48-4e5d-406d-afcd-46ac8b3efe87', 2070, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5397, 'daac562a-7a24-48eb-a994-7ddeda7a91e0', 2300, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5398, '2156ba92-12bf-4a55-a090-652f61f104a2', 2530, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5399, 'e244f6c7-f90f-47ee-af60-4c13099d8b2e', 2760, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5400, '4c0b59e3-422f-46d3-8a6b-1b5b249abd0e', 2990, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5401, '0559f246-e5e8-4288-9fe3-9b589f458cd2', 3220, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5402, '92090c3f-51ed-466c-ad43-477921a08484', 3450, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5403, '1fcf968a-cb59-41af-a58f-0cfcec707ac6', 3680, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5404, '491f8fa9-0c89-49d8-9f0f-4cf29a117680', 3910, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5405, '6bd39b97-8b58-4181-91e2-cfeb6d1180ea', 4140, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5406, 'cfb029fb-0e0a-4c6f-a4fd-74f59078d7e6', 4370, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5407, '23e7ef75-f81b-47c1-b65a-4e878a4c31ec', 4600, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5408, '05dbf057-a24e-4af6-b08d-5332946b1821', 4830, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5409, 'dcc21a14-2342-4c5c-87c0-29294625bccf', 5060, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5410, '67017d64-0b70-4a47-a883-f1ef0d22abe0', 5290, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5411, 'c102044a-8cf8-4b58-810d-b59cb4718a41', 5520, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5412, 'f42f0b86-7fc5-492f-805d-290835c6ef92', 5750, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5413, '554b7ac4-9786-4885-b1bb-22742201818a', 5980, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5414, '28002764-ae7d-46f6-9d86-aa932ac1fc64', 6210, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5415, '8f8e3f28-faf6-4450-bf9e-6bc7ef5c23cd', 6440, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5416, 'e21e5ed3-f3f4-42ad-939f-597e968af66f', 6670, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5417, 'cc09052e-3673-4dcb-8a57-b06e22ab67a4', 1920, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5418, '165f048c-a993-41d4-844c-5603c965105e', 2160, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5419, '32c58ec6-5596-4a0b-adc4-1fbd23402656', 2400, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5420, '70100668-5e9b-4f47-a643-9b16da55418b', 2640, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5421, '0d899261-9dcf-4d22-8a19-2cef465caa3d', 2880, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5422, 'df7c1653-b54d-4591-8a3e-d94afc94d123', 3120, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5423, 'b30b77f6-1955-4e51-8b65-5430fc035c9c', 3360, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5424, 'ef06b196-a0fa-437e-a873-cb58e316534c', 3600, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5425, 'a26eb2f4-519a-4d9a-a012-dcc9a9eabc8c', 3840, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5426, 'd519c332-6bcf-4444-8649-9f9fa43854a3', 4080, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5427, '3907b3b7-b1ca-4cde-a362-770bfb8a1693', 4320, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5428, 'dd26b177-8be5-4fd2-8655-26b38e56a71f', 4560, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5429, 'e4e777aa-5d6e-4ea8-86ad-3e441d14549a', 4800, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5430, 'a4df0466-c21f-4ace-a425-28a20836aed8', 5040, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5431, 'd5dc11d5-5374-4a24-88b1-ae93648e5b31', 5280, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5432, '8ecfd3ef-ded0-4995-802e-6fc642f8c94a', 5520, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5433, '31869188-6f95-4967-8ece-17575e5456f9', 5760, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5434, '5e0749d4-0417-4820-8e65-91736f44934d', 6000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5435, 'a14a9592-e007-4f32-9b79-a593963ec767', 6240, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5436, '9e65ad7f-22fb-4203-adb2-f0c525d9350b', 6480, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5437, 'eb916a10-9ecf-4c82-87c8-e67235ac8319', 6720, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5438, 'a9eb9cdc-5205-4714-ac17-a8f226052d52', 6960, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5439, 'bb6b95c1-e886-402d-9b04-33086588cf04', 2000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5440, '3fd40912-5e0f-455d-ad98-35d028d789ba', 2250, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5441, '6acfe15d-8e27-4423-99cf-62c515b3d9d0', 2500, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5442, '9a5cec2f-c6c7-4fa6-8708-6ee73547face', 2750, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5443, '0f80e380-facb-41e1-b52f-73506de3583f', 3000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5444, '9f0e74ad-c3a6-498f-a546-bb4182973111', 3250, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5445, '172fe92a-a3e8-4491-98fc-c337e45187e0', 3500, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5446, '2a1a876b-1698-4f4c-be71-9f69fe7c828f', 3750, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5447, 'c8b8d7bb-0984-4731-8c36-33f253f97115', 4000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5448, 'f8692a9f-08ad-4f09-8fc2-319d839fb08d', 4250, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5449, 'd30316b4-118f-4fc1-bf94-fa35bb8b1204', 4500, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5450, '0c4783f6-d645-49be-a2f1-05d03c8af52b', 4750, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5451, '1d1f03e1-e656-4749-b856-00d73bfc7370', 5000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5452, 'cba3e6cc-cc34-4357-9440-6936c212aede', 5250, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5453, 'ae0bff9b-6ac3-4ba4-b73d-05ecc4faf1bf', 5500, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5454, 'f4ab9dd1-e920-46bd-b5e2-848c29f7e558', 5750, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5455, 'ca4e939d-4c64-4374-a456-9bede4974c38', 6000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5456, '9546041a-15ce-4a67-9fb5-0d13e4464080', 6250, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5457, 'b67ed517-8523-469f-9124-10b0fda6890f', 6500, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5458, '92fed6d0-ac69-442d-a9f3-41fed9872daa', 6750, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5459, 'ba64fa40-c3ef-4253-8d01-a358694b8d92', 7000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5460, '8af27e28-e32a-46bf-ba24-529760d1db7a', 7250, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5461, '005653f6-b0a9-4fb8-8043-385451b78bd1', 2080, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5462, '1950f12f-a253-4311-be65-2bf77d00ca8f', 2340, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5463, '35164cb3-ff6a-4ace-b69c-a95acdde4954', 2600, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5464, '5dbf3d66-e725-4ee8-ab3c-59e6f7ce1f40', 2860, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5465, '92696298-a77f-482d-90b1-c2936eda1113', 3120, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5466, '9426d70b-9c4e-4ef2-a999-e2eff3d9324b', 3380, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5467, 'b8151363-aa0c-46fb-988e-bdf0296bee85', 3640, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5468, 'ed88225b-fbbd-4b76-9031-b033a602ae25', 3900, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5469, '6b040ab7-3061-4d86-a198-64fe14bdaf5c', 4160, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5470, '1313b015-8f5d-47a4-844b-5a7251ca2760', 4420, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5471, '3f59d2ab-50ab-48c4-a560-dc88d8293d0e', 4680, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5472, 'f2d5ecba-0a2a-4e49-be1e-5b00eeded37d', 4940, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124');
INSERT INTO `apto_price` (`surrogate_id`, `id`, `price_amount`, `price_currency_code`, `customer_group_id`) VALUES
(5473, '675dd14d-a769-4122-a9a0-f4550c1ede90', 5200, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5474, '30df8ca5-7e49-4138-bb52-aacecf360ae9', 5460, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5475, 'f8a5f9fa-ec61-41b6-82ff-47db95d787e8', 5720, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5476, 'df3a09ba-9606-481f-a03b-c3171e45c476', 5980, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5477, 'fc66e1d0-8a80-4a2e-9f9e-df2f9e80a9a6', 6240, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5478, '7a9a32c5-61ba-4994-a0a7-60399e36ec32', 6500, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5479, '4c8d019a-4145-4d8a-a5f7-a93da5c15d0d', 6760, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5480, 'b9a1debc-3312-4b61-b9e0-5e7c9f114370', 7020, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5481, 'ba5739f3-08a2-4fa5-821b-0313a742c5db', 7280, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5482, 'a3691ad2-3a12-491f-8384-ba517c6cada8', 7540, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5483, '2ea41c2e-aea4-47c4-8dae-dd063d67133a', 2160, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5484, 'f5bc5218-ea7a-47eb-9d76-0f4ac25ea6db', 2430, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5485, '0e1a0bd1-730c-4afb-acf2-15a80ef23490', 2700, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5486, '327fe5eb-2d28-41d3-8b28-20ab9da07989', 2970, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5487, 'a8424260-4486-4806-aa17-d3bd0b4c20ac', 3240, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5488, '3fd54aba-08aa-44ca-9534-ac86ab572763', 3510, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5489, '24a8461d-c382-4ecd-bdd9-c5976915a6c8', 3780, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5490, '788913d0-fb9f-4976-8578-d7b38b97795a', 4050, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5491, '670962ab-826a-4a3d-aabc-a66195105af5', 4320, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5492, '10110032-ed93-4156-b0e6-9d852dd5824c', 4590, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5493, '90d20328-d476-4ccd-93c7-036a11959dc1', 4860, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5494, 'd834411e-72d2-4a53-b11a-8f9935fce839', 5130, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5495, 'd74d421a-4784-4542-a357-b55c034c2228', 5400, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5496, '1657a56e-27fa-42d1-bc44-f50f0ffd7b9f', 5670, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5497, '888b9321-ced8-403c-a840-17fe60329eba', 5940, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5498, '57deca83-ee92-420f-a315-12e84fef2a43', 6210, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5499, '8cfa60a8-9755-4a4e-8add-a599b7bc1148', 6480, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5500, 'baf8afdd-73d0-423e-9d70-7af6b318de41', 6750, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5501, '50828688-7b7f-4572-ad29-79c37d7ea8ab', 7020, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5502, '817d7a30-98a4-4d65-aec5-f4a7ada4a621', 7290, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5503, 'ea59e02c-a7a4-46cb-a45d-786d1bdd25b2', 7560, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5504, '0ea2c743-04df-42e4-b830-97814582eaf3', 7830, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5553, '1b0f2b44-669e-413d-a711-6fecb515dc4d', 8000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5554, 'ad09072a-cfef-4505-86d7-aab58b4fbcf4', 4000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5555, '1996a392-6731-4c90-9017-02d92a3d8ca8', 1000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5556, '01377b60-8d2a-4c6d-956d-7f7d9da4bf61', 1500, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5557, 'b230128e-f142-46c9-bfac-eb8c0e221ece', 1000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5558, 'fa011602-977d-472f-8262-4ac6875bfb61', 1300, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5559, '79842446-6ad3-4391-bd4c-ba87cd70624b', 1500, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5560, 'a3bd7365-7ebe-48ee-8d1f-348b0794abbb', 1800, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5561, '23d1b8f2-4c6d-49a4-b32a-238f066f55fb', 2000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5562, 'e077c110-fb95-4914-ac8b-c38ddf0b8c09', 3500, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5563, '8c3191d9-adc3-4a08-b3d6-f0cc891683d4', 2000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5564, '663025e0-3972-4ba2-bbe5-005cd703bfa9', 8000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5565, '975f5420-5bdd-4a9d-825c-851350889011', 8000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5566, '8be7aa60-6c7f-470f-856e-c4ecc9051142', 4000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5567, '4e1717c1-f961-4a33-aaed-5a9fe735438d', 1000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5568, '4373e123-b5a3-47bc-a1f9-b4fe38f6ffac', 1500, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5569, 'afcf6825-fe77-41ff-975f-c754d3f57bde', 1000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5570, 'beee5151-45b0-4d30-8868-0b7801d5d830', 1300, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5571, '1e488b42-3d93-4e2a-91f1-fdf088f0fbe6', 1500, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5572, '15aecfe7-a7e0-4dc7-b982-6c2677aef3fa', 1800, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5573, '911336fc-9da7-4902-89d4-3db27b94eec2', 2000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5574, 'aaf1d3c4-4193-4f08-b632-d05c5688322a', 3500, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5575, '106c164d-5022-48a1-bff6-b984952e8dec', 2000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124'),
(5576, 'cfefbffd-15dd-4ef8-a32c-82551d4a30e2', 8000, 'EUR', 'fe34971d-f345-415f-b2fa-bdf914e11124');

-- --------------------------------------------------------

--
-- Table structure for table `apto_price_formula`
--

DROP TABLE IF EXISTS `apto_price_formula`;
CREATE TABLE `apto_price_formula` (
  `surrogate_id` int(11) NOT NULL,
  `formula` longtext NOT NULL,
  `id` char(36) NOT NULL,
  `currency_code` varchar(255) NOT NULL,
  `customer_group_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_price_matrix`
--

DROP TABLE IF EXISTS `apto_price_matrix`;
CREATE TABLE `apto_price_matrix` (
  `surrogate_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `name` longtext DEFAULT NULL COMMENT '(DC2Type:AptoPropertyTranslatedValue)',
  `id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `apto_price_matrix`
--

INSERT INTO `apto_price_matrix` (`surrogate_id`, `created`, `name`, `id`) VALUES
(6, '2019-03-20 10:15:29', '{\"de_DE\":\"Fenster Aufpreis\"}', 'cdbc8796-febd-497c-acc0-03673484ef3e');

-- --------------------------------------------------------

--
-- Table structure for table `apto_price_matrix_element`
--

DROP TABLE IF EXISTS `apto_price_matrix_element`;
CREATE TABLE `apto_price_matrix_element` (
  `surrogate_id` int(11) NOT NULL,
  `price_matrix_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `id` char(36) NOT NULL,
  `column_value` double NOT NULL,
  `row_value` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `apto_price_matrix_element`
--

INSERT INTO `apto_price_matrix_element` (`surrogate_id`, `price_matrix_id`, `created`, `id`, `column_value`, `row_value`) VALUES
(3445, 6, '2019-03-20 10:15:42', '3bd01424-b64f-4d56-9932-849c7f2218d9', 800, 400),
(3446, 6, '2019-03-20 10:15:42', '2312c32a-2fb9-4176-9317-9a881e5a0f19', 900, 400),
(3447, 6, '2019-03-20 10:15:42', '0d2226c7-4477-44e8-8036-6956545a84d8', 1000, 400),
(3448, 6, '2019-03-20 10:15:42', '799bde09-17d6-4391-843d-e2ddef3ba32c', 1100, 400),
(3449, 6, '2019-03-20 10:15:42', '69afc307-66c7-443e-a2ff-5efb75437b39', 1200, 400),
(3450, 6, '2019-03-20 10:15:42', '1ef11ca7-db21-477e-a5dd-586f4c3fc445', 1300, 400),
(3451, 6, '2019-03-20 10:15:42', '390e0a4d-22f2-4a54-a4b9-743135125631', 1400, 400),
(3452, 6, '2019-03-20 10:15:42', '2fe9b7f0-b94b-4007-88b0-4dc37af54049', 1500, 400),
(3453, 6, '2019-03-20 10:15:42', 'a0b0d85d-b227-47eb-9aec-a91e4fb99de1', 1600, 400),
(3454, 6, '2019-03-20 10:15:42', '74e34d3d-be40-4557-b11a-9c0bb5cad68e', 1700, 400),
(3455, 6, '2019-03-20 10:15:42', '1545496b-f4ae-44a1-b2f8-e1b9e4c8b265', 1800, 400),
(3456, 6, '2019-03-20 10:15:42', '75a82974-6cad-49b6-bbe5-b819d51c8f26', 1900, 400),
(3457, 6, '2019-03-20 10:15:42', '52ea0163-ff24-46f6-91ff-7df9bf2a6719', 2000, 400),
(3458, 6, '2019-03-20 10:15:42', '07e6507b-32b8-440e-896c-7bb982772b60', 2100, 400),
(3459, 6, '2019-03-20 10:15:42', '063387ff-731e-488e-8bd0-d5b2d4c64a74', 2200, 400),
(3460, 6, '2019-03-20 10:15:42', '477622a6-9b82-4b1b-a9fe-eaa3eccb1cd1', 2300, 400),
(3461, 6, '2019-03-20 10:15:42', '817cfec9-bbf2-4855-beec-1f7a0a5b9138', 2400, 400),
(3462, 6, '2019-03-20 10:15:42', '40a88fe7-2fd4-4b3f-b85a-4726ad7a2be3', 2500, 400),
(3463, 6, '2019-03-20 10:15:42', '64d6caeb-cff4-43bb-a5d0-1fbbd1593f04', 2600, 400),
(3464, 6, '2019-03-20 10:15:42', '38cf2406-714f-4709-bfa4-53d2a6b04fd6', 2700, 400),
(3465, 6, '2019-03-20 10:15:42', '95ad5c3d-366c-43b3-b45e-d270f27fd174', 2800, 400),
(3466, 6, '2019-03-20 10:15:42', 'c5398cfb-7643-403e-a285-b39ca9088b45', 2900, 400),
(3467, 6, '2019-03-20 10:15:42', '63d3804d-7daa-427b-a5e3-b23bb5294bda', 800, 500),
(3468, 6, '2019-03-20 10:15:42', '3c77a6ea-64ab-4726-be1f-9829e6d700a5', 900, 500),
(3469, 6, '2019-03-20 10:15:42', '843cd9a2-6049-4c5e-9fad-735ac37388c7', 1000, 500),
(3470, 6, '2019-03-20 10:15:42', '0ebb6b5b-11ed-419a-ad19-f56a60147132', 1100, 500),
(3471, 6, '2019-03-20 10:15:42', '1ee4e715-925f-4f38-ab54-2946e376ff0e', 1200, 500),
(3472, 6, '2019-03-20 10:15:42', '04a12f3b-0f39-498e-8e4d-9e1a86efc8a1', 1300, 500),
(3473, 6, '2019-03-20 10:15:42', 'de55264c-12e0-4edf-86ab-2edac324c496', 1400, 500),
(3474, 6, '2019-03-20 10:15:42', '7a1b232c-aa08-4eb5-9322-69233d884749', 1500, 500),
(3475, 6, '2019-03-20 10:15:42', 'b6f1473c-ab0a-4c27-be85-a0e7fcd8d3a0', 1600, 500),
(3476, 6, '2019-03-20 10:15:42', '9123ac67-7d26-4fba-9180-f08b0ee76558', 1700, 500),
(3477, 6, '2019-03-20 10:15:42', '667c0cef-9947-48ca-afb0-804fb36b40af', 1800, 500),
(3478, 6, '2019-03-20 10:15:42', '66abd674-e632-4c85-bb0c-5c6a9d45100b', 1900, 500),
(3479, 6, '2019-03-20 10:15:42', 'ca4d356d-5afd-42ae-874a-1351bf10c2f3', 2000, 500),
(3480, 6, '2019-03-20 10:15:42', '265a3cdf-fe24-40ed-aa90-5f2673fec8e5', 2100, 500),
(3481, 6, '2019-03-20 10:15:42', '57df026b-efe9-4493-b2d3-260594233c5c', 2200, 500),
(3482, 6, '2019-03-20 10:15:42', '77e650f7-d6f3-4c30-981d-2dcc3a7753cd', 2300, 500),
(3483, 6, '2019-03-20 10:15:42', '3ab297b8-5826-4ec2-842c-a73f93b64184', 2400, 500),
(3484, 6, '2019-03-20 10:15:42', '52e7609e-292d-4bcc-aa2d-99daf9e1ad18', 2500, 500),
(3485, 6, '2019-03-20 10:15:42', '73a784f8-10c5-4340-8ece-0c9afe25d727', 2600, 500),
(3486, 6, '2019-03-20 10:15:42', '2edeae7d-0861-4d83-b619-fde81c9450ec', 2700, 500),
(3487, 6, '2019-03-20 10:15:42', 'a1ee6c7a-2456-471b-9a0d-6eecb7a6aacf', 2800, 500),
(3488, 6, '2019-03-20 10:15:42', '45badc4b-401e-4d8d-b273-19ade4bc5c14', 2900, 500),
(3489, 6, '2019-03-20 10:15:42', '4cebdeb5-0dc5-403e-975b-1b4553602f81', 800, 600),
(3490, 6, '2019-03-20 10:15:42', 'd3ec9692-72ff-4834-ba8e-3a7803f2eb14', 900, 600),
(3491, 6, '2019-03-20 10:15:42', '84ba83e3-b8e2-4f7c-8d51-f602eb0d0440', 1000, 600),
(3492, 6, '2019-03-20 10:15:42', '0cae765e-1f44-4b64-99a9-99664cde56a2', 1100, 600),
(3493, 6, '2019-03-20 10:15:42', '9bc9dd85-3327-4378-a9f3-8b7f3fdcc6f7', 1200, 600),
(3494, 6, '2019-03-20 10:15:42', 'b5277690-82d0-47b4-beff-0207f61c8b4c', 1300, 600),
(3495, 6, '2019-03-20 10:15:42', 'a2544fa6-293b-40b0-addd-eddab5403aa1', 1400, 600),
(3496, 6, '2019-03-20 10:15:42', 'bf52463d-5a1e-4987-bec0-71cb2cfb6d65', 1500, 600),
(3497, 6, '2019-03-20 10:15:42', 'c1cc0530-2277-43d9-a1a8-3ec8cd242154', 1600, 600),
(3498, 6, '2019-03-20 10:15:42', '1faedfbe-ea78-4166-8f47-819497417258', 1700, 600),
(3499, 6, '2019-03-20 10:15:42', '83b3d69f-7312-4230-b264-b0bdf2fd9891', 1800, 600),
(3500, 6, '2019-03-20 10:15:42', 'c4d1f2b0-7dc1-4fc4-950b-08949eabcef4', 1900, 600),
(3501, 6, '2019-03-20 10:15:42', '5da15302-d0bf-4632-b218-beabf7d044a4', 2000, 600),
(3502, 6, '2019-03-20 10:15:42', 'd16f0d8e-b8a0-479c-bd35-df34647a272d', 2100, 600),
(3503, 6, '2019-03-20 10:15:42', 'ecbae94e-3323-4028-84da-29af91c36f6c', 2200, 600),
(3504, 6, '2019-03-20 10:15:42', 'ae2a9a4f-e674-4f7b-8b03-66b5599359c0', 2300, 600),
(3505, 6, '2019-03-20 10:15:42', 'c41f29b7-8cdd-4578-ba52-1329b42df363', 2400, 600),
(3506, 6, '2019-03-20 10:15:42', '8327a1a3-0913-4765-afa2-3fa226d2457c', 2500, 600),
(3507, 6, '2019-03-20 10:15:42', '65ecb320-e4e5-4837-bfed-eb53baa3cc45', 2600, 600),
(3508, 6, '2019-03-20 10:15:42', 'a5a1b448-46be-4abc-90d0-a913f83a7667', 2700, 600),
(3509, 6, '2019-03-20 10:15:42', '5d579b3a-231d-4047-96d4-029cc45b73e9', 2800, 600),
(3510, 6, '2019-03-20 10:15:42', '79737f49-8a6a-48f5-b1ab-ae9918f2f4cb', 2900, 600),
(3511, 6, '2019-03-20 10:15:42', '6d6f5df3-20ca-4121-b2a9-abb2bdb57883', 800, 700),
(3512, 6, '2019-03-20 10:15:42', 'ee403ab1-fcea-402b-a337-a1297f78a625', 900, 700),
(3513, 6, '2019-03-20 10:15:42', 'd53988fa-2eb7-4109-99a2-3a9f2fd518b5', 1000, 700),
(3514, 6, '2019-03-20 10:15:42', '8f6acae4-e241-4260-accf-f4e4110364e4', 1100, 700),
(3515, 6, '2019-03-20 10:15:42', 'e91b72b2-c2aa-4290-901a-ad51b807fe54', 1200, 700),
(3516, 6, '2019-03-20 10:15:42', 'e1af7c27-19ad-4b1f-bc61-8103e035f50e', 1300, 700),
(3517, 6, '2019-03-20 10:15:42', '0e6d6a85-d64f-41d1-b56c-cb0c1ad432d9', 1400, 700),
(3518, 6, '2019-03-20 10:15:42', '81d67e81-21a6-4a18-9fd3-5d55b4e4a402', 1500, 700),
(3519, 6, '2019-03-20 10:15:42', '231e209e-876f-48c4-bfbd-960d34863d42', 1600, 700),
(3520, 6, '2019-03-20 10:15:42', '83d1202c-eb23-49d2-884a-6f4e9dc7b101', 1700, 700),
(3521, 6, '2019-03-20 10:15:42', '149b128b-4701-47d6-853a-b67b82ee4af4', 1800, 700),
(3522, 6, '2019-03-20 10:15:42', 'b06a5414-69c5-48b6-b963-54849ea86afb', 1900, 700),
(3523, 6, '2019-03-20 10:15:42', '236bbbb5-7f64-4e21-b171-4c50e3fcca07', 2000, 700),
(3524, 6, '2019-03-20 10:15:42', '31869eed-d2b8-46f3-a174-f21f3d0ae742', 2100, 700),
(3525, 6, '2019-03-20 10:15:42', '9d69a23a-eaa3-4d88-8a38-535f0cf9dd4e', 2200, 700),
(3526, 6, '2019-03-20 10:15:42', 'f0720b17-a7e9-4c92-a05d-961e8e08d718', 2300, 700),
(3527, 6, '2019-03-20 10:15:42', '37b0c698-738e-4b51-b0f4-72fbd78e0f73', 2400, 700),
(3528, 6, '2019-03-20 10:15:42', '22391b8f-f932-401e-87c6-729212772f1d', 2500, 700),
(3529, 6, '2019-03-20 10:15:42', '49a4777b-cb55-49b3-8b78-62f25d2fa6c3', 2600, 700),
(3530, 6, '2019-03-20 10:15:42', '64519d09-7187-45a9-a726-1cb5c80b34ee', 2700, 700),
(3531, 6, '2019-03-20 10:15:42', '8e331339-6093-4987-b866-993a7467df3f', 2800, 700),
(3532, 6, '2019-03-20 10:15:42', '1d18285c-9ada-45d2-a9fb-edd73f95c5eb', 2900, 700),
(3533, 6, '2019-03-20 10:15:42', '57c2a42e-c5a9-47a3-b370-b644c3f4158c', 800, 800),
(3534, 6, '2019-03-20 10:15:42', 'bf3262a5-7de3-4e4d-be44-60663ff793ef', 900, 800),
(3535, 6, '2019-03-20 10:15:42', '529ffb19-c76e-4d34-8f2d-b8ff0c32a814', 1000, 800),
(3536, 6, '2019-03-20 10:15:42', '02379bfc-e79a-4c91-9d54-2801894fe29d', 1100, 800),
(3537, 6, '2019-03-20 10:15:42', '7165ede6-91d8-4b60-8022-8c446636ed64', 1200, 800),
(3538, 6, '2019-03-20 10:15:42', '25b152e1-8d76-4122-92b3-678e98004aa6', 1300, 800),
(3539, 6, '2019-03-20 10:15:42', 'ee75d942-e63a-49d8-a0ea-1555b848d4af', 1400, 800),
(3540, 6, '2019-03-20 10:15:42', 'f5adc97a-3621-41d0-8b34-bcddbe7fd864', 1500, 800),
(3541, 6, '2019-03-20 10:15:42', 'f18f4229-4c2e-493f-a77e-10ea179e3087', 1600, 800),
(3542, 6, '2019-03-20 10:15:42', 'c92930f1-88ea-4131-870f-3cca6d232342', 1700, 800),
(3543, 6, '2019-03-20 10:15:42', 'cd3b8fa8-6010-49e1-905d-c2de27c888de', 1800, 800),
(3544, 6, '2019-03-20 10:15:42', '2d2d9cd3-6904-4dfb-b29e-cb298fad4654', 1900, 800),
(3545, 6, '2019-03-20 10:15:42', '4ca128f1-cdd7-45ce-9e49-29e579bbdb96', 2000, 800),
(3546, 6, '2019-03-20 10:15:42', '9d6b2dab-4156-41b6-8801-638dc8d72fe1', 2100, 800),
(3547, 6, '2019-03-20 10:15:42', '1734696d-d059-46ac-88ce-b3d258190db6', 2200, 800),
(3548, 6, '2019-03-20 10:15:42', 'a787b67e-e5f5-4b0a-9060-1d971776ff74', 2300, 800),
(3549, 6, '2019-03-20 10:15:42', 'a4cecb39-9bce-47fb-9865-7086646fa3f4', 2400, 800),
(3550, 6, '2019-03-20 10:15:42', 'c04bf99c-3df3-4393-8cde-b45925b79cc2', 2500, 800),
(3551, 6, '2019-03-20 10:15:42', '4bef09e9-d2db-4198-99b2-12aa8b8bf5c1', 2600, 800),
(3552, 6, '2019-03-20 10:15:42', 'e65d9f20-f458-4e19-b9a0-9b02aa6e4403', 2700, 800),
(3553, 6, '2019-03-20 10:15:42', 'a90b6758-2d74-4d6c-83f0-b2f60f47c3fe', 2800, 800),
(3554, 6, '2019-03-20 10:15:42', '99b96be2-e630-4eb1-8607-0bc9979aa9bd', 2900, 800),
(3555, 6, '2019-03-20 10:15:42', '474f79cd-e904-4422-8f81-87228a3a67e8', 800, 900),
(3556, 6, '2019-03-20 10:15:42', '7f501b61-65e3-4ff4-8ea8-c74657ac7c52', 900, 900),
(3557, 6, '2019-03-20 10:15:42', 'd958ee56-a1a7-4bb4-b03f-30b1a3d49a01', 1000, 900),
(3558, 6, '2019-03-20 10:15:42', 'b2a11f34-3c38-4c56-9f53-982fcb6ac45a', 1100, 900),
(3559, 6, '2019-03-20 10:15:42', '2c2d61ad-999d-493b-83af-29f3171821e6', 1200, 900),
(3560, 6, '2019-03-20 10:15:42', '9f7cfc71-c2f9-44bc-a747-6b46ceb7a238', 1300, 900),
(3561, 6, '2019-03-20 10:15:42', '2666127b-953b-4623-a662-3f87752753a5', 1400, 900),
(3562, 6, '2019-03-20 10:15:42', 'd25df3f0-032f-467b-a606-4068bc8a063f', 1500, 900),
(3563, 6, '2019-03-20 10:15:42', 'de733f27-11b7-4c43-b60b-8bf661195e4b', 1600, 900),
(3564, 6, '2019-03-20 10:15:42', '22b538d3-3084-45fb-8400-dde0c0ff5e64', 1700, 900),
(3565, 6, '2019-03-20 10:15:42', '938520b2-6662-4449-aac6-c95bc77853db', 1800, 900),
(3566, 6, '2019-03-20 10:15:42', '16ce45d5-2534-4a9f-8d04-070872bff48a', 1900, 900),
(3567, 6, '2019-03-20 10:15:42', '0a1b9809-a133-4bf3-a18c-9cd7ce9af5de', 2000, 900),
(3568, 6, '2019-03-20 10:15:42', 'fb63d637-6a01-4d9d-a02b-dffea8eac483', 2100, 900),
(3569, 6, '2019-03-20 10:15:42', '5d71e0d4-f960-4722-9921-bb5bce124eb0', 2200, 900),
(3570, 6, '2019-03-20 10:15:42', '2bc4bb37-c319-411a-b677-abf95a25d568', 2300, 900),
(3571, 6, '2019-03-20 10:15:42', '307e01ea-d534-4729-b6f6-b6db0320d6ec', 2400, 900),
(3572, 6, '2019-03-20 10:15:42', 'b9289513-f825-4588-8bb0-b5b398523efc', 2500, 900),
(3573, 6, '2019-03-20 10:15:42', '5454b237-7823-4445-ac02-22af27441254', 2600, 900),
(3574, 6, '2019-03-20 10:15:42', '9240765d-bdd3-495e-8842-8f30db76786c', 2700, 900),
(3575, 6, '2019-03-20 10:15:42', 'c5dae304-3ea2-4e8b-8f82-520bc50aea8e', 2800, 900),
(3576, 6, '2019-03-20 10:15:42', '17e71820-045d-454e-8268-fc6d4d5b3668', 2900, 900),
(3577, 6, '2019-03-20 10:15:42', 'c7b7f7ee-1f22-4c0e-8480-144ed22452ab', 800, 1000),
(3578, 6, '2019-03-20 10:15:42', '6054c35f-c01d-45e8-9805-f25420217c8e', 900, 1000),
(3579, 6, '2019-03-20 10:15:42', '58ec2ca8-6e44-47df-9767-2dc3133fc1e3', 1000, 1000),
(3580, 6, '2019-03-20 10:15:42', 'ca70c392-e938-49e1-8672-4a5f2f3dc29a', 1100, 1000),
(3581, 6, '2019-03-20 10:15:42', '98c2c3a7-261b-47fa-9236-ca77bd1d5f38', 1200, 1000),
(3582, 6, '2019-03-20 10:15:42', '1235c058-b5f5-40d4-8c3c-ce5a4334e7a5', 1300, 1000),
(3583, 6, '2019-03-20 10:15:42', 'bc0b8992-caa8-49c0-a66b-5e9af6d129ce', 1400, 1000),
(3584, 6, '2019-03-20 10:15:42', '38115bcc-28e9-4a44-bd3d-2538b0f1697a', 1500, 1000),
(3585, 6, '2019-03-20 10:15:42', '786573c3-57bc-4f74-88f2-c5b1a883e75a', 1600, 1000),
(3586, 6, '2019-03-20 10:15:42', 'f295586f-ea59-4521-8315-2c8ad15edbfe', 1700, 1000),
(3587, 6, '2019-03-20 10:15:42', '40a7d5fd-a5e7-4395-8e7f-d942c0d30dea', 1800, 1000),
(3588, 6, '2019-03-20 10:15:42', '00a68d43-dad9-4bf7-b6bc-0fc19ded6022', 1900, 1000),
(3589, 6, '2019-03-20 10:15:42', 'eb3addda-e09e-4b64-8c52-f2fbd9d8bb7e', 2000, 1000),
(3590, 6, '2019-03-20 10:15:42', 'ef125365-fd8c-49ce-8150-452a408ad740', 2100, 1000),
(3591, 6, '2019-03-20 10:15:42', 'f6154394-57c4-4907-9992-f19012a73ffa', 2200, 1000),
(3592, 6, '2019-03-20 10:15:42', 'bd4c05df-aabc-4a36-b307-a391202c4e48', 2300, 1000),
(3593, 6, '2019-03-20 10:15:42', '7f8aee71-4d9d-4e40-8d25-55ec9e9e661a', 2400, 1000),
(3594, 6, '2019-03-20 10:15:42', 'f93e9a94-7297-4a38-8fd5-594ee1527488', 2500, 1000),
(3595, 6, '2019-03-20 10:15:42', '0b040ec3-442d-4a63-aed6-70d2726fbbd6', 2600, 1000),
(3596, 6, '2019-03-20 10:15:42', '4140ffa9-84a5-4ec2-b0f1-4d0c3b76a5ca', 2700, 1000),
(3597, 6, '2019-03-20 10:15:42', '060b9687-4d29-47a7-bf77-8f2f29bf6155', 2800, 1000),
(3598, 6, '2019-03-20 10:15:42', '73a30670-e99e-4604-bf6a-f5f7b8b5f17e', 2900, 1000),
(3599, 6, '2019-03-20 10:15:42', '70ba61ca-4d40-45e6-bb5a-fc3f9baf2855', 800, 1100),
(3600, 6, '2019-03-20 10:15:42', 'dcd94e3a-5820-4ce5-affb-f53091fdff72', 900, 1100),
(3601, 6, '2019-03-20 10:15:42', '84be124d-6761-4337-adb2-277e1f8fd150', 1000, 1100),
(3602, 6, '2019-03-20 10:15:42', '96c5fcfa-7796-478e-b05f-b04a1d01209e', 1100, 1100),
(3603, 6, '2019-03-20 10:15:42', 'c48a51e8-5c72-4fe3-84f2-1f7e93f0cef9', 1200, 1100),
(3604, 6, '2019-03-20 10:15:42', 'c705c28a-3a32-4a91-97ea-e621fbefe828', 1300, 1100),
(3605, 6, '2019-03-20 10:15:42', 'e179c1d1-b864-4b40-9f41-b5f2352b531f', 1400, 1100),
(3606, 6, '2019-03-20 10:15:42', '2a8a83fb-7143-40d8-b915-8fa3a4e1ba79', 1500, 1100),
(3607, 6, '2019-03-20 10:15:42', 'fb7a74d5-75c4-42c7-829d-a4fd8a78c00d', 1600, 1100),
(3608, 6, '2019-03-20 10:15:42', 'eff75e52-7eb4-49da-a532-2a80d3345f87', 1700, 1100),
(3609, 6, '2019-03-20 10:15:42', 'ca96d993-d163-4f19-85c9-caaf9a429ca3', 1800, 1100),
(3610, 6, '2019-03-20 10:15:42', '4ce03672-a447-4476-9de2-8c79359a9aff', 1900, 1100),
(3611, 6, '2019-03-20 10:15:42', 'd07b175c-c405-4c29-9ec6-5ffdefe9f129', 2000, 1100),
(3612, 6, '2019-03-20 10:15:42', '22279ca3-d815-4640-b88d-00fdd20f8308', 2100, 1100),
(3613, 6, '2019-03-20 10:15:42', 'd0b700dd-f04d-4cc2-97af-4985c26d7513', 2200, 1100),
(3614, 6, '2019-03-20 10:15:42', 'c8e1fada-9fee-4ba0-bd70-9c02780d18f9', 2300, 1100),
(3615, 6, '2019-03-20 10:15:42', '4032a53b-ebe8-48be-bad4-de50b09e6c10', 2400, 1100),
(3616, 6, '2019-03-20 10:15:42', 'f7863e25-42e3-4f23-ad92-9f3e0e253228', 2500, 1100),
(3617, 6, '2019-03-20 10:15:42', '58483c2a-754c-4135-8142-e359bea69c52', 2600, 1100),
(3618, 6, '2019-03-20 10:15:42', '73327ff6-3d45-456b-9e97-9d1094438f2d', 2700, 1100),
(3619, 6, '2019-03-20 10:15:42', '04691665-aed9-40e5-ac9f-e8d01455db4c', 2800, 1100),
(3620, 6, '2019-03-20 10:15:42', '2a008e5c-cad5-4ff4-9120-325f141ba34c', 2900, 1100),
(3621, 6, '2019-03-20 10:15:42', '6b78a8d2-5a0d-4cea-9d32-5ae61e04a7fe', 800, 1200),
(3622, 6, '2019-03-20 10:15:42', 'fec92c9c-98f2-48ed-a5ce-20f2e87ae573', 900, 1200),
(3623, 6, '2019-03-20 10:15:42', 'c6e54aff-9d53-4b73-aa91-9c7273942d9e', 1000, 1200),
(3624, 6, '2019-03-20 10:15:42', 'a371ba1c-5256-4e1a-9038-addfcea9edbe', 1100, 1200),
(3625, 6, '2019-03-20 10:15:42', '7599ddd6-70b4-4db3-9870-9626621b3256', 1200, 1200),
(3626, 6, '2019-03-20 10:15:42', '7527ee45-c51f-48b1-8c88-f13e3c0acb02', 1300, 1200),
(3627, 6, '2019-03-20 10:15:42', '0882485c-821e-4702-b3a1-f7f5b0124a41', 1400, 1200),
(3628, 6, '2019-03-20 10:15:42', '7fc22644-d5bc-4309-8ac3-ca95967257d1', 1500, 1200),
(3629, 6, '2019-03-20 10:15:42', '357dc64b-3660-44a1-9fd7-32cc2d3dee8b', 1600, 1200),
(3630, 6, '2019-03-20 10:15:42', '8dd99937-5df5-4318-b28b-09b4f3808efb', 1700, 1200),
(3631, 6, '2019-03-20 10:15:42', 'ab4a4bde-0216-43d4-9454-107ca961b6e8', 1800, 1200),
(3632, 6, '2019-03-20 10:15:42', '4f116d42-b1a9-4786-9e2e-c0fa0f88509e', 1900, 1200),
(3633, 6, '2019-03-20 10:15:42', '565f2d80-b7d4-4c4d-992b-a34bdac4557e', 2000, 1200),
(3634, 6, '2019-03-20 10:15:42', '7ff4ac85-3ade-43a1-9ab9-fce8ea8941f2', 2100, 1200),
(3635, 6, '2019-03-20 10:15:42', 'f66c88b9-2316-4e6b-aafc-c3990f034fda', 2200, 1200),
(3636, 6, '2019-03-20 10:15:42', '479c99dd-7d6a-4b4d-9be1-c240838b8355', 2300, 1200),
(3637, 6, '2019-03-20 10:15:42', 'aa485515-eaf9-48aa-83a5-118535839857', 2400, 1200),
(3638, 6, '2019-03-20 10:15:42', 'add77ae8-62c8-41f4-b6a6-52187fe035e6', 2500, 1200),
(3639, 6, '2019-03-20 10:15:42', '1702dc17-49c6-49e8-a9b2-c3bcdb5369f1', 2600, 1200),
(3640, 6, '2019-03-20 10:15:42', '74ac37dc-09b3-4c59-a6c9-d422666cb20f', 2700, 1200),
(3641, 6, '2019-03-20 10:15:42', '949812b2-d538-4c0c-8508-878979ddba4d', 2800, 1200),
(3642, 6, '2019-03-20 10:15:42', '0175ef78-100d-41dd-9114-304c40de7b45', 2900, 1200),
(3643, 6, '2019-03-20 10:15:42', '0212677d-1305-4bc7-ba43-33539c9d629b', 800, 1300),
(3644, 6, '2019-03-20 10:15:42', 'bb655553-0373-498d-8e28-5808f9b689e6', 900, 1300),
(3645, 6, '2019-03-20 10:15:42', '5275da4c-66e1-4c03-b6f5-9a37a4af13ea', 1000, 1300),
(3646, 6, '2019-03-20 10:15:42', 'a25d9460-67a5-48fe-bc73-7c5686652a92', 1100, 1300),
(3647, 6, '2019-03-20 10:15:42', 'a54daa1b-1e57-464d-89dc-a12befbf293c', 1200, 1300),
(3648, 6, '2019-03-20 10:15:42', 'd7ca78ed-7b46-445d-b0af-48aa2eb861a1', 1300, 1300),
(3649, 6, '2019-03-20 10:15:42', '4cab3182-489a-4997-98cb-776971ecce50', 1400, 1300),
(3650, 6, '2019-03-20 10:15:42', '8ef66bcf-cb72-4c52-9d63-1aa3d61f851d', 1500, 1300),
(3651, 6, '2019-03-20 10:15:42', 'a212b8e3-90f7-4531-80aa-7062e51f5dd8', 1600, 1300),
(3652, 6, '2019-03-20 10:15:42', '9d8474b1-8ee3-494a-af8b-56246fdaaf31', 1700, 1300),
(3653, 6, '2019-03-20 10:15:42', 'b8c9d4f4-a1e8-40f0-8788-23bb17c846d2', 1800, 1300),
(3654, 6, '2019-03-20 10:15:42', 'a085a504-e33f-4485-95f4-fbf4cd4d1e4a', 1900, 1300),
(3655, 6, '2019-03-20 10:15:42', 'd8d9f2ed-0a1e-4fa6-814a-b0fb4a0ccdc0', 2000, 1300),
(3656, 6, '2019-03-20 10:15:42', '3df96c61-23d4-4dc8-b5dd-f56ce3f7efc1', 2100, 1300),
(3657, 6, '2019-03-20 10:15:42', 'af729635-8348-41bc-bc13-c883c33ffa5a', 2200, 1300),
(3658, 6, '2019-03-20 10:15:42', '52f733ce-cc5a-486d-aab9-055a57651319', 2300, 1300),
(3659, 6, '2019-03-20 10:15:42', '8c6f8989-34c4-4dd1-a6fc-d6a4207d6157', 2400, 1300),
(3660, 6, '2019-03-20 10:15:42', '7463e88f-f468-4ede-8049-1d0963936b9b', 2500, 1300),
(3661, 6, '2019-03-20 10:15:42', 'a3e7bfff-b004-40d4-b11b-96ecbdea96a5', 2600, 1300),
(3662, 6, '2019-03-20 10:15:42', 'cb024efd-2464-4af4-946b-36600811b3e4', 2700, 1300),
(3663, 6, '2019-03-20 10:15:42', '6720cdf8-fff1-4cad-99dc-92bc793d71f4', 2800, 1300),
(3664, 6, '2019-03-20 10:15:42', '1f0cb851-420f-4827-8ec3-a324f41e7d58', 2900, 1300),
(3665, 6, '2019-03-20 10:15:42', 'b35a9bb5-76e2-4de8-8901-de506dd2170e', 800, 1400),
(3666, 6, '2019-03-20 10:15:42', 'cfec5bf9-b758-4b46-a87b-21332171073e', 900, 1400),
(3667, 6, '2019-03-20 10:15:42', 'af45b835-d4ce-4e02-91d2-bf628935e640', 1000, 1400),
(3668, 6, '2019-03-20 10:15:42', '5dd08eb9-7266-4bad-9fb9-d37652228420', 1100, 1400),
(3669, 6, '2019-03-20 10:15:42', '8b4b63fe-b489-485e-8a01-a2498dcaa01d', 1200, 1400),
(3670, 6, '2019-03-20 10:15:42', '541974f7-ba34-48b4-8d18-c8f0616895af', 1300, 1400),
(3671, 6, '2019-03-20 10:15:42', 'f0bfd781-c0ab-46e8-a4c1-2f1659cc0a15', 1400, 1400),
(3672, 6, '2019-03-20 10:15:42', '6a14701c-64bd-4754-ac78-bc3d6220a7a9', 1500, 1400),
(3673, 6, '2019-03-20 10:15:42', '43c1bea1-252f-4a06-bf39-8735c0aa5abf', 1600, 1400),
(3674, 6, '2019-03-20 10:15:42', '2a7f8eed-3977-4a3f-80d6-7a1924fe202b', 1700, 1400),
(3675, 6, '2019-03-20 10:15:42', '6c6cfff5-3cf1-462e-ad09-5865ae340683', 1800, 1400),
(3676, 6, '2019-03-20 10:15:42', '96296ec6-e0ef-49a9-8116-cde486499bab', 1900, 1400),
(3677, 6, '2019-03-20 10:15:42', '3e4def91-dc1a-447d-bb61-cb3c13dcca3d', 2000, 1400),
(3678, 6, '2019-03-20 10:15:42', '118a0b15-b76c-4ce9-ae75-0247c86a05dc', 2100, 1400),
(3679, 6, '2019-03-20 10:15:42', '3d73a1b8-0d30-421b-9a4f-0fba6159499f', 2200, 1400),
(3680, 6, '2019-03-20 10:15:42', 'd3d88a89-ec93-4ff5-939e-4019be9432e0', 2300, 1400),
(3681, 6, '2019-03-20 10:15:42', 'c91379e5-de4e-4ff1-96e9-3c385b3f3073', 2400, 1400),
(3682, 6, '2019-03-20 10:15:42', 'be3213c1-8019-4c16-88ce-318a65de0484', 2500, 1400),
(3683, 6, '2019-03-20 10:15:42', 'c5b50c14-45b9-4620-a47a-bc50123034af', 2600, 1400),
(3684, 6, '2019-03-20 10:15:42', 'a5b3d171-db04-4018-9e26-862afcb411c4', 2700, 1400),
(3685, 6, '2019-03-20 10:15:42', '8c461045-8e8b-4963-83e5-ffd46e87154d', 2800, 1400),
(3686, 6, '2019-03-20 10:15:42', '8932f9e4-2bba-444f-baaf-9d052d9d5d8e', 2900, 1400),
(3687, 6, '2019-03-20 10:15:42', '9e14c37b-953a-496c-a90c-7f97c8e44946', 800, 1500),
(3688, 6, '2019-03-20 10:15:42', '2a40bba4-c16e-4706-9201-ef852cd0d77f', 900, 1500),
(3689, 6, '2019-03-20 10:15:42', '2c9be7c4-c282-4f41-b0ec-80c2fb3dab3c', 1000, 1500),
(3690, 6, '2019-03-20 10:15:42', 'faa97ad9-583c-4074-a194-4d23a5c67f89', 1100, 1500),
(3691, 6, '2019-03-20 10:15:42', '07e00edd-bcf1-40ce-a394-0ec4ac0eb058', 1200, 1500),
(3692, 6, '2019-03-20 10:15:42', 'b4b58bab-da77-4d84-b223-cc20f6777d85', 1300, 1500),
(3693, 6, '2019-03-20 10:15:42', '4f57addd-20ac-40d7-91c2-759d0fd99bcf', 1400, 1500),
(3694, 6, '2019-03-20 10:15:42', 'aea99ad8-a8c1-4ef4-9994-29956c51f7ce', 1500, 1500),
(3695, 6, '2019-03-20 10:15:42', 'b6556a5c-8539-435d-9fa7-2008ec9a84cc', 1600, 1500),
(3696, 6, '2019-03-20 10:15:42', '7c9be231-f824-456b-bece-2622666d9098', 1700, 1500),
(3697, 6, '2019-03-20 10:15:42', 'e0b46872-cb27-41e2-86e5-e07414152cdf', 1800, 1500),
(3698, 6, '2019-03-20 10:15:42', 'f9de431a-312e-495a-98fa-aa2d4e5db89b', 1900, 1500),
(3699, 6, '2019-03-20 10:15:42', 'b8e6d5df-5692-4663-9d88-292968e25952', 2000, 1500),
(3700, 6, '2019-03-20 10:15:42', 'caebdb5a-5cce-4dd3-92e0-89f89bb190a3', 2100, 1500),
(3701, 6, '2019-03-20 10:15:42', '61c4b161-4375-4aeb-bb6f-9a2e6a122cc9', 2200, 1500),
(3702, 6, '2019-03-20 10:15:42', '63151558-13db-497a-9ea4-ec9cb55e1a2a', 2300, 1500),
(3703, 6, '2019-03-20 10:15:42', '20857a0c-9c29-43b0-a0b5-e409dfc723c4', 2400, 1500),
(3704, 6, '2019-03-20 10:15:42', '80c8c029-d3d9-482d-83c3-75f4b2bac947', 2500, 1500),
(3705, 6, '2019-03-20 10:15:42', '008b325f-eb5b-409b-a40f-4758ee804612', 2600, 1500),
(3706, 6, '2019-03-20 10:15:42', '6f4c4284-3bea-45bf-a31c-d57db0be2d72', 2700, 1500),
(3707, 6, '2019-03-20 10:15:42', '08c22eaa-d3b4-4c42-b8ba-5dda5c1a763a', 2800, 1500),
(3708, 6, '2019-03-20 10:15:42', 'e69a0929-2074-4db2-8663-c91928e98fd6', 2900, 1500),
(3709, 6, '2019-03-20 10:15:42', 'b3ac69c5-e47b-4ba4-9b7c-82ef31294ecf', 800, 1600),
(3710, 6, '2019-03-20 10:15:42', 'ca1fc6c1-2217-4c86-9dbe-d9ebd4f45fc0', 900, 1600),
(3711, 6, '2019-03-20 10:15:42', '7bc30351-2b91-403d-89d8-24cbc32fdd8a', 1000, 1600),
(3712, 6, '2019-03-20 10:15:42', '3c97b5ae-feda-48bd-8e6b-c5c41894607a', 1100, 1600),
(3713, 6, '2019-03-20 10:15:42', 'e9b5f3a2-a6d1-445b-bbef-2bcfadff0da3', 1200, 1600),
(3714, 6, '2019-03-20 10:15:42', '04240ca3-f66a-4827-bc0c-018d53f3ecad', 1300, 1600),
(3715, 6, '2019-03-20 10:15:42', 'd947bd14-2686-402b-a7c7-da6bb8cc2a62', 1400, 1600),
(3716, 6, '2019-03-20 10:15:42', '768b780e-5e08-48e4-9c85-f162d0f8710e', 1500, 1600),
(3717, 6, '2019-03-20 10:15:42', '726c6cc7-8199-4247-90cd-ef5317aa7372', 1600, 1600),
(3718, 6, '2019-03-20 10:15:42', '6769c0f7-fa61-4bcb-8594-fafa641dd32e', 1700, 1600),
(3719, 6, '2019-03-20 10:15:42', 'd5c00669-86e1-4e27-9d3c-a9e2b21d704a', 1800, 1600),
(3720, 6, '2019-03-20 10:15:42', '8dc83551-a34e-481e-b360-d2a7f0a92718', 1900, 1600),
(3721, 6, '2019-03-20 10:15:42', '4a06b74b-ea87-4242-b58f-58dff671209d', 2000, 1600),
(3722, 6, '2019-03-20 10:15:42', '4c1c2ea0-540e-40c1-af14-9c89fe9e97db', 2100, 1600),
(3723, 6, '2019-03-20 10:15:42', '27866305-65f0-4149-8fcd-ce1393bc3481', 2200, 1600),
(3724, 6, '2019-03-20 10:15:42', '6b1aaffb-64df-4da9-8ae5-68dfeeb27f7b', 2300, 1600),
(3725, 6, '2019-03-20 10:15:42', '41e930cd-9b89-4499-bc3a-8916e99178b9', 2400, 1600),
(3726, 6, '2019-03-20 10:15:42', 'e8bcc3b5-78d1-46d8-ae79-0366c45da4c0', 2500, 1600),
(3727, 6, '2019-03-20 10:15:42', '6de60e01-c09d-421c-aa6b-17904110d7c9', 2600, 1600),
(3728, 6, '2019-03-20 10:15:42', '22425c71-f915-4d73-bbfb-4f65c4f8913d', 2700, 1600),
(3729, 6, '2019-03-20 10:15:42', 'b0855731-da1b-46fd-a195-8fb3a8d3a868', 2800, 1600),
(3730, 6, '2019-03-20 10:15:42', '3374a52f-9f63-4ea2-968b-288ce1017403', 2900, 1600),
(3731, 6, '2019-03-20 10:15:42', '55077332-3ff9-42a6-a7b4-112b52a6bf3f', 800, 1700),
(3732, 6, '2019-03-20 10:15:42', '955a8b0b-4742-4b2f-9e3b-f5daa6043586', 900, 1700),
(3733, 6, '2019-03-20 10:15:42', 'ee37d894-ca01-4ab3-9549-778437fa37b6', 1000, 1700),
(3734, 6, '2019-03-20 10:15:42', '3958e4fc-4e1c-44e9-992a-f309223e028a', 1100, 1700),
(3735, 6, '2019-03-20 10:15:42', '09516764-bf5d-41cd-97fd-624abcd1c92c', 1200, 1700),
(3736, 6, '2019-03-20 10:15:42', '177fdcb6-162d-4488-b365-ec654419c55f', 1300, 1700),
(3737, 6, '2019-03-20 10:15:42', '5364fc99-2b78-44f2-a44d-158bca3e69d5', 1400, 1700),
(3738, 6, '2019-03-20 10:15:42', 'bd2742d3-4c49-4858-bf66-1837d2797783', 1500, 1700),
(3739, 6, '2019-03-20 10:15:42', 'a1b59c97-043a-41e0-8a64-7e1a58d35041', 1600, 1700),
(3740, 6, '2019-03-20 10:15:42', '60e60f0a-73c6-412a-81ca-1e073c9e40f7', 1700, 1700),
(3741, 6, '2019-03-20 10:15:42', '0bf5c4be-c812-43f7-834d-57fde25f2873', 1800, 1700),
(3742, 6, '2019-03-20 10:15:42', '7459b0cf-b989-47ca-b366-9b0ef58703ec', 1900, 1700),
(3743, 6, '2019-03-20 10:15:42', '03bf01cb-dda0-440a-bf08-7a058599f5e3', 2000, 1700),
(3744, 6, '2019-03-20 10:15:42', '1e43f320-59c3-4739-b0bf-e1056a2b96e5', 2100, 1700),
(3745, 6, '2019-03-20 10:15:42', 'a61a3037-cf47-4e54-863f-340573c1bb56', 2200, 1700),
(3746, 6, '2019-03-20 10:15:42', '24cc0b20-6744-4b4b-b7ac-d7f8d9bf63bd', 2300, 1700),
(3747, 6, '2019-03-20 10:15:42', '9840b219-6eec-435f-986b-5f28b09f94cb', 2400, 1700),
(3748, 6, '2019-03-20 10:15:42', '8b4739e1-b1eb-4577-8df4-e9986fea4cbb', 2500, 1700),
(3749, 6, '2019-03-20 10:15:42', '4f0d6ad6-93dc-414b-b1e8-f38b044a1470', 2600, 1700),
(3750, 6, '2019-03-20 10:15:42', 'cbbebe99-1320-4e57-8fb7-9a7fe2477a76', 2700, 1700),
(3751, 6, '2019-03-20 10:15:42', '08271a41-471f-49cc-bfa7-2eedf54b8508', 2800, 1700),
(3752, 6, '2019-03-20 10:15:42', '7aa1ccba-f172-4043-9650-43686f422db3', 2900, 1700),
(3753, 6, '2019-03-20 10:15:42', '77c76347-3f75-4e97-8a95-c3d132c60cd6', 800, 1800),
(3754, 6, '2019-03-20 10:15:42', '6a94beb0-fbb2-4438-a17b-e0a2aeba8c02', 900, 1800),
(3755, 6, '2019-03-20 10:15:42', 'be820f8a-2b49-49fc-b51f-49d1d9efe21d', 1000, 1800),
(3756, 6, '2019-03-20 10:15:42', '96b3581c-01fc-4789-a728-0913baaea0c2', 1100, 1800),
(3757, 6, '2019-03-20 10:15:42', 'b6c9576f-e731-4ee9-8b70-fde6a34365de', 1200, 1800),
(3758, 6, '2019-03-20 10:15:42', 'a2af3066-b791-4692-9886-c9cd90c371c3', 1300, 1800),
(3759, 6, '2019-03-20 10:15:42', '912fdb9b-b18d-4971-b7b8-1d4541b7ff68', 1400, 1800),
(3760, 6, '2019-03-20 10:15:42', '9d6c3830-0f74-47be-a3d6-fa78712746b0', 1500, 1800),
(3761, 6, '2019-03-20 10:15:42', '1b3a0561-94ad-4d03-b0b5-8968024197f7', 1600, 1800),
(3762, 6, '2019-03-20 10:15:42', '0d08cdba-d8b1-4cf5-9901-6c522cc8ce6e', 1700, 1800),
(3763, 6, '2019-03-20 10:15:42', '6b0e47eb-a03f-4147-8e99-9aacc609bb43', 1800, 1800),
(3764, 6, '2019-03-20 10:15:42', 'c7d4a041-7af9-4f9e-b9bf-bc9fa16453e7', 1900, 1800),
(3765, 6, '2019-03-20 10:15:42', '6ca43140-56f9-40ff-baa9-257a74180775', 2000, 1800),
(3766, 6, '2019-03-20 10:15:42', '5c5c1277-4dbc-4816-8b8e-78c937b3745e', 2100, 1800),
(3767, 6, '2019-03-20 10:15:42', '3afd1b1e-0827-4f31-af40-40685c44f359', 2200, 1800),
(3768, 6, '2019-03-20 10:15:42', '2fd4cd78-d33e-4e33-a98a-7ad60d721e30', 2300, 1800),
(3769, 6, '2019-03-20 10:15:42', '84da76a7-4cd9-4949-8e21-a7e38feeaab7', 2400, 1800),
(3770, 6, '2019-03-20 10:15:42', '5d5bd36d-4a86-4267-b37b-4779734e749b', 2500, 1800),
(3771, 6, '2019-03-20 10:15:42', '84d99357-3013-4478-a05a-e95a864d5395', 2600, 1800),
(3772, 6, '2019-03-20 10:15:42', '4e0ef570-ce05-4228-b16e-d6f1bff7c481', 2700, 1800),
(3773, 6, '2019-03-20 10:15:42', '9e7f5fa4-167b-4387-8939-d321fcdb25c7', 2800, 1800),
(3774, 6, '2019-03-20 10:15:42', '5ecd179d-2ff6-4944-a2e4-5028ec5d0bd1', 2900, 1800),
(3775, 6, '2019-03-20 10:15:42', '00eb064b-24c6-48a6-813f-e495803900a4', 800, 1900),
(3776, 6, '2019-03-20 10:15:42', '194268de-5a0d-4278-b64f-ee603df8d616', 900, 1900),
(3777, 6, '2019-03-20 10:15:42', 'e059e594-ee3e-476b-a126-b8d7628ab662', 1000, 1900),
(3778, 6, '2019-03-20 10:15:42', '20c80d5b-88ff-4d5b-81d2-51ffa8daa13f', 1100, 1900),
(3779, 6, '2019-03-20 10:15:42', '8a63e011-85ec-4b70-a5ea-c808d4c47faa', 1200, 1900),
(3780, 6, '2019-03-20 10:15:42', '2afc58f0-3585-4c5f-85c3-50568d485051', 1300, 1900),
(3781, 6, '2019-03-20 10:15:42', '56aa9be0-5f2b-4daa-9561-aa0cff39d2aa', 1400, 1900),
(3782, 6, '2019-03-20 10:15:42', '45afa4c0-d99c-4a9f-9efc-31c171cdf382', 1500, 1900),
(3783, 6, '2019-03-20 10:15:42', 'ae6e768e-a466-438f-a41b-8c6b350857af', 1600, 1900),
(3784, 6, '2019-03-20 10:15:42', 'f401cfd7-d72d-4acf-bb21-5d564a8c52e8', 1700, 1900),
(3785, 6, '2019-03-20 10:15:42', '6d502faa-6514-444b-b1f7-623a474fbf0c', 1800, 1900),
(3786, 6, '2019-03-20 10:15:42', '4af8cd81-6816-47e9-8b5b-30f516083b01', 1900, 1900),
(3787, 6, '2019-03-20 10:15:42', '9921cefd-80cd-489e-83f5-eb850aee7f1b', 2000, 1900),
(3788, 6, '2019-03-20 10:15:42', 'a1bab247-856e-4046-8498-b4d564ebdb22', 2100, 1900),
(3789, 6, '2019-03-20 10:15:42', '1bf514fc-281c-4a29-af01-b1a29a8d47bb', 2200, 1900),
(3790, 6, '2019-03-20 10:15:42', '875ed1fc-7109-4b07-906e-b4637d8120ee', 2300, 1900),
(3791, 6, '2019-03-20 10:15:42', '42cb3761-a029-4a9d-972c-f97ca8447156', 2400, 1900),
(3792, 6, '2019-03-20 10:15:42', '3a187228-90bd-4569-afca-fe6d862387cf', 2500, 1900),
(3793, 6, '2019-03-20 10:15:42', '5ba54f5c-f9d3-4af6-a445-eb47e70112ac', 2600, 1900),
(3794, 6, '2019-03-20 10:15:42', 'a2862d37-ca54-4475-abb4-33558642b370', 2700, 1900),
(3795, 6, '2019-03-20 10:15:42', '76309688-76e3-4d1f-8d02-a9f4473aa6b9', 2800, 1900),
(3796, 6, '2019-03-20 10:15:42', 'b368a4e4-b376-4ea2-a2b3-507ae0b574a0', 2900, 1900),
(3797, 6, '2019-03-20 10:15:42', 'e99eedb7-b505-42fc-afb5-4e491072ff92', 800, 2000),
(3798, 6, '2019-03-20 10:15:42', '5c9aa95a-7b68-4b2c-b974-333ce0a17382', 900, 2000),
(3799, 6, '2019-03-20 10:15:42', '41193c04-8471-406b-87b1-cd759a0e6434', 1000, 2000),
(3800, 6, '2019-03-20 10:15:42', '19aea817-c4e1-4a3a-ba76-92429346d8ec', 1100, 2000),
(3801, 6, '2019-03-20 10:15:42', '24b4855d-6a3b-466b-a150-185bda68bbe6', 1200, 2000),
(3802, 6, '2019-03-20 10:15:42', 'ec7d15f8-1cd2-4f81-8169-0b1172de0010', 1300, 2000),
(3803, 6, '2019-03-20 10:15:42', 'fe422dec-b8cf-46f1-b955-0556560916a4', 1400, 2000),
(3804, 6, '2019-03-20 10:15:42', '118dfe3b-d844-479d-943e-a75eb4887f56', 1500, 2000),
(3805, 6, '2019-03-20 10:15:42', 'f8ca799b-8e37-4740-bdbc-62c870c3a616', 1600, 2000),
(3806, 6, '2019-03-20 10:15:42', '1181d3fc-8e83-4a98-ae81-7cfa923c34ab', 1700, 2000),
(3807, 6, '2019-03-20 10:15:42', '87529db5-c8cd-45a6-98c3-05fd58bc4528', 1800, 2000),
(3808, 6, '2019-03-20 10:15:42', '33e16772-1944-487e-9705-1fcdc585ca16', 1900, 2000),
(3809, 6, '2019-03-20 10:15:42', 'bf2ad5df-2841-40a4-af0e-919d0b05c369', 2000, 2000),
(3810, 6, '2019-03-20 10:15:42', 'f43de70a-5413-4e98-b01c-4decbca6080d', 2100, 2000),
(3811, 6, '2019-03-20 10:15:42', 'b279e4f6-816c-4736-b85f-466fe0320636', 2200, 2000),
(3812, 6, '2019-03-20 10:15:42', 'e13a21e7-0da9-4bd5-a245-0312f3040db7', 2300, 2000),
(3813, 6, '2019-03-20 10:15:42', 'd21b108d-bd83-44fb-b7ab-9baa73860349', 2400, 2000),
(3814, 6, '2019-03-20 10:15:42', '7d661efc-7004-4591-837e-b0625e17cebf', 2500, 2000),
(3815, 6, '2019-03-20 10:15:42', '9f083a84-7660-489f-b8f2-3fed2dadbc83', 2600, 2000),
(3816, 6, '2019-03-20 10:15:42', '278512f2-f28e-4e4e-b70a-02a37d64048e', 2700, 2000),
(3817, 6, '2019-03-20 10:15:42', 'bb0e0740-e570-4c15-a7b6-d1ea057aa6aa', 2800, 2000),
(3818, 6, '2019-03-20 10:15:42', '8d6e49a1-dc2f-4c5f-915d-ea8e7ae19b71', 2900, 2000),
(3819, 6, '2019-03-20 10:15:42', '45dfa6ec-f2a5-44ad-9057-9f3685c688c6', 800, 2100),
(3820, 6, '2019-03-20 10:15:42', '441c378c-6c6b-431b-aaca-21ebaaa523cb', 900, 2100),
(3821, 6, '2019-03-20 10:15:42', 'f0f20fb0-cb1e-4f19-9e6b-0721a59d1a8b', 1000, 2100),
(3822, 6, '2019-03-20 10:15:42', '0d8a6970-486f-4677-a46f-25f164d5272f', 1100, 2100),
(3823, 6, '2019-03-20 10:15:42', 'f82c4428-f655-45bb-b7b1-dcca93250e19', 1200, 2100),
(3824, 6, '2019-03-20 10:15:42', '31a2d15b-3e31-4cdd-8ffe-a8b010d7a103', 1300, 2100),
(3825, 6, '2019-03-20 10:15:42', '76e29e03-94b6-4477-8b0b-335176539e31', 1400, 2100),
(3826, 6, '2019-03-20 10:15:42', '6687576f-ddf8-4d84-99c4-23964c178a36', 1500, 2100),
(3827, 6, '2019-03-20 10:15:42', 'ca7830d1-6d49-4a4c-b18d-a171b6d022c5', 1600, 2100),
(3828, 6, '2019-03-20 10:15:42', '7fc3dcc3-43d2-44db-959f-b624ffe0d3b2', 1700, 2100),
(3829, 6, '2019-03-20 10:15:42', 'b4f17736-6de5-45e2-b9e2-7204ca580b39', 1800, 2100),
(3830, 6, '2019-03-20 10:15:42', '9dba06e8-3468-4bf0-8601-222b489c8372', 1900, 2100),
(3831, 6, '2019-03-20 10:15:42', '3e3bac83-ca39-4ef7-83f9-a0a566c27266', 2000, 2100),
(3832, 6, '2019-03-20 10:15:42', 'a04e9408-6666-455b-aa5b-743ff62f87b8', 2100, 2100),
(3833, 6, '2019-03-20 10:15:42', 'ddc74da9-8b3f-4bc0-a749-422d67afb4a2', 2200, 2100),
(3834, 6, '2019-03-20 10:15:42', 'd23ed9a4-3076-416f-b6d5-f0f0f4805892', 2300, 2100),
(3835, 6, '2019-03-20 10:15:42', '01f13b9c-6df7-4498-b124-99c8c3433ce6', 2400, 2100),
(3836, 6, '2019-03-20 10:15:42', '55da9e66-341c-49d6-9ef4-1dbd50cbbaaa', 2500, 2100),
(3837, 6, '2019-03-20 10:15:42', '66def859-6d57-4df5-8014-58911d917d27', 2600, 2100),
(3838, 6, '2019-03-20 10:15:42', '26d8dec3-3c8c-48a5-9ae2-b3b93c61fad2', 2700, 2100),
(3839, 6, '2019-03-20 10:15:42', '29be788c-ae2e-4ff2-a210-660e38f7137d', 2800, 2100),
(3840, 6, '2019-03-20 10:15:42', '2e49a679-f0de-4432-bbe9-9d580c58518a', 2900, 2100),
(3841, 6, '2019-03-20 10:15:42', '7aec0e5f-e245-476b-a623-56152be6c32f', 800, 2200),
(3842, 6, '2019-03-20 10:15:42', '0376cfb3-321f-4b02-8838-f82312134d03', 900, 2200),
(3843, 6, '2019-03-20 10:15:42', 'e69f8392-277c-474b-8080-93c844ea575b', 1000, 2200),
(3844, 6, '2019-03-20 10:15:42', 'f13c076e-6cd7-4a03-ad55-2421879be3f3', 1100, 2200),
(3845, 6, '2019-03-20 10:15:42', '0a28bacc-b50e-48c1-a0b6-077b956dae68', 1200, 2200),
(3846, 6, '2019-03-20 10:15:42', '03401c7c-9a58-4f99-8fe4-b51bb7c544de', 1300, 2200),
(3847, 6, '2019-03-20 10:15:42', 'feba50d5-0df0-40e0-be1f-f0ef2cb1c5a2', 1400, 2200),
(3848, 6, '2019-03-20 10:15:42', '6988f7d1-be33-4e93-a6ff-3e6a42c031e0', 1500, 2200),
(3849, 6, '2019-03-20 10:15:42', '3c55d937-dde1-4992-aac5-59e1e1e6a8d2', 1600, 2200),
(3850, 6, '2019-03-20 10:15:42', '508ca654-c8fa-4d5a-ba5e-842c8ba1039e', 1700, 2200),
(3851, 6, '2019-03-20 10:15:42', '27dc4854-06b8-4afa-8efa-f1c2343cac58', 1800, 2200),
(3852, 6, '2019-03-20 10:15:42', '8a09cd7a-bafd-4771-9c4c-e796482141f1', 1900, 2200),
(3853, 6, '2019-03-20 10:15:42', '4b6553a5-434d-4f36-9db2-7e0a09aad104', 2000, 2200),
(3854, 6, '2019-03-20 10:15:42', '17603d8e-3b85-47e1-9665-3f4e3fc0178f', 2100, 2200),
(3855, 6, '2019-03-20 10:15:42', '43b984bf-6c83-4675-b44e-c368a8ffb617', 2200, 2200),
(3856, 6, '2019-03-20 10:15:42', '23ac689c-d040-40f9-a127-afa5304db344', 2300, 2200),
(3857, 6, '2019-03-20 10:15:42', '83e3a6ef-6637-4c24-94b6-3a103c034c4a', 2400, 2200),
(3858, 6, '2019-03-20 10:15:42', '67c7d719-599e-4ce6-8192-9ca5b674aa75', 2500, 2200),
(3859, 6, '2019-03-20 10:15:42', '02126433-ca7b-422f-8ed0-ba4500a4e0d0', 2600, 2200),
(3860, 6, '2019-03-20 10:15:42', '545c124f-5659-4481-83e6-8b6d65e54ee5', 2700, 2200),
(3861, 6, '2019-03-20 10:15:42', '2c051d76-c7fd-4877-a483-4930a40ebd18', 2800, 2200),
(3862, 6, '2019-03-20 10:15:42', 'a092016d-a523-41a5-a4c1-17195c73a4ea', 2900, 2200),
(3863, 6, '2019-03-20 10:15:42', 'c4fd35bd-d7b8-409a-9b4c-4973ec5b5cb5', 800, 2300),
(3864, 6, '2019-03-20 10:15:42', '18cfab69-3763-417a-9abf-40de8887dc8c', 900, 2300),
(3865, 6, '2019-03-20 10:15:42', 'a2985a27-ea17-4076-9f9a-3b38a0f08530', 1000, 2300),
(3866, 6, '2019-03-20 10:15:42', 'be2afdd2-0fc4-4859-9c9d-b2f6e1ced9c1', 1100, 2300),
(3867, 6, '2019-03-20 10:15:42', 'f72f8178-31e0-497d-9ea3-4b20b2f64311', 1200, 2300),
(3868, 6, '2019-03-20 10:15:42', '9b972807-1c80-492c-a45e-b1ca10eae393', 1300, 2300),
(3869, 6, '2019-03-20 10:15:42', '35631599-08a5-4432-bbcb-b1edbc8d8612', 1400, 2300),
(3870, 6, '2019-03-20 10:15:42', 'dcf3dc12-40d0-4dad-b860-71b331836693', 1500, 2300),
(3871, 6, '2019-03-20 10:15:42', '7d4ac9c6-07a5-4a1c-8d6c-6fd1c722b5b8', 1600, 2300),
(3872, 6, '2019-03-20 10:15:42', 'f538ff39-20c1-4ee8-b3e4-608d2a2823af', 1700, 2300),
(3873, 6, '2019-03-20 10:15:42', 'fa0c5fae-f24b-4dc3-ad82-b7873b3f6397', 1800, 2300),
(3874, 6, '2019-03-20 10:15:42', 'a97e9198-dfbd-41ee-8d7b-dccf9a507209', 1900, 2300),
(3875, 6, '2019-03-20 10:15:42', '7c193e9d-d701-4e38-b59d-ec55ac70a3e2', 2000, 2300),
(3876, 6, '2019-03-20 10:15:42', '578034d2-2166-4df9-b12d-b56287a57772', 2100, 2300),
(3877, 6, '2019-03-20 10:15:42', 'b8bdf6a7-b7d3-4410-938a-9fca3a06219d', 2200, 2300),
(3878, 6, '2019-03-20 10:15:42', '11152d7d-6206-4281-8c11-5668a77160a9', 2300, 2300),
(3879, 6, '2019-03-20 10:15:42', '8dc0c971-42d2-4835-a1c5-8184364558ea', 2400, 2300),
(3880, 6, '2019-03-20 10:15:42', '04db6817-878e-4fc0-9f75-46999866c97f', 2500, 2300),
(3881, 6, '2019-03-20 10:15:42', '91e6afc6-f88b-48fd-939a-3ca9c8df6261', 2600, 2300),
(3882, 6, '2019-03-20 10:15:42', 'd6a07472-48af-40c1-b87f-6b45ab93c845', 2700, 2300),
(3883, 6, '2019-03-20 10:15:42', '5add8e23-3e09-416e-9e80-a56977b9f745', 2800, 2300),
(3884, 6, '2019-03-20 10:15:42', '34b754ea-23bb-4458-99ad-cd9b6f8c3425', 2900, 2300),
(3885, 6, '2019-03-20 10:15:42', 'd442b4c3-3bea-42ca-a38a-a9c360f497b8', 800, 2400),
(3886, 6, '2019-03-20 10:15:42', '16162aa8-1113-4303-939d-f733ea274d23', 900, 2400),
(3887, 6, '2019-03-20 10:15:42', 'b47f25b9-436d-41c7-8d71-989bf1e27960', 1000, 2400),
(3888, 6, '2019-03-20 10:15:42', '117fc00b-3788-4ca7-a5fa-aee220ddefb3', 1100, 2400),
(3889, 6, '2019-03-20 10:15:42', 'd5235845-05a5-48c7-af86-40829ff40166', 1200, 2400),
(3890, 6, '2019-03-20 10:15:42', '20cc1233-c38d-4542-9797-aa1b095d9eb1', 1300, 2400),
(3891, 6, '2019-03-20 10:15:42', 'c45005ef-cf4f-4afe-8b9d-766d28293eab', 1400, 2400),
(3892, 6, '2019-03-20 10:15:42', '37382fc9-290d-4abd-b1fc-3e028360af0e', 1500, 2400),
(3893, 6, '2019-03-20 10:15:42', '68ab095c-fa54-4f30-b9ae-29a9bb64bca5', 1600, 2400),
(3894, 6, '2019-03-20 10:15:42', '2b729325-ac44-4bf8-bfd7-404dadd1acec', 1700, 2400),
(3895, 6, '2019-03-20 10:15:42', 'fa05a4fb-a8bf-4129-ae2b-57796a18bdcd', 1800, 2400),
(3896, 6, '2019-03-20 10:15:42', '1e0e09b3-9757-450c-9d79-791aff4b29a9', 1900, 2400),
(3897, 6, '2019-03-20 10:15:42', '67bd5242-12a8-4a31-a15c-cba85e059f32', 2000, 2400),
(3898, 6, '2019-03-20 10:15:42', 'c127e4bb-07c1-4875-b83f-2119dea5f9b8', 2100, 2400),
(3899, 6, '2019-03-20 10:15:42', '07fe1cc3-a278-4753-9e7f-a0298961c907', 2200, 2400),
(3900, 6, '2019-03-20 10:15:42', 'c41c464f-e3d3-4308-9143-9f0ab3e1f33b', 2300, 2400),
(3901, 6, '2019-03-20 10:15:42', 'd9ee2c96-8cda-4161-bdc6-a4698ad84d9f', 2400, 2400),
(3902, 6, '2019-03-20 10:15:42', '955da313-f219-407b-b53d-4d35216ae6f1', 2500, 2400),
(3903, 6, '2019-03-20 10:15:42', '4799fd67-8b48-4164-addd-e4a126274b4d', 2600, 2400),
(3904, 6, '2019-03-20 10:15:42', '257ccc3a-2c27-4e77-88a1-8e7bb59b9566', 2700, 2400),
(3905, 6, '2019-03-20 10:15:42', '0a801b1f-72f1-4683-9368-4b1526c69a1c', 2800, 2400),
(3906, 6, '2019-03-20 10:15:42', '4ebfab00-3e7c-4998-9eb8-eb2f05ba753d', 2900, 2400),
(3907, 6, '2019-03-20 10:15:42', '2b244523-75c4-4d96-8f8c-73c15c4042d5', 800, 2500),
(3908, 6, '2019-03-20 10:15:42', 'b7c19f5d-3953-468b-8bf2-535743d08cae', 900, 2500),
(3909, 6, '2019-03-20 10:15:42', '082157b6-5409-49eb-a29e-d4a64bca3e77', 1000, 2500),
(3910, 6, '2019-03-20 10:15:42', '0f049e6b-2085-4425-8971-4a1ebf00905e', 1100, 2500),
(3911, 6, '2019-03-20 10:15:42', 'b28d2f9e-7661-4fd9-8f91-4ef747834e21', 1200, 2500),
(3912, 6, '2019-03-20 10:15:42', '05756734-ca6f-4455-8a95-67fb4d42ed54', 1300, 2500),
(3913, 6, '2019-03-20 10:15:42', 'da85339e-3a13-49db-860e-8c58532e0daa', 1400, 2500),
(3914, 6, '2019-03-20 10:15:42', '587f2362-664e-463a-958a-f9d4a5429cec', 1500, 2500),
(3915, 6, '2019-03-20 10:15:42', '948ed5b9-4c05-41fa-ba73-e0c69818869d', 1600, 2500),
(3916, 6, '2019-03-20 10:15:42', '8f86390e-a71e-47e1-b920-afc7118f488c', 1700, 2500),
(3917, 6, '2019-03-20 10:15:42', '4a436558-06e6-4645-8872-7db0766fccd0', 1800, 2500),
(3918, 6, '2019-03-20 10:15:42', '890efdc8-ecf2-47e7-adb3-c6b343ffed8a', 1900, 2500),
(3919, 6, '2019-03-20 10:15:42', 'bc570952-98b8-43ab-b111-45c68a5f0bda', 2000, 2500),
(3920, 6, '2019-03-20 10:15:42', 'f32d76fd-3158-4672-85dd-b126f17efae1', 2100, 2500),
(3921, 6, '2019-03-20 10:15:42', 'b68d20f8-a9eb-46a1-b89d-8c82158cbb5e', 2200, 2500),
(3922, 6, '2019-03-20 10:15:42', '807c3de6-8e36-4997-bcae-194d38a3ed8a', 2300, 2500),
(3923, 6, '2019-03-20 10:15:42', '775af80f-6e71-4c4c-9be5-dfefcfaa369e', 2400, 2500),
(3924, 6, '2019-03-20 10:15:42', '0f5702df-55e8-4278-ba82-2de1d4e75c6b', 2500, 2500),
(3925, 6, '2019-03-20 10:15:42', '77a8cdc0-b964-4336-a8e3-f5842ac2541d', 2600, 2500),
(3926, 6, '2019-03-20 10:15:42', '1461a125-659b-46f8-ab96-0e400796a6d5', 2700, 2500),
(3927, 6, '2019-03-20 10:15:42', '964fa100-5428-44a4-96a6-2f8c23fa621b', 2800, 2500),
(3928, 6, '2019-03-20 10:15:42', '84c0fb92-0eac-4063-a6a9-e3a0e0a74496', 2900, 2500),
(3929, 6, '2019-03-20 10:15:42', '05cf59e4-a50f-466f-9acb-3388c92a9683', 800, 2600),
(3930, 6, '2019-03-20 10:15:42', '4a3cfe9d-6263-4d1d-a29a-8f48b8864c6b', 900, 2600),
(3931, 6, '2019-03-20 10:15:42', '6ca32edc-5d0b-4493-a1e5-fd32f91a3931', 1000, 2600),
(3932, 6, '2019-03-20 10:15:42', 'e649e420-2804-448b-bb80-b94ce05a6202', 1100, 2600),
(3933, 6, '2019-03-20 10:15:42', '567325e4-22bb-421f-ac50-fd49b5588765', 1200, 2600),
(3934, 6, '2019-03-20 10:15:42', '2db45dee-fdae-4de0-880c-138ab9c1e4d8', 1300, 2600),
(3935, 6, '2019-03-20 10:15:42', '77bb523b-2ff3-4bfa-9235-b07964706945', 1400, 2600),
(3936, 6, '2019-03-20 10:15:42', 'b51699d9-d29b-438f-83e5-cd81f27b44ad', 1500, 2600),
(3937, 6, '2019-03-20 10:15:42', '8661dbd9-d4db-4d61-a30f-a2476ba0a10e', 1600, 2600),
(3938, 6, '2019-03-20 10:15:42', 'c67af709-1072-407e-b244-93d38404b05e', 1700, 2600),
(3939, 6, '2019-03-20 10:15:42', 'cbb79750-7be3-4e80-9509-b77caa76fef8', 1800, 2600),
(3940, 6, '2019-03-20 10:15:42', '369667c3-3131-4015-a672-5981067430ae', 1900, 2600),
(3941, 6, '2019-03-20 10:15:42', 'e804eff9-cd4f-4462-958d-87b54a1de634', 2000, 2600),
(3942, 6, '2019-03-20 10:15:42', '93ba785c-de3c-4997-a8a1-690f34231510', 2100, 2600),
(3943, 6, '2019-03-20 10:15:42', 'd84bdba6-65a9-46f8-902f-6a4ae40c6c61', 2200, 2600),
(3944, 6, '2019-03-20 10:15:42', 'b1e50bba-0e1c-4657-88da-18c6d72aa8f5', 2300, 2600),
(3945, 6, '2019-03-20 10:15:42', '017134e2-f6ac-4b51-b0cf-1e8d6aee9190', 2400, 2600),
(3946, 6, '2019-03-20 10:15:42', '40e3ca40-d8e8-4bfa-b85c-c265fd56cb41', 2500, 2600),
(3947, 6, '2019-03-20 10:15:42', '327bb931-4824-4201-898d-7818c38e87ad', 2600, 2600),
(3948, 6, '2019-03-20 10:15:42', 'c879102c-3df2-4fdb-af9d-95418c9654ef', 2700, 2600),
(3949, 6, '2019-03-20 10:15:42', '6cfdcbba-f99a-4f05-ae78-391decd17305', 2800, 2600),
(3950, 6, '2019-03-20 10:15:42', 'dabaea34-fd91-4792-9100-d4c171688ff6', 2900, 2600),
(3951, 6, '2019-03-20 10:15:42', '7d8071dc-0d18-4008-8f22-79602d03b886', 800, 2700),
(3952, 6, '2019-03-20 10:15:42', '0a21ca58-226c-413f-a313-d992c7609bf1', 900, 2700),
(3953, 6, '2019-03-20 10:15:42', '011dc94a-9966-4f17-b9d8-a1325a667b12', 1000, 2700),
(3954, 6, '2019-03-20 10:15:42', '78d1a2e2-d534-43e4-b8e5-c4579d236863', 1100, 2700),
(3955, 6, '2019-03-20 10:15:42', '786e969e-a37f-4060-8942-744da334d4e2', 1200, 2700),
(3956, 6, '2019-03-20 10:15:42', 'acc19dfb-f4bb-47d5-8e32-de5ebb47bd00', 1300, 2700),
(3957, 6, '2019-03-20 10:15:42', '7303adac-f0cf-4e06-a2ed-659fb9b92e1e', 1400, 2700),
(3958, 6, '2019-03-20 10:15:42', 'fc639a51-a8f4-443b-8763-54cae73d1271', 1500, 2700),
(3959, 6, '2019-03-20 10:15:42', '10f6e56a-f21b-44a1-98d9-e1176ff12531', 1600, 2700),
(3960, 6, '2019-03-20 10:15:42', 'bd38d7bd-82b3-4659-9d4f-1f87c3c4602a', 1700, 2700),
(3961, 6, '2019-03-20 10:15:42', '882a790c-051f-4f44-9362-871b48c2907d', 1800, 2700),
(3962, 6, '2019-03-20 10:15:42', '6145155d-5d81-4143-a322-dd24672cc8d4', 1900, 2700),
(3963, 6, '2019-03-20 10:15:42', 'e186f2c2-9459-4ab9-b491-669ef68e029e', 2000, 2700),
(3964, 6, '2019-03-20 10:15:42', '7fa3718f-766b-4743-b8eb-8a6355a553d7', 2100, 2700),
(3965, 6, '2019-03-20 10:15:42', '39f1b722-113f-4803-abea-db36a34d8181', 2200, 2700),
(3966, 6, '2019-03-20 10:15:42', '906f88d9-0d64-4c88-adf2-a3a2cdb5d3fc', 2300, 2700),
(3967, 6, '2019-03-20 10:15:42', '4dcb2c31-e659-429b-985d-06544afc4b6e', 2400, 2700),
(3968, 6, '2019-03-20 10:15:42', '59af85bf-2b8b-44c3-b33f-8f4d677f38d0', 2500, 2700),
(3969, 6, '2019-03-20 10:15:42', '197cd1aa-bf0e-4a2c-8a51-a7b5a0450280', 2600, 2700),
(3970, 6, '2019-03-20 10:15:42', '74474fba-e68f-4aaa-8db7-a979d525f114', 2700, 2700),
(3971, 6, '2019-03-20 10:15:42', 'cd32a101-6734-45a5-b8fa-07fd078ced45', 2800, 2700),
(3972, 6, '2019-03-20 10:15:42', 'bf22b6ca-d078-4719-bf46-70aff307d616', 2900, 2700);

-- --------------------------------------------------------

--
-- Table structure for table `apto_price_matrix_element_to_apto_price`
--

DROP TABLE IF EXISTS `apto_price_matrix_element_to_apto_price`;
CREATE TABLE `apto_price_matrix_element_to_apto_price` (
  `price_matrix_element_surrogate_id` int(11) NOT NULL,
  `apto_price_surrogate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `apto_price_matrix_element_to_apto_price`
--

INSERT INTO `apto_price_matrix_element_to_apto_price` (`price_matrix_element_surrogate_id`, `apto_price_surrogate_id`) VALUES
(3445, 4977),
(3446, 4978),
(3447, 4979),
(3448, 4980),
(3449, 4981),
(3450, 4982),
(3451, 4983),
(3452, 4984),
(3453, 4985),
(3454, 4986),
(3455, 4987),
(3456, 4988),
(3457, 4989),
(3458, 4990),
(3459, 4991),
(3460, 4992),
(3461, 4993),
(3462, 4994),
(3463, 4995),
(3464, 4996),
(3465, 4997),
(3466, 4998),
(3467, 4999),
(3468, 5000),
(3469, 5001),
(3470, 5002),
(3471, 5003),
(3472, 5004),
(3473, 5005),
(3474, 5006),
(3475, 5007),
(3476, 5008),
(3477, 5009),
(3478, 5010),
(3479, 5011),
(3480, 5012),
(3481, 5013),
(3482, 5014),
(3483, 5015),
(3484, 5016),
(3485, 5017),
(3486, 5018),
(3487, 5019),
(3488, 5020),
(3489, 5021),
(3490, 5022),
(3491, 5023),
(3492, 5024),
(3493, 5025),
(3494, 5026),
(3495, 5027),
(3496, 5028),
(3497, 5029),
(3498, 5030),
(3499, 5031),
(3500, 5032),
(3501, 5033),
(3502, 5034),
(3503, 5035),
(3504, 5036),
(3505, 5037),
(3506, 5038),
(3507, 5039),
(3508, 5040),
(3509, 5041),
(3510, 5042),
(3511, 5043),
(3512, 5044),
(3513, 5045),
(3514, 5046),
(3515, 5047),
(3516, 5048),
(3517, 5049),
(3518, 5050),
(3519, 5051),
(3520, 5052),
(3521, 5053),
(3522, 5054),
(3523, 5055),
(3524, 5056),
(3525, 5057),
(3526, 5058),
(3527, 5059),
(3528, 5060),
(3529, 5061),
(3530, 5062),
(3531, 5063),
(3532, 5064),
(3533, 5065),
(3534, 5066),
(3535, 5067),
(3536, 5068),
(3537, 5069),
(3538, 5070),
(3539, 5071),
(3540, 5072),
(3541, 5073),
(3542, 5074),
(3543, 5075),
(3544, 5076),
(3545, 5077),
(3546, 5078),
(3547, 5079),
(3548, 5080),
(3549, 5081),
(3550, 5082),
(3551, 5083),
(3552, 5084),
(3553, 5085),
(3554, 5086),
(3555, 5087),
(3556, 5088),
(3557, 5089),
(3558, 5090),
(3559, 5091),
(3560, 5092),
(3561, 5093),
(3562, 5094),
(3563, 5095),
(3564, 5096),
(3565, 5097),
(3566, 5098),
(3567, 5099),
(3568, 5100),
(3569, 5101),
(3570, 5102),
(3571, 5103),
(3572, 5104),
(3573, 5105),
(3574, 5106),
(3575, 5107),
(3576, 5108),
(3577, 5109),
(3578, 5110),
(3579, 5111),
(3580, 5112),
(3581, 5113),
(3582, 5114),
(3583, 5115),
(3584, 5116),
(3585, 5117),
(3586, 5118),
(3587, 5119),
(3588, 5120),
(3589, 5121),
(3590, 5122),
(3591, 5123),
(3592, 5124),
(3593, 5125),
(3594, 5126),
(3595, 5127),
(3596, 5128),
(3597, 5129),
(3598, 5130),
(3599, 5131),
(3600, 5132),
(3601, 5133),
(3602, 5134),
(3603, 5135),
(3604, 5136),
(3605, 5137),
(3606, 5138),
(3607, 5139),
(3608, 5140),
(3609, 5141),
(3610, 5142),
(3611, 5143),
(3612, 5144),
(3613, 5145),
(3614, 5146),
(3615, 5147),
(3616, 5148),
(3617, 5149),
(3618, 5150),
(3619, 5151),
(3620, 5152),
(3621, 5153),
(3622, 5154),
(3623, 5155),
(3624, 5156),
(3625, 5157),
(3626, 5158),
(3627, 5159),
(3628, 5160),
(3629, 5161),
(3630, 5162),
(3631, 5163),
(3632, 5164),
(3633, 5165),
(3634, 5166),
(3635, 5167),
(3636, 5168),
(3637, 5169),
(3638, 5170),
(3639, 5171),
(3640, 5172),
(3641, 5173),
(3642, 5174),
(3643, 5175),
(3644, 5176),
(3645, 5177),
(3646, 5178),
(3647, 5179),
(3648, 5180),
(3649, 5181),
(3650, 5182),
(3651, 5183),
(3652, 5184),
(3653, 5185),
(3654, 5186),
(3655, 5187),
(3656, 5188),
(3657, 5189),
(3658, 5190),
(3659, 5191),
(3660, 5192),
(3661, 5193),
(3662, 5194),
(3663, 5195),
(3664, 5196),
(3665, 5197),
(3666, 5198),
(3667, 5199),
(3668, 5200),
(3669, 5201),
(3670, 5202),
(3671, 5203),
(3672, 5204),
(3673, 5205),
(3674, 5206),
(3675, 5207),
(3676, 5208),
(3677, 5209),
(3678, 5210),
(3679, 5211),
(3680, 5212),
(3681, 5213),
(3682, 5214),
(3683, 5215),
(3684, 5216),
(3685, 5217),
(3686, 5218),
(3687, 5219),
(3688, 5220),
(3689, 5221),
(3690, 5222),
(3691, 5223),
(3692, 5224),
(3693, 5225),
(3694, 5226),
(3695, 5227),
(3696, 5228),
(3697, 5229),
(3698, 5230),
(3699, 5231),
(3700, 5232),
(3701, 5233),
(3702, 5234),
(3703, 5235),
(3704, 5236),
(3705, 5237),
(3706, 5238),
(3707, 5239),
(3708, 5240),
(3709, 5241),
(3710, 5242),
(3711, 5243),
(3712, 5244),
(3713, 5245),
(3714, 5246),
(3715, 5247),
(3716, 5248),
(3717, 5249),
(3718, 5250),
(3719, 5251),
(3720, 5252),
(3721, 5253),
(3722, 5254),
(3723, 5255),
(3724, 5256),
(3725, 5257),
(3726, 5258),
(3727, 5259),
(3728, 5260),
(3729, 5261),
(3730, 5262),
(3731, 5263),
(3732, 5264),
(3733, 5265),
(3734, 5266),
(3735, 5267),
(3736, 5268),
(3737, 5269),
(3738, 5270),
(3739, 5271),
(3740, 5272),
(3741, 5273),
(3742, 5274),
(3743, 5275),
(3744, 5276),
(3745, 5277),
(3746, 5278),
(3747, 5279),
(3748, 5280),
(3749, 5281),
(3750, 5282),
(3751, 5283),
(3752, 5284),
(3753, 5285),
(3754, 5286),
(3755, 5287),
(3756, 5288),
(3757, 5289),
(3758, 5290),
(3759, 5291),
(3760, 5292),
(3761, 5293),
(3762, 5294),
(3763, 5295),
(3764, 5296),
(3765, 5297),
(3766, 5298),
(3767, 5299),
(3768, 5300),
(3769, 5301),
(3770, 5302),
(3771, 5303),
(3772, 5304),
(3773, 5305),
(3774, 5306),
(3775, 5307),
(3776, 5308),
(3777, 5309),
(3778, 5310),
(3779, 5311),
(3780, 5312),
(3781, 5313),
(3782, 5314),
(3783, 5315),
(3784, 5316),
(3785, 5317),
(3786, 5318),
(3787, 5319),
(3788, 5320),
(3789, 5321),
(3790, 5322),
(3791, 5323),
(3792, 5324),
(3793, 5325),
(3794, 5326),
(3795, 5327),
(3796, 5328),
(3797, 5329),
(3798, 5330),
(3799, 5331),
(3800, 5332),
(3801, 5333),
(3802, 5334),
(3803, 5335),
(3804, 5336),
(3805, 5337),
(3806, 5338),
(3807, 5339),
(3808, 5340),
(3809, 5341),
(3810, 5342),
(3811, 5343),
(3812, 5344),
(3813, 5345),
(3814, 5346),
(3815, 5347),
(3816, 5348),
(3817, 5349),
(3818, 5350),
(3819, 5351),
(3820, 5352),
(3821, 5353),
(3822, 5354),
(3823, 5355),
(3824, 5356),
(3825, 5357),
(3826, 5358),
(3827, 5359),
(3828, 5360),
(3829, 5361),
(3830, 5362),
(3831, 5363),
(3832, 5364),
(3833, 5365),
(3834, 5366),
(3835, 5367),
(3836, 5368),
(3837, 5369),
(3838, 5370),
(3839, 5371),
(3840, 5372),
(3841, 5373),
(3842, 5374),
(3843, 5375),
(3844, 5376),
(3845, 5377),
(3846, 5378),
(3847, 5379),
(3848, 5380),
(3849, 5381),
(3850, 5382),
(3851, 5383),
(3852, 5384),
(3853, 5385),
(3854, 5386),
(3855, 5387),
(3856, 5388),
(3857, 5389),
(3858, 5390),
(3859, 5391),
(3860, 5392),
(3861, 5393),
(3862, 5394),
(3863, 5395),
(3864, 5396),
(3865, 5397),
(3866, 5398),
(3867, 5399),
(3868, 5400),
(3869, 5401),
(3870, 5402),
(3871, 5403),
(3872, 5404),
(3873, 5405),
(3874, 5406),
(3875, 5407),
(3876, 5408),
(3877, 5409),
(3878, 5410),
(3879, 5411),
(3880, 5412),
(3881, 5413),
(3882, 5414),
(3883, 5415),
(3884, 5416),
(3885, 5417),
(3886, 5418),
(3887, 5419),
(3888, 5420),
(3889, 5421),
(3890, 5422),
(3891, 5423),
(3892, 5424),
(3893, 5425),
(3894, 5426),
(3895, 5427),
(3896, 5428),
(3897, 5429),
(3898, 5430),
(3899, 5431),
(3900, 5432),
(3901, 5433),
(3902, 5434),
(3903, 5435),
(3904, 5436),
(3905, 5437),
(3906, 5438),
(3907, 5439),
(3908, 5440),
(3909, 5441),
(3910, 5442),
(3911, 5443),
(3912, 5444),
(3913, 5445),
(3914, 5446),
(3915, 5447),
(3916, 5448),
(3917, 5449),
(3918, 5450),
(3919, 5451),
(3920, 5452),
(3921, 5453),
(3922, 5454),
(3923, 5455),
(3924, 5456),
(3925, 5457),
(3926, 5458),
(3927, 5459),
(3928, 5460),
(3929, 5461),
(3930, 5462),
(3931, 5463),
(3932, 5464),
(3933, 5465),
(3934, 5466),
(3935, 5467),
(3936, 5468),
(3937, 5469),
(3938, 5470),
(3939, 5471),
(3940, 5472),
(3941, 5473),
(3942, 5474),
(3943, 5475),
(3944, 5476),
(3945, 5477),
(3946, 5478),
(3947, 5479),
(3948, 5480),
(3949, 5481),
(3950, 5482),
(3951, 5483),
(3952, 5484),
(3953, 5485),
(3954, 5486),
(3955, 5487),
(3956, 5488),
(3957, 5489),
(3958, 5490),
(3959, 5491),
(3960, 5492),
(3961, 5493),
(3962, 5494),
(3963, 5495),
(3964, 5496),
(3965, 5497),
(3966, 5498),
(3967, 5499),
(3968, 5500),
(3969, 5501),
(3970, 5502),
(3971, 5503),
(3972, 5504);

-- --------------------------------------------------------

--
-- Table structure for table `apto_price_matrix_element_to_custom_property`
--

DROP TABLE IF EXISTS `apto_price_matrix_element_to_custom_property`;
CREATE TABLE `apto_price_matrix_element_to_custom_property` (
  `price_matrix_element_surrogate_id` int(11) NOT NULL,
  `custom_property_surrogate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_product`
--

DROP TABLE IF EXISTS `apto_product`;
CREATE TABLE `apto_product` (
  `surrogate_id` int(11) NOT NULL,
  `name` longtext DEFAULT NULL COMMENT '(DC2Type:AptoPropertyTranslatedValue)',
  `description` longtext DEFAULT NULL COMMENT '(DC2Type:AptoPropertyTranslatedValue)',
  `created` datetime NOT NULL,
  `id` char(36) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `use_step_by_step` tinyint(1) NOT NULL,
  `article_number` varchar(255) DEFAULT NULL,
  `meta_title` longtext DEFAULT NULL COMMENT '(DC2Type:AptoPropertyTranslatedValue)',
  `meta_description` longtext DEFAULT NULL COMMENT '(DC2Type:AptoPropertyTranslatedValue)',
  `stock` int(11) NOT NULL,
  `weight` double NOT NULL,
  `identifier_value` varchar(255) NOT NULL,
  `tax_rate` double NOT NULL,
  `seo_url` varchar(255) DEFAULT NULL,
  `price_calculator_id` varchar(255) NOT NULL DEFAULT '',
  `delivery_time` varchar(255) NOT NULL,
  `max_purchase` int(11) NOT NULL DEFAULT 0,
  `preview_image_id` int(11) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `min_purchase` int(11) NOT NULL DEFAULT 0,
  `keep_section_order` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `apto_product`
--

INSERT INTO `apto_product` (`surrogate_id`, `name`, `description`, `created`, `id`, `active`, `hidden`, `use_step_by_step`, `article_number`, `meta_title`, `meta_description`, `stock`, `weight`, `identifier_value`, `tax_rate`, `seo_url`, `price_calculator_id`, `delivery_time`, `max_purchase`, `preview_image_id`, `position`, `min_purchase`, `keep_section_order`) VALUES
(48, '{\"de_DE\":\"Fenster Step by Step\"}', '{\"de_DE\":\"\"}', '2018-01-17 13:48:25', '55761379-980a-4141-a2df-932ecb88b311', 1, 0, 1, NULL, '{\"de_DE\":\"Fenster Konfigurator Demo - confirado.de\"}', '{\"de_DE\":\"\"}', 0, 0, 'fenster', 19, 'fenster-step-by-step', 'Apto\\Catalog\\Application\\Core\\Service\\PriceCalculator\\SimplePriceCalculator', '25', 0, NULL, 0, 0, 1),
(88, '{\"de_DE\":\"Fenster One Page\"}', '{\"de_DE\":\"\"}', '2020-09-15 20:40:22', 'fe65066c-41b9-46da-a500-044777a1d4b5', 1, 0, 0, NULL, '{\"de_DE\":\"Fenster Konfigurator Demo - confirado.de\"}', '{\"de_DE\":\"\"}', 0, 0, 'fenster-one-page', 19, 'fenster-one-page', 'Apto\\Catalog\\Application\\Core\\Service\\PriceCalculator\\SimplePriceCalculator', '25', 0, NULL, 0, 0, 1),
(90, '{\"de_DE\":\"Tasse\"}', '[]', '2021-11-15 09:31:46', '2ee39a39-11fe-4d26-b2fe-b4c372df53dd', 1, 0, 0, NULL, '{\"de_DE\":\"Tasse Demo Konfigurator - confirado.de\"}', '[]', 0, 0, 'tasse', 0, 'tasse', 'Apto\\Catalog\\Application\\Core\\Service\\PriceCalculator\\SimplePriceCalculator', '', 0, NULL, 40, 0, 1),
(91, '{\"de_DE\":\"Haus-Konfigurator\"}', '[]', '2021-11-15 10:18:41', '88aab207-120b-46de-b51a-40c580e95553', 1, 0, 1, NULL, '{\"de_DE\":\"Haus Konfigurator Demo - confirado.de\"}', '[]', 0, 0, 'haus', 0, 'haus', 'Apto\\Catalog\\Application\\Core\\Service\\PriceCalculator\\SimplePriceCalculator', '', 0, NULL, 50, 0, 1),
(92, '{\"de_DE\":\"Pick-Up\"}', '[]', '2021-11-15 11:32:46', '57563798-0bf6-48d1-a86c-ddc82ad2390c', 1, 0, 0, NULL, '{\"de_DE\":\"PickUp Konfigurator Demo - confirado.de\"}', '[]', 0, 0, 'pickup', 0, 'pick-up', 'Apto\\Catalog\\Application\\Core\\Service\\PriceCalculator\\SimplePriceCalculator', '', 0, NULL, 60, 0, 1),
(93, '{\"de_DE\":\"Garagentor\"}', '[]', '2021-11-15 13:38:08', '3c6c5e2f-7759-42fc-a4c3-4edd1ddb39af', 1, 0, 1, NULL, '{\"de_DE\":\"Garagentor Konfigurator Demo - confirado.de\"}', '[]', 0, 0, 'garagentor', 19, 'garagentor', 'Apto\\Catalog\\Application\\Core\\Service\\PriceCalculator\\SimplePriceCalculator', '', 0, NULL, 70, 0, 1),
(94, '{\"de_DE\":\"Schuh\"}', '[]', '2021-11-15 14:31:21', 'b2d12f15-a2d4-4c0f-bb20-ad82b392f872', 1, 0, 0, NULL, '{\"de_DE\":\"Schuh Konfigurator Demo - confirado.de\"}', '[]', 0, 0, 'schuh', 19, '3402d885-d666-422d-8f86-52f70741111e', 'Apto\\Catalog\\Application\\Core\\Service\\PriceCalculator\\SimplePriceCalculator', '', 0, NULL, 80, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `apto_product_attachment`
--

DROP TABLE IF EXISTS `apto_product_attachment`;
CREATE TABLE `apto_product_attachment` (
  `surrogate_id` int(11) NOT NULL,
  `media_file_id` int(11) DEFAULT NULL,
  `element_id` int(11) DEFAULT NULL,
  `name` longtext DEFAULT NULL COMMENT '(DC2Type:AptoPropertyTranslatedValue)',
  `created` datetime NOT NULL,
  `id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_product_computed_product_value`
--

DROP TABLE IF EXISTS `apto_product_computed_product_value`;
CREATE TABLE `apto_product_computed_product_value` (
  `surrogate_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `formula` longtext NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_product_computed_product_value_alias`
--

DROP TABLE IF EXISTS `apto_product_computed_product_value_alias`;
CREATE TABLE `apto_product_computed_product_value_alias` (
  `surrogate_id` int(11) NOT NULL,
  `computed_product_value_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `property` varchar(255) NOT NULL,
  `section_id` varchar(255) NOT NULL,
  `element_id` varchar(255) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `is_cp` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_product_domain_properties`
--

DROP TABLE IF EXISTS `apto_product_domain_properties`;
CREATE TABLE `apto_product_domain_properties` (
  `surrogate_id` int(11) NOT NULL,
  `preview_image_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price_modifier` double NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_product_element`
--

DROP TABLE IF EXISTS `apto_product_element`;
CREATE TABLE `apto_product_element` (
  `surrogate_id` int(11) NOT NULL,
  `name` longtext DEFAULT NULL COMMENT '(DC2Type:AptoPropertyTranslatedValue)',
  `created` datetime NOT NULL,
  `section_id` int(11) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `identifier_value` varchar(255) NOT NULL,
  `definition` longtext DEFAULT NULL COMMENT '(DC2Type:AptoPropertyJsonSerializable)',
  `error_message` longtext DEFAULT NULL COMMENT '(DC2Type:AptoPropertyTranslatedValue)',
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `preview_image_id` int(11) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `percentage_surcharge` double NOT NULL DEFAULT 0,
  `description` longtext DEFAULT NULL COMMENT '(DC2Type:AptoPropertyTranslatedValue)',
  `is_mandatory` tinyint(1) NOT NULL DEFAULT 0,
  `is_zoomable` tinyint(1) NOT NULL DEFAULT 0,
  `extended_price_calculation_active` tinyint(1) NOT NULL DEFAULT 0,
  `extended_price_calculation_formula` longtext NOT NULL,
  `price_matrix_id` int(11) DEFAULT NULL,
  `price_matrix_active` tinyint(1) NOT NULL DEFAULT 0,
  `price_matrix_row` longtext NOT NULL,
  `price_matrix_column` longtext NOT NULL,
  `is_not_available` tinyint(1) NOT NULL DEFAULT 0,
  `open_links_in_dialog` tinyint(1) NOT NULL DEFAULT 0,
  `zoom_function` varchar(255) NOT NULL DEFAULT 'deactivated'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `apto_product_element`
--

INSERT INTO `apto_product_element` (`surrogate_id`, `name`, `created`, `section_id`, `id`, `identifier_value`, `definition`, `error_message`, `is_default`, `is_active`, `preview_image_id`, `position`, `percentage_surcharge`, `description`, `is_mandatory`, `is_zoomable`, `extended_price_calculation_active`, `extended_price_calculation_formula`, `price_matrix_id`, `price_matrix_active`, `price_matrix_row`, `price_matrix_column`, `is_not_available`, `open_links_in_dialog`, `zoom_function`) VALUES
(257, '{\"de_DE\":\"mit Rollokasten\"}', '2018-01-17 14:10:02', 92, '1c796d4a-dfa9-4474-ac67-9fce4818e7da', 'mit-rollokasten', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 940, 0, 0, '{\"de_DE\":\"Ein Rollokasten soll mit angebracht werden.\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(258, '{\"de_DE\":\"ohne Rollokasten\"}', '2018-01-17 14:10:11', 92, '2273ce2a-2c16-4455-81c2-8e37283b1843', 'ohne-rollokasten', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 922, 0, 0, '{\"de_DE\":\"Ein Rollokasten ist bereits vorhanden \\/ Es soll kein Rollokasten montiert werden\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(263, '{\"de_DE\":\"Wei\\u00df\"}', '2018-01-17 14:28:08', 93, '56298c5c-eb0c-48a7-9f69-a61014ea3c91', 'weiss', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 0, 923, 1, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(267, '{\"de_DE\":\"RC1 N\"}', '2018-01-17 14:41:45', 94, '698cf94c-5010-4aa8-93da-8cab5d4400ea', 'rc1-n', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 947, 0, 0, '{\"de_DE\":\"Einbruchhemmung nach RC1 N\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(268, '{\"de_DE\":\"RC2\"}', '2018-01-17 14:41:59', 94, 'a7fd8430-fde1-462a-8227-21d5fa9e6edf', 'rc2', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 948, 0, 0, '{\"de_DE\":\"Einbruchhemmung nach RC2\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(269, '{\"de_DE\":\"Ug 1,1 \\t2-fach Verglasung\"}', '2018-01-17 14:56:05', 95, '3618f577-6bb5-4212-b0f8-8f743e5ac984', 'ug-11-2-fach-verglasung', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 949, 0, 0, '{\"de_DE\":\"\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(270, '{\"de_DE\":\"Ug 1,0\\t2-fach Verglasung\"}', '2018-01-17 14:56:10', 95, 'f1ed1172-45a9-4ec9-8d1c-8a560a3b9295', 'ug-10-2-fach-verglasung', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 950, 0, 0, '{\"de_DE\":\"\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(271, '{\"de_DE\":\"Ug 0,7\\t3-fach Verglasung\"}', '2018-01-17 14:56:13', 95, '309f96c8-debe-40fc-90a1-865459434ae2', 'ug-07-3-fach-verglasung', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 951, 0, 0, '{\"de_DE\":\"\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(272, '{\"de_DE\":\"Ug 0,6\\t3-fach Verglasung\"}', '2018-01-17 14:56:17', 95, '3e816ae2-13cf-49ff-9664-54bc1ebb5c8f', 'ug-06-3-fach-verglasung', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 952, 0, 0, '{\"de_DE\":\"\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(273, '{\"de_DE\":\"Schallschutzklasse 1\"}', '2018-01-17 15:03:15', 96, '8c5dab1a-4fda-45f4-ac48-67320b72bffa', 'schallklasse-1', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 953, 0, 0, '{\"de_DE\":\"32 dB\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(274, '{\"de_DE\":\"Schallschutzklasse 2\"}', '2018-01-17 15:03:18', 96, 'cd6eba99-346f-4ca1-9960-bd27cc400e27', 'schallklasse-2', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 954, 0, 0, '{\"de_DE\":\"36 dB\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(275, '{\"de_DE\":\"Schallschutzklasse 3\"}', '2018-01-17 15:03:21', 96, '1f9ddcc5-3422-4023-bff4-00a1000a0a95', 'schallklasse-3', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '{\"de_DE\":\"\"}', 0, 1, 955, 0, 0, '{\"de_DE\":\"38 dB\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(277, '{\"de_DE\":\"mit Gurt\"}', '2018-01-17 15:04:14', 97, 'a388aca6-30b8-49ea-bad6-37566a16b07f', 'mit-gurt', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 957, 0, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(278, '{\"de_DE\":\"mit Motor\"}', '2018-01-17 15:04:17', 97, '4820d536-53f4-4f83-814d-d89349030d6f', 'mit-motor', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 958, 0, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(298, '{\"de_DE\":\"Ma\\u00dfe\"}', '2018-01-26 16:20:37', 98, 'ada1fd18-2b5c-4711-bf45-20db2a2471a9', 'width-height-element', '{\"class\":\"Apto\\\\Plugins\\\\WidthHeightElement\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\WidthHeightElementDefinition\",\"json\":{\"width\":{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\ElementValueCollection\",\"json\":{\"collection\":[{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\ElementRangeValue\",\"json\":{\"minimum\":850,\"maximum\":2865,\"step\":1}}]}},\"height\":{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\ElementValueCollection\",\"json\":{\"collection\":[{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\ElementRangeValue\",\"json\":{\"minimum\":455,\"maximum\":2680,\"step\":1}}]}},\"priceMatrixId\":\"cdbc8796-febd-497c-acc0-03673484ef3e\",\"prefixWidth\":{\"de_DE\":\"Breite\"},\"prefixHeight\":{\"de_DE\":\"H\\u00f6he\"},\"suffixWidth\":{\"de_DE\":\"mm\"},\"suffixHeight\":{\"de_DE\":\"mm\"},\"renderingWidth\":\"input\",\"renderingHeight\":\"input\",\"defaultWidth\":null,\"defaultHeight\":null,\"renderDialogInOnePageDesktop\":true}}', '[]', 0, 1, 922, 0, 10, '{\"de_DE\":\"\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(709, '{\"de_DE\":\"Wei\\u00df\"}', '2019-03-19 14:53:03', 91, '25fdb6a0-36e8-4637-8d6d-1f96cae6bed7', 'weiss', '{\"class\":\"Apto\\\\Plugins\\\\PricePerUnitElement\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\PricePerUnitElementDefinition\",\"json\":{\"sectionId\":null,\"elementId\":null,\"selectableValue\":null,\"selectableValueType\":null,\"conversionFactor\":\"0.001\",\"minOne\":false,\"textBoxEnabled\":false,\"textBoxPrefix\":[],\"textBoxSuffix\":[],\"livePricePrefix\":{\"de_DE\":\"\"},\"livePriceSuffix\":[],\"text\":{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\ElementValueCollection\",\"json\":{\"collection\":[{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\ElementTextValue\",\"json\":{\"minLength\":0,\"maxLength\":0}}]}},\"elementValueRefs\":[{\"sectionId\":\"3cbf6e24-4516-4407-872d-1ff8c3f63005\",\"elementId\":\"ada1fd18-2b5c-4711-bf45-20db2a2471a9\",\"selectableValue\":\"perimeter\",\"selectableValueType\":\"Computable\"}]}}', '[]', 0, 1, 923, 0, 0, '{\"de_DE\":\"<p><strong>PricePerUnit Element<\\/strong><\\/p><p>12 \\u20ac pro lfm auf den Umfang<\\/p>\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(710, '{\"de_DE\":\"Hellgrau\"}', '2019-03-19 14:53:10', 91, 'd0eb303f-5cfc-4a68-8518-771915dc21ac', 'hellgrau', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 926, 1, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(711, '{\"de_DE\":\"Dunkelgrau\"}', '2019-03-19 14:53:14', 91, '59c3d714-26bb-42b0-911e-36d1a7f87092', 'dunkelgrau', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 928, 2, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(712, '{\"de_DE\":\"Hellblau\"}', '2019-03-19 14:53:17', 91, 'd4c6d462-0d05-4c58-a682-7a8a39b0b476', 'helblau', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 930, 3, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(713, '{\"de_DE\":\"Dunkelblau\"}', '2019-03-19 14:53:22', 91, '4714480b-9115-4a67-bd95-8f06f8f0a3a0', 'dunkelblau', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 932, 4, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(714, '{\"de_DE\":\"Gelb\"}', '2019-03-19 14:53:25', 91, 'ac38575c-af30-40ff-b978-6e4d303f2a04', 'gelb', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 934, 5, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(715, '{\"de_DE\":\"Schwarz\"}', '2019-03-19 14:53:30', 91, 'd25651b6-6bfb-4114-8141-9cf9f546e943', 'schwarz', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 938, 8, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(716, '{\"de_DE\":\"Rot\"}', '2019-03-19 14:53:33', 91, '429ebf6c-f981-451b-900c-fb5341bf093c', 'rot', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 936, 6, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(717, '{\"de_DE\":\"Hellgrau\"}', '2019-03-19 16:02:09', 93, '832ce09f-c471-47a1-be72-44bf8f916f92', 'grau', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 0, 926, 10, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(718, '{\"de_DE\":\"Dunkelgrau\"}', '2019-03-19 16:02:15', 93, '1c923096-71db-47dd-855d-2f38e2f54092', 'dunkelgrau', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 0, 928, 20, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(719, '{\"de_DE\":\"Blau\"}', '2019-03-19 16:02:43', 93, '028012ea-dea3-4a65-bb73-a7944641542b', 'blau', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 0, 932, 40, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(720, '{\"de_DE\":\"Braun\"}', '2019-03-20 08:11:36', 93, 'dc04ad67-4a06-419a-8515-8b16707917f6', 'braun', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 0, 943, 30, 0, '{\"de_DE\":\"\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(880, '{\"de_DE\":\"Wei\\u00df\"}', '2020-09-15 20:40:22', 308, 'ee81ab8f-2433-490a-99a1-80d7399db85d', 'weiss', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 1, 1, 923, 0, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(881, '{\"de_DE\":\"Hellgrau\"}', '2020-09-15 20:40:22', 308, 'ceda70c5-22c7-4433-b1cb-fb9af07fe7e3', 'hellgrau', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 926, 1, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(882, '{\"de_DE\":\"Dunkelgrau\"}', '2020-09-15 20:40:22', 308, '3b6e2c57-0430-4b1f-9775-98d0b562a4da', 'dunkelgrau', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 928, 2, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(883, '{\"de_DE\":\"Hellblau\"}', '2020-09-15 20:40:22', 308, 'de2d6ba5-9b5a-491e-9fb2-e6a93eb1c12c', 'helblau', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 930, 3, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(884, '{\"de_DE\":\"Dunkelblau\"}', '2020-09-15 20:40:22', 308, 'c597f734-9a73-485c-a5a6-ac63ac38c0ef', 'dunkelblau', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 932, 4, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(885, '{\"de_DE\":\"Gelb\"}', '2020-09-15 20:40:22', 308, '0f39d348-75db-4e68-8d29-78c8a4dc23c3', 'gelb', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 934, 5, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(886, '{\"de_DE\":\"Schwarz\"}', '2020-09-15 20:40:22', 308, 'e3b63cb9-de73-43ab-bcc8-76f4d1102573', 'schwarz', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 938, 8, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(887, '{\"de_DE\":\"Rot\"}', '2020-09-15 20:40:22', 308, 'addab45f-014f-4e1a-9406-73c33b7ca58e', 'rot', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 936, 6, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(888, '{\"de_DE\":\"mit Rollokasten\"}', '2020-09-15 20:40:22', 309, '5b887fc3-c768-4839-97b7-fbc770b1dd02', 'mit-rollokasten', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 940, 0, 0, '{\"de_DE\":\"Ein Rollokasten soll mit angebracht werden.\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(889, '{\"de_DE\":\"ohne Rollokasten\"}', '2020-09-15 20:40:22', 309, '1b25044f-dca8-4417-a060-b8242f733d87', 'ohne-rollokasten', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 922, 0, 0, '{\"de_DE\":\"Ein Rollokasten ist bereits vorhanden \\/ Es soll kein Rollokasten montiert werden\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(890, '{\"de_DE\":\"Wei\\u00df\"}', '2020-09-15 20:40:22', 310, '7d4cbc8d-3f40-42b6-99cc-1c42b9aedba4', 'weiss', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 1, 1, 923, 0, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(891, '{\"de_DE\":\"Hellgrau\"}', '2020-09-15 20:40:22', 310, 'ae0991c1-c2ce-4336-aeff-615a32eafaaf', 'grau', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 926, 1, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(892, '{\"de_DE\":\"Dunkelgrau\"}', '2020-09-15 20:40:22', 310, '12568529-9e3e-42b1-8f83-21cb9f95034f', 'dunkelgrau', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 928, 2, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(893, '{\"de_DE\":\"Blau\"}', '2020-09-15 20:40:22', 310, '8803abe9-c4ce-49aa-80fb-5af8e1561f49', 'blau', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 932, 4, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(894, '{\"de_DE\":\"Braun\"}', '2020-09-15 20:40:22', 310, 'db726551-ed2e-4a0f-a80b-68e76b4b4e72', 'braun', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 943, 3, 0, '{\"de_DE\":\"\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(895, '{\"de_DE\":\"RC1 N\"}', '2020-09-15 20:40:22', 311, '7e33dd6a-0cbc-43cb-ac06-0621df6a65d8', 'rc1-n', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 1, 1, 947, 0, 0, '{\"de_DE\":\"Einbruchhemmung nach RC1 N\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(896, '{\"de_DE\":\"RC2\"}', '2020-09-15 20:40:22', 311, '4abac942-9b2e-46c3-a62b-ce3050439520', 'rc2', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 948, 0, 0, '{\"de_DE\":\"Einbruchhemmung nach RC2\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(897, '{\"de_DE\":\"Ug 1,1 \\t2-fach Verglasung\"}', '2020-09-15 20:40:22', 312, '3d466845-276f-4f1c-8908-f1d63aa887b4', 'ug-11-2-fach-verglasung', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 1, 1, 949, 0, 0, '{\"de_DE\":\"\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(898, '{\"de_DE\":\"Ug 1,0\\t2-fach Verglasung\"}', '2020-09-15 20:40:22', 312, 'c28d26ed-1376-4b18-a6fd-4c2655abd176', 'ug-10-2-fach-verglasung', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 950, 0, 0, '{\"de_DE\":\"\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(899, '{\"de_DE\":\"Ug 0,7\\t3-fach Verglasung\"}', '2020-09-15 20:40:22', 312, 'b057f791-4953-4a70-80d0-35c81b6f9f12', 'ug-07-3-fach-verglasung', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 951, 0, 0, '{\"de_DE\":\"\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(900, '{\"de_DE\":\"Ug 0,6\\t3-fach Verglasung\"}', '2020-09-15 20:40:22', 312, '779c36e3-4239-4bea-aee5-e2cb53b0aed1', 'ug-06-3-fach-verglasung', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 952, 0, 0, '{\"de_DE\":\"\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(901, '{\"de_DE\":\"Schallschutzklasse 1\"}', '2020-09-15 20:40:22', 313, 'b72ffafc-a3cc-400f-84c4-873a326612c6', 'schallklasse-1', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 1, 1, 953, 0, 0, '{\"de_DE\":\"32 dB\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(902, '{\"de_DE\":\"Schallschutzklasse 2\"}', '2020-09-15 20:40:22', 313, 'ec2f6878-c5c6-4dd3-8c25-9648b7c1359c', 'schallklasse-2', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 954, 0, 0, '{\"de_DE\":\"36 dB\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(903, '{\"de_DE\":\"Schallschutzklasse 3\"}', '2020-09-15 20:40:22', 313, '629d4828-7b56-4adf-834c-1dc7c24fce76', 'schallklasse-3', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '{\"de_DE\":\"\"}', 0, 1, 955, 0, 0, '{\"de_DE\":\"38 dB\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(904, '{\"de_DE\":\"mit Gurt\"}', '2020-09-15 20:40:22', 314, '45544b71-7daf-48df-bd70-17876123cd7a', 'mit-gurt', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 957, 0, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(905, '{\"de_DE\":\"mit Motor\"}', '2020-09-15 20:40:22', 314, '2e60701b-23a2-4d61-b468-e371eff74274', 'mit-motor', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 958, 0, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(906, '{\"de_DE\":\"Ma\\u00dfe\"}', '2020-09-15 20:40:22', 315, '5a41d5c5-b35b-4aa0-8b9b-ac6ae94bcd49', 'width-height-element', '{\"class\":\"Apto\\\\Plugins\\\\WidthHeightElement\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\WidthHeightElementDefinition\",\"json\":{\"width\":{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\ElementValueCollection\",\"json\":{\"collection\":[{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\ElementRangeValue\",\"json\":{\"minimum\":850,\"maximum\":2865,\"step\":1}}]}},\"height\":{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\ElementValueCollection\",\"json\":{\"collection\":[{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\ElementRangeValue\",\"json\":{\"minimum\":455,\"maximum\":2680,\"step\":1}}]}},\"priceMatrixId\":\"cdbc8796-febd-497c-acc0-03673484ef3e\",\"prefixWidth\":{\"de_DE\":\"Breite\"},\"prefixHeight\":{\"de_DE\":\"H\\u00f6he\"},\"suffixWidth\":{\"de_DE\":\"mm\"},\"suffixHeight\":{\"de_DE\":\"mm\"},\"livePricePrefix\":[],\"livePriceSuffix\":[],\"renderingWidth\":\"input\",\"renderingHeight\":\"input\",\"defaultWidth\":null,\"defaultHeight\":null,\"renderDialogInOnePageDesktop\":true}}', '[]', 0, 1, 922, 0, 10, '{\"de_DE\":\"\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(907, '[]', '2020-09-24 19:29:35', 93, '00eb782d-3796-414b-bd10-434fbc115bff', 'stoffauswahl', '{\"class\":\"Apto\\\\Plugins\\\\MaterialPickerElement\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\MaterialPickerElementDefinition\",\"json\":{\"poolId\":\"6f607322-dcb7-4226-9120-736741c217ce\",\"defaultMaterialId\":\"\",\"defaultMaterialPoolId\":\"\",\"secondaryMaterialActive\":true,\"monochromeImage\":\"\",\"multicoloredImageAlternately\":\"\",\"multicoloredImageInput\":\"\",\"searchboxActive\":true,\"allowMultiple\":false,\"altColorSelect\":false}}', '[]', 0, 1, NULL, 0, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(908, '{\"de_DE\":\"Individuell\"}', '2020-09-24 19:49:48', 316, '46bf52aa-1ed3-49b6-8a37-8a0c27175f5f', 'individuell', '{\"class\":\"Apto\\\\Plugins\\\\AreaElement\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\AreaElementDefinition\",\"json\":{\"renderDialogInOnePageDesktop\":true,\"priceMatrix\":{\"id\":null,\"row\":null,\"column\":null},\"fields\":[{\"prefix\":{\"de_DE\":\"Breite oben:\"},\"suffix\":{\"de_DE\":\"mm\"},\"rendering\":\"input\",\"default\":null,\"values\":{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\ElementValueCollection\",\"json\":{\"collection\":[{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\ElementRangeValue\",\"json\":{\"minimum\":450,\"maximum\":2865,\"step\":1}}]}}},{\"prefix\":{\"de_DE\":\"Breite unten:\"},\"suffix\":{\"de_DE\":\"mm\"},\"rendering\":\"input\",\"default\":null,\"values\":{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\ElementValueCollection\",\"json\":{\"collection\":[{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\ElementRangeValue\",\"json\":{\"minimum\":450,\"maximum\":2865,\"step\":1}}]}}},{\"prefix\":{\"de_DE\":\"H\\u00f6he:\"},\"suffix\":{\"de_DE\":\"mm\"},\"rendering\":\"input\",\"default\":null,\"values\":{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\ElementValueCollection\",\"json\":{\"collection\":[{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\ElementRangeValue\",\"json\":{\"minimum\":200,\"maximum\":2680,\"step\":1}}]}}}],\"livePricePrefix\":[],\"livePriceSuffix\":[]}}', '[]', 0, 1, 939, 20, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(909, '{\"de_DE\":\"Deine W\\u00fcnsche\"}', '2020-09-24 19:58:58', 317, '05f6f3c1-e59d-458c-9687-59490e04f5e8', 'anmerkung', '{\"class\":\"Apto\\\\Plugins\\\\CustomText\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\CustomTextDefinition\",\"json\":{\"text\":{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\ElementValueCollection\",\"json\":{\"collection\":[{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\ElementTextValue\",\"json\":{\"minLength\":0,\"maxLength\":1000000}}]}},\"rendering\":\"textarea\"}}', '[]', 0, 1, 922, 30, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(910, '{\"de_DE\":\"Griff in Fensterfarbe oder Rollofarbe\"}', '2020-09-24 20:03:12', 317, '7621921b-d90b-48f4-b0e2-7c33558cf664', 'griffe-rollo', '{\"class\":\"Apto\\\\Plugins\\\\SelectBoxElement\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\SelectBoxElementDefinition\",\"json\":{\"defaultItem\":null}}', '[]', 0, 1, 939, 10, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(912, '{\"de_DE\":\"In Fenstergr\\u00f6\\u00dfe\"}', '2020-09-24 20:12:28', 316, 'b2987659-6b6f-40cb-88b5-a8ae74986876', 'in-fenstergroesse', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 939, 0, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(913, '{\"de_DE\":\"Griff in Fensterfarbe\"}', '2020-09-24 20:18:30', 317, 'fdeda2d4-b2c7-4c8b-8e7d-0304900ccd9a', 'griffe-kein-rollo', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 922, 10, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(914, '{\"de_DE\":\"Gr\\u00f6\\u00dfe Griff\"}', '2020-09-24 20:24:44', 317, '071a3a92-cc69-43a1-a51b-52158badd21f', 'groesse-griff', '{\"class\":\"Apto\\\\Plugins\\\\FloatInputElement\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\FloatInputElementDefinition\",\"json\":{\"prefix\":{\"de_DE\":\"H\\u00f6he\"},\"suffix\":{\"de_DE\":\"mm\"},\"defaultValue\":\"\",\"useDefaultValue\":false,\"showDefaultValue\":false,\"value\":{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\ElementValueCollection\",\"json\":{\"collection\":[{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\ElementRangeValue\",\"json\":{\"minimum\":10,\"maximum\":20,\"step\":1}}]}},\"conversionFactor\":\"1\",\"livePricePrefix\":[],\"livePriceSuffix\":[]}}', '[]', 0, 1, 922, 20, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(919, '{\"de_DE\":\"Wei\\u00df\"}', '2021-11-15 09:37:11', 324, '6868b4d2-ce8a-4056-b116-393dafbe4c0b', 'weiss', '{\"class\":\"Apto\\\\Plugins\\\\PricePerUnitElement\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\PricePerUnitElementDefinition\",\"json\":{\"sectionId\":null,\"elementId\":null,\"selectableValue\":null,\"selectableValueType\":null,\"conversionFactor\":\"1.0\",\"minOne\":false,\"textBoxEnabled\":false,\"textBoxPrefix\":[],\"textBoxSuffix\":[],\"livePricePrefix\":[],\"livePriceSuffix\":[],\"text\":{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\ElementValueCollection\",\"json\":{\"collection\":[{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\ElementTextValue\",\"json\":{\"minLength\":0,\"maxLength\":0}}]}},\"elementValueRefs\":[]}}', '[]', 0, 1, NULL, 10, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(920, '{\"de_DE\":\"Pastellrosa\"}', '2021-11-15 09:37:29', 324, 'f2d9b914-8528-4bc4-81c0-1d48357528fe', 'pastellrosa', '{\"class\":\"Apto\\\\Plugins\\\\PricePerUnitElement\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\PricePerUnitElementDefinition\",\"json\":{\"sectionId\":null,\"elementId\":null,\"selectableValue\":null,\"selectableValueType\":null,\"conversionFactor\":\"1.0\",\"minOne\":false,\"textBoxEnabled\":false,\"textBoxPrefix\":[],\"textBoxSuffix\":[],\"livePricePrefix\":[],\"livePriceSuffix\":[],\"text\":{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\ElementValueCollection\",\"json\":{\"collection\":[{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\ElementTextValue\",\"json\":{\"minLength\":0,\"maxLength\":0}}]}},\"elementValueRefs\":[]}}', '[]', 1, 1, 972, 20, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(921, '{\"de_DE\":\"Pink\"}', '2021-11-15 09:37:36', 324, '399f364d-0a6b-44bf-b296-02791a30f08c', 'pink', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 971, 30, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(922, '{\"de_DE\":\"T\\u00fcrkis\"}', '2021-11-15 09:38:00', 324, '3262c017-6521-46ae-9d29-4948cdfce9f2', 'tuerkis', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 970, 40, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(923, '{\"de_DE\":\"Blau\"}', '2021-11-15 09:38:05', 324, 'b744b976-9616-48e1-8385-dcdf0f00358f', 'blau', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 974, 50, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(924, '{\"de_DE\":\"Schwarz\"}', '2021-11-15 09:48:57', 325, '1711cea7-131c-44d5-8cb8-db04833ffe57', 'schwarz', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 1, 1, 977, 10, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(925, '{\"de_DE\":\"Blau\"}', '2021-11-15 09:49:02', 325, 'a2342910-8709-4048-b731-6058cd9e0e54', 'blau', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 978, 20, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(926, '{\"de_DE\":\"Rot\"}', '2021-11-15 09:49:07', 325, '97dcfbb7-812b-447b-a823-c568e4051292', 'rot', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 979, 30, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(929, '{\"de_DE\":\"Mit Logo\"}', '2021-11-15 09:57:27', 328, '45754476-276a-424e-92e2-1c112fc497da', 'mit-logo', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 1, 1, 981, 10, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(930, '{\"de_DE\":\"Kein Logo\"}', '2021-11-15 09:57:34', 328, '425b1ab9-7008-4dbf-afb8-bca76875ac2e', 'kein-logo', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 982, 20, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(931, '{\"de_DE\":\"Maske\"}', '2021-11-15 09:59:02', 329, '163c4039-aeb8-47b3-9426-d1ba81f68947', 'maske', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 1, 1, NULL, 10, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(932, '{\"de_DE\":\"Rechteckiger Grundriss\"}', '2021-11-15 10:24:45', 330, '1b6af216-5674-4b71-acf6-5b9ac4e2b274', 'rechteckiger-grundriss', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 988, 10, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(933, '{\"de_DE\":\"Rechteck mit Ausschnitt\"}', '2021-11-15 10:25:07', 330, '7ac5207f-9809-406a-bf23-7cee1c09e9b4', 'rechteck-mit-ausschnitt', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 989, 20, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(934, '{\"de_DE\":\"Einfamilienhaus\"}', '2021-11-15 10:28:13', 331, '2ae4a997-0bd0-42c5-8133-de7cdb7af675', 'einfamilienhaus', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 990, 10, 0, '{\"de_DE\":\"Sie planen ein gem\\u00fctliches Haus f\\u00fcr Sie und Ihre Familie - dann ist dieser Typ genau richtig f\\u00fcr Sie!\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(935, '{\"de_DE\":\"Mehrfamilienhaus \\/ B\\u00fcrogeb\\u00e4ude\"}', '2021-11-15 10:28:45', 331, 'b397533f-343c-4c00-8605-9d518f0fe6b5', 'mehrfamilienhaus-buerogebaeude', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 991, 20, 0, '{\"de_DE\":\"Dieser Immobilientyp eignet sich perfekt f\\u00fcr H\\u00e4user, die sp\\u00e4ter vermietet oder gewerblich genutzt werden sollen.\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(936, '{\"de_DE\":\"Villa\"}', '2021-11-15 10:28:55', 331, '6c33b146-2fc0-4c81-a923-640717d6399d', 'villa', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 992, 30, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(937, '{\"de_DE\":\"Woodlands View\"}', '2021-11-15 10:33:38', 332, '4ddba191-2e7a-442a-8f59-9fef50eb173d', 'woodlands-view', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 993, 10, 0, '{\"de_DE\":\"Eine Villa im gem\\u00fctlichen aber edlen Holz-Stil mit gro\\u00dfen r\\u00e4umen und beheiztem Pool im Garten\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(938, '{\"de_DE\":\"Wihte Manor\"}', '2021-11-15 10:33:54', 332, '8f509297-11fa-4a9c-9194-c9994b72907d', 'wihte-manor', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 992, 20, 0, '{\"de_DE\":\"Die typisch s\\u00fcdl\\u00e4ndische Architektur verzaubert Sie jeden Tag aufs neue. Machen Sie Ihr Zuhause zu einem Urlaubsort und genie\\u00dfen Sie die wei\\u00dfe Holz-Optik der Fassade.\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(939, '{\"de_DE\":\"Blockhouse Flex\"}', '2021-11-15 10:34:11', 332, 'cb3e1b98-eb60-4b90-bd67-e16db60deaed', 'blockhouse-flex', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 994, 30, 0, '{\"de_DE\":\"Das zweist\\u00f6ckige Haus kann sowohl als Konferenz-\\/B\\u00fcrogeb\\u00e4ude oder f\\u00fcr Wohnungen genutzt werden.\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(940, '{\"de_DE\":\"Modern Vital\"}', '2021-11-15 10:34:33', 332, '9a096d0b-0326-4b86-9e84-c06e9776a83e', 'modern-vital', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 995, 40, 0, '{\"de_DE\":\"Die zweigeteilte Immobilie besteht aus einem gro\\u00dfen Haus mit 3 Stockwerken und einem Haus mit 2 Stockwerken.\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(941, '{\"de_DE\":\"Modern Vibe\"}', '2021-11-15 10:34:47', 332, 'a74935c4-65ec-441b-b974-f959c2c71f99', 'modern-vibe', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 996, 50, 0, '{\"de_DE\":\"Die mit Flachdach ausgestatteten Immobilien verfolgen einen sehr modernen Architekturstil und sind sowohl als Wohnungen oder B\\u00fcros vermietbar.\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(942, '{\"de_DE\":\"Factory Grunge\"}', '2021-11-15 10:35:11', 332, '4b4bc9e1-0cbc-4a07-b38d-7f5f078c8e72', 'factory-grunge', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 991, 60, 0, '{\"de_DE\":\"Das im Fabrikstil gehaltene B\\u00fcrogeb\\u00e4ude hat 6 Etagen und platz f\\u00fcr bis zu 12 B\\u00fcros.\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(943, '{\"de_DE\":\"Caribbean Palace\"}', '2021-11-15 10:36:16', 332, '198eae87-3140-4085-9c4d-26cea3c9eb4a', 'caribbean-palace', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 997, 70, 0, '{\"de_DE\":\"Der karibische Flair der Architektur ist un\\u00fcbersehbar. Die beiden Wohngeb\\u00e4ude umfassen einen Pool und schlie\\u00dfen an ein kleines Gartenh\\u00e4uschen an.\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(944, '{\"de_DE\":\"Urban Classic\"}', '2021-11-15 10:36:28', 332, 'af13c6f8-22c1-4f3a-a26f-0fa896ca2a25', 'urban-classic', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 998, 80, 0, '{\"de_DE\":\"Das Vorstadt-Bungalow kommt mit einer schlichten aber gem\\u00fctlichen Architektur. Ideal f\\u00fcr kleine Familien oder Paare.\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(945, '{\"de_DE\":\"Stoneways Classic\"}', '2021-11-15 10:36:41', 332, '7074f48e-5d48-4194-8d7a-905ebcf0f4e3', 'stoneways-classic', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 999, 90, 0, '{\"de_DE\":\"Das zweist\\u00f6ckige Familienhaus kommt mit einer Doppelgarage, einem Dachboden und bietet genug Platz f\\u00fcr eine gro\\u00dfe Familie. Ein Keller ist hier nicht vorhanden.\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(946, '{\"de_DE\":\"Stoneways Premium\"}', '2021-11-15 10:36:57', 332, 'a97618c2-3264-4ba6-861f-2022bb44e8dd', 'stoneways-premium', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 990, 100, 0, '{\"de_DE\":\"Das zweist\\u00f6ckige Familienhaus kommt mit einer Doppelgarage, einem Dachboden sowie einem Keller und bietet genug Platz f\\u00fcr eine gro\\u00dfe Familie.\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(947, '{\"de_DE\":\"Gew\\u00f6lbte Dachziegel in Grau\"}', '2021-11-15 10:55:43', 333, '0d5f8ea3-e6b8-4b52-9908-b6f0484124a1', 'gewoelbte-dachziegel-in-grau', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1000, 10, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(948, '{\"de_DE\":\"Gew\\u00f6lbte Dachziegel in rot\"}', '2021-11-15 10:56:09', 333, 'df4ab93c-c16a-4240-9761-ea082265a70d', 'gewoelbte-dachziegel-in-rot', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1001, 20, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(949, '{\"de_DE\":\"Gew\\u00f6lbte Dachziegel in Rot\\/Braun\"}', '2021-11-15 10:56:37', 333, 'bb775e41-f033-4be5-9969-10f45c384a7e', 'gewoelbte-dachziegel-in-rotbraun', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1002, 30, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(950, '{\"de_DE\":\"Flache, runde Dachziegel in Grau\"}', '2021-11-15 10:57:14', 333, '7e931e71-99b5-4710-8325-3d2fc10b6e15', 'flache-runde-dachziegel-in-grau', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1003, 40, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(951, '{\"de_DE\":\"Flache, runde Dachziegel in Rot\\/Orange\"}', '2021-11-15 10:57:57', 333, '2d0b7feb-7874-4f4f-a8cb-2128cdb7a79c', 'flache-runde-dachziegel-in-rotorange', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1004, 50, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(952, '{\"de_DE\":\"Flache, runde Dachziegel in Blau\"}', '2021-11-15 10:59:15', 333, 'ac4d0cb1-1540-41be-b538-f6f394ed8fb3', 'flache-runde-dachziegel-in-blau', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1005, 60, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(953, '{\"de_DE\":\"Holzbelag (Vintage-Still)\"}', '2021-11-15 11:02:29', 334, '7598b3aa-32c0-4553-b770-361716315f15', 'holzbelag-vintage-still', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1015, 10, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(954, '{\"de_DE\":\"Holzbelag (Braun)\"}', '2021-11-15 11:02:46', 334, '22d904c0-9656-4500-bfe2-23f3b6f73227', 'holzbelag-braun', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1014, 20, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(955, '{\"de_DE\":\"Holzbelag (R\\u00f6tlich)\"}', '2021-11-15 11:03:07', 334, '51fde2cc-878f-46b7-a666-f991ab31618c', 'holzbelag-roetlich', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1013, 30, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(956, '{\"de_DE\":\"Holzbelag (Wei\\u00df)\"}', '2021-11-15 11:03:35', 334, 'f4b51b2e-e945-41b9-ab32-e1fe1bf6765f', 'holzbelag-weiss', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1012, 40, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(957, '{\"de_DE\":\"Kork\"}', '2021-11-15 11:03:50', 334, 'a37b2af1-b12a-4642-9834-6fef6f96bec2', 'kork', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1011, 50, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(958, '{\"de_DE\":\"Laminat\"}', '2021-11-15 11:04:18', 334, 'c143dfdb-717f-460e-93e2-1965113d3a7c', 'laminat', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1010, 60, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(959, '{\"de_DE\":\"Marmor\"}', '2021-11-15 11:04:25', 334, '499489af-4f17-48ae-8599-ee87f7f37d62', 'marmor', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1009, 70, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(960, '{\"de_DE\":\"Stein-Optik\"}', '2021-11-15 11:04:39', 334, '1deb57fe-8f1a-4898-aa64-7df3b074a644', 'stein-optik', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1008, 80, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(961, '{\"de_DE\":\"Teppichboden (Blau)\"}', '2021-11-15 11:04:51', 334, 'd25517ac-6593-460f-b4a3-008d714c96d3', 'teppichboden', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1006, 90, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(962, '{\"de_DE\":\"Teppichboden (Grau)\"}', '2021-11-15 11:05:12', 334, 'dc532b97-74fa-426b-887d-b5228f433708', 'teppichboden-grau', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1007, 100, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(963, '{\"de_DE\":\"W\\u00e4rmepumpe\"}', '2021-11-15 11:08:18', 335, 'ce5d59d6-7ea3-45ee-b2a9-7f11341b7379', 'waermepumpe', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1016, 10, 0, '{\"de_DE\":\"Mit eine W\\u00e4rmepumpe sind sie unabh\\u00e4ngig von fossilen Ressourcen und haben zudem geringe Heizkosten. Sie nutzen entweder die thermische Energie der Luft, dem Erdreich oder dem Grundwasser um Ihr Haus zu heizen.\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(964, '{\"de_DE\":\"Gas\"}', '2021-11-15 11:08:25', 335, 'a3135d42-bb4d-4aa9-9603-d8da51a07cee', 'gas', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1017, 20, 0, '{\"de_DE\":\"Mit einer Gasheizung w\\u00e4hlen Sie eine der effizientesten Heizsysteme. Zudem sind die Anschaffungskosten vergleichsweise gering.\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(965, '{\"de_DE\":\"Pellets\"}', '2021-11-15 11:08:32', 335, '56db1e4b-eea3-45e4-8992-6358d85c4a78', 'pellets', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1018, 30, 0, '{\"de_DE\":\"Im Gegensatz zu herk\\u00f6mmlichen Heizungen arbeiten Pelletheizungen mit einem nachwachsendem Rohstoff: Holz. Zudem bieten Pelletheizungen aufgrund des Brennofens, der auch im Geb\\u00e4ude installiert werden kann einen gem\\u00fctlichen Flair.\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(966, '{\"de_DE\":\"Kaminofen\"}', '2021-11-15 11:12:27', 336, '43153409-9e27-4ace-a9ce-7c68dc07cd24', 'kaminofen', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1019, 10, 0, '{\"de_DE\":\"Sorgen Sie mit einem Holzofen f\\u00fcr ein gem\\u00fctlichen Flair in Ihren 4 W\\u00e4nden und heizen Sie gleichzeitig Ihr Haus auf eine angenehme Temperatur.\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(967, '{\"de_DE\":\"Smart-Home\"}', '2021-11-15 11:12:36', 336, '8c51246a-30c4-45fa-841f-dced5c30f70c', 'smart-home', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1020, 20, 0, '{\"de_DE\":\"Mit einer Smart Home Integration haben Sie ihr Haus immer und \\u00fcberall im Griff und sparen durch effiziente Steuerung viel Geld.\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(968, '{\"de_DE\":\"Fussbodenheizung\"}', '2021-11-15 11:12:48', 336, '070d103f-556c-4d57-82c4-591ab7653aa6', 'fussbodenheizung', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1021, 30, 0, '{\"de_DE\":\"Durch eine Fu\\u00dfbodenheizung fallen die \\u00fcblichen Heizk\\u00f6rper weg, wodurch Sie Ihre R\\u00e4ume \\u00e4sthetischer gestalten k\\u00f6nnen. Zudem ist es besonders im Winter sehr Angenehm auf beheiztem Boden zu laufen.\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(969, '{\"de_DE\":\"Elektrische Rolll\\u00e4den\"}', '2021-11-15 11:13:11', 336, '03de4df8-03c5-4a95-a024-1fec8ee4f054', 'elektrische-rolllaeden', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1022, 40, 0, '{\"de_DE\":\"Elektrische Roll\\u00e4den k\\u00f6nnen ohne Muskelkraft per Fernbedienung oder Zeitsteuerung bequem bedient werden. Auch eine Integration in ein Smart Home System ist m\\u00f6glich.\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(970, '{\"de_DE\":\"Photovoltaik Anlage\"}', '2021-11-15 11:13:35', 336, '30e6f0ee-1e80-402e-a8b1-a7f14d209fb6', 'photovoltaik-anlage', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1023, 50, 0, '{\"de_DE\":\"Erzeugen Sie Ihren Strom selbst, in dem Sie sich Photovoltaik Panele auf Ihr Dach legen lassen. So sparen Sie nicht nur Geld, sondern tun der Umwelt noch etwas Gutes.\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(971, '{\"de_DE\":\"Solar-Anlage\"}', '2021-11-15 11:14:03', 336, '1fc83f92-1638-40ea-b098-683c9d551fda', 'solar-anlage', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1024, 60, 0, '{\"de_DE\":\"Mit Solar Panelen auf Ihrem Dach k\\u00f6nnen Sie mit der reinen Sonnenw\\u00e4rme Ihr Wasser f\\u00fcr Dusche, Sp\\u00fcle und Waschbecken selbst erzeugen.\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(972, '{\"de_DE\":\"Windgenerator\"}', '2021-11-15 11:14:21', 336, 'a031d1b5-cb5d-440b-996d-26ec174b5dac', 'windgenerator', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1025, 70, 0, '{\"de_DE\":\"Mit einem kleinen Windgenerator in Ihrem Garten erzeugen Sie umweltfreundlich Ihren eigenen Strom.\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(973, '{\"de_DE\":\"E-Autoladestation\"}', '2021-11-15 11:14:37', 336, 'd543778a-05c7-4b0b-b981-2a338aac124c', 'e-autoladestation', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1026, 80, 0, '{\"de_DE\":\"Laden Sie ganz bequem Ihr E-Auto in Ihrer eigenen Garage, indem Sie einen Starkstromanschluss installieren lassen.\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(974, '{\"de_DE\":\"upload\"}', '2021-11-15 11:34:44', 337, '14a9f8f5-9a1c-4398-b2e4-35ed11913e04', 'upload', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 0, NULL, 10, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(975, '{\"de_DE\":\"Wei\\u00df\"}', '2021-11-15 11:35:24', 338, '20cf96fb-0d00-4615-9ee6-5097361252ca', 'weiss', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1027, 10, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated');
INSERT INTO `apto_product_element` (`surrogate_id`, `name`, `created`, `section_id`, `id`, `identifier_value`, `definition`, `error_message`, `is_default`, `is_active`, `preview_image_id`, `position`, `percentage_surcharge`, `description`, `is_mandatory`, `is_zoomable`, `extended_price_calculation_active`, `extended_price_calculation_formula`, `price_matrix_id`, `price_matrix_active`, `price_matrix_row`, `price_matrix_column`, `is_not_available`, `open_links_in_dialog`, `zoom_function`) VALUES
(976, '{\"de_DE\":\"Blau\"}', '2021-11-15 11:35:40', 338, 'a4c809a0-aaf4-4f2a-b966-0cde49712871', 'blau', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1031, 20, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(977, '{\"de_DE\":\"Rot\"}', '2021-11-15 11:35:45', 338, '2540379a-9319-421e-93cc-6cd67ad158c5', 'rot', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 1, 1, 1035, 30, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(978, '{\"de_DE\":\"V8\"}', '2021-11-15 11:43:47', 339, '7aa3f377-7d5b-4242-ac00-0993f6f29d69', 'v8', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 1, 1, 1040, 10, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(979, '{\"de_DE\":\"V10\"}', '2021-11-15 11:43:51', 339, '48b3adfd-931a-4645-ada5-cf4072b32b0f', 'v10', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1041, 20, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(980, '{\"de_DE\":\"V12\"}', '2021-11-15 11:43:56', 339, '0efd1a8f-1b61-42d0-befd-35104312320f', 'v12', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1044, 30, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(981, '{\"de_DE\":\"Standard\"}', '2021-11-15 12:55:57', 340, '09a923a9-09cc-4b95-b715-43d44d12f749', 'standard', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 1, 1, 1045, 10, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(982, '{\"de_DE\":\"Advanced\"}', '2021-11-15 12:56:08', 340, 'a0fd6099-34e0-413d-8fb7-f96883db6962', 'advanced', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1046, 20, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(983, '{\"de_DE\":\"Standard\"}', '2021-11-15 12:58:21', 341, '8f9dc418-b796-4e44-b56e-cb335563b13d', 'standard', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 1, 1, 1047, 10, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(984, '{\"de_DE\":\"Premium Schwarz\"}', '2021-11-15 12:58:44', 341, '8d5e1107-93dc-498d-a31f-b8b4efcfb56d', 'premium-schwarz', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1048, 20, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(985, '{\"de_DE\":\"Premium Rot\"}', '2021-11-15 12:58:55', 341, '89176356-0b13-4d83-b778-17698236fbdf', 'premium-rot', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1049, 30, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(986, '{\"de_DE\":\"Premium Orange\"}', '2021-11-15 13:00:42', 341, 'd43e0726-2b47-4f96-b2ea-7823969137ac', 'premium-orange', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1050, 40, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(987, '{\"de_DE\":\"Premium Blau\"}', '2021-11-15 13:00:54', 341, '83f09e75-438e-4a91-b9bb-bdef59cd3dc8', 'premium-blau', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1051, 50, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(988, '{\"de_DE\":\"Kein Aufkleber\"}', '2021-11-15 13:04:34', 342, 'd6141bb0-8749-4825-980c-417b32588189', 'kein-aufkleber', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', NULL, 1, 1, NULL, 10, 0, NULL, 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(989, '{\"de_DE\":\"Apto.one Gr\\u00fcn-Wei\\u00df\"}', '2021-11-15 13:05:49', 342, '9ef57331-7317-4669-94f0-9042ff91013e', 'apto.one-gruen-weiss', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1052, 20, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(990, '{\"de_DE\":\"Apto.one Blau-Wei\\u00df\"}', '2021-11-15 13:06:13', 342, '6d9e092c-8583-4cea-8acd-24ccc6341ede', 'apto.one-blau-weiss', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1053, 30, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(991, '{\"de_DE\":\"Apto.one Blau-Gr\\u00fcn\"}', '2021-11-15 13:06:38', 342, 'd1646e66-1dcc-498e-b5f0-591a0f83dfcd', 'apto.one-blau-gruen', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1054, 40, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(992, '{\"de_DE\":\"Kein Aufkleber\"}', '2021-11-15 13:12:04', 343, 'cc2bb4b8-f29a-4e23-9187-f9916746213b', 'kein-aufkleber', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', NULL, 1, 1, NULL, 10, 0, NULL, 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(993, '{\"de_DE\":\"confirado.de\"}', '2021-11-15 13:12:20', 343, '95865904-f40b-486f-9c9a-69581563818c', 'confirado.de', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1064, 20, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(996, '{\"de_DE\":\"Kein Paket\"}', '2021-11-15 13:15:15', 344, 'f370585b-f1c4-46b3-a879-5f3995b0306b', 'kein-paket', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 1, 1, 1068, 10, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(997, '{\"de_DE\":\"Safari\"}', '2021-11-15 13:15:22', 344, 'c122f475-6bcb-4297-a9dc-76655ba2f85a', 'safari', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1070, 20, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(998, '{\"de_DE\":\"Climber\"}', '2021-11-15 13:15:28', 344, 'c8111c49-d609-4cbd-bcb5-e7285a08fb02', 'climber', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1072, 30, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1000, '{\"de_DE\":\"Breite x H\\u00f6he\"}', '2021-11-15 13:50:44', 345, '0d55f81c-6e70-4b97-9919-bedda4a4e395', 'breite-x-hoehe', '{\"class\":\"Apto\\\\Plugins\\\\WidthHeightElement\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\WidthHeightElementDefinition\",\"json\":{\"width\":{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\ElementValueCollection\",\"json\":{\"collection\":[{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\ElementRangeValue\",\"json\":{\"minimum\":200,\"maximum\":600,\"step\":1}}]}},\"height\":{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\ElementValueCollection\",\"json\":{\"collection\":[{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\ElementRangeValue\",\"json\":{\"minimum\":180,\"maximum\":300,\"step\":1}}]}},\"priceMatrixId\":\"\",\"prefixWidth\":{\"de_DE\":\"Breite\"},\"prefixHeight\":{\"de_DE\":\"H\\u00f6he\"},\"suffixWidth\":{\"de_DE\":\"cm\"},\"suffixHeight\":{\"de_DE\":\"cm\"},\"livePricePrefix\":[],\"livePriceSuffix\":[],\"renderingWidth\":\"input\",\"renderingHeight\":\"input\",\"defaultWidth\":\"200\",\"defaultHeight\":\"180\",\"renderDialogInOnePageDesktop\":true}}', '[]', 0, 1, 1078, 10, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1001, '{\"de_DE\":\"H\\u00f6rmann\"}', '2021-11-15 13:57:22', 346, '233b03f1-7679-4142-b936-bb3b378b3297', 'hoermann', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1079, 10, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1002, '{\"de_DE\":\"Novoferm\"}', '2021-11-15 13:57:37', 346, '04cac825-3cac-4d60-8a13-de172cd5e46d', 'novoferm', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1080, 20, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1003, '{\"de_DE\":\"Teckentrup\"}', '2021-11-15 13:58:30', 346, 'f3a7be4f-213e-48c0-9ade-d91880051ee7', 'teckentrup', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1081, 30, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1004, '{\"de_DE\":\"Rot\"}', '2021-11-15 14:00:24', 347, 'c6ee9100-66ae-4dae-9af8-64855bcf116e', 'rot', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1083, 10, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1005, '{\"de_DE\":\"Blau\"}', '2021-11-15 14:00:30', 347, 'f89675da-3be4-4d93-9858-ec6c5bf50cbb', 'blau', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1085, 20, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1006, '{\"de_DE\":\"Gr\\u00fcn\"}', '2021-11-15 14:00:37', 347, 'a351f18b-e5d5-4bd9-9718-996751b05f5b', 'gruen', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1087, 30, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1007, '{\"de_DE\":\"Typ 1\"}', '2021-11-15 14:11:56', 348, 'd448c89a-aa57-4e10-9a42-76f41bd73533', 'typ-1', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1089, 10, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1008, '{\"de_DE\":\"Typ 2\"}', '2021-11-15 14:12:01', 348, '9be4351f-4970-401e-8d99-5a9a5505e1e8', 'typ-2', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1090, 20, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1009, '{\"de_DE\":\"Typ 3\"}', '2021-11-15 14:12:15', 348, 'd6e6e42f-6621-4be7-a50e-5b0df9abe293', 'typ-3', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1091, 30, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1011, '{\"de_DE\":\"Manuell\"}', '2021-11-15 14:15:24', 349, '5df7f831-b599-4c77-ae18-d0b7ccc4b4cd', 'manuell', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1094, 10, 0, '{\"de_DE\":\"Das Garagentor l\\u00e4sst sich per Hand hoch und zu ziehen.\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1012, '{\"de_DE\":\"Elektrisch\"}', '2021-11-15 14:15:34', 349, '7f6ff9df-f097-4634-9bd4-39dfe29083dd', 'elektrisch', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1095, 20, 0, '{\"de_DE\":\"Das Tor wird mit einem elektrischen Motor ge\\u00f6ffnet und geschlossen.\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1013, '{\"de_DE\":\"Speed\"}', '2021-11-15 14:15:39', 349, 'fffabfd4-ef0c-43fe-8e76-1fbe4efe4284', 'speed', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1096, 30, 0, '{\"de_DE\":\"Neueste Technologien erm\\u00f6glichen ein bis zu 3x schnelleres \\u00f6ffnen und schlie\\u00dfen per Elektromotor.\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1014, '{\"de_DE\":\"Funkfernbedienung\"}', '2021-11-15 14:17:35', 350, '79fdeb21-c5d2-40f4-86ab-329c47816758', 'funkfernbedienung', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1097, 10, 0, '{\"de_DE\":\"Die bateriebetriebene Funkfernbedienung k\\u00f6nnen Sie bequem im Auto liegen lassen, um bei der Ankunft das Tor zu \\u00f6ffnen.\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1015, '{\"de_DE\":\"Lichtpaket\"}', '2021-11-15 14:17:42', 350, '13880fb0-4f9b-4ad7-a384-762deaea1385', 'lichtpaket', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1098, 20, 0, '{\"de_DE\":\"Der \\u00d6ffnungsmechanismus ist an ein Licht gekoppelt, welches an geht, sobald das Garagentor ge\\u00f6ffnet wird.\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1016, '{\"de_DE\":\"L\\u00fcftung\"}', '2021-11-15 14:17:53', 350, 'a3a8b221-c492-48f5-adc4-f5ff906bc0c2', 'lueftung', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1099, 30, 0, '{\"de_DE\":\"Wir installieren Ihnen ein L\\u00fcftungssystem in Ihre Garage.\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1017, '{\"de_DE\":\"Montageservice\"}', '2021-11-15 14:19:33', 351, '5eb71159-de59-4c04-a433-949a74184c06', 'montageservice', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1100, 10, 0, '{\"de_DE\":\"Wir setzen Ihr neues Tor ein.\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1018, '{\"de_DE\":\"Demontage mit in begriffen!\"}', '2021-11-15 14:19:54', 351, '5e91b7f8-0bdf-4b6d-9051-a64174a40f91', 'demontage-mit-in-begriffen', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1101, 20, 0, '{\"de_DE\":\"Wir demontieren und entsorgen Ihr altes Garagentor.\"}', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1019, '{\"de_DE\":\"Nappaleder Wei\\u00df\"}', '2021-11-15 14:37:36', 352, '0e8e2071-6a9a-4337-807e-5a3c3361417d', 'nappaleder-weiss', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1114, 10, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1020, '{\"de_DE\":\"Nappaleder Pink\"}', '2021-11-15 14:37:48', 352, '2db15f7a-2c94-43a5-9a0a-c064c805fc53', 'nappaleder-pink', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1165, 20, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1021, '{\"de_DE\":\"Gepr\\u00e4gtes Python Leder Beige-Schwarz\"}', '2021-11-15 14:38:24', 352, 'ae4e90b9-6b4e-4188-9bd3-8f92b57e0c37', 'gepraegtes-python-leder-beige-schwarz', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 1, 1, 1107, 30, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1022, '{\"de_DE\":\"Beige\"}', '2021-11-17 05:51:41', 358, '403c6546-2b8f-410a-a352-1853b6adafed', 'beige', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1120, 10, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1023, '{\"de_DE\":\"Schwarz\"}', '2021-11-17 05:51:59', 358, '0213a963-2b75-4301-814d-230a1f92c606', 'schwarz', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 1, 1, 1124, 20, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1024, '{\"de_DE\":\"Sohle Schwarz\"}', '2021-11-17 05:58:33', 357, '3d02f146-ebb0-4f61-8da8-27556286555e', 'sohle-schwarz', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 1, 1, 1129, 10, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1025, '{\"de_DE\":\"Sohle Blau\"}', '2021-11-17 05:58:42', 357, '1d925d0a-7da6-4542-bc37-3038d77a11fb', 'sohle-blau', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1134, 20, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1026, '{\"de_DE\":\"Nappaleder Wei\\u00df\"}', '2021-11-17 06:08:36', 353, 'b43cdf0c-863e-4efe-96b1-6a81497eacfe', 'nappaleder-weiss', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1114, 10, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1027, '{\"de_DE\":\"Nappaleder Pink\"}', '2021-11-17 06:08:53', 353, 'bd847afb-2a5e-46ec-9bae-8ebc8a2a7ad6', 'nappaleder-pink', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1139, 20, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1028, '{\"de_DE\":\"Gepr\\u00e4gtes Python Leder Beige-Schwarz\"}', '2021-11-17 06:09:29', 353, '82593533-3ac9-4c6c-8780-28db1346302f', 'gepraegtes-python-leder-beige-schwarz', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 1, 1, 1107, 30, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1029, '{\"de_DE\":\"Beige\"}', '2021-11-17 06:16:42', 354, '753df847-b7f9-4ef7-8370-a033386af6de', 'beige', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1146, 10, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1030, '{\"de_DE\":\"Dunkelbraun\"}', '2021-11-17 06:16:51', 354, '35cff2e3-c1ba-4da6-bd62-5b7441e2e245', 'dunkelbraun', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1151, 20, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1031, '{\"de_DE\":\"Schwarz\"}', '2021-11-17 06:17:01', 354, '58262302-f349-4116-87be-b5dad810796e', 'schwarz', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 1, 1, 1155, 30, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1032, '{\"de_DE\":\"Innenleder Schwarz\"}', '2021-11-17 06:29:04', 355, '58248090-2d6a-4726-8640-94835bd9f202', 'innenleder-schwarz', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 1, 1, 1157, 10, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1033, '{\"de_DE\":\"Innenleder Beige\"}', '2021-11-17 06:29:19', 355, '775142f4-9366-43d6-b359-8388d0e1cd99', 'innenleder-beige', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1159, 20, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1034, '{\"de_DE\":\"Innenleder Makeup\"}', '2021-11-17 06:29:31', 355, '9c871ae4-96f5-4492-8a22-6148db955493', 'innenleder-makeup', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1161, 30, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1035, '{\"de_DE\":\"Nappaleder Pink\"}', '2021-11-17 06:32:18', 356, '6644a81a-d8c9-45c6-abb8-68066831b3f2', 'nappaleder-pink', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1165, 10, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1036, '{\"de_DE\":\"Nappaleder Wei\\u00df\"}', '2021-11-17 06:32:31', 356, '01233fac-20cd-4a86-8372-5c46d33ec5cf', 'nappaleder-weiss', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 0, 1, 1114, 20, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated'),
(1037, '{\"de_DE\":\"Pythonleder Beige-Schwarz\"}', '2021-11-17 06:33:22', 356, '723de5c2-dba4-4c90-b3f0-4afe4530346c', 'pythonleder-beige-schwarz', '{\"class\":\"Apto\\\\Catalog\\\\Domain\\\\Core\\\\Model\\\\Product\\\\Element\\\\DefaultElementDefinition\",\"json\":[]}', '[]', 1, 1, 1172, 30, 0, '[]', 0, 0, 0, '', NULL, 0, '', '', 0, 0, 'deactivated');

-- --------------------------------------------------------

--
-- Table structure for table `apto_product_element_to_apto_discount`
--

DROP TABLE IF EXISTS `apto_product_element_to_apto_discount`;
CREATE TABLE `apto_product_element_to_apto_discount` (
  `product_element_surrogate_id` int(11) NOT NULL,
  `apto_discount_surrogate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_product_element_to_apto_price`
--

DROP TABLE IF EXISTS `apto_product_element_to_apto_price`;
CREATE TABLE `apto_product_element_to_apto_price` (
  `product_element_surrogate_id` int(11) NOT NULL,
  `apto_price_surrogate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `apto_product_element_to_apto_price`
--

INSERT INTO `apto_product_element_to_apto_price` (`product_element_surrogate_id`, `apto_price_surrogate_id`) VALUES
(888, 5553),
(889, 5554),
(895, 5555),
(896, 5556),
(897, 5557),
(898, 5558),
(899, 5559),
(900, 5560),
(902, 5561),
(903, 5562),
(904, 5563),
(905, 5564),
(257, 5565),
(258, 5566),
(267, 5567),
(268, 5568),
(269, 5569),
(270, 5570),
(271, 5571),
(272, 5572),
(274, 5573),
(275, 5574),
(277, 5575),
(278, 5576);

-- --------------------------------------------------------

--
-- Table structure for table `apto_product_element_to_apto_price_formula`
--

DROP TABLE IF EXISTS `apto_product_element_to_apto_price_formula`;
CREATE TABLE `apto_product_element_to_apto_price_formula` (
  `product_element_surrogate_id` int(11) NOT NULL,
  `apto_price_formula_surrogate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_product_element_to_custom_property`
--

DROP TABLE IF EXISTS `apto_product_element_to_custom_property`;
CREATE TABLE `apto_product_element_to_custom_property` (
  `product_element_id` int(11) NOT NULL,
  `custom_property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_product_gallery`
--

DROP TABLE IF EXISTS `apto_product_gallery`;
CREATE TABLE `apto_product_gallery` (
  `surrogate_id` int(11) NOT NULL,
  `media_file_id` int(11) DEFAULT NULL,
  `element_id` int(11) DEFAULT NULL,
  `name` longtext DEFAULT NULL COMMENT '(DC2Type:AptoPropertyTranslatedValue)',
  `created` datetime NOT NULL,
  `id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_product_render_image`
--

DROP TABLE IF EXISTS `apto_product_render_image`;
CREATE TABLE `apto_product_render_image` (
  `surrogate_id` int(11) NOT NULL,
  `media_file_id` int(11) DEFAULT NULL,
  `element_id` int(11) DEFAULT NULL,
  `layer` int(11) NOT NULL,
  `perspective` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `id` char(36) NOT NULL,
  `offset_x` decimal(6,2) NOT NULL DEFAULT 0.00,
  `offset_y` decimal(6,2) NOT NULL DEFAULT 0.00,
  `render_image_options` longtext NOT NULL COMMENT '(DC2Type:object)',
  `offset_unit_x` int(11) NOT NULL DEFAULT 0,
  `offset_unit_y` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `apto_product_render_image`
--

INSERT INTO `apto_product_render_image` (`surrogate_id`, `media_file_id`, `element_id`, `layer`, `perspective`, `created`, `id`, `offset_x`, `offset_y`, `render_image_options`, `offset_unit_x`, `offset_unit_y`) VALUES
(806, 922, 298, 1, 'persp1', '2019-03-19 14:51:47', '0a1e1cc4-1b95-4f77-89a9-7673436950b6', '0.00', '0.00', '', 0, 0),
(807, 924, 709, 1, 'persp1', '2019-03-19 15:20:26', '7e3d47fb-5df1-4217-84fb-0584737199e3', '0.00', '0.00', '', 0, 0),
(808, 925, 710, 1, 'persp1', '2019-03-19 15:21:33', '4a6874e7-9e6f-42ce-afef-aa8bd2f0349a', '0.00', '0.00', '', 0, 0),
(809, 927, 711, 1, 'persp1', '2019-03-19 15:25:07', '8a208b01-be35-40b8-85b7-5d00d37705d3', '0.00', '0.00', '', 0, 0),
(810, 929, 712, 1, 'persp1', '2019-03-19 15:25:51', 'e14eee86-bc94-4f95-b250-a133427b72ba', '0.00', '0.00', '', 0, 0),
(811, 931, 713, 1, 'persp1', '2019-03-19 15:26:14', '39344104-2648-4119-a1a7-ca1e526f72b6', '0.00', '0.00', '', 0, 0),
(812, 933, 714, 1, 'persp1', '2019-03-19 15:26:39', '081c61f7-c7f0-4679-9ea3-85ef6f6f9613', '0.00', '0.00', '', 0, 0),
(813, 935, 716, 1, 'persp1', '2019-03-19 15:27:09', '6258bafe-33d7-4f59-950e-eb9c0781ab31', '0.00', '0.00', '', 0, 0),
(814, 937, 715, 1, 'persp1', '2019-03-19 15:28:50', '65091712-c41c-41cd-9595-66be2b602b18', '0.00', '0.00', '', 0, 0),
(815, 941, 257, 4, 'persp1', '2019-03-19 16:06:59', '30c32109-e8c7-49d7-a968-29c2eaceab63', '0.00', '0.00', '', 0, 0),
(816, 941, 718, 5, 'persp1', '2019-03-19 16:08:16', 'd57617a8-3000-4a73-8a74-2b20e254324d', '0.00', '0.00', '', 0, 0),
(817, 942, 720, 5, 'persp1', '2019-03-20 08:13:14', '65c0f91d-ec1e-4ca3-835e-9e20dc9c9037', '0.00', '0.00', '', 0, 0),
(818, 944, 263, 5, 'persp1', '2019-03-20 08:13:27', '3c9ae24f-4d00-45dc-a83b-5016a28c2ec1', '0.00', '0.00', '', 0, 0),
(820, 945, 719, 5, 'persp1', '2019-03-20 08:14:11', '2b069fa4-cd84-4256-9e58-61fa5a1277a0', '0.00', '0.00', '', 0, 0),
(821, 946, 717, 5, 'persp1', '2019-03-20 08:14:45', '298b5c6e-dbf3-40dd-a605-93b515fe323c', '0.00', '0.00', '', 0, 0),
(934, 924, 880, 1, 'persp1', '2020-09-15 20:40:22', '350e6057-ef83-477b-9544-3bc4a4df901d', '0.00', '0.00', '', 0, 0),
(935, 925, 881, 1, 'persp1', '2020-09-15 20:40:22', '746ccc69-bbaa-4da6-8c08-f8553b67f33f', '0.00', '0.00', '', 0, 0),
(936, 927, 882, 1, 'persp1', '2020-09-15 20:40:22', '507fbcaf-063e-46d6-9707-f1ab09877f63', '0.00', '0.00', '', 0, 0),
(937, 929, 883, 1, 'persp1', '2020-09-15 20:40:22', 'fab6a8fd-454a-4fc7-abf3-2ca108f59d04', '0.00', '0.00', '', 0, 0),
(938, 931, 884, 1, 'persp1', '2020-09-15 20:40:22', 'e88aef09-9afe-4f20-a200-d7001d284a73', '0.00', '0.00', '', 0, 0),
(939, 933, 885, 1, 'persp1', '2020-09-15 20:40:22', '3673dfa6-ce73-44b1-a8c5-a27e22b08906', '0.00', '0.00', '', 0, 0),
(940, 937, 886, 1, 'persp1', '2020-09-15 20:40:22', 'ae5305d6-c250-4626-8513-ef36f9b5828e', '0.00', '0.00', '', 0, 0),
(941, 935, 887, 1, 'persp1', '2020-09-15 20:40:22', '56482ce8-d650-4baf-bca4-9c42cef8406a', '0.00', '0.00', '', 0, 0),
(942, 941, 888, 4, 'persp1', '2020-09-15 20:40:22', 'c884bf0e-b5e5-4d48-adcb-c2cc2a780c7c', '0.00', '0.00', '', 0, 0),
(943, 944, 890, 5, 'persp1', '2020-09-15 20:40:22', 'c6dc2c84-fb82-4911-936d-3027565db432', '0.00', '0.00', '', 0, 0),
(944, 946, 891, 5, 'persp1', '2020-09-15 20:40:22', '036013f6-aba0-4dcc-ac2a-e1231736e78b', '0.00', '0.00', '', 0, 0),
(945, 941, 892, 5, 'persp1', '2020-09-15 20:40:22', 'b0711922-88d1-4ab9-bf67-49df53f47719', '0.00', '0.00', '', 0, 0),
(946, 945, 893, 5, 'persp1', '2020-09-15 20:40:22', '73652272-c5f4-4cdd-81ea-5dc514342423', '0.00', '0.00', '', 0, 0),
(947, 942, 894, 5, 'persp1', '2020-09-15 20:40:22', '3a684c39-4c64-4b97-b217-36626cb88957', '0.00', '0.00', '', 0, 0),
(948, 922, 906, 1, 'persp1', '2020-09-15 20:40:22', '6ca61db7-1325-4835-a573-2439f2baf373', '0.00', '0.00', '', 0, 0),
(949, 959, 919, 1, 'persp1', '2021-11-15 09:40:25', '26d55eb2-2624-45c9-927a-d4a869a5d86f', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:29:\"/tasse/farben/weiss_front.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(952, 962, 920, 1, 'persp1', '2021-11-15 09:41:31', '950e8607-d72c-4954-a99c-54c4ba881301', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:35:\"/tasse/farben/pastellrosa_front.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(964, 983, 931, 1, 'persp1', '2021-11-15 10:00:10', 'af211ecb-8f7b-4bda-9e72-88bd202a532c', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:29:\"/tasse/masken/maske_front.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(965, 984, 931, 1, 'persp2', '2021-11-15 10:00:36', '59adc1bb-a961-464d-b7e3-87cb50a94666', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:27:\"/tasse/masken/maske_top.png\";s:11:\"perspective\";s:6:\"persp2\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(966, 985, 931, 1, 'persp3', '2021-11-15 10:00:48', '5b24483f-210b-4582-b388-21dfda969ceb', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:31:\"/tasse/masken/maske_back_v2.png\";s:11:\"perspective\";s:6:\"persp3\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(970, 961, 919, 1, 'persp2', '2021-11-15 10:05:20', 'ab417326-3b58-4176-bd29-50c5ff90d422', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:27:\"/tasse/farben/weiss_top.png\";s:11:\"perspective\";s:6:\"persp2\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(971, 960, 919, 1, 'persp3', '2021-11-15 10:05:27', '1942e2f3-1d6b-4014-b2a0-c3300823396c', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:28:\"/tasse/farben/weiss_back.png\";s:11:\"perspective\";s:6:\"persp3\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(972, 963, 920, 1, 'persp3', '2021-11-15 10:05:45', 'f9e160c1-e948-4b36-870b-514b466657c3', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:34:\"/tasse/farben/pastellrosa_back.png\";s:11:\"perspective\";s:6:\"persp3\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(973, 961, 920, 1, 'persp2', '2021-11-15 10:05:51', '26567173-985c-4033-9621-09aaf881a8c6', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:27:\"/tasse/farben/weiss_top.png\";s:11:\"perspective\";s:6:\"persp2\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(975, 969, 922, 1, 'persp2', '2021-11-15 10:06:22', '834fb89b-5525-4a7d-8f82-59cdb2082158', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:29:\"/tasse/farben/tuerkis_top.png\";s:11:\"perspective\";s:6:\"persp2\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(977, 976, 923, 1, 'persp2', '2021-11-15 10:06:47', '499e5325-6ab8-42d6-a5e6-00be118f7eba', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:26:\"/tasse/farben/blau_top.png\";s:11:\"perspective\";s:6:\"persp2\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(979, 966, 921, 1, 'persp2', '2021-11-15 10:07:27', '9aedfea8-6138-4511-a14e-12a7cdbdbef8', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:26:\"/tasse/farben/pink_top.png\";s:11:\"perspective\";s:6:\"persp2\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(982, 975, 923, 1, 'persp1', '2021-11-15 10:08:57', '0cd6b29a-a8b0-4e7a-8544-c09cc3179287', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:28:\"/tasse/farben/blau_front.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(983, 973, 923, 1, 'persp3', '2021-11-15 10:09:03', 'd820d7db-5ba1-4b00-81bb-8ed11a6b251c', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:27:\"/tasse/farben/blau_back.png\";s:11:\"perspective\";s:6:\"persp3\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(984, 968, 922, 1, 'persp1', '2021-11-15 10:09:54', 'e80fc039-0995-4cdb-aa4c-da3876d34f6d', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:31:\"/tasse/farben/tuerkis_front.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(985, 967, 922, 1, 'persp3', '2021-11-15 10:10:00', 'dfbee88c-3ed5-4ceb-8d20-e111c1e234d7', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:30:\"/tasse/farben/tuerkis_back.png\";s:11:\"perspective\";s:6:\"persp3\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(986, 965, 921, 1, 'persp1', '2021-11-15 10:10:25', '64c5af6e-4012-41b2-af6e-afa7f1035c8a', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:28:\"/tasse/farben/pink_front.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(987, 964, 921, 1, 'persp3', '2021-11-15 10:10:32', 'c7f9e07a-cf92-49d6-817d-f09aada2dea4', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:27:\"/tasse/farben/pink_back.png\";s:11:\"perspective\";s:6:\"persp3\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(988, 986, 929, 3, 'persp3', '2021-11-15 10:12:49', '43655b43-61e4-4786-803b-1ed6d2000595', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:30:\"/tasse/Logos/girlsday_back.png\";s:11:\"perspective\";s:6:\"persp3\";s:5:\"layer\";s:1:\"3\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(989, 987, 929, 3, 'persp1', '2021-11-15 10:12:54', 'b19af4ef-3eb9-4393-b76c-38da1d5dba46', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:31:\"/tasse/Logos/girlsday_front.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"3\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(990, 992, 938, 1, 'persp1', '2021-11-15 10:46:44', '7ef90671-407b-40b2-95a1-04062be6e1fe', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:16:\"/haus/villa2.jpg\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(991, 994, 939, 1, 'persp1', '2021-11-15 10:47:40', '7ee3d00b-e7aa-4211-a74d-140e54976710', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:25:\"/haus/mehfamlienhaus1.jpg\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(992, 995, 940, 1, 'persp1', '2021-11-15 10:48:18', 'd62c3e7a-9719-4de2-b899-885a3e3169a5', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:25:\"/haus/mehfamlienhaus2.jpg\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(993, 996, 941, 1, 'persp1', '2021-11-15 10:49:07', '6de0a60b-a8a7-4767-b9e2-c95ace3a465a', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:25:\"/haus/mehfamlienhaus3.jpg\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(994, 991, 942, 1, 'persp1', '2021-11-15 10:49:46', 'f5c81750-b941-4774-886a-27c7c36c7128', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:25:\"/haus/mehfamlienhaus4.jpg\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(995, 997, 943, 1, 'persp1', '2021-11-15 10:51:13', '6d26cdde-282e-4e1a-8c31-06336690ccae', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:16:\"/haus/villa3.jpg\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(996, 998, 944, 1, 'persp1', '2021-11-15 10:51:54', 'b7abcb37-442a-49d1-88b7-d2abf43ba597', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:26:\"/haus/Einfamilienhaus1.jpg\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(997, 999, 945, 1, 'persp1', '2021-11-15 10:52:51', '26a5074b-0b44-45ac-aea9-5f86a1f408f8', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:26:\"/haus/Einfamilienhaus2.jpg\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(998, 990, 946, 1, 'persp1', '2021-11-15 10:53:45', '47fca671-5284-4b9f-8b00-9d113c9d1f64', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:26:\"/haus/Einfamilienhaus3.jpg\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(999, 1027, 975, 1, 'persp1', '2021-11-15 11:36:59', 'eb5fde31-387b-4663-893e-75e23a0b4cf6', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:31:\"/pick-up/pick-up-weiss-pos1.jpg\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1000, 1028, 975, 1, 'persp2', '2021-11-15 11:37:23', 'f65195de-9257-4e80-91e2-01bc7a84ea5a', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:31:\"/pick-up/pick-up-weiss-pos2.jpg\";s:11:\"perspective\";s:6:\"persp2\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1001, 1029, 975, 1, 'persp3', '2021-11-15 11:39:45', '73657813-b78c-454c-8b15-68ff8cf903e7', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:31:\"/pick-up/pick-up-weiss-pos3.jpg\";s:11:\"perspective\";s:6:\"persp3\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1002, 1030, 975, 1, 'persp4', '2021-11-15 11:40:02', 'b2b8a63a-3578-4b89-a102-372ee307d784', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:31:\"/pick-up/pick-up-weiss-pos4.jpg\";s:11:\"perspective\";s:6:\"persp4\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1003, 1031, 976, 1, 'persp1', '2021-11-15 11:40:34', 'c01f245b-8b45-4e86-82f6-f5dc9ab032d5', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:30:\"/pick-up/pick-up-blau-pos1.jpg\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1004, 1032, 976, 1, 'persp2', '2021-11-15 11:40:53', '232bc1df-b334-43f6-8f50-ed376add52ee', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:30:\"/pick-up/pick-up-blau-pos2.jpg\";s:11:\"perspective\";s:6:\"persp2\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1005, 1033, 976, 1, 'persp3', '2021-11-15 11:41:03', '83a82c58-23c2-445e-9a3a-7a54be274fc8', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:30:\"/pick-up/pick-up-blau-pos3.jpg\";s:11:\"perspective\";s:6:\"persp3\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1006, 1034, 976, 1, 'persp4', '2021-11-15 11:41:13', 'ff711102-2bcf-40dd-8a66-f9e1fe5677ac', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:30:\"/pick-up/pick-up-blau-pos4.jpg\";s:11:\"perspective\";s:6:\"persp4\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1007, 1035, 977, 1, 'persp1', '2021-11-15 11:41:40', '44a574cd-2bd3-4163-9023-822ca7d2fb90', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:29:\"/pick-up/pick-up-rot-pos1.jpg\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1008, 1036, 977, 1, 'persp2', '2021-11-15 11:41:51', '3283b691-5844-48ed-a52d-89d7bff159d9', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:29:\"/pick-up/pick-up-rot-pos2.jpg\";s:11:\"perspective\";s:6:\"persp2\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1009, 1037, 977, 1, 'persp3', '2021-11-15 11:42:03', '65dfb1fa-b3fc-402e-8204-be067fe475df', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:29:\"/pick-up/pick-up-rot-pos3.jpg\";s:11:\"perspective\";s:6:\"persp3\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1010, 1038, 977, 1, 'persp4', '2021-11-15 11:42:12', '988346c3-f0ae-4ee7-b04c-7bf1b20d6cdb', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:29:\"/pick-up/pick-up-rot-pos4.jpg\";s:11:\"perspective\";s:6:\"persp4\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1017, 1042, 979, 2, 'persp1', '2021-11-15 11:49:52', 'fe79d71b-fa84-4592-9362-d46fdc095aaf', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:21:\"/pick-up/v10-posx.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"2\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1018, 1042, 979, 2, 'persp2', '2021-11-15 11:49:57', '2f9fb767-0082-4cc2-ab54-472b3b7e8171', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:21:\"/pick-up/v10-posx.png\";s:11:\"perspective\";s:6:\"persp2\";s:5:\"layer\";s:1:\"2\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1019, 1042, 979, 2, 'persp3', '2021-11-15 11:50:14', '10d5a10e-ff26-4923-af24-049b9969fa5d', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:21:\"/pick-up/v10-posx.png\";s:11:\"perspective\";s:6:\"persp3\";s:5:\"layer\";s:1:\"2\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1020, 1042, 979, 2, 'persp4', '2021-11-15 11:50:27', 'a166b33f-1442-4a0e-81b8-384c4d090f8c', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:21:\"/pick-up/v10-posx.png\";s:11:\"perspective\";s:6:\"persp4\";s:5:\"layer\";s:1:\"2\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1021, 1039, 978, 2, 'persp1', '2021-11-15 11:50:39', '3244a4b6-1149-48b5-80db-d7dec1591cc5', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:20:\"/pick-up/v8-posx.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"2\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1022, 1039, 978, 2, 'persp2', '2021-11-15 11:50:43', 'c5955381-0b04-400c-b226-2ffc22e37e6b', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:20:\"/pick-up/v8-posx.png\";s:11:\"perspective\";s:6:\"persp2\";s:5:\"layer\";s:1:\"2\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1023, 1039, 978, 2, 'persp3', '2021-11-15 11:50:48', '651d2d03-f041-494e-a434-e0013fbbc809', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:20:\"/pick-up/v8-posx.png\";s:11:\"perspective\";s:6:\"persp3\";s:5:\"layer\";s:1:\"2\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1024, 1039, 978, 2, 'persp4', '2021-11-15 11:50:52', '0e7982b5-8299-4251-aac4-54d848a0a905', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:20:\"/pick-up/v8-posx.png\";s:11:\"perspective\";s:6:\"persp4\";s:5:\"layer\";s:1:\"2\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1025, 1043, 980, 2, 'persp1', '2021-11-15 11:51:28', '186baa3f-4852-4e2e-9882-d90374eb2485', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:21:\"/pick-up/v12-posx.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"2\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1026, 1043, 980, 2, 'persp2', '2021-11-15 11:51:39', '702f6119-2661-4ba3-b78b-694056376149', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:21:\"/pick-up/v12-posx.png\";s:11:\"perspective\";s:6:\"persp2\";s:5:\"layer\";s:1:\"2\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1027, 1043, 980, 2, 'persp3', '2021-11-15 11:51:47', '1c0f5dfb-3514-4f30-87ba-e2f50630bc14', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:21:\"/pick-up/v12-posx.png\";s:11:\"perspective\";s:6:\"persp3\";s:5:\"layer\";s:1:\"2\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1028, 1043, 980, 2, 'persp4', '2021-11-15 11:51:55', 'f76516a1-f610-405a-98f5-9caf0ae55345', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:21:\"/pick-up/v12-posx.png\";s:11:\"perspective\";s:6:\"persp4\";s:5:\"layer\";s:1:\"2\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1029, 1055, 989, 5, 'persp1', '2021-11-15 13:08:40', '3535fe3c-7169-4ac7-aefc-04636033d7a4', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:44:\"/pick-up/aufkleber/AufkleberAptoGWpersp1.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"5\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1030, 1056, 989, 5, 'persp3', '2021-11-15 13:08:51', 'a333a55d-8656-4f34-9b27-efa928c1a33a', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:44:\"/pick-up/aufkleber/AufkleberAptoGWpersp3.png\";s:11:\"perspective\";s:6:\"persp3\";s:5:\"layer\";s:1:\"5\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1031, 1057, 989, 5, 'persp4', '2021-11-15 13:09:05', '03ed4fcb-d477-4e4f-8d22-85a43dafb788', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:44:\"/pick-up/aufkleber/AufkleberAptoGWpersp4.png\";s:11:\"perspective\";s:6:\"persp4\";s:5:\"layer\";s:1:\"5\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0);
INSERT INTO `apto_product_render_image` (`surrogate_id`, `media_file_id`, `element_id`, `layer`, `perspective`, `created`, `id`, `offset_x`, `offset_y`, `render_image_options`, `offset_unit_x`, `offset_unit_y`) VALUES
(1032, 1058, 990, 5, 'persp1', '2021-11-15 13:09:51', '20ad2c3d-7bb1-4610-92ed-dd3044c0171d', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:44:\"/pick-up/aufkleber/AufkleberAptoBWpersp1.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"5\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1033, 1059, 990, 5, 'persp3', '2021-11-15 13:10:14', '6e2df557-85e5-48fd-80b2-963e1aa57bea', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:44:\"/pick-up/aufkleber/AufkleberAptoBWpersp3.png\";s:11:\"perspective\";s:6:\"persp3\";s:5:\"layer\";s:1:\"5\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1034, 1060, 990, 5, 'persp4', '2021-11-15 13:10:26', '5d72d7d0-7718-486b-9ed2-3c517a1f503d', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:44:\"/pick-up/aufkleber/AufkleberAptoBWpersp4.png\";s:11:\"perspective\";s:6:\"persp4\";s:5:\"layer\";s:1:\"5\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1035, 1061, 991, 5, 'persp1', '2021-11-15 13:10:42', '763e7173-5f97-496f-93af-b5a8504f4085', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:44:\"/pick-up/aufkleber/AufkleberAptoBGpersp1.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"5\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1036, 1062, 991, 5, 'persp3', '2021-11-15 13:10:48', '9799ec40-8397-4095-bb52-2c16826a29b9', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:44:\"/pick-up/aufkleber/AufkleberAptoBGpersp3.png\";s:11:\"perspective\";s:6:\"persp3\";s:5:\"layer\";s:1:\"5\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1037, 1063, 991, 5, 'persp4', '2021-11-15 13:10:56', '9895ff25-6c2d-4fdd-bfbf-d85f860a1fbc', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:44:\"/pick-up/aufkleber/AufkleberAptoBGpersp4.png\";s:11:\"perspective\";s:6:\"persp4\";s:5:\"layer\";s:1:\"5\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1038, 1065, 993, 2, 'persp1', '2021-11-15 13:13:39', 'bbaea6d3-f9ce-45eb-8824-b6733e2ab8c9', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:44:\"/pick-up/aufkleber/WindschutzvornePersp1.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"2\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1040, 1067, 993, 2, 'persp4', '2021-11-15 13:14:01', 'e7157179-a09e-4cd6-840c-ea6347d65756', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:44:\"/pick-up/aufkleber/WindschutzvornePersp4.png\";s:11:\"perspective\";s:6:\"persp4\";s:5:\"layer\";s:1:\"2\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1044, 1066, 993, 22, 'persp2', '2021-11-15 13:14:21', '927bc6e0-0a81-4d9c-a5b9-e68acf367154', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:44:\"/pick-up/aufkleber/WindschutzvornePersp2.png\";s:11:\"perspective\";s:6:\"persp2\";s:5:\"layer\";s:2:\"22\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1057, 1071, 998, 3, 'persp1', '2021-11-15 13:28:29', 'b791b486-3e27-4841-a89e-2ea5e944397c', '15.00', '5.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:31:\"/pick-up/paket-climber-posx.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"3\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";s:2:\"15\";s:7:\"offsetY\";s:1:\"5\";s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1058, 1071, 998, 3, 'persp4', '2021-11-15 13:28:40', 'aa35ac40-740c-4d41-9648-98aa9649fa11', '15.00', '5.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:31:\"/pick-up/paket-climber-posx.png\";s:11:\"perspective\";s:6:\"persp4\";s:5:\"layer\";s:1:\"3\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";s:2:\"15\";s:7:\"offsetY\";s:1:\"5\";s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1059, 1071, 998, 3, 'persp3', '2021-11-15 13:28:46', '9be5c1ad-cd00-4210-bcc4-12f79bf76a65', '15.00', '5.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:31:\"/pick-up/paket-climber-posx.png\";s:11:\"perspective\";s:6:\"persp3\";s:5:\"layer\";s:1:\"3\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";s:2:\"15\";s:7:\"offsetY\";s:1:\"5\";s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1060, 1071, 998, 3, 'persp2', '2021-11-15 13:28:52', '9de3ebd8-ec64-44ec-a1d5-94e756effdf2', '15.00', '5.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:31:\"/pick-up/paket-climber-posx.png\";s:11:\"perspective\";s:6:\"persp2\";s:5:\"layer\";s:1:\"3\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";s:2:\"15\";s:7:\"offsetY\";s:1:\"5\";s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1061, 1069, 997, 3, 'persp1', '2021-11-15 13:29:10', 'e6e15a5c-3cf4-43ef-a254-46a44331c2b9', '15.00', '5.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:30:\"/pick-up/paket-safari-posx.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"3\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";s:2:\"15\";s:7:\"offsetY\";s:1:\"5\";s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1062, 1069, 997, 3, 'persp2', '2021-11-15 13:29:18', '5f40fce4-2409-413d-8cee-2420ac61060a', '15.00', '5.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:30:\"/pick-up/paket-safari-posx.png\";s:11:\"perspective\";s:6:\"persp2\";s:5:\"layer\";s:1:\"3\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";s:2:\"15\";s:7:\"offsetY\";s:1:\"5\";s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1063, 1069, 997, 3, 'persp4', '2021-11-15 13:29:27', 'b34ec835-5255-4de0-82f3-4a77f8945479', '15.00', '5.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:30:\"/pick-up/paket-safari-posx.png\";s:11:\"perspective\";s:6:\"persp4\";s:5:\"layer\";s:1:\"3\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";s:2:\"15\";s:7:\"offsetY\";s:1:\"5\";s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1064, 1069, 997, 3, 'persp3', '2021-11-15 13:29:34', 'd111ce88-e7df-4e74-88f8-95d8a2c2a519', '15.00', '5.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:30:\"/pick-up/paket-safari-posx.png\";s:11:\"perspective\";s:6:\"persp3\";s:5:\"layer\";s:1:\"3\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";s:2:\"15\";s:7:\"offsetY\";s:1:\"5\";s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1065, 1073, 987, 4, 'persp1', '2021-11-15 13:33:46', 'f3ab48f8-b94b-4aba-839a-9c170dad125f', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:23:\"/pick-up/FelgenBlau.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"4\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1066, 1074, 986, 4, 'persp1', '2021-11-15 13:34:17', '96146fd3-bfa2-473e-9c37-d90482df63ea', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:25:\"/pick-up/FelgenOrange.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"4\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1067, 1075, 984, 4, 'persp1', '2021-11-15 13:34:47', '8b49e5b0-dda3-4a37-9eb3-70e4a6039adb', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:26:\"/pick-up/FelgenSchwarz.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"4\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1068, 1076, 985, 4, 'persp1', '2021-11-15 13:35:32', '5a09ba8f-06ad-4f1b-9bea-56e98fa65f5a', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:22:\"/pick-up/FelgenRot.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"4\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1069, 1077, 1000, 1, 'persp1', '2021-11-15 13:51:28', 'c2811751-1a13-4425-9c5c-866224f89bc7', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:18:\"/garagentor/bg.jpg\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1070, 1082, 1004, 2, 'persp1', '2021-11-15 14:07:36', '2c4d13bb-b367-4d78-bffe-ea9105560213', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:22:\"/garagentor/ri-rot.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"2\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1071, 1084, 1005, 2, 'persp1', '2021-11-15 14:07:59', 'c2f0c120-4c0e-4acb-9922-5713d5858fe0', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:23:\"/garagentor/ri-blau.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"2\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1072, 1086, 1006, 2, 'persp1', '2021-11-15 14:08:22', '8e108f32-b041-4bad-ba79-f6f4be25d039', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:24:\"/garagentor/ri-gruen.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"2\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1073, 1088, 1007, 3, 'persp1', '2021-11-15 14:13:17', '44ae7836-099a-4f38-a6bd-dfa206a4a82c', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:26:\"/garagentor/ri-typ2_v1.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"3\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1074, 1092, 1009, 3, 'persp1', '2021-11-15 14:14:29', 'd0b5226e-c6f7-491e-8e0d-1f0db58f29d8', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:26:\"/garagentor/ri-typ3_v1.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"3\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1075, 1093, 1008, 3, 'persp1', '2021-11-15 14:14:55', 'aa8a10c7-1ffc-43fe-a948-02fd8b6168ef', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:23:\"/garagentor/ri-typ2.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"3\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1076, 1102, 1021, 1, 'persp1', '2021-11-15 14:40:26', 'b8f5e3a2-c30d-4350-a7b9-fee6c26fdcf6', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:84:\"/ankle-boot/feines_glattleder_/persp1/ankle_boot-front_oberleder-APEPitone116.07.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1078, 1104, 1021, 1, 'persp2', '2021-11-15 14:41:25', 'dcc75a8f-c456-4b5d-9e68-20cd91b28682', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:84:\"/ankle-boot/feines_glattleder_/persp2/ankle_boot-front_oberleder-APEPitone116.01.png\";s:11:\"perspective\";s:6:\"persp2\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1079, 1105, 1021, 1, 'persp3', '2021-11-15 14:41:45', 'ddc8b5f4-b69c-42e2-a7a8-046d4350b6ad', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:83:\"/ankle-boot/feines_glattleder_/sohle/ankle_boot-front_oberleder-APEPitone116.05.png\";s:11:\"perspective\";s:6:\"persp3\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1080, 1106, 1021, 1, 'persp4', '2021-11-15 14:42:14', '57d836a7-6887-4753-880b-ea3a39392264', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:81:\"/ankle-boot/feines_glattleder_/top/ankle_boot-front_oberleder-APEPitone116.03.png\";s:11:\"perspective\";s:6:\"persp4\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1083, 1108, 1020, 1, 'persp1', '2021-11-15 14:44:00', '4f7a2ba3-605b-4679-9dee-ff47ae2a579a', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:81:\"/ankle-boot/feines_glattleder_/persp1/ankle_boot-front_oberleder-MAS320019.07.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1084, 1109, 1020, 1, 'persp2', '2021-11-15 14:44:07', 'fc5ccb7d-0083-4f80-bc8c-681f10941d34', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:81:\"/ankle-boot/feines_glattleder_/persp2/ankle_boot-front_oberleder-MAS320019.01.png\";s:11:\"perspective\";s:6:\"persp2\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1085, 1110, 1020, 1, 'persp3', '2021-11-15 14:44:24', '5e333f39-fa04-4ba4-808e-53db80ca1ddb', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:80:\"/ankle-boot/feines_glattleder_/sohle/ankle_boot-front_oberleder-MAS320019.05.png\";s:11:\"perspective\";s:6:\"persp3\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1086, 1111, 1020, 1, 'persp4', '2021-11-15 14:44:48', '86ccbaf1-ae7e-4463-87ea-393058a3ede2', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:78:\"/ankle-boot/feines_glattleder_/top/ankle_boot-front_oberleder-MAS320019.03.png\";s:11:\"perspective\";s:6:\"persp4\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1087, 1112, 1019, 1, 'persp1', '2021-11-15 14:45:25', '3cbbfe35-4ce0-4cba-a296-ee59060296cc', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:81:\"/ankle-boot/feines_glattleder_/persp1/ankle_boot-front_oberleder-MAS100001.07.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1089, 1115, 1019, 1, 'persp3', '2021-11-15 14:45:59', '45e9e667-edeb-4aa1-a89c-b29df22448f8', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:80:\"/ankle-boot/feines_glattleder_/sohle/ankle_boot-front_oberleder-MAS100001.05.png\";s:11:\"perspective\";s:6:\"persp3\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1090, 1113, 1019, 1, 'persp2', '2021-11-15 14:46:05', 'fc7718b9-79a5-4beb-98fd-d831cbac4a55', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:81:\"/ankle-boot/feines_glattleder_/persp2/ankle_boot-front_oberleder-MAS100001.01.png\";s:11:\"perspective\";s:6:\"persp2\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1091, 1116, 1019, 1, 'persp4', '2021-11-15 14:46:19', 'bdf775a7-bc00-4db2-a68b-8aa3bc9da56e', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:78:\"/ankle-boot/feines_glattleder_/top/ankle_boot-front_oberleder-MAS100001.03.png\";s:11:\"perspective\";s:6:\"persp4\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1098, 1125, 1024, 1, 'persp1', '2021-11-17 05:59:35', '96a222ff-ea67-4200-9d21-df5c11056cae', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:67:\"/ankle-boot/sohle/persp1/ankle_boot-sohle_rund-black_leather.07.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1099, 1126, 1024, 1, 'persp2', '2021-11-17 05:59:50', '860370cf-4dbc-4cda-afdb-3be00620cb42', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:67:\"/ankle-boot/sohle/persp2/ankle_boot-sohle_rund-black_leather.01.png\";s:11:\"perspective\";s:6:\"persp2\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1100, 1127, 1024, 1, 'persp3', '2021-11-17 06:00:11', '19aacb66-1048-4bc2-88e5-449762a04edb', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:66:\"/ankle-boot/sohle/sohle/ankle_boot-sohle_rund-black_leather.05.png\";s:11:\"perspective\";s:6:\"persp3\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1101, 1128, 1024, 1, 'persp4', '2021-11-17 06:00:27', '89628d31-21f6-47d5-a35c-9dfcf0e81ce8', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:64:\"/ankle-boot/sohle/top/ankle_boot-sohle_rund-black_leather.03.png\";s:11:\"perspective\";s:6:\"persp4\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1102, 1130, 1025, 1, 'persp1', '2021-11-17 06:01:32', '8954a94b-0f5b-4901-a0f4-b12ac048c79d', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:69:\"/ankle-boot/sohle/ankle_boot-sohle_rund-lightblue_pantone2708U.07.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1103, 1131, 1025, 1, 'persp2', '2021-11-17 06:02:07', '058b7e7f-a1f7-4db2-80c9-0a2ddf893d98', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:69:\"/ankle-boot/sohle/ankle_boot-sohle_rund-lightblue_pantone2708U.01.png\";s:11:\"perspective\";s:6:\"persp2\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1104, 1132, 1025, 1, 'persp3', '2021-11-17 06:02:31', '315599e6-1b1f-434e-a519-85f7cdc94c86', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:69:\"/ankle-boot/sohle/ankle_boot-sohle_rund-lightblue_pantone2708U.05.png\";s:11:\"perspective\";s:6:\"persp3\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1105, 1133, 1025, 1, 'persp4', '2021-11-17 06:02:48', '32decc3e-cbf2-4036-b2e7-8515e6e969cc', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:69:\"/ankle-boot/sohle/ankle_boot-sohle_rund-lightblue_pantone2708U.03.png\";s:11:\"perspective\";s:6:\"persp4\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1107, 1122, 1023, 1, 'persp3', '2021-11-17 06:04:35', '04448214-a49a-4803-b02a-178ffb99d586', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:73:\"/ankle-boot/absatzfleck/sohle/ankle_boot-absatzfleck-black_leather.05.png\";s:11:\"perspective\";s:6:\"persp3\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1108, 1121, 1023, 1, 'persp2', '2021-11-17 06:05:04', '17086ba9-b121-4291-b045-96f22d7514f9', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:74:\"/ankle-boot/absatzfleck/persp2/ankle_boot-absatzfleck-black_leather.01.png\";s:11:\"perspective\";s:6:\"persp2\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1109, 1123, 1023, 1, 'persp4', '2021-11-17 06:05:12', '86fda223-a2a3-47ba-a967-c54615af9645', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:71:\"/ankle-boot/absatzfleck/top/ankle_boot-absatzfleck-black_leather.03.png\";s:11:\"perspective\";s:6:\"persp4\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1110, 1118, 1022, 1, 'persp3', '2021-11-17 06:06:23', 'a7484093-7a41-4b30-94ee-7ed29546a82a', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:73:\"/ankle-boot/absatzfleck/sohle/ankle_boot-absatzfleck-beige_leather.05.png\";s:11:\"perspective\";s:6:\"persp3\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1111, 1119, 1022, 1, 'persp4', '2021-11-17 06:06:34', '5bf1cbf6-bdfa-44b0-b700-beddd0184710', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:71:\"/ankle-boot/absatzfleck/top/ankle_boot-absatzfleck-beige_leather.03.png\";s:11:\"perspective\";s:6:\"persp4\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1112, 1117, 1022, 1, 'persp2', '2021-11-17 06:07:03', 'b28849b1-8c80-4c42-b211-bc0a59f36fa3', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:74:\"/ankle-boot/absatzfleck/persp2/ankle_boot-absatzfleck-beige_leather.01.png\";s:11:\"perspective\";s:6:\"persp2\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1113, 1135, 1026, 1, 'persp4', '2021-11-17 06:10:43', '537032d6-1e84-4907-98c3-5318ff3aeaeb', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:77:\"/ankle-boot/feines_glattleder_/top/ankle_boot-back_oberleder-MAS100001.03.png\";s:11:\"perspective\";s:6:\"persp4\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1115, 1137, 1026, 1, 'persp3', '2021-11-17 06:11:39', '41c2a386-dc17-4ec5-9fc6-9555dc587ccc', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:79:\"/ankle-boot/feines_glattleder_/sohle/ankle_boot-back_oberleder-MAS100001.05.png\";s:11:\"perspective\";s:6:\"persp3\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1116, 1136, 1026, 1, 'persp2', '2021-11-17 06:11:47', '0b46c65e-9cb7-4fa4-a33b-e05fe22759e7', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:80:\"/ankle-boot/feines_glattleder_/persp2/ankle_boot-back_oberleder-MAS100001.01.png\";s:11:\"perspective\";s:6:\"persp2\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1117, 1138, 1027, 1, 'persp2', '2021-11-17 06:13:34', '44bb14ca-2716-43bf-b0ae-c0aa0bfd9d49', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:80:\"/ankle-boot/feines_glattleder_/persp2/ankle_boot-back_oberleder-MAS320019.01.png\";s:11:\"perspective\";s:6:\"persp2\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0);
INSERT INTO `apto_product_render_image` (`surrogate_id`, `media_file_id`, `element_id`, `layer`, `perspective`, `created`, `id`, `offset_x`, `offset_y`, `render_image_options`, `offset_unit_x`, `offset_unit_y`) VALUES
(1118, 1140, 1027, 1, 'persp3', '2021-11-17 06:13:56', '322498f8-895c-457b-acc6-f3ab54afb3fc', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:79:\"/ankle-boot/feines_glattleder_/sohle/ankle_boot-back_oberleder-MAS320019.05.png\";s:11:\"perspective\";s:6:\"persp3\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1119, 1141, 1027, 1, 'persp4', '2021-11-17 06:14:11', 'af68f6ad-3270-4a98-9507-fd36192c29b2', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:77:\"/ankle-boot/feines_glattleder_/top/ankle_boot-back_oberleder-MAS320019.03.png\";s:11:\"perspective\";s:6:\"persp4\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1120, 1103, 1028, 1, 'persp2', '2021-11-17 06:14:39', '9ab80a3c-3261-4ade-b616-92ad20504af0', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:83:\"/ankle-boot/feines_glattleder_/persp2/ankle_boot-back_oberleder-APEPitone116.01.png\";s:11:\"perspective\";s:6:\"persp2\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1121, 1142, 1028, 1, 'persp3', '2021-11-17 06:14:51', 'c1319b25-9c31-4703-b750-3091255631d4', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:82:\"/ankle-boot/feines_glattleder_/sohle/ankle_boot-back_oberleder-APEPitone116.05.png\";s:11:\"perspective\";s:6:\"persp3\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1122, 1143, 1028, 1, 'persp4', '2021-11-17 06:15:04', '08bbdaa3-14aa-4ac6-afe7-be93cc9772a8', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:80:\"/ankle-boot/feines_glattleder_/top/ankle_boot-back_oberleder-APEPitone116.03.png\";s:11:\"perspective\";s:6:\"persp4\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1124, 1145, 1029, 2, 'persp3', '2021-11-17 06:18:33', '9288ad42-bb78-4f81-936d-0c3b10bb5e5e', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:77:\"/ankle-boot/reissverschluss/sohle/ankle_boot-zipper-ZipperYKK_085beige.05.png\";s:11:\"perspective\";s:6:\"persp3\";s:5:\"layer\";s:1:\"2\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1125, 1147, 1029, 1, 'persp4', '2021-11-17 06:20:35', '3dd19f45-96d3-4fb1-b2b3-37e23b76c82a', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:75:\"/ankle-boot/reissverschluss/top/ankle_boot-zipper-ZipperYKK_085beige.03.png\";s:11:\"perspective\";s:6:\"persp4\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1126, 1144, 1029, 2, 'persp1', '2021-11-17 06:21:41', 'e90668b7-833d-45d8-831e-48b19556019f', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:78:\"/ankle-boot/reissverschluss/persp1/ankle_boot-zipper-ZipperYKK_085beige.07.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"2\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1128, 1149, 1030, 2, 'persp3', '2021-11-17 06:24:40', '084f4c3c-9189-4a16-a151-3dadbe0f41be', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:82:\"/ankle-boot/reissverschluss/sohle/ankle_boot-zipper-ZipperYKK_088dark_brown.05.png\";s:11:\"perspective\";s:6:\"persp3\";s:5:\"layer\";s:1:\"2\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1129, 1148, 1030, 2, 'persp1', '2021-11-17 06:24:50', '44b63ae4-c9f2-4cb7-b08c-8452007b4fbc', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:83:\"/ankle-boot/reissverschluss/persp1/ankle_boot-zipper-ZipperYKK_088dark_brown.07.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"2\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1130, 1150, 1030, 2, 'persp4', '2021-11-17 06:25:19', 'a4918b31-a9fd-4824-9aa0-9b8a8d2392d4', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:80:\"/ankle-boot/reissverschluss/top/ankle_boot-zipper-ZipperYKK_088dark_brown.03.png\";s:11:\"perspective\";s:6:\"persp4\";s:5:\"layer\";s:1:\"2\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1131, 1152, 1031, 2, 'persp1', '2021-11-17 06:27:23', '7fc15088-def7-4b8c-a82a-2ef60c267e38', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:78:\"/ankle-boot/reissverschluss/persp1/ankle_boot-zipper-ZipperYKK_580black.07.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"2\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1132, 1153, 1031, 2, 'persp3', '2021-11-17 06:27:36', '1812bdc8-94ac-402e-a9c2-877c6c183818', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:77:\"/ankle-boot/reissverschluss/sohle/ankle_boot-zipper-ZipperYKK_580black.05.png\";s:11:\"perspective\";s:6:\"persp3\";s:5:\"layer\";s:1:\"2\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1133, 1154, 1031, 2, 'persp4', '2021-11-17 06:27:48', '618e0c25-43d2-4093-b71e-37e90a7158dd', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:75:\"/ankle-boot/reissverschluss/top/ankle_boot-zipper-ZipperYKK_580black.03.png\";s:11:\"perspective\";s:6:\"persp4\";s:5:\"layer\";s:1:\"2\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1134, 1156, 1032, 2, 'persp1', '2021-11-17 06:30:28', '7a4841aa-ab68-4f91-9447-89f5c3c30d79', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:70:\"/ankle-boot/innenleder/persp1/ankle_boot-innenleder_rund-TII306.07.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"2\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1135, 1158, 1033, 2, 'persp1', '2021-11-17 06:31:12', '2115f143-0f06-4ee6-a252-a858315e5df3', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:70:\"/ankle-boot/innenleder/persp1/ankle_boot-innenleder_rund-TII342.07.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"2\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1136, 1160, 1034, 2, 'persp1', '2021-11-17 06:31:39', '98bbbf4c-73b0-4ac4-8fe9-78c2532ad5a2', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:71:\"/ankle-boot/innenleder/persp1/ankle_boot-innenleder_rund-TII7039.07.png\";s:11:\"perspective\";s:6:\"persp1\";s:5:\"layer\";s:1:\"2\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1139, 1163, 1035, 1, 'persp3', '2021-11-17 06:34:33', 'a4879e20-c880-4cf7-a2e7-1ceeab2f1e0b', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:54:\"/ankle-boot/absatz/sohle/ankle_boot-heel-AIS330.05.png\";s:11:\"perspective\";s:6:\"persp3\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1140, 1162, 1035, 1, 'persp2', '2021-11-17 06:34:38', '06da5970-293e-447a-81be-6d1b95c6391c', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:55:\"/ankle-boot/absatz/persp2/ankle_boot-heel-AIS330.01.png\";s:11:\"perspective\";s:6:\"persp2\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1141, 1164, 1035, 1, 'persp4', '2021-11-17 06:34:57', '572a7fe9-d3b7-47c0-acfd-d7d0a2ac8df2', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:52:\"/ankle-boot/absatz/top/ankle_boot-heel-AIS330.03.png\";s:11:\"perspective\";s:6:\"persp4\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1144, 1167, 1036, 1, 'persp3', '2021-11-17 06:37:58', 'bc0b09bc-fcb8-42ec-b876-3affca1502e1', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:57:\"/ankle-boot/absatz/sohle/ankle_boot-heel-MAP100035.05.png\";s:11:\"perspective\";s:6:\"persp3\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1145, 1166, 1036, 1, 'persp2', '2021-11-17 06:38:03', 'c13006c0-ecce-424f-a5b8-99618152da51', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:58:\"/ankle-boot/absatz/persp2/ankle_boot-heel-MAP100035.01.png\";s:11:\"perspective\";s:6:\"persp2\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1146, 1168, 1036, 1, 'persp4', '2021-11-17 06:38:14', '6252fd5a-f0d2-4d25-8236-16f74d5a687d', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:55:\"/ankle-boot/absatz/top/ankle_boot-heel-MAP100035.03.png\";s:11:\"perspective\";s:6:\"persp4\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1147, 1169, 1037, 1, 'persp2', '2021-11-17 06:38:44', 'c73b0faf-dbf3-46bd-b8d2-554a5bc5c17e', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:61:\"/ankle-boot/absatz/persp2/ankle_boot-heel-APEPitone116.01.png\";s:11:\"perspective\";s:6:\"persp2\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1148, 1170, 1037, 1, 'persp3', '2021-11-17 06:38:54', '8fd57d63-da55-45db-8e86-a5898c4f3088', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:60:\"/ankle-boot/absatz/sohle/ankle_boot-heel-APEPitone116.05.png\";s:11:\"perspective\";s:6:\"persp3\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0),
(1149, 1171, 1037, 1, 'persp4', '2021-11-17 06:39:04', 'a054d761-488f-4c7f-818c-01c22ba15ec1', '0.00', '0.00', 'O:65:\"Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\":2:{s:85:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0renderImageOptions\";a:8:{s:4:\"name\";s:0:\"\";s:4:\"file\";s:58:\"/ankle-boot/absatz/top/ankle_boot-heel-APEPitone116.03.png\";s:11:\"perspective\";s:6:\"persp4\";s:5:\"layer\";s:1:\"1\";s:4:\"type\";s:8:\"Statisch\";s:17:\"formulaHorizontal\";N;s:15:\"formulaVertical\";N;s:16:\"elementValueRefs\";a:0:{}}s:80:\"\0Apto\\Catalog\\Domain\\Core\\Model\\Product\\Element\\RenderImageOptions\0offsetOptions\";a:6:{s:7:\"offsetX\";i:0;s:7:\"offsetY\";i:0;s:4:\"type\";s:8:\"Statisch\";s:14:\"formulaOffsetX\";N;s:14:\"formulaOffsetY\";N;s:16:\"elementValueRefs\";a:0:{}}}', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `apto_product_rule`
--

DROP TABLE IF EXISTS `apto_product_rule`;
CREATE TABLE `apto_product_rule` (
  `surrogate_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `id` char(36) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `error_message` longtext DEFAULT NULL COMMENT '(DC2Type:AptoPropertyTranslatedValue)',
  `conditions_operator` int(11) NOT NULL,
  `implications_operator` int(11) NOT NULL,
  `soft_rule` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `apto_product_rule`
--

INSERT INTO `apto_product_rule` (`surrogate_id`, `product_id`, `name`, `created`, `id`, `active`, `error_message`, `conditions_operator`, `implications_operator`, `soft_rule`) VALUES
(29, 48, 'mit Rollokasten', '2018-03-01 12:14:33', 'a899d24c-0680-4aba-b408-ff2824f65952', 1, '[]', 0, 0, 0),
(110, 88, 'rollofarbe', '2020-09-15 20:40:22', 'dce802da-556f-4f20-a0f0-236eece58e46', 0, '[]', 0, 0, 0),
(112, 48, 'ohne Rollokasten', '2020-09-24 20:19:58', 'f1d6df9a-b77b-40a7-9116-69142ecefd43', 1, '[]', 0, 0, 0),
(113, 91, 'Villa', '2021-11-15 11:19:26', '5336c9bc-a952-4e39-aa30-e7d73fc8403e', 1, '[]', 0, 0, 0),
(114, 91, 'Einfamilienhaus', '2021-11-15 11:19:40', 'c7015731-3f69-432c-aa3a-9c36c90290f5', 1, '[]', 0, 0, 0),
(115, 91, 'Mehrfamilienhaus', '2021-11-15 11:19:51', 'a0b2704a-8187-4ee7-815d-29503d387957', 1, '[]', 0, 0, 0),
(116, 91, 'Flachdach', '2021-11-15 11:20:00', 'ae5dbf4f-f3c5-497b-9df1-7d453259c508', 1, '[]', 0, 0, 0),
(117, 92, 'Paket Climber', '2021-11-15 13:19:06', '05ab32de-3b82-44ee-a63a-33db2dc550ee', 1, '{\"de_DE\":\"Das Paket \\\"climber\\\" ist nicht mit dem V8 Motor verwendbar. <br \\/>W\\u00e4hlen Sie einen V10 oder V12 Motor!\"}', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `apto_product_rule_condition`
--

DROP TABLE IF EXISTS `apto_product_rule_condition`;
CREATE TABLE `apto_product_rule_condition` (
  `surrogate_id` int(11) NOT NULL,
  `rule_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `property` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `operator` int(11) NOT NULL,
  `section_id` varchar(255) DEFAULT NULL COMMENT '(DC2Type:AptoPropertyUuid)',
  `element_id` varchar(255) DEFAULT NULL COMMENT '(DC2Type:AptoPropertyUuid)',
  `computed_product_value_id` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `apto_product_rule_condition`
--

INSERT INTO `apto_product_rule_condition` (`surrogate_id`, `rule_id`, `created`, `property`, `value`, `id`, `operator`, `section_id`, `element_id`, `computed_product_value_id`, `type`) VALUES
(160, 29, '2019-03-20 09:55:26', NULL, NULL, '1591ccbf-b0fd-4fe1-8e8a-daef133f4cdc', 0, '48562933-fed0-46ea-bfec-713f2ed6e8bd', '1c796d4a-dfa9-4474-ac67-9fce4818e7da', NULL, 0),
(166, 110, '2020-09-15 20:40:22', NULL, NULL, '4a05496f-d5e0-4f8f-81af-3711613eac33', 0, '67790e03-2e2c-4e13-81a6-b52dc3d65982', '5b887fc3-c768-4839-97b7-fbc770b1dd02', NULL, 0),
(168, 112, '2020-09-24 20:21:40', NULL, NULL, '9db702f2-fe98-439c-b793-7765223f62c6', 0, '48562933-fed0-46ea-bfec-713f2ed6e8bd', '2273ce2a-2c16-4455-81c2-8e37283b1843', NULL, 0),
(169, 113, '2021-11-15 11:21:29', NULL, NULL, 'a864e48e-c915-46e8-9943-3b3d1999d53d', 1, 'd0d6a683-f92a-4354-8d81-2c93663c32f7', '6c33b146-2fc0-4c81-a923-640717d6399d', NULL, 0),
(170, 115, '2021-11-15 11:25:04', NULL, NULL, 'f13524fd-2535-4c51-accf-5add955ab03d', 1, 'd0d6a683-f92a-4354-8d81-2c93663c32f7', 'b397533f-343c-4c00-8605-9d518f0fe6b5', NULL, 0),
(171, 116, '2021-11-15 11:26:29', NULL, NULL, 'd1bd345d-182d-4464-a13c-aa17e6196cce', 1, 'd68afd1b-374a-411e-a9f4-332824644a87', '9a096d0b-0326-4b86-9e84-c06e9776a83e', NULL, 0),
(172, 116, '2021-11-15 11:26:29', NULL, NULL, 'd876ec6e-0ab6-4f5c-a33d-a4f57d711dd5', 1, 'd68afd1b-374a-411e-a9f4-332824644a87', '4b4bc9e1-0cbc-4a07-b38d-7f5f078c8e72', NULL, 0),
(173, 116, '2021-11-15 11:26:29', NULL, NULL, '9895bdfc-3ad6-41fc-bb02-b4ae3acb95bb', 1, 'd68afd1b-374a-411e-a9f4-332824644a87', 'a74935c4-65ec-441b-b974-f959c2c71f99', NULL, 0),
(174, 116, '2021-11-15 11:26:29', NULL, NULL, 'e5e2286f-2d47-4b3a-b7f0-194f8a1df5f7', 1, 'd68afd1b-374a-411e-a9f4-332824644a87', '198eae87-3140-4085-9c4d-26cea3c9eb4a', NULL, 0),
(175, 116, '2021-11-15 11:26:29', NULL, NULL, '3fda356c-9245-48df-8c28-e31e69a5a9df', 1, 'd68afd1b-374a-411e-a9f4-332824644a87', '8f509297-11fa-4a9c-9194-c9994b72907d', NULL, 0),
(176, 117, '2021-11-15 13:19:42', NULL, NULL, '9e3e2a00-d5ad-47e0-bdaf-e009f6bdf907', 1, '37eb48f4-e24b-4dee-934f-fc402ffeb405', '7aa3f377-7d5b-4242-ac00-0993f6f29d69', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `apto_product_rule_implication`
--

DROP TABLE IF EXISTS `apto_product_rule_implication`;
CREATE TABLE `apto_product_rule_implication` (
  `surrogate_id` int(11) NOT NULL,
  `rule_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `property` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `operator` int(11) NOT NULL,
  `section_id` varchar(255) DEFAULT NULL COMMENT '(DC2Type:AptoPropertyUuid)',
  `element_id` varchar(255) DEFAULT NULL COMMENT '(DC2Type:AptoPropertyUuid)',
  `computed_product_value_id` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `apto_product_rule_implication`
--

INSERT INTO `apto_product_rule_implication` (`surrogate_id`, `rule_id`, `created`, `property`, `value`, `id`, `operator`, `section_id`, `element_id`, `computed_product_value_id`, `type`) VALUES
(425, 29, '2019-03-20 09:55:39', NULL, NULL, 'a28f1c8e-e1c3-44b1-8f51-28c32bc6ad0f', 0, 'b5a10157-0658-4c0a-bab8-e011447408d7', NULL, NULL, 0),
(426, 29, '2019-03-20 09:55:39', NULL, NULL, '205f8e0b-d21e-459f-a073-da54fc225c89', 0, 'da4433c1-c11a-42e9-afb0-401464f5d736', NULL, NULL, 0),
(431, 110, '2020-09-15 20:40:22', NULL, NULL, '6951a48a-25b3-440e-b0ac-bf8eb8ea32fc', 0, 'e6e01110-f542-4529-b328-f24f8f91c089', NULL, NULL, 0),
(432, 110, '2020-09-15 20:40:22', NULL, NULL, '1db2538c-c65b-4999-873b-64a467f5bd26', 0, '3c84feb5-1234-4b96-8beb-3f4cab56cfba', NULL, NULL, 0),
(434, 29, '2020-09-24 19:56:08', NULL, NULL, '2c19784d-f959-46e4-acdf-c30db1f545f4', 0, '071bd613-4be6-4986-8eb9-602f58b1d072', NULL, NULL, 0),
(436, 29, '2020-09-24 20:17:55', NULL, NULL, 'db224b40-5ebd-4599-8c74-f229f6465b42', 0, '1864ad13-a7b2-4767-bba7-8b52f969e935', '7621921b-d90b-48f4-b0e2-7c33558cf664', NULL, 0),
(437, 112, '2020-09-24 20:20:47', NULL, NULL, 'fb5ecfa7-2fb3-4e3e-942c-d7d27b5b205f', 0, '1864ad13-a7b2-4767-bba7-8b52f969e935', 'fdeda2d4-b2c7-4c8b-8e7d-0304900ccd9a', NULL, 0),
(438, 113, '2021-11-15 11:23:13', NULL, NULL, 'ca3d84e1-4194-4638-8020-b9d0c9271a4a', 0, 'd68afd1b-374a-411e-a9f4-332824644a87', '4b4bc9e1-0cbc-4a07-b38d-7f5f078c8e72', NULL, 0),
(439, 113, '2021-11-15 11:23:13', NULL, NULL, '798c0fa6-8d53-4d6a-9344-13f9d06663d7', 0, 'd68afd1b-374a-411e-a9f4-332824644a87', '9a096d0b-0326-4b86-9e84-c06e9776a83e', NULL, 0),
(440, 113, '2021-11-15 11:23:13', NULL, NULL, '2fd956ee-0472-4018-8e7a-94f708a3fa47', 0, 'd68afd1b-374a-411e-a9f4-332824644a87', 'af13c6f8-22c1-4f3a-a26f-0fa896ca2a25', NULL, 0),
(441, 113, '2021-11-15 11:23:13', NULL, NULL, '01d72934-fae3-4565-8a20-d84f6c15ef9c', 0, 'd68afd1b-374a-411e-a9f4-332824644a87', 'a97618c2-3264-4ba6-861f-2022bb44e8dd', NULL, 0),
(442, 113, '2021-11-15 11:23:13', NULL, NULL, '0ee06e83-e303-467c-9b1d-8103881953fa', 0, 'd68afd1b-374a-411e-a9f4-332824644a87', 'cb3e1b98-eb60-4b90-bd67-e16db60deaed', NULL, 0),
(443, 113, '2021-11-15 11:23:13', NULL, NULL, '57055157-f280-493e-bc68-b8a419562c53', 0, 'd68afd1b-374a-411e-a9f4-332824644a87', 'a74935c4-65ec-441b-b974-f959c2c71f99', NULL, 0),
(444, 113, '2021-11-15 11:23:13', NULL, NULL, '0802316d-3a14-4823-9668-c9d7d6725cb2', 0, 'd68afd1b-374a-411e-a9f4-332824644a87', '7074f48e-5d48-4194-8d7a-905ebcf0f4e3', NULL, 0),
(445, 113, '2021-11-15 11:23:33', NULL, NULL, '2f9d3143-8e18-40fd-8488-a18cc4facc5e', 1, 'd68afd1b-374a-411e-a9f4-332824644a87', '4ddba191-2e7a-442a-8f59-9fef50eb173d', NULL, 0),
(446, 113, '2021-11-15 11:23:33', NULL, NULL, '07464a20-d838-422a-8f77-5ba05d72083c', 1, 'd68afd1b-374a-411e-a9f4-332824644a87', '198eae87-3140-4085-9c4d-26cea3c9eb4a', NULL, 0),
(447, 113, '2021-11-15 11:23:33', NULL, NULL, '82e6a9ba-28c6-44f4-89f3-a87e5ceb995e', 1, 'd68afd1b-374a-411e-a9f4-332824644a87', '8f509297-11fa-4a9c-9194-c9994b72907d', NULL, 0),
(448, 114, '2021-11-15 11:24:33', NULL, NULL, '54810698-44f2-4e39-9346-095f6f2bdaca', 0, 'd68afd1b-374a-411e-a9f4-332824644a87', '4ddba191-2e7a-442a-8f59-9fef50eb173d', NULL, 0),
(449, 114, '2021-11-15 11:24:33', NULL, NULL, '2de1072c-ffe9-44ad-a111-fb6681391cc3', 0, 'd68afd1b-374a-411e-a9f4-332824644a87', '4b4bc9e1-0cbc-4a07-b38d-7f5f078c8e72', NULL, 0),
(450, 114, '2021-11-15 11:24:33', NULL, NULL, '3ad2f449-9507-45ea-95f9-86ef4e3bb104', 0, 'd68afd1b-374a-411e-a9f4-332824644a87', 'cb3e1b98-eb60-4b90-bd67-e16db60deaed', NULL, 0),
(451, 114, '2021-11-15 11:24:33', NULL, NULL, '1242add7-3b17-4a1b-8bb0-eee6fad16d84', 0, 'd68afd1b-374a-411e-a9f4-332824644a87', 'a74935c4-65ec-441b-b974-f959c2c71f99', NULL, 0),
(452, 114, '2021-11-15 11:24:33', NULL, NULL, 'd28c59e4-cb25-490e-abe2-ea31f0861c52', 0, 'd68afd1b-374a-411e-a9f4-332824644a87', '9a096d0b-0326-4b86-9e84-c06e9776a83e', NULL, 0),
(453, 114, '2021-11-15 11:24:33', NULL, NULL, '060270e1-0ad5-4f1e-bbda-60ae2c3d2468', 0, 'd68afd1b-374a-411e-a9f4-332824644a87', '198eae87-3140-4085-9c4d-26cea3c9eb4a', NULL, 0),
(454, 114, '2021-11-15 11:24:33', NULL, NULL, '14111834-df8b-4494-9c32-d409e4da6f8e', 0, 'd68afd1b-374a-411e-a9f4-332824644a87', '8f509297-11fa-4a9c-9194-c9994b72907d', NULL, 0),
(455, 115, '2021-11-15 11:25:31', NULL, NULL, '65c57125-4425-45ec-9263-8ebb4e74d006', 0, 'd68afd1b-374a-411e-a9f4-332824644a87', '4ddba191-2e7a-442a-8f59-9fef50eb173d', NULL, 0),
(456, 115, '2021-11-15 11:25:31', NULL, NULL, 'ce59b2f8-fd75-45cd-8773-faa5b2289943', 0, 'd68afd1b-374a-411e-a9f4-332824644a87', '7074f48e-5d48-4194-8d7a-905ebcf0f4e3', NULL, 0),
(457, 115, '2021-11-15 11:25:31', NULL, NULL, '2c6d9cb4-648e-459b-8481-8a46e6d47a1a', 0, 'd68afd1b-374a-411e-a9f4-332824644a87', 'af13c6f8-22c1-4f3a-a26f-0fa896ca2a25', NULL, 0),
(458, 115, '2021-11-15 11:25:31', NULL, NULL, '14ce8b16-5a78-44cc-972f-3829ca278dca', 0, 'd68afd1b-374a-411e-a9f4-332824644a87', 'a97618c2-3264-4ba6-861f-2022bb44e8dd', NULL, 0),
(459, 115, '2021-11-15 11:25:31', NULL, NULL, 'dff80e5b-b143-491c-800a-6067401c16f5', 0, 'd68afd1b-374a-411e-a9f4-332824644a87', '198eae87-3140-4085-9c4d-26cea3c9eb4a', NULL, 0),
(460, 115, '2021-11-15 11:25:31', NULL, NULL, '80c05257-13f1-4f95-ac87-8ffc8f46eefa', 0, 'd68afd1b-374a-411e-a9f4-332824644a87', '8f509297-11fa-4a9c-9194-c9994b72907d', NULL, 0),
(461, 116, '2021-11-15 11:26:50', NULL, NULL, '6b81f539-2155-47e8-b463-bfb1603d73a1', 0, '6b8c6de4-bd17-47c3-b830-48fbe159dcde', NULL, NULL, 0),
(462, 117, '2021-11-15 13:20:00', NULL, NULL, '0352aa80-19c4-466e-8791-b6f41ad0a8a4', 0, '71ff6fc8-4aa7-4fdb-8b63-d17534a4464f', 'c8111c49-d609-4cbd-bcb5-e7285a08fb02', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `apto_product_section`
--

DROP TABLE IF EXISTS `apto_product_section`;
CREATE TABLE `apto_product_section` (
  `surrogate_id` int(11) NOT NULL,
  `name` longtext DEFAULT NULL COMMENT '(DC2Type:AptoPropertyTranslatedValue)',
  `created` datetime NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `identifier_value` varchar(255) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `allow_multiple` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `is_mandatory` tinyint(1) NOT NULL DEFAULT 0,
  `is_hidden` tinyint(1) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0,
  `description` longtext DEFAULT NULL COMMENT '(DC2Type:AptoPropertyTranslatedValue)',
  `preview_image_id` int(11) DEFAULT NULL,
  `is_zoomable` tinyint(1) NOT NULL DEFAULT 0,
  `repeatable_type` varchar(255) NOT NULL DEFAULT 'Statisch',
  `repeatable_calculated_value_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `apto_product_section`
--

INSERT INTO `apto_product_section` (`surrogate_id`, `name`, `created`, `product_id`, `id`, `identifier_value`, `group_id`, `allow_multiple`, `is_active`, `is_mandatory`, `is_hidden`, `position`, `description`, `preview_image_id`, `is_zoomable`, `repeatable_type`, `repeatable_calculated_value_name`) VALUES
(91, '{\"de_DE\":\"Fensterfarbe\"}', '2018-01-17 13:51:43', 48, 'ec6e552f-f810-4f5a-8e1f-1b125748cadd', 'fensterfarbe', NULL, 0, 1, 1, 0, 10, '{\"de_DE\":\"W\\u00e4hlen Sie eine Farbe f\\u00fcr den Fensterrahmen aus.\"}', NULL, 0, 'Statisch', NULL),
(92, '{\"de_DE\":\"Montage\"}', '2018-01-17 14:00:18', 48, '48562933-fed0-46ea-bfec-713f2ed6e8bd', 'montage', NULL, 0, 1, 1, 0, 20, '{\"de_DE\":\"W\\u00fcnschen Sie eine Montage mit oder ohne Rollokasten?\"}', NULL, 0, 'Statisch', NULL),
(93, '{\"de_DE\":\"Rollofarbe\"}', '2018-01-17 14:00:26', 48, 'b5a10157-0658-4c0a-bab8-e011447408d7', 'rollofarbe', NULL, 0, 1, 1, 0, 30, '{\"de_DE\":\"W\\u00e4hlen Sie eine Farbe f\\u00fcr den Rolladen aus.\"}', NULL, 0, 'Statisch', NULL),
(94, '{\"de_DE\":\"Sicherheit\"}', '2018-01-17 14:00:33', 48, 'c433956d-3090-4b53-a4af-63ef48ffbc7a', 'sicherheit', NULL, 1, 1, 1, 0, 40, '{\"de_DE\":\"Einbrechern keine Chance geben!<br><br>\"}', NULL, 0, 'Statisch', NULL),
(95, '{\"de_DE\":\"Verglasung\"}', '2018-01-17 14:00:39', 48, '8b6f95cc-37ab-42ee-9278-9a10633a79d7', 'verglasung', NULL, 0, 1, 1, 0, 50, '{\"de_DE\":\"Isolierverglasung nach DIN EN 673\"}', NULL, 0, 'Statisch', NULL),
(96, '{\"de_DE\":\"Schallschutzglas\"}', '2018-01-17 14:00:44', 48, '6f19227d-54c2-4d1d-9b4b-1277133602ee', 'schallschutzglas', NULL, 0, 1, 1, 0, 60, '[]', NULL, 0, 'Statisch', NULL),
(97, '{\"de_DE\":\"Rollobedienung\"}', '2018-01-17 14:00:49', 48, 'da4433c1-c11a-42e9-afb0-401464f5d736', 'rollofeature', NULL, 0, 1, 0, 0, 70, '{\"de_DE\":\"\"}', NULL, 0, 'Statisch', NULL),
(98, '{\"de_DE\":\"Ma\\u00dfe\"}', '2018-01-17 14:00:54', 48, '3cbf6e24-4516-4407-872d-1ff8c3f63005', 'masse', NULL, 0, 1, 1, 0, 0, '[]', NULL, 0, 'Statisch', NULL),
(308, '{\"de_DE\":\"Fensterfarbe\"}', '2020-09-15 20:40:22', 88, 'a12d9d26-4d57-4bf0-89dd-1d75cf66b8de', 'fensterfarbe', 1, 0, 1, 1, 0, 10, '{\"de_DE\":\"W\\u00e4hlen Sie eine Farbe f\\u00fcr den Fensterrahmen aus.\"}', NULL, 0, 'Statisch', NULL),
(309, '{\"de_DE\":\"Montage\"}', '2020-09-15 20:40:22', 88, '67790e03-2e2c-4e13-81a6-b52dc3d65982', 'montage', 2, 0, 0, 0, 0, 20, '{\"de_DE\":\"W\\u00fcnschen Sie eine Montage mit oder ohne Rollokasten?\"}', NULL, 0, 'Statisch', NULL),
(310, '{\"de_DE\":\"Rollofarbe\"}', '2020-09-15 20:40:22', 88, 'e6e01110-f542-4529-b328-f24f8f91c089', 'rollofarbe', 2, 0, 1, 1, 0, 30, '{\"de_DE\":\"W\\u00e4hlen Sie eine Farbe f\\u00fcr den Rolladen aus.\"}', NULL, 0, 'Statisch', NULL),
(311, '{\"de_DE\":\"Sicherheit\"}', '2020-09-15 20:40:22', 88, '9cfd8b92-151b-4467-8b3c-9435047bedb6', 'sicherheit', 2, 1, 1, 1, 0, 40, '{\"de_DE\":\"Einbrechern keine Chance geben!<br><br>\"}', NULL, 0, 'Statisch', NULL),
(312, '{\"de_DE\":\"Verglasung\"}', '2020-09-15 20:40:22', 88, 'c44df701-3fc1-4df3-816b-67ccc8ca6374', 'verglasung', 3, 0, 1, 1, 0, 50, '{\"de_DE\":\"Isolierverglasung nach DIN EN 673\"}', NULL, 0, 'Statisch', NULL),
(313, '{\"de_DE\":\"Schallschutzglas\"}', '2020-09-15 20:40:22', 88, '369f053b-2fe6-4c66-910d-22d11cc18308', 'schallschutzglas', 3, 0, 1, 1, 0, 60, '[]', NULL, 0, 'Statisch', NULL),
(314, '{\"de_DE\":\"Rollobedienung\"}', '2020-09-15 20:40:22', 88, '3c84feb5-1234-4b96-8beb-3f4cab56cfba', 'rollofeature', 3, 0, 1, 0, 0, 70, '{\"de_DE\":\"\"}', NULL, 0, 'Statisch', NULL),
(315, '{\"de_DE\":\"Ma\\u00dfe\"}', '2020-09-15 20:40:22', 88, '581d85d4-e9ea-4ca6-9a1f-0c9cecda0ad6', 'masse', 1, 0, 1, 1, 0, 0, '[]', NULL, 0, 'Statisch', NULL),
(316, '{\"de_DE\":\"Rollogr\\u00f6\\u00dfe\"}', '2020-09-24 19:49:11', 48, '071bd613-4be6-4986-8eb9-602f58b1d072', 'rollogroesse', NULL, 0, 1, 1, 0, 35, '{\"de_DE\":\"\"}', NULL, 0, 'Statisch', NULL),
(317, '{\"de_DE\":\"Sonderw\\u00fcnsche\"}', '2020-09-24 19:58:36', 48, '1864ad13-a7b2-4767-bba7-8b52f969e935', 'sonderwuensche', NULL, 1, 1, 0, 0, 80, '[]', NULL, 0, 'Statisch', NULL),
(324, '{\"de_DE\":\"farbe\"}', '2021-11-15 09:33:49', 90, '60df53e9-36bd-4131-b329-2dee2f7f0724', 'farbe', NULL, 0, 1, 0, 0, 10, '[]', NULL, 0, 'Statisch', NULL),
(325, '{\"de_DE\":\"Farbe Innenseite\"}', '2021-11-15 09:34:05', 90, '201866c1-b4c6-416f-9a01-77b50749dd28', 'innenseite', NULL, 0, 1, 0, 0, 20, '[]', NULL, 0, 'Statisch', NULL),
(328, '{\"de_DE\":\"Girl\\u00b4s Day Logo\"}', '2021-11-15 09:36:03', 90, 'd2637258-bbf7-44ef-ad63-16ec180a53d7', 'girls-day-logo', NULL, 0, 1, 0, 0, 50, '[]', NULL, 0, 'Statisch', NULL),
(329, '{\"de_DE\":\"Maske\"}', '2021-11-15 09:36:16', 90, '3a29994e-8dba-4273-8391-33d4ac9db000', 'maske', NULL, 0, 1, 0, 1, 60, '[]', NULL, 0, 'Statisch', NULL),
(330, '{\"de_DE\":\"Grundst\\u00fcck\"}', '2021-11-15 10:19:19', 91, '62ae2346-e0e9-4665-b9d0-5b556868e386', 'grundstueck', NULL, 0, 1, 1, 0, 10, '[]', NULL, 0, 'Statisch', NULL),
(331, '{\"de_DE\":\"Haustyp\"}', '2021-11-15 10:19:26', 91, 'd0d6a683-f92a-4354-8d81-2c93663c32f7', 'haustyp', NULL, 0, 1, 1, 0, 20, '{\"de_DE\":\"Welche Art von Haus m\\u00f6chten Sie konfigurieren?\"}', NULL, 0, 'Statisch', NULL),
(332, '{\"de_DE\":\"Architektur\"}', '2021-11-15 10:19:38', 91, 'd68afd1b-374a-411e-a9f4-332824644a87', 'architektur', NULL, 0, 1, 1, 0, 30, '{\"de_DE\":\"Bitte w\\u00e4hlen Sie eine Architektur f\\u00fcr Ihr Haus.\"}', NULL, 0, 'Statisch', NULL),
(333, '{\"de_DE\":\"Dacheindeckung\"}', '2021-11-15 10:23:01', 91, '6b8c6de4-bd17-47c3-b830-48fbe159dcde', 'dacheindeckung', NULL, 0, 1, 0, 0, 40, '{\"de_DE\":\"Bitte w\\u00e4hlen Sie Ihre Dachziegel aus\"}', NULL, 0, 'Statisch', NULL),
(334, '{\"de_DE\":\"Fu\\u00dfbodenbel\\u00e4ge\"}', '2021-11-15 10:23:20', 91, '0aedc430-7bfe-473e-801d-725bcd101a67', 'fussbodenbelaege', NULL, 1, 1, 1, 0, 50, '{\"de_DE\":\"W\\u00e4hlen Sie einen oder mehrere Fu\\u00dfb\\u00f6den, die im Haus verlegt werden sollen.<br>\\n<em>K\\u00fcche und Bad werden nach wunsch geflie\\u00dft und werden hier nicht ausgew\\u00e4hlt<\\/em>\"}', NULL, 0, 'Statisch', NULL),
(335, '{\"de_DE\":\"Heizung\"}', '2021-11-15 10:23:26', 91, '3bc3efee-9448-48fa-a81f-68eab3606733', 'heizung', NULL, 0, 1, 1, 0, 60, '{\"de_DE\":\"Welche Art von Heizsystem m\\u00f6chten Sie nutzen?\"}', NULL, 0, 'Statisch', NULL),
(336, '{\"de_DE\":\"Extras\"}', '2021-11-15 10:23:33', 91, '75b36f86-3808-4396-841f-3efb821d59ab', 'extras', NULL, 1, 1, 0, 0, 70, '{\"de_DE\":\"Sie k\\u00f6nnen sich Extras aussuchen, die Ihrem Haus hinzugef\\u00fcgt werden sollen.\"}', NULL, 0, 'Statisch', NULL),
(337, '{\"de_DE\":\"Upload\"}', '2021-11-15 11:33:01', 92, '1e7f093d-7882-4ce5-a510-8721cf83dd76', 'upload', NULL, 0, 0, 0, 0, 10, '[]', NULL, 0, 'Statisch', NULL),
(338, '{\"de_DE\":\"Farbe\"}', '2021-11-15 11:33:10', 92, 'a64f355e-5681-457f-9c26-e37256a0ae40', 'farbe', NULL, 0, 1, 1, 0, 20, NULL, NULL, 0, 'Statisch', NULL),
(339, '{\"de_DE\":\"Motor\"}', '2021-11-15 11:33:16', 92, '37eb48f4-e24b-4dee-934f-fc402ffeb405', 'motor', NULL, 0, 1, 1, 0, 30, '[]', NULL, 0, 'Statisch', NULL),
(340, '{\"de_DE\":\"Reifen\"}', '2021-11-15 11:33:21', 92, 'c5b962b5-104f-488e-ad8b-d76086f91b2e', 'reifen', NULL, 0, 1, 1, 0, 40, '[]', NULL, 0, 'Statisch', NULL),
(341, '{\"de_DE\":\"Felgen\"}', '2021-11-15 11:33:28', 92, 'cd65e7d4-305e-4ecf-8555-59ffd0196591', 'felgen', NULL, 0, 1, 1, 0, 50, '[]', NULL, 0, 'Statisch', NULL),
(342, '{\"de_DE\":\"Aufkleber\"}', '2021-11-15 11:33:34', 92, 'e43f479e-f85d-4827-8bbc-0c2895c281ac', 'aufkleber', NULL, 0, 1, 0, 0, 60, '[]', NULL, 0, 'Statisch', NULL),
(343, '{\"de_DE\":\"Windschutzscheibe\"}', '2021-11-15 11:33:47', 92, 'baa18b51-91d9-42bf-b0d0-75d73c27c73c', 'windschutzscheibe', NULL, 0, 1, 0, 0, 70, '[]', NULL, 0, 'Statisch', NULL),
(344, '{\"de_DE\":\"Paket\"}', '2021-11-15 11:33:54', 92, '71ff6fc8-4aa7-4fdb-8b63-d17534a4464f', 'paket', NULL, 0, 1, 1, 0, 80, '[]', NULL, 0, 'Statisch', NULL),
(345, '{\"de_DE\":\"Ma\\u00dfe\"}', '2021-11-15 13:48:47', 93, '3ba88786-f018-475f-8a91-088b156e3fb9', 'masse', NULL, 0, 1, 1, 0, 10, NULL, NULL, 0, 'Statisch', NULL),
(346, '{\"de_DE\":\"Hersteller\"}', '2021-11-15 13:48:54', 93, 'dbba62be-1ea2-42db-b562-50e7ed0aa74f', 'hersteller', NULL, 0, 1, 1, 0, 20, '[]', NULL, 0, 'Statisch', NULL),
(347, '{\"de_DE\":\"Farbe\"}', '2021-11-15 13:49:02', 93, '2e537d11-6cb2-4e89-9f95-c955572aa04a', 'farbe', NULL, 0, 1, 1, 0, 30, '{\"de_DE\":\"Alle Farben werden inklusive Grundierung aufgetragen und sind zu 100% wetterfest.\"}', NULL, 0, 'Statisch', NULL),
(348, '{\"de_DE\":\"Tortyp\"}', '2021-11-15 13:49:12', 93, '325d2682-f92f-475a-96d7-e0a5217c2df8', 'tortyp', NULL, 0, 1, 1, 0, 40, '[]', NULL, 0, 'Statisch', NULL),
(349, '{\"de_DE\":\"Bedienart\"}', '2021-11-15 13:49:21', 93, '985b6732-9dea-465c-8169-3bf785550039', 'bedienart', NULL, 0, 1, 1, 0, 50, '[]', NULL, 0, 'Statisch', NULL),
(350, '{\"de_DE\":\"Komfortpakete\"}', '2021-11-15 13:49:42', 93, 'b44b9c99-72f9-4e5e-b40e-30ee7a32d884', 'komfortpakete', NULL, 1, 1, 0, 0, 60, '[]', NULL, 0, 'Statisch', NULL),
(351, '{\"de_DE\":\"Service\"}', '2021-11-15 13:49:50', 93, 'b2c27b71-e706-4c8c-8bf2-035461ea370d', 'service', NULL, 1, 1, 0, 0, 70, '[]', NULL, 0, 'Statisch', NULL),
(352, '{\"de_DE\":\"Oberleder vorne\"}', '2021-11-15 14:31:50', 94, 'bbe5099f-a6cd-45c8-82e5-1d198662c8f3', 'oberleder-vorne', NULL, 0, 1, 1, 0, 10, '[]', NULL, 0, 'Statisch', NULL),
(353, '{\"de_DE\":\"Oberleder hinten\"}', '2021-11-15 14:32:00', 94, 'f96cef8f-dbb8-49d6-8e35-04c92b89f867', 'oberleder-hinten', NULL, 0, 1, 1, 0, 20, '[]', NULL, 0, 'Statisch', NULL),
(354, '{\"de_DE\":\"Rei\\u00dfverschluss\"}', '2021-11-15 14:32:09', 94, '87501fca-9bdc-4619-80bf-6524753746c3', 'reissverschluss', NULL, 0, 1, 1, 0, 30, '[]', NULL, 0, 'Statisch', NULL),
(355, '{\"de_DE\":\"Innenleder\"}', '2021-11-15 14:36:28', 94, '68f589a2-7228-4649-a53d-39da06808407', 'innenleder', NULL, 0, 1, 1, 0, 40, NULL, NULL, 0, 'Statisch', NULL),
(356, '{\"de_DE\":\"Absatz\"}', '2021-11-15 14:36:35', 94, '01033a4e-065a-4e26-9bcd-5d83d1ff8064', 'absatz', NULL, 0, 1, 1, 0, 50, '[]', NULL, 0, 'Statisch', NULL),
(357, '{\"de_DE\":\"Sohle\"}', '2021-11-15 14:36:41', 94, '16b5ac10-bbda-4d35-849d-edc1968111e1', 'sohle', NULL, 0, 1, 1, 0, 60, '[]', NULL, 0, 'Statisch', NULL),
(358, '{\"de_DE\":\"Absatzfleck\"}', '2021-11-15 14:37:03', 94, '8f2cbfa6-2bf7-4c7d-b042-777738029f23', 'absatzfleck', NULL, 0, 1, 1, 0, 70, '[]', NULL, 0, 'Statisch', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `apto_product_section_to_apto_discount`
--

DROP TABLE IF EXISTS `apto_product_section_to_apto_discount`;
CREATE TABLE `apto_product_section_to_apto_discount` (
  `product_section_surrogate_id` int(11) NOT NULL,
  `apto_discount_surrogate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_product_section_to_apto_price`
--

DROP TABLE IF EXISTS `apto_product_section_to_apto_price`;
CREATE TABLE `apto_product_section_to_apto_price` (
  `product_section_surrogate_id` int(11) NOT NULL,
  `apto_price_surrogate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_product_section_to_custom_property`
--

DROP TABLE IF EXISTS `apto_product_section_to_custom_property`;
CREATE TABLE `apto_product_section_to_custom_property` (
  `product_section_id` int(11) NOT NULL,
  `custom_property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_product_to_apto_discount`
--

DROP TABLE IF EXISTS `apto_product_to_apto_discount`;
CREATE TABLE `apto_product_to_apto_discount` (
  `product_surrogate_id` int(11) NOT NULL,
  `apto_discount_surrogate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_product_to_apto_price`
--

DROP TABLE IF EXISTS `apto_product_to_apto_price`;
CREATE TABLE `apto_product_to_apto_price` (
  `product_surrogate_id` int(11) NOT NULL,
  `apto_price_surrogate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `apto_product_to_apto_price`
--

INSERT INTO `apto_product_to_apto_price` (`product_surrogate_id`, `apto_price_surrogate_id`) VALUES
(48, 3793),
(88, 4416);

-- --------------------------------------------------------

--
-- Table structure for table `apto_product_to_category`
--

DROP TABLE IF EXISTS `apto_product_to_category`;
CREATE TABLE `apto_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_product_to_custom_property`
--

DROP TABLE IF EXISTS `apto_product_to_custom_property`;
CREATE TABLE `apto_product_to_custom_property` (
  `product_id` int(11) NOT NULL,
  `custom_property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_product_to_filter_property`
--

DROP TABLE IF EXISTS `apto_product_to_filter_property`;
CREATE TABLE `apto_product_to_filter_property` (
  `product_id` int(11) NOT NULL,
  `filterProperty_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_product_to_shop`
--

DROP TABLE IF EXISTS `apto_product_to_shop`;
CREATE TABLE `apto_product_to_shop` (
  `product_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `apto_product_to_shop`
--

INSERT INTO `apto_product_to_shop` (`product_id`, `shop_id`) VALUES
(48, 8),
(88, 8),
(90, 8),
(91, 8),
(92, 8),
(93, 8),
(94, 8);

-- --------------------------------------------------------

--
-- Table structure for table `apto_proposed_configuration`
--

DROP TABLE IF EXISTS `apto_proposed_configuration`;
CREATE TABLE `apto_proposed_configuration` (
  `surrogate_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `state` longtext NOT NULL COMMENT '(DC2Type:AptoPropertyJsonSerializable)',
  `id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_shop`
--

DROP TABLE IF EXISTS `apto_shop`;
CREATE TABLE `apto_shop` (
  `surrogate_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `id` char(36) NOT NULL,
  `connector_url` longtext DEFAULT NULL COMMENT '(DC2Type:AptoPropertyTranslatedValue)',
  `connector_token` varchar(255) DEFAULT NULL,
  `template_id` varchar(255) DEFAULT NULL,
  `currency_code` varchar(255) NOT NULL,
  `operator_name` varchar(255) DEFAULT NULL,
  `operator_email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `apto_shop`
--

INSERT INTO `apto_shop` (`surrogate_id`, `name`, `description`, `domain`, `created`, `id`, `connector_url`, `connector_token`, `template_id`, `currency_code`, `operator_name`, `operator_email`) VALUES
(8, 'Apto.ONE', '', 'grobi.projektversion.de', '2020-03-20 10:17:21', '133c31ee-7fd3-4032-a27d-a6959dd31aac', '[]', '', 'apto', 'EUR', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `apto_shop_to_category`
--

DROP TABLE IF EXISTS `apto_shop_to_category`;
CREATE TABLE `apto_shop_to_category` (
  `shop_surrogate_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_shop_to_custom_property`
--

DROP TABLE IF EXISTS `apto_shop_to_custom_property`;
CREATE TABLE `apto_shop_to_custom_property` (
  `shop_id` int(11) NOT NULL,
  `custom_property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_shop_to_language`
--

DROP TABLE IF EXISTS `apto_shop_to_language`;
CREATE TABLE `apto_shop_to_language` (
  `shop_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `apto_shop_to_language`
--

INSERT INTO `apto_shop_to_language` (`shop_id`, `language_id`) VALUES
(8, 20);

-- --------------------------------------------------------

--
-- Table structure for table `apto_user`
--

DROP TABLE IF EXISTS `apto_user`;
CREATE TABLE `apto_user` (
  `surrogate_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `id` char(36) NOT NULL,
  `licence_hash` varchar(255) DEFAULT NULL,
  `licence_timestamp` datetime DEFAULT NULL,
  `rte` varchar(255) NOT NULL,
  `api_key` varchar(255) DEFAULT NULL,
  `api_origin` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apto_user_licence`
--

DROP TABLE IF EXISTS `apto_user_licence`;
CREATE TABLE `apto_user_licence` (
  `surrogate_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` longtext NOT NULL,
  `validSince` datetime NOT NULL,
  `id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `apto_user_licence`
--

INSERT INTO `apto_user_licence` (`surrogate_id`, `created`, `title`, `text`, `validSince`, `id`) VALUES
(1, '2018-12-12 00:00:00', '<span style=\"display: block;text-align: center;\">Allgemeine Lizenzbedingungen für die Apto.ONE<sup>&reg;</sup> Produktkonfigurator Software</span>', '<div class=\"apto-licence-text-top\">\r\n\r\n<h3 style=\"text-align: center;\">GNU AFFERO GENERAL PUBLIC LICENSE</h3>\r\n<p style=\"text-align: center;\">Version 3, 19 November 2007</p>\r\n\r\n<p>Copyright © 2007 Free Software Foundation,\r\nInc. &lt;<a href=\"https://fsf.org/\">https://fsf.org/</a>&gt;\r\n <br>\r\n Everyone is permitted to copy and distribute verbatim copies\r\n of this license document, but changing it is not allowed.</p>\r\n\r\n<h4 id=\"preamble\">Preamble</h4>\r\n\r\n<p>The GNU Affero General Public License is a free, copyleft license\r\nfor software and other kinds of works, specifically designed to ensure\r\ncooperation with the community in the case of network server software.</p>\r\n\r\n<p>The licenses for most software and other practical works are\r\ndesigned to take away your freedom to share and change the works.  By\r\ncontrast, our General Public Licenses are intended to guarantee your\r\nfreedom to share and change all versions of a program--to make sure it\r\nremains free software for all its users.</p>\r\n\r\n<p>When we speak of free software, we are referring to freedom, not\r\nprice.  Our General Public Licenses are designed to make sure that you\r\nhave the freedom to distribute copies of free software (and charge for\r\nthem if you wish), that you receive source code or can get it if you\r\nwant it, that you can change the software or use pieces of it in new\r\nfree programs, and that you know you can do these things.</p>\r\n\r\n<p>Developers that use our General Public Licenses protect your rights\r\nwith two steps: (1) assert copyright on the software, and (2) offer\r\nyou this License which gives you legal permission to copy, distribute\r\nand/or modify the software.</p>\r\n\r\n<p>A secondary benefit of defending all users\' freedom is that\r\nimprovements made in alternate versions of the program, if they\r\nreceive widespread use, become available for other developers to\r\nincorporate.  Many developers of free software are heartened and\r\nencouraged by the resulting cooperation.  However, in the case of\r\nsoftware used on network servers, this result may fail to come about.\r\nThe GNU General Public License permits making a modified version and\r\nletting the public access it on a server without ever releasing its\r\nsource code to the public.</p>\r\n\r\n<p>The GNU Affero General Public License is designed specifically to\r\nensure that, in such cases, the modified source code becomes available\r\nto the community.  It requires the operator of a network server to\r\nprovide the source code of the modified version running there to the\r\nusers of that server.  Therefore, public use of a modified version, on\r\na publicly accessible server, gives the public access to the source\r\ncode of the modified version.</p>\r\n\r\n<p>An older license, called the Affero General Public License and\r\npublished by Affero, was designed to accomplish similar goals.  This is\r\na different license, not a version of the Affero GPL, but Affero has\r\nreleased a new version of the Affero GPL which permits relicensing under\r\nthis license.</p>\r\n\r\n<p>The precise terms and conditions for copying, distribution and\r\nmodification follow.</p>\r\n\r\n<h4 id=\"terms\">TERMS AND CONDITIONS</h4>\r\n\r\n<h4 id=\"section0\">0. Definitions.</h4>\r\n\r\n<p>\"This License\" refers to version 3 of the GNU Affero General Public\r\nLicense.</p>\r\n\r\n<p>\"Copyright\" also means copyright-like laws that apply to other kinds\r\nof works, such as semiconductor masks.</p>\r\n\r\n<p>\"The Program\" refers to any copyrightable work licensed under this\r\nLicense.  Each licensee is addressed as \"you\".  \"Licensees\" and\r\n\"recipients\" may be individuals or organizations.</p>\r\n\r\n<p>To \"modify\" a work means to copy from or adapt all or part of the work\r\nin a fashion requiring copyright permission, other than the making of an\r\nexact copy.  The resulting work is called a \"modified version\" of the\r\nearlier work or a work \"based on\" the earlier work.</p>\r\n\r\n<p>A \"covered work\" means either the unmodified Program or a work based\r\non the Program.</p>\r\n\r\n<p>To \"propagate\" a work means to do anything with it that, without\r\npermission, would make you directly or secondarily liable for\r\ninfringement under applicable copyright law, except executing it on a\r\ncomputer or modifying a private copy.  Propagation includes copying,\r\ndistribution (with or without modification), making available to the\r\npublic, and in some countries other activities as well.</p>\r\n\r\n<p>To \"convey\" a work means any kind of propagation that enables other\r\nparties to make or receive copies.  Mere interaction with a user through\r\na computer network, with no transfer of a copy, is not conveying.</p>\r\n\r\n<p>An interactive user interface displays \"Appropriate Legal Notices\"\r\nto the extent that it includes a convenient and prominently visible\r\nfeature that (1) displays an appropriate copyright notice, and (2)\r\ntells the user that there is no warranty for the work (except to the\r\nextent that warranties are provided), that licensees may convey the\r\nwork under this License, and how to view a copy of this License.  If\r\nthe interface presents a list of user commands or options, such as a\r\nmenu, a prominent item in the list meets this criterion.</p>\r\n\r\n<h4 id=\"section1\">1. Source Code.</h4>\r\n\r\n<p>The \"source code\" for a work means the preferred form of the work\r\nfor making modifications to it.  \"Object code\" means any non-source\r\nform of a work.</p>\r\n\r\n<p>A \"Standard Interface\" means an interface that either is an official\r\nstandard defined by a recognized standards body, or, in the case of\r\ninterfaces specified for a particular programming language, one that\r\nis widely used among developers working in that language.</p>\r\n\r\n<p>The \"System Libraries\" of an executable work include anything, other\r\nthan the work as a whole, that (a) is included in the normal form of\r\npackaging a Major Component, but which is not part of that Major\r\nComponent, and (b) serves only to enable use of the work with that\r\nMajor Component, or to implement a Standard Interface for which an\r\nimplementation is available to the public in source code form.  A\r\n\"Major Component\", in this context, means a major essential component\r\n(kernel, window system, and so on) of the specific operating system\r\n(if any) on which the executable work runs, or a compiler used to\r\nproduce the work, or an object code interpreter used to run it.</p>\r\n\r\n<p>The \"Corresponding Source\" for a work in object code form means all\r\nthe source code needed to generate, install, and (for an executable\r\nwork) run the object code and to modify the work, including scripts to\r\ncontrol those activities.  However, it does not include the work\'s\r\nSystem Libraries, or general-purpose tools or generally available free\r\nprograms which are used unmodified in performing those activities but\r\nwhich are not part of the work.  For example, Corresponding Source\r\nincludes interface definition files associated with source files for\r\nthe work, and the source code for shared libraries and dynamically\r\nlinked subprograms that the work is specifically designed to require,\r\nsuch as by intimate data communication or control flow between those\r\nsubprograms and other parts of the work.</p>\r\n\r\n<p>The Corresponding Source need not include anything that users\r\ncan regenerate automatically from other parts of the Corresponding\r\nSource.</p>\r\n\r\n<p>The Corresponding Source for a work in source code form is that\r\nsame work.</p>\r\n\r\n<h4 id=\"section2\">2. Basic Permissions.</h4>\r\n\r\n<p>All rights granted under this License are granted for the term of\r\ncopyright on the Program, and are irrevocable provided the stated\r\nconditions are met.  This License explicitly affirms your unlimited\r\npermission to run the unmodified Program.  The output from running a\r\ncovered work is covered by this License only if the output, given its\r\ncontent, constitutes a covered work.  This License acknowledges your\r\nrights of fair use or other equivalent, as provided by copyright law.</p>\r\n\r\n<p>You may make, run and propagate covered works that you do not\r\nconvey, without conditions so long as your license otherwise remains\r\nin force.  You may convey covered works to others for the sole purpose\r\nof having them make modifications exclusively for you, or provide you\r\nwith facilities for running those works, provided that you comply with\r\nthe terms of this License in conveying all material for which you do\r\nnot control copyright.  Those thus making or running the covered works\r\nfor you must do so exclusively on your behalf, under your direction\r\nand control, on terms that prohibit them from making any copies of\r\nyour copyrighted material outside their relationship with you.</p>\r\n\r\n<p>Conveying under any other circumstances is permitted solely under\r\nthe conditions stated below.  Sublicensing is not allowed; section 10\r\nmakes it unnecessary.</p>\r\n\r\n<h4 id=\"section3\">3. Protecting Users\' Legal Rights From Anti-Circumvention Law.</h4>\r\n\r\n<p>No covered work shall be deemed part of an effective technological\r\nmeasure under any applicable law fulfilling obligations under article\r\n11 of the WIPO copyright treaty adopted on 20 December 1996, or\r\nsimilar laws prohibiting or restricting circumvention of such\r\nmeasures.</p>\r\n\r\n<p>When you convey a covered work, you waive any legal power to forbid\r\ncircumvention of technological measures to the extent such circumvention\r\nis effected by exercising rights under this License with respect to\r\nthe covered work, and you disclaim any intention to limit operation or\r\nmodification of the work as a means of enforcing, against the work\'s\r\nusers, your or third parties\' legal rights to forbid circumvention of\r\ntechnological measures.</p>\r\n\r\n<h4 id=\"section4\">4. Conveying Verbatim Copies.</h4>\r\n\r\n<p>You may convey verbatim copies of the Program\'s source code as you\r\nreceive it, in any medium, provided that you conspicuously and\r\nappropriately publish on each copy an appropriate copyright notice;\r\nkeep intact all notices stating that this License and any\r\nnon-permissive terms added in accord with section 7 apply to the code;\r\nkeep intact all notices of the absence of any warranty; and give all\r\nrecipients a copy of this License along with the Program.</p>\r\n\r\n<p>You may charge any price or no price for each copy that you convey,\r\nand you may offer support or warranty protection for a fee.</p>\r\n\r\n<h4 id=\"section5\">5. Conveying Modified Source Versions.</h4>\r\n\r\n<p>You may convey a work based on the Program, or the modifications to\r\nproduce it from the Program, in the form of source code under the\r\nterms of section 4, provided that you also meet all of these conditions:</p>\r\n\r\n<ul>\r\n\r\n<li>a) The work must carry prominent notices stating that you modified\r\n    it, and giving a relevant date.</li>\r\n\r\n<li>b) The work must carry prominent notices stating that it is\r\n    released under this License and any conditions added under section\r\n    7.  This requirement modifies the requirement in section 4 to\r\n    \"keep intact all notices\".</li>\r\n\r\n<li>c) You must license the entire work, as a whole, under this\r\n    License to anyone who comes into possession of a copy.  This\r\n    License will therefore apply, along with any applicable section 7\r\n    additional terms, to the whole of the work, and all its parts,\r\n    regardless of how they are packaged.  This License gives no\r\n    permission to license the work in any other way, but it does not\r\n    invalidate such permission if you have separately received it.</li>\r\n\r\n<li>d) If the work has interactive user interfaces, each must display\r\n    Appropriate Legal Notices; however, if the Program has interactive\r\n    interfaces that do not display Appropriate Legal Notices, your\r\n    work need not make them do so.</li>\r\n\r\n</ul>\r\n\r\n<p>A compilation of a covered work with other separate and independent\r\nworks, which are not by their nature extensions of the covered work,\r\nand which are not combined with it such as to form a larger program,\r\nin or on a volume of a storage or distribution medium, is called an\r\n\"aggregate\" if the compilation and its resulting copyright are not\r\nused to limit the access or legal rights of the compilation\'s users\r\nbeyond what the individual works permit.  Inclusion of a covered work\r\nin an aggregate does not cause this License to apply to the other\r\nparts of the aggregate.</p>\r\n\r\n<h4 id=\"section6\">6. Conveying Non-Source Forms.</h4>\r\n\r\n<p>You may convey a covered work in object code form under the terms\r\nof sections 4 and 5, provided that you also convey the\r\nmachine-readable Corresponding Source under the terms of this License,\r\nin one of these ways:</p>\r\n\r\n<ul>\r\n\r\n<li>a) Convey the object code in, or embodied in, a physical product\r\n    (including a physical distribution medium), accompanied by the\r\n    Corresponding Source fixed on a durable physical medium\r\n    customarily used for software interchange.</li>\r\n\r\n<li>b) Convey the object code in, or embodied in, a physical product\r\n    (including a physical distribution medium), accompanied by a\r\n    written offer, valid for at least three years and valid for as\r\n    long as you offer spare parts or customer support for that product\r\n    model, to give anyone who possesses the object code either (1) a\r\n    copy of the Corresponding Source for all the software in the\r\n    product that is covered by this License, on a durable physical\r\n    medium customarily used for software interchange, for a price no\r\n    more than your reasonable cost of physically performing this\r\n    conveying of source, or (2) access to copy the\r\n    Corresponding Source from a network server at no charge.</li>\r\n\r\n<li>c) Convey individual copies of the object code with a copy of the\r\n    written offer to provide the Corresponding Source.  This\r\n    alternative is allowed only occasionally and noncommercially, and\r\n    only if you received the object code with such an offer, in accord\r\n    with subsection 6b.</li>\r\n\r\n<li>d) Convey the object code by offering access from a designated\r\n    place (gratis or for a charge), and offer equivalent access to the\r\n    Corresponding Source in the same way through the same place at no\r\n    further charge.  You need not require recipients to copy the\r\n    Corresponding Source along with the object code.  If the place to\r\n    copy the object code is a network server, the Corresponding Source\r\n    may be on a different server (operated by you or a third party)\r\n    that supports equivalent copying facilities, provided you maintain\r\n    clear directions next to the object code saying where to find the\r\n    Corresponding Source.  Regardless of what server hosts the\r\n    Corresponding Source, you remain obligated to ensure that it is\r\n    available for as long as needed to satisfy these requirements.</li>\r\n\r\n<li>e) Convey the object code using peer-to-peer transmission, provided\r\n    you inform other peers where the object code and Corresponding\r\n    Source of the work are being offered to the general public at no\r\n    charge under subsection 6d.</li>\r\n\r\n</ul>\r\n\r\n<p>A separable portion of the object code, whose source code is excluded\r\nfrom the Corresponding Source as a System Library, need not be\r\nincluded in conveying the object code work.</p>\r\n\r\n<p>A \"User Product\" is either (1) a \"consumer product\", which means any\r\ntangible personal property which is normally used for personal, family,\r\nor household purposes, or (2) anything designed or sold for incorporation\r\ninto a dwelling.  In determining whether a product is a consumer product,\r\ndoubtful cases shall be resolved in favor of coverage.  For a particular\r\nproduct received by a particular user, \"normally used\" refers to a\r\ntypical or common use of that class of product, regardless of the status\r\nof the particular user or of the way in which the particular user\r\nactually uses, or expects or is expected to use, the product.  A product\r\nis a consumer product regardless of whether the product has substantial\r\ncommercial, industrial or non-consumer uses, unless such uses represent\r\nthe only significant mode of use of the product.</p>\r\n\r\n<p>\"Installation Information\" for a User Product means any methods,\r\nprocedures, authorization keys, or other information required to install\r\nand execute modified versions of a covered work in that User Product from\r\na modified version of its Corresponding Source.  The information must\r\nsuffice to ensure that the continued functioning of the modified object\r\ncode is in no case prevented or interfered with solely because\r\nmodification has been made.</p>\r\n\r\n<p>If you convey an object code work under this section in, or with, or\r\nspecifically for use in, a User Product, and the conveying occurs as\r\npart of a transaction in which the right of possession and use of the\r\nUser Product is transferred to the recipient in perpetuity or for a\r\nfixed term (regardless of how the transaction is characterized), the\r\nCorresponding Source conveyed under this section must be accompanied\r\nby the Installation Information.  But this requirement does not apply\r\nif neither you nor any third party retains the ability to install\r\nmodified object code on the User Product (for example, the work has\r\nbeen installed in ROM).</p>\r\n\r\n<p>The requirement to provide Installation Information does not include a\r\nrequirement to continue to provide support service, warranty, or updates\r\nfor a work that has been modified or installed by the recipient, or for\r\nthe User Product in which it has been modified or installed.  Access to a\r\nnetwork may be denied when the modification itself materially and\r\nadversely affects the operation of the network or violates the rules and\r\nprotocols for communication across the network.</p>\r\n\r\n<p>Corresponding Source conveyed, and Installation Information provided,\r\nin accord with this section must be in a format that is publicly\r\ndocumented (and with an implementation available to the public in\r\nsource code form), and must require no special password or key for\r\nunpacking, reading or copying.</p>\r\n\r\n<h4 id=\"section7\">7. Additional Terms.</h4>\r\n\r\n<p>\"Additional permissions\" are terms that supplement the terms of this\r\nLicense by making exceptions from one or more of its conditions.\r\nAdditional permissions that are applicable to the entire Program shall\r\nbe treated as though they were included in this License, to the extent\r\nthat they are valid under applicable law.  If additional permissions\r\napply only to part of the Program, that part may be used separately\r\nunder those permissions, but the entire Program remains governed by\r\nthis License without regard to the additional permissions.</p>\r\n\r\n<p>When you convey a copy of a covered work, you may at your option\r\nremove any additional permissions from that copy, or from any part of\r\nit.  (Additional permissions may be written to require their own\r\nremoval in certain cases when you modify the work.)  You may place\r\nadditional permissions on material, added by you to a covered work,\r\nfor which you have or can give appropriate copyright permission.</p>\r\n\r\n<p>Notwithstanding any other provision of this License, for material you\r\nadd to a covered work, you may (if authorized by the copyright holders of\r\nthat material) supplement the terms of this License with terms:</p>\r\n\r\n<ul>\r\n\r\n<li>a) Disclaiming warranty or limiting liability differently from the\r\n    terms of sections 15 and 16 of this License; or</li>\r\n\r\n<li>b) Requiring preservation of specified reasonable legal notices or\r\n    author attributions in that material or in the Appropriate Legal\r\n    Notices displayed by works containing it; or</li>\r\n\r\n<li>c) Prohibiting misrepresentation of the origin of that material, or\r\n    requiring that modified versions of such material be marked in\r\n    reasonable ways as different from the original version; or</li>\r\n\r\n<li>d) Limiting the use for publicity purposes of names of licensors or\r\n    authors of the material; or</li>\r\n\r\n<li>e) Declining to grant rights under trademark law for use of some\r\n    trade names, trademarks, or service marks; or</li>\r\n\r\n<li>f) Requiring indemnification of licensors and authors of that\r\n    material by anyone who conveys the material (or modified versions of\r\n    it) with contractual assumptions of liability to the recipient, for\r\n    any liability that these contractual assumptions directly impose on\r\n    those licensors and authors.</li>\r\n\r\n</ul>\r\n\r\n<p>All other non-permissive additional terms are considered \"further\r\nrestrictions\" within the meaning of section 10.  If the Program as you\r\nreceived it, or any part of it, contains a notice stating that it is\r\ngoverned by this License along with a term that is a further restriction,\r\nyou may remove that term.  If a license document contains a further\r\nrestriction but permits relicensing or conveying under this License, you\r\nmay add to a covered work material governed by the terms of that license\r\ndocument, provided that the further restriction does not survive such\r\nrelicensing or conveying.</p>\r\n\r\n<p>If you add terms to a covered work in accord with this section, you\r\nmust place, in the relevant source files, a statement of the\r\nadditional terms that apply to those files, or a notice indicating\r\nwhere to find the applicable terms.</p>\r\n\r\n<p>Additional terms, permissive or non-permissive, may be stated in the\r\nform of a separately written license, or stated as exceptions;\r\nthe above requirements apply either way.</p>\r\n\r\n<h4 id=\"section8\">8. Termination.</h4>\r\n\r\n<p>You may not propagate or modify a covered work except as expressly\r\nprovided under this License.  Any attempt otherwise to propagate or\r\nmodify it is void, and will automatically terminate your rights under\r\nthis License (including any patent licenses granted under the third\r\nparagraph of section 11).</p>\r\n\r\n<p>However, if you cease all violation of this License, then your\r\nlicense from a particular copyright holder is reinstated (a)\r\nprovisionally, unless and until the copyright holder explicitly and\r\nfinally terminates your license, and (b) permanently, if the copyright\r\nholder fails to notify you of the violation by some reasonable means\r\nprior to 60 days after the cessation.</p>\r\n\r\n<p>Moreover, your license from a particular copyright holder is\r\nreinstated permanently if the copyright holder notifies you of the\r\nviolation by some reasonable means, this is the first time you have\r\nreceived notice of violation of this License (for any work) from that\r\ncopyright holder, and you cure the violation prior to 30 days after\r\nyour receipt of the notice.</p>\r\n\r\n<p>Termination of your rights under this section does not terminate the\r\nlicenses of parties who have received copies or rights from you under\r\nthis License.  If your rights have been terminated and not permanently\r\nreinstated, you do not qualify to receive new licenses for the same\r\nmaterial under section 10.</p>\r\n\r\n<h4 id=\"section9\">9. Acceptance Not Required for Having Copies.</h4>\r\n\r\n<p>You are not required to accept this License in order to receive or\r\nrun a copy of the Program.  Ancillary propagation of a covered work\r\noccurring solely as a consequence of using peer-to-peer transmission\r\nto receive a copy likewise does not require acceptance.  However,\r\nnothing other than this License grants you permission to propagate or\r\nmodify any covered work.  These actions infringe copyright if you do\r\nnot accept this License.  Therefore, by modifying or propagating a\r\ncovered work, you indicate your acceptance of this License to do so.</p>\r\n\r\n<h4 id=\"section10\">10. Automatic Licensing of Downstream Recipients.</h4>\r\n\r\n<p>Each time you convey a covered work, the recipient automatically\r\nreceives a license from the original licensors, to run, modify and\r\npropagate that work, subject to this License.  You are not responsible\r\nfor enforcing compliance by third parties with this License.</p>\r\n\r\n<p>An \"entity transaction\" is a transaction transferring control of an\r\norganization, or substantially all assets of one, or subdividing an\r\norganization, or merging organizations.  If propagation of a covered\r\nwork results from an entity transaction, each party to that\r\ntransaction who receives a copy of the work also receives whatever\r\nlicenses to the work the party\'s predecessor in interest had or could\r\ngive under the previous paragraph, plus a right to possession of the\r\nCorresponding Source of the work from the predecessor in interest, if\r\nthe predecessor has it or can get it with reasonable efforts.</p>\r\n\r\n<p>You may not impose any further restrictions on the exercise of the\r\nrights granted or affirmed under this License.  For example, you may\r\nnot impose a license fee, royalty, or other charge for exercise of\r\nrights granted under this License, and you may not initiate litigation\r\n(including a cross-claim or counterclaim in a lawsuit) alleging that\r\nany patent claim is infringed by making, using, selling, offering for\r\nsale, or importing the Program or any portion of it.</p>\r\n\r\n<h4 id=\"section11\">11. Patents.</h4>\r\n\r\n<p>A \"contributor\" is a copyright holder who authorizes use under this\r\nLicense of the Program or a work on which the Program is based.  The\r\nwork thus licensed is called the contributor\'s \"contributor version\".</p>\r\n\r\n<p>A contributor\'s \"essential patent claims\" are all patent claims\r\nowned or controlled by the contributor, whether already acquired or\r\nhereafter acquired, that would be infringed by some manner, permitted\r\nby this License, of making, using, or selling its contributor version,\r\nbut do not include claims that would be infringed only as a\r\nconsequence of further modification of the contributor version.  For\r\npurposes of this definition, \"control\" includes the right to grant\r\npatent sublicenses in a manner consistent with the requirements of\r\nthis License.</p>\r\n\r\n<p>Each contributor grants you a non-exclusive, worldwide, royalty-free\r\npatent license under the contributor\'s essential patent claims, to\r\nmake, use, sell, offer for sale, import and otherwise run, modify and\r\npropagate the contents of its contributor version.</p>\r\n\r\n<p>In the following three paragraphs, a \"patent license\" is any express\r\nagreement or commitment, however denominated, not to enforce a patent\r\n(such as an express permission to practice a patent or covenant not to\r\nsue for patent infringement).  To \"grant\" such a patent license to a\r\nparty means to make such an agreement or commitment not to enforce a\r\npatent against the party.</p>\r\n\r\n<p>If you convey a covered work, knowingly relying on a patent license,\r\nand the Corresponding Source of the work is not available for anyone\r\nto copy, free of charge and under the terms of this License, through a\r\npublicly available network server or other readily accessible means,\r\nthen you must either (1) cause the Corresponding Source to be so\r\navailable, or (2) arrange to deprive yourself of the benefit of the\r\npatent license for this particular work, or (3) arrange, in a manner\r\nconsistent with the requirements of this License, to extend the patent\r\nlicense to downstream recipients.  \"Knowingly relying\" means you have\r\nactual knowledge that, but for the patent license, your conveying the\r\ncovered work in a country, or your recipient\'s use of the covered work\r\nin a country, would infringe one or more identifiable patents in that\r\ncountry that you have reason to believe are valid.</p>\r\n\r\n<p>If, pursuant to or in connection with a single transaction or\r\narrangement, you convey, or propagate by procuring conveyance of, a\r\ncovered work, and grant a patent license to some of the parties\r\nreceiving the covered work authorizing them to use, propagate, modify\r\nor convey a specific copy of the covered work, then the patent license\r\nyou grant is automatically extended to all recipients of the covered\r\nwork and works based on it.</p>\r\n\r\n<p>A patent license is \"discriminatory\" if it does not include within\r\nthe scope of its coverage, prohibits the exercise of, or is\r\nconditioned on the non-exercise of one or more of the rights that are\r\nspecifically granted under this License.  You may not convey a covered\r\nwork if you are a party to an arrangement with a third party that is\r\nin the business of distributing software, under which you make payment\r\nto the third party based on the extent of your activity of conveying\r\nthe work, and under which the third party grants, to any of the\r\nparties who would receive the covered work from you, a discriminatory\r\npatent license (a) in connection with copies of the covered work\r\nconveyed by you (or copies made from those copies), or (b) primarily\r\nfor and in connection with specific products or compilations that\r\ncontain the covered work, unless you entered into that arrangement,\r\nor that patent license was granted, prior to 28 March 2007.</p>\r\n\r\n<p>Nothing in this License shall be construed as excluding or limiting\r\nany implied license or other defenses to infringement that may\r\notherwise be available to you under applicable patent law.</p>\r\n\r\n<h4 id=\"section12\">12. No Surrender of Others\' Freedom.</h4>\r\n\r\n<p>If conditions are imposed on you (whether by court order, agreement or\r\notherwise) that contradict the conditions of this License, they do not\r\nexcuse you from the conditions of this License.  If you cannot convey a\r\ncovered work so as to satisfy simultaneously your obligations under this\r\nLicense and any other pertinent obligations, then as a consequence you may\r\nnot convey it at all.  For example, if you agree to terms that obligate you\r\nto collect a royalty for further conveying from those to whom you convey\r\nthe Program, the only way you could satisfy both those terms and this\r\nLicense would be to refrain entirely from conveying the Program.</p>\r\n\r\n<h4 id=\"section13\">13. Remote Network Interaction; Use with the GNU General Public License.</h4>\r\n\r\n<p>Notwithstanding any other provision of this License, if you modify the\r\nProgram, your modified version must prominently offer all users\r\ninteracting with it remotely through a computer network (if your version\r\nsupports such interaction) an opportunity to receive the Corresponding\r\nSource of your version by providing access to the Corresponding Source\r\nfrom a network server at no charge, through some standard or customary\r\nmeans of facilitating copying of software.  This Corresponding Source\r\nshall include the Corresponding Source for any work covered by version 3\r\nof the GNU General Public License that is incorporated pursuant to the\r\nfollowing paragraph.</p>\r\n\r\n<p>Notwithstanding any other provision of this License, you have permission\r\nto link or combine any covered work with a work licensed under version 3\r\nof the GNU General Public License into a single combined work, and to\r\nconvey the resulting work.  The terms of this License will continue to\r\napply to the part which is the covered work, but the work with which it is\r\ncombined will remain governed by version 3 of the GNU General Public\r\nLicense.</p>\r\n\r\n<h4 id=\"section14\">14. Revised Versions of this License.</h4>\r\n\r\n<p>The Free Software Foundation may publish revised and/or new versions of\r\nthe GNU Affero General Public License from time to time.  Such new\r\nversions will be similar in spirit to the present version, but may differ\r\nin detail to address new problems or concerns.</p>\r\n\r\n<p>Each version is given a distinguishing version number.  If the\r\nProgram specifies that a certain numbered version of the GNU Affero\r\nGeneral Public License \"or any later version\" applies to it, you have\r\nthe option of following the terms and conditions either of that\r\nnumbered version or of any later version published by the Free\r\nSoftware Foundation.  If the Program does not specify a version number\r\nof the GNU Affero General Public License, you may choose any version\r\never published by the Free Software Foundation.</p>\r\n\r\n<p>If the Program specifies that a proxy can decide which future\r\nversions of the GNU Affero General Public License can be used, that\r\nproxy\'s public statement of acceptance of a version permanently\r\nauthorizes you to choose that version for the Program.</p>\r\n\r\n<p>Later license versions may give you additional or different\r\npermissions.  However, no additional obligations are imposed on any\r\nauthor or copyright holder as a result of your choosing to follow a\r\nlater version.</p>\r\n\r\n<h4 id=\"section15\">15. Disclaimer of Warranty.</h4>\r\n\r\n<p>THERE IS NO WARRANTY FOR THE PROGRAM, TO THE EXTENT PERMITTED BY\r\nAPPLICABLE LAW.  EXCEPT WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT\r\nHOLDERS AND/OR OTHER PARTIES PROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY\r\nOF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO,\r\nTHE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR\r\nPURPOSE.  THE ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE PROGRAM\r\nIS WITH YOU.  SHOULD THE PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF\r\nALL NECESSARY SERVICING, REPAIR OR CORRECTION.</p>\r\n\r\n<h4 id=\"section16\">16. Limitation of Liability.</h4>\r\n\r\n<p>IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\r\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MODIFIES AND/OR CONVEYS\r\nTHE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES, INCLUDING ANY\r\nGENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE\r\nUSE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED TO LOSS OF\r\nDATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD\r\nPARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER PROGRAMS),\r\nEVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF\r\nSUCH DAMAGES.</p>\r\n\r\n<h4 id=\"section17\">17. Interpretation of Sections 15 and 16.</h4>\r\n\r\n<p>If the disclaimer of warranty and limitation of liability provided\r\nabove cannot be given local legal effect according to their terms,\r\nreviewing courts shall apply local law that most closely approximates\r\nan absolute waiver of all civil liability in connection with the\r\nProgram, unless a warranty or assumption of liability accompanies a\r\ncopy of the Program in return for a fee.</p>\r\n\r\n<p>END OF TERMS AND CONDITIONS</p>\r\n\r\n<h4 id=\"howto\">How to Apply These Terms to Your New Programs</h4>\r\n\r\n<p>If you develop a new program, and you want it to be of the greatest\r\npossible use to the public, the best way to achieve this is to make it\r\nfree software which everyone can redistribute and change under these terms.</p>\r\n\r\n<p>To do so, attach the following notices to the program.  It is safest\r\nto attach them to the start of each source file to most effectively\r\nstate the exclusion of warranty; and each file should have at least\r\nthe \"copyright\" line and a pointer to where the full notice is found.</p>\r\n\r\n<pre>    &lt;one line to give the program\'s name and a brief idea of what it does.&gt;\r\n    Copyright (C) &lt;year&gt;  &lt;name of author&gt;\r\n\r\n    This program is free software: you can redistribute it and/or modify\r\n    it under the terms of the GNU Affero General Public License as\r\n    published by the Free Software Foundation, either version 3 of the\r\n    License, or (at your option) any later version.\r\n\r\n    This program is distributed in the hope that it will be useful,\r\n    but WITHOUT ANY WARRANTY; without even the implied warranty of\r\n    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\r\n    GNU Affero General Public License for more details.\r\n\r\n    You should have received a copy of the GNU Affero General Public License\r\n    along with this program.  If not, see &lt;https://www.gnu.org/licenses/&gt;.\r\n</pre>\r\n\r\n<p>Also add information on how to contact you by electronic and paper mail.</p>\r\n\r\n<p>If your software can interact with users remotely through a computer\r\nnetwork, you should also make sure that it provides a way for users to\r\nget its source.  For example, if your program is a web application, its\r\ninterface could display a \"Source\" link that leads users to an archive\r\nof the code.  There are many ways you could offer source, and different\r\nsolutions will be better for different programs; see section 13 for the\r\nspecific requirements.</p>\r\n\r\n<p>You should also get your employer (if you work as a programmer) or school,\r\nif any, to sign a \"copyright disclaimer\" for the program, if necessary.\r\nFor more information on this, and how to apply and follow the GNU AGPL, see\r\n&lt;<a href=\"https://www.gnu.org/licenses/\">https://www.gnu.org/licenses/</a>&gt;.</p>\r\n	\r\n</div>', '2018-05-01 00:00:00', 'c7b75645-b1d3-4eba-8124-6cd58fea0be0');

-- --------------------------------------------------------

--
-- Table structure for table `apto_user_role`
--

DROP TABLE IF EXISTS `apto_user_role`;
CREATE TABLE `apto_user_role` (
  `surrogate_id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `apto_user_role`
--

INSERT INTO `apto_user_role` (`surrogate_id`, `identifier`, `id`, `name`) VALUES
(2, 'ROLE_ADMIN', '80368e25-ab66-4833-aa4c-b1496e3aa1b4', 'Admin'),
(22, 'ROLE_USER', '59dd4c7e-03f3-4755-b228-52c36a4fdefc', 'Login'),
(23, 'ROLE_WEBMASTER', '58c8fd24-fbf1-4ed8-9310-309d8c7f8ba3', 'Webmaster'),
(24, 'ROLE_API', 'f03a3ca8-d40d-4955-83f8-55d94c3c8a82', 'Api');

-- --------------------------------------------------------

--
-- Table structure for table `apto_user_role_to_user_role`
--

DROP TABLE IF EXISTS `apto_user_role_to_user_role`;
CREATE TABLE `apto_user_role_to_user_role` (
  `child_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `apto_user_role_to_user_role`
--

INSERT INTO `apto_user_role_to_user_role` (`child_id`, `parent_id`) VALUES
(22, 23),
(23, 2);

-- --------------------------------------------------------

--
-- Table structure for table `apto_user_to_user_role`
--

DROP TABLE IF EXISTS `apto_user_to_user_role`;
CREATE TABLE `apto_user_to_user_role` (
  `user_id` int(11) NOT NULL,
  `user_role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugin_image_upload_canvas`
--

DROP TABLE IF EXISTS `plugin_image_upload_canvas`;
CREATE TABLE `plugin_image_upload_canvas` (
  `surrogate_id` int(11) NOT NULL,
  `image_settings` longtext NOT NULL COMMENT '(DC2Type:array)',
  `text_settings` longtext NOT NULL COMMENT '(DC2Type:array)',
  `area_settings` longtext NOT NULL COMMENT '(DC2Type:array)',
  `price_settings` longtext NOT NULL COMMENT '(DC2Type:array)',
  `created` datetime NOT NULL,
  `id` char(36) NOT NULL,
  `identifier_value` varchar(255) NOT NULL,
  `motive_settings` longtext NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugin_material_picker_color_rating`
--

DROP TABLE IF EXISTS `plugin_material_picker_color_rating`;
CREATE TABLE `plugin_material_picker_color_rating` (
  `surrogate_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `id` char(36) NOT NULL,
  `color_red` int(11) NOT NULL,
  `color_green` int(11) NOT NULL,
  `color_blue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `plugin_material_picker_color_rating`
--

INSERT INTO `plugin_material_picker_color_rating` (`surrogate_id`, `material_id`, `rating`, `created`, `id`, `color_red`, `color_green`, `color_blue`) VALUES
(1, 1, 100, '2020-09-24 19:31:36', '5d2cbe35-b38c-4313-b705-bf782530d019', 255, 255, 255),
(2, 2, 100, '2020-09-24 19:31:49', '4e56071e-b517-4861-a40e-192995a4795b', 0, 0, 0),
(3, 3, 100, '2020-09-24 19:31:59', 'c9c6c4ce-acdd-4d88-810c-f3ed9dbfb821', 255, 0, 0),
(6, 4, 80, '2020-09-24 19:32:41', 'f713438c-2b95-46a0-8d31-4d3befc74614', 255, 255, 255),
(7, 4, 20, '2020-09-24 19:32:45', '3af20da9-4a4d-45b4-b55d-8f62996275fe', 0, 0, 0),
(8, 5, 80, '2020-09-24 19:32:59', 'b45fdb15-8089-41ee-b140-948f3f9d52f9', 0, 0, 255),
(9, 6, 100, '2020-09-24 19:33:11', '59d78d05-8cff-45fa-b032-2b037f73189b', 255, 255, 0),
(10, 6, 70, '2020-09-24 19:33:17', '8364c7a2-ff58-41ab-9a8f-9395512e9cce', 255, 165, 0),
(11, 7, 80, '2020-09-24 19:33:25', '0ab690a1-880f-4dd5-ac13-a4ffc8a6cf9b', 0, 0, 0),
(12, 7, 20, '2020-09-24 19:33:30', '21de762c-05f7-470d-937e-961a5c5666e5', 255, 255, 255),
(13, 8, 90, '2020-09-24 19:33:45', 'da4f6efb-b84c-4643-a6cc-e57cbbc6b1fe', 0, 0, 255);

-- --------------------------------------------------------

--
-- Table structure for table `plugin_material_picker_group`
--

DROP TABLE IF EXISTS `plugin_material_picker_group`;
CREATE TABLE `plugin_material_picker_group` (
  `surrogate_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `name` longtext DEFAULT NULL COMMENT '(DC2Type:AptoPropertyTranslatedValue)',
  `allow_multiple` tinyint(1) NOT NULL,
  `id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugin_material_picker_material`
--

DROP TABLE IF EXISTS `plugin_material_picker_material`;
CREATE TABLE `plugin_material_picker_material` (
  `surrogate_id` int(11) NOT NULL,
  `preview_image_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `active` tinyint(1) NOT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `name` longtext NOT NULL COMMENT '(DC2Type:AptoPropertyTranslatedValue)',
  `description` longtext DEFAULT NULL COMMENT '(DC2Type:AptoPropertyTranslatedValue)',
  `clicks` int(11) NOT NULL,
  `reflection` int(11) DEFAULT NULL,
  `transmission` int(11) DEFAULT NULL,
  `absorption` int(11) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `is_not_available` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `plugin_material_picker_material`
--

INSERT INTO `plugin_material_picker_material` (`surrogate_id`, `preview_image_id`, `created`, `active`, `identifier`, `name`, `description`, `clicks`, `reflection`, `transmission`, `absorption`, `id`, `is_not_available`, `position`) VALUES
(1, 923, '2020-09-24 19:22:20', 1, NULL, '{\"de_DE\":\"Stoff 1\"}', '[]', 11, NULL, NULL, NULL, '927efae3-903d-4512-be1e-09fcb04d88d4', 0, 0),
(2, 938, '2020-09-24 19:22:25', 1, NULL, '{\"de_DE\":\"Stoff 2\"}', '[]', 9, NULL, NULL, NULL, '1be3c49e-db9b-43fc-a8c4-89313d67f355', 0, 0),
(3, 936, '2020-09-24 19:22:29', 1, NULL, '{\"de_DE\":\"Stoff 3\"}', '[]', 2, NULL, NULL, NULL, 'c9a017c6-e431-4e86-b91c-bc71d89b4a93', 0, 0),
(4, 926, '2020-09-24 19:22:33', 1, NULL, '{\"de_DE\":\"Stoff 4\"}', '[]', 0, NULL, NULL, NULL, 'b86d4a14-8cce-43c7-9f18-ad54db6188a6', 0, 0),
(5, 930, '2020-09-24 19:24:07', 1, NULL, '{\"de_DE\":\"Stoff 5\"}', '[]', 0, NULL, NULL, NULL, '0d7cb830-73b0-453a-99ac-d450a12fbd16', 0, 0),
(6, 934, '2020-09-24 19:24:12', 1, NULL, '{\"de_DE\":\"Stoff 6\"}', '[]', 1, NULL, NULL, NULL, '0793caf4-ec1f-467d-a41a-f8769f3184d1', 0, 0),
(7, 928, '2020-09-24 19:24:17', 1, NULL, '{\"de_DE\":\"Stoff 7\"}', '[]', 10, NULL, NULL, NULL, '0ae6de59-3913-4b05-9104-5f09e4126af3', 0, 0),
(8, 932, '2020-09-24 19:24:22', 1, NULL, '{\"de_DE\":\"Stoff 8\"}', '[]', 0, NULL, NULL, NULL, 'd6ba533f-ae1d-4120-8b07-b617f37ddc36', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `plugin_material_picker_material_to_apto_price`
--

DROP TABLE IF EXISTS `plugin_material_picker_material_to_apto_price`;
CREATE TABLE `plugin_material_picker_material_to_apto_price` (
  `material_surrogate_id` int(11) NOT NULL,
  `apto_price_surrogate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `plugin_material_picker_material_to_apto_price`
--

INSERT INTO `plugin_material_picker_material_to_apto_price` (`material_surrogate_id`, `apto_price_surrogate_id`) VALUES
(1, 4419),
(1, 4421),
(1, 4422),
(1, 4423),
(8, 4424);

-- --------------------------------------------------------

--
-- Table structure for table `plugin_material_picker_material_to_media_file`
--

DROP TABLE IF EXISTS `plugin_material_picker_material_to_media_file`;
CREATE TABLE `plugin_material_picker_material_to_media_file` (
  `material_surrogate_id` int(11) NOT NULL,
  `media_image_surrogate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugin_material_picker_material_to_property`
--

DROP TABLE IF EXISTS `plugin_material_picker_material_to_property`;
CREATE TABLE `plugin_material_picker_material_to_property` (
  `material_surrogate_id` int(11) NOT NULL,
  `property_surrogate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugin_material_picker_pool`
--

DROP TABLE IF EXISTS `plugin_material_picker_pool`;
CREATE TABLE `plugin_material_picker_pool` (
  `surrogate_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `name` longtext DEFAULT NULL COMMENT '(DC2Type:AptoPropertyTranslatedValue)',
  `id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `plugin_material_picker_pool`
--

INSERT INTO `plugin_material_picker_pool` (`surrogate_id`, `created`, `name`, `id`) VALUES
(1, '2020-09-24 19:27:08', '{\"de_DE\":\"Farben\"}', '6f607322-dcb7-4226-9120-736741c217ce');

-- --------------------------------------------------------

--
-- Table structure for table `plugin_material_picker_pool_item`
--

DROP TABLE IF EXISTS `plugin_material_picker_pool_item`;
CREATE TABLE `plugin_material_picker_pool_item` (
  `surrogate_id` int(11) NOT NULL,
  `pool_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `price_group_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `plugin_material_picker_pool_item`
--

INSERT INTO `plugin_material_picker_pool_item` (`surrogate_id`, `pool_id`, `material_id`, `price_group_id`, `created`, `id`) VALUES
(1, 1, 1, 1, '2020-09-24 19:28:16', 'b6f010bd-4081-450e-a4c7-b100a381266e'),
(2, 1, 2, 1, '2020-09-24 19:28:21', '3cd6582a-cdf1-464f-863c-b1278f7f5215'),
(3, 1, 3, 1, '2020-09-24 19:28:24', 'ba343767-fc61-441b-a06c-d7d594008dab'),
(4, 1, 4, 1, '2020-09-24 19:28:27', '81722b5e-ba36-4eb9-8903-17a85efef868'),
(5, 1, 5, 2, '2020-09-24 19:28:34', 'bcb69a46-a175-4ca1-b946-bf1d45486bcd'),
(6, 1, 6, 2, '2020-09-24 19:28:39', 'f648c509-3c37-494c-b805-29ceb549ffdb'),
(7, 1, 7, 2, '2020-09-24 19:28:41', '99f4e586-fa7f-4b18-be5b-7523315f38b8'),
(8, 1, 8, 2, '2020-09-24 19:28:43', '7866a81e-6c95-46fa-831c-349e1477ab11');

-- --------------------------------------------------------

--
-- Table structure for table `plugin_material_picker_price_group`
--

DROP TABLE IF EXISTS `plugin_material_picker_price_group`;
CREATE TABLE `plugin_material_picker_price_group` (
  `surrogate_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `name` longtext DEFAULT NULL COMMENT '(DC2Type:AptoPropertyTranslatedValue)',
  `internal_name` longtext DEFAULT NULL COMMENT '(DC2Type:AptoPropertyTranslatedValue)',
  `additional_charge` double NOT NULL,
  `id` char(36) NOT NULL,
  `price_matrix_id` varchar(36) DEFAULT NULL,
  `price_matrix_row` longtext DEFAULT NULL,
  `price_matrix_column` longtext DEFAULT NULL,
  `price_matrix_price_post_process` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `plugin_material_picker_price_group`
--

INSERT INTO `plugin_material_picker_price_group` (`surrogate_id`, `created`, `name`, `internal_name`, `additional_charge`, `id`, `price_matrix_id`, `price_matrix_row`, `price_matrix_column`, `price_matrix_price_post_process`) VALUES
(1, '2020-09-24 19:27:43', '{\"de_DE\":\"Preisgruppe 1\"}', '{\"de_DE\":\"Preisgruppe 1\"}', 0, 'f0b4a58c-7a1f-4a98-ad5e-21ebe1791ccd', NULL, NULL, NULL, NULL),
(2, '2020-09-24 19:27:54', '{\"de_DE\":\"Preisgruppe 2\"}', '{\"de_DE\":\"Preisgruppe 2\"}', 15, '36bc410b-2c61-4c07-98f4-d068c029e54a', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `plugin_material_picker_property`
--

DROP TABLE IF EXISTS `plugin_material_picker_property`;
CREATE TABLE `plugin_material_picker_property` (
  `surrogate_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `name` longtext DEFAULT NULL COMMENT '(DC2Type:AptoPropertyTranslatedValue)',
  `id` char(36) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugin_material_picker_property_to_custom_property`
--

DROP TABLE IF EXISTS `plugin_material_picker_property_to_custom_property`;
CREATE TABLE `plugin_material_picker_property_to_custom_property` (
  `property_id` int(11) NOT NULL,
  `custom_property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugin_material_picker_render_image`
--

DROP TABLE IF EXISTS `plugin_material_picker_render_image`;
CREATE TABLE `plugin_material_picker_render_image` (
  `surrogate_id` int(11) NOT NULL,
  `media_file_id` int(11) DEFAULT NULL,
  `material_id` int(11) DEFAULT NULL,
  `pool_id` int(11) DEFAULT NULL,
  `layer` int(11) NOT NULL,
  `offset_x` int(11) NOT NULL DEFAULT 0,
  `offset_y` int(11) NOT NULL DEFAULT 0,
  `perspective` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugin_parts_list_part`
--

DROP TABLE IF EXISTS `plugin_parts_list_part`;
CREATE TABLE `plugin_parts_list_part` (
  `surrogate_id` int(11) NOT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `part_number` varchar(255) NOT NULL,
  `name` longtext NOT NULL COMMENT '(DC2Type:AptoPropertyTranslatedValue)',
  `description` longtext NOT NULL COMMENT '(DC2Type:AptoPropertyTranslatedValue)',
  `base_quantity` int(11) NOT NULL DEFAULT 1,
  `id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugin_parts_list_part_element_usage`
--

DROP TABLE IF EXISTS `plugin_parts_list_part_element_usage`;
CREATE TABLE `plugin_parts_list_part_element_usage` (
  `surrogate_id` int(11) NOT NULL,
  `part_surrogate_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `usage_for_uuid_id` char(36) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `quantity_calculation_active` tinyint(1) NOT NULL DEFAULT 0,
  `quantity_calculation_operation` varchar(255) DEFAULT NULL,
  `quantity_calculation_field_type` varchar(255) DEFAULT NULL,
  `quantity_calculation_field` varchar(255) DEFAULT NULL,
  `quantity_calculation_field_position` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugin_parts_list_part_product_association`
--

DROP TABLE IF EXISTS `plugin_parts_list_part_product_association`;
CREATE TABLE `plugin_parts_list_part_product_association` (
  `surrogate_id` int(11) NOT NULL,
  `part_surrogate_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `count` int(11) NOT NULL,
  `id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugin_parts_list_part_product_usage`
--

DROP TABLE IF EXISTS `plugin_parts_list_part_product_usage`;
CREATE TABLE `plugin_parts_list_part_product_usage` (
  `surrogate_id` int(11) NOT NULL,
  `part_surrogate_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `usage_for_uuid_id` char(36) NOT NULL,
  `quantity` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugin_parts_list_part_rule_condition`
--

DROP TABLE IF EXISTS `plugin_parts_list_part_rule_condition`;
CREATE TABLE `plugin_parts_list_part_rule_condition` (
  `surrogate_id` int(11) NOT NULL,
  `rule_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `property` varchar(255) DEFAULT NULL,
  `section_id` varchar(255) DEFAULT NULL,
  `computed_value_id` varchar(255) DEFAULT NULL,
  `element_id` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `product_id_id` char(36) NOT NULL,
  `operator` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugin_parts_list_part_rule_usage`
--

DROP TABLE IF EXISTS `plugin_parts_list_part_rule_usage`;
CREATE TABLE `plugin_parts_list_part_rule_usage` (
  `surrogate_id` int(11) NOT NULL,
  `part_surrogate_id` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `conditions_operator` int(11) NOT NULL,
  `id` char(36) NOT NULL,
  `quantity` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugin_parts_list_part_section_usage`
--

DROP TABLE IF EXISTS `plugin_parts_list_part_section_usage`;
CREATE TABLE `plugin_parts_list_part_section_usage` (
  `surrogate_id` int(11) NOT NULL,
  `part_surrogate_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `usage_for_uuid_id` char(36) NOT NULL,
  `quantity` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugin_parts_list_unit`
--

DROP TABLE IF EXISTS `plugin_parts_list_unit`;
CREATE TABLE `plugin_parts_list_unit` (
  `surrogate_id` int(11) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugin_parts_part_to_apto_price`
--

DROP TABLE IF EXISTS `plugin_parts_part_to_apto_price`;
CREATE TABLE `plugin_parts_part_to_apto_price` (
  `part_surrogate_id` int(11) NOT NULL,
  `apto_price_surrogate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apto_acl_entry`
--
ALTER TABLE `apto_acl_entry`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoShop` (`shop_id`),
  ADD KEY `AptoIdentity` (`model`,`entity`,`field`),
  ADD KEY `AptoMask` (`mask`),
  ADD KEY `AptoShopIdentity` (`shop_id`,`model`,`entity`,`field`),
  ADD KEY `AptoShopRoleIdentity` (`shop_id`,`role_identifier`,`model`,`entity`,`field`),
  ADD KEY `AptoRole` (`role_identifier`);

--
-- Indexes for table `apto_basket_configuration`
--
ALTER TABLE `apto_basket_configuration`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `IDX_23689EFD4584665A` (`product_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`),
  ADD KEY `AptoSearchId` (`id`);

--
-- Indexes for table `apto_category`
--
ALTER TABLE `apto_category`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`),
  ADD KEY `AptoSearchId` (`id`),
  ADD KEY `IDX_58C9F22E727ACA70` (`parent_id`),
  ADD KEY `IDX_58C9F22EFAE957CD` (`preview_image_id`);

--
-- Indexes for table `apto_category_to_custom_property`
--
ALTER TABLE `apto_category_to_custom_property`
  ADD PRIMARY KEY (`category_id`,`custom_property_id`),
  ADD UNIQUE KEY `UNIQ_A222FC3762AEA626` (`custom_property_id`),
  ADD KEY `IDX_A222FC3712469DE2` (`category_id`);

--
-- Indexes for table `apto_code_configuration`
--
ALTER TABLE `apto_code_configuration`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD UNIQUE KEY `UNIQ_8E4A486C77153098` (`code`),
  ADD KEY `IDX_8E4A486C4584665A` (`product_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`),
  ADD KEY `AptoSearchId` (`id`);

--
-- Indexes for table `apto_configuration`
--
ALTER TABLE `apto_configuration`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`),
  ADD KEY `AptoSearchId` (`id`);

--
-- Indexes for table `apto_configuration_immutable_to_custom_property`
--
ALTER TABLE `apto_configuration_immutable_to_custom_property`
  ADD PRIMARY KEY (`configuration_immutable_id`,`custom_property_id`),
  ADD UNIQUE KEY `UNIQ_487FAA1C62AEA626` (`custom_property_id`),
  ADD KEY `IDX_487FAA1C1C2BDBCA` (`configuration_immutable_id`);

--
-- Indexes for table `apto_content_snippet`
--
ALTER TABLE `apto_content_snippet`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD UNIQUE KEY `AptoUniqueNameParent` (`name`,`parent_id`),
  ADD KEY `IDX_92AB2FAA727ACA70` (`parent_id`);

--
-- Indexes for table `apto_customer`
--
ALTER TABLE `apto_customer`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD UNIQUE KEY `UNIQ_DFBC65E6F85E0677` (`username`),
  ADD UNIQUE KEY `AptoUniqueShopIdExternalId` (`shop_id`,`external_id`);

--
-- Indexes for table `apto_customer_configuration`
--
ALTER TABLE `apto_customer_configuration`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `IDX_341AFD19395C3F3` (`customer_id`),
  ADD KEY `IDX_341AFD14584665A` (`product_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`),
  ADD KEY `AptoSearchId` (`id`);

--
-- Indexes for table `apto_customer_group`
--
ALTER TABLE `apto_customer_group`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD UNIQUE KEY `AptoUniqueShopIdExternalId` (`shop_id`,`external_id`);

--
-- Indexes for table `apto_custom_property`
--
ALTER TABLE `apto_custom_property`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoKey` (`keyname`);

--
-- Indexes for table `apto_discount`
--
ALTER TABLE `apto_discount`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCustomerGroupId` (`customer_group_id`);

--
-- Indexes for table `apto_element_float_input_item`
--
ALTER TABLE `apto_element_float_input_item`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD UNIQUE KEY `UNIQ_39CEB9791F1F2A24` (`element_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`),
  ADD KEY `AptoSearchId` (`id`),
  ADD KEY `AptoProductId` (`product_id`),
  ADD KEY `AptoSectionId` (`section_id`),
  ADD KEY `AptoElementId` (`element_id`),
  ADD KEY `AptoProductSectionElementId` (`product_id`,`section_id`,`element_id`);

--
-- Indexes for table `apto_element_float_input_item_to_apto_price`
--
ALTER TABLE `apto_element_float_input_item_to_apto_price`
  ADD PRIMARY KEY (`float_input_item_surrogate_id`,`apto_price_surrogate_id`),
  ADD UNIQUE KEY `UNIQ_8FB45A7C742DA830` (`apto_price_surrogate_id`),
  ADD KEY `IDX_8FB45A7C60DCD92F` (`float_input_item_surrogate_id`);

--
-- Indexes for table `apto_element_price_per_unit_item`
--
ALTER TABLE `apto_element_price_per_unit_item`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD UNIQUE KEY `UNIQ_892AC8491F1F2A24` (`element_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`),
  ADD KEY `AptoSearchId` (`id`),
  ADD KEY `AptoProductId` (`product_id`),
  ADD KEY `AptoSectionId` (`section_id`),
  ADD KEY `AptoElementId` (`element_id`),
  ADD KEY `AptoProductSectionElementId` (`product_id`,`section_id`,`element_id`);

--
-- Indexes for table `apto_element_price_per_unit_item_to_apto_price`
--
ALTER TABLE `apto_element_price_per_unit_item_to_apto_price`
  ADD PRIMARY KEY (`price_per_unit_item_surrogate_id`,`apto_price_surrogate_id`),
  ADD UNIQUE KEY `UNIQ_5718FDDD742DA830` (`apto_price_surrogate_id`),
  ADD KEY `IDX_5718FDDDE4A9DB9F` (`price_per_unit_item_surrogate_id`);

--
-- Indexes for table `apto_element_select_box_item`
--
ALTER TABLE `apto_element_select_box_item`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`),
  ADD KEY `AptoSearchId` (`id`),
  ADD KEY `AptoElementId` (`element_id`);

--
-- Indexes for table `apto_element_select_box_item_to_apto_price`
--
ALTER TABLE `apto_element_select_box_item_to_apto_price`
  ADD PRIMARY KEY (`select_box_item_surrogate_id`,`apto_price_surrogate_id`),
  ADD UNIQUE KEY `UNIQ_5BABC315742DA830` (`apto_price_surrogate_id`),
  ADD KEY `IDX_5BABC315DCBF0037` (`select_box_item_surrogate_id`);

--
-- Indexes for table `apto_event_store`
--
ALTER TABLE `apto_event_store`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `EventId` (`event_id`),
  ADD KEY `TypeName` (`type_name`),
  ADD KEY `OccurredOn` (`occurred_on`),
  ADD KEY `UserId` (`user_id`),
  ADD KEY `TypeNameOccurredOnUserId` (`type_name`,`occurred_on`,`user_id`);

--
-- Indexes for table `apto_filter_category`
--
ALTER TABLE `apto_filter_category`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`),
  ADD KEY `AptoSearchId` (`id`);

--
-- Indexes for table `apto_filter_property`
--
ALTER TABLE `apto_filter_property`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`),
  ADD KEY `AptoSearchId` (`id`);

--
-- Indexes for table `apto_filter_property_to_filter_category`
--
ALTER TABLE `apto_filter_property_to_filter_category`
  ADD PRIMARY KEY (`filterProperty_id`,`filterCategory_id`),
  ADD KEY `IDX_683F4A06F28194A` (`filterProperty_id`),
  ADD KEY `IDX_683F4A029FC9744` (`filterCategory_id`);

--
-- Indexes for table `apto_group`
--
ALTER TABLE `apto_group`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`),
  ADD KEY `AptoSearchId` (`id`),
  ADD KEY `AptoGroupPosition` (`position`);

--
-- Indexes for table `apto_guest_configuration`
--
ALTER TABLE `apto_guest_configuration`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `IDX_E745B73C4584665A` (`product_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`),
  ADD KEY `AptoSearchId` (`id`);

--
-- Indexes for table `apto_immutable_configuration`
--
ALTER TABLE `apto_immutable_configuration`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `IDX_B738BC74584665A` (`product_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`),
  ADD KEY `AptoSearchId` (`id`);

--
-- Indexes for table `apto_language`
--
ALTER TABLE `apto_language`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD UNIQUE KEY `AptoUniqueIsocode` (`isocode`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`),
  ADD KEY `AptoSearchId` (`id`);

--
-- Indexes for table `apto_media_file`
--
ALTER TABLE `apto_media_file`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoMd5Hash` (`md5_hash`),
  ADD KEY `AptoFilename` (`filename`),
  ADD KEY `AptoExtension` (`extension`);

--
-- Indexes for table `apto_media_file_to_custom_property`
--
ALTER TABLE `apto_media_file_to_custom_property`
  ADD PRIMARY KEY (`media_file_id`,`custom_property_id`),
  ADD UNIQUE KEY `UNIQ_7E59AF3162AEA626` (`custom_property_id`),
  ADD KEY `IDX_7E59AF31F21CFF25` (`media_file_id`);

--
-- Indexes for table `apto_order_configuration`
--
ALTER TABLE `apto_order_configuration`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `IDX_1F20E8169395C3F3` (`customer_id`),
  ADD KEY `IDX_1F20E8164584665A` (`product_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`),
  ADD KEY `AptoSearchId` (`id`);

--
-- Indexes for table `apto_plugin_frontend_user`
--
ALTER TABLE `apto_plugin_frontend_user`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD UNIQUE KEY `UNIQ_8AAF8E13F85E0677` (`username`),
  ADD UNIQUE KEY `UNIQ_8AAF8E13E7927C74` (`email`);

--
-- Indexes for table `apto_plugin_request_form_offer_data`
--
ALTER TABLE `apto_plugin_request_form_offer_data`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`);

--
-- Indexes for table `apto_plugin_request_form_offer_html`
--
ALTER TABLE `apto_plugin_request_form_offer_html`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`);

--
-- Indexes for table `apto_plugin_request_form_random_number`
--
ALTER TABLE `apto_plugin_request_form_random_number`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD UNIQUE KEY `UNIQ_77133B1696901F54` (`number`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`);

--
-- Indexes for table `apto_price`
--
ALTER TABLE `apto_price`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCustomerGroupId` (`customer_group_id`);

--
-- Indexes for table `apto_price_formula`
--
ALTER TABLE `apto_price_formula`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCustomerGroupId` (`customer_group_id`);

--
-- Indexes for table `apto_price_matrix`
--
ALTER TABLE `apto_price_matrix`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`),
  ADD KEY `AptoSearchId` (`id`);

--
-- Indexes for table `apto_price_matrix_element`
--
ALTER TABLE `apto_price_matrix_element`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD UNIQUE KEY `unique_column_value_row_value` (`price_matrix_id`,`column_value`,`row_value`),
  ADD KEY `IDX_B199AFEA29B1381B` (`price_matrix_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`),
  ADD KEY `AptoSearchId` (`id`);

--
-- Indexes for table `apto_price_matrix_element_to_apto_price`
--
ALTER TABLE `apto_price_matrix_element_to_apto_price`
  ADD PRIMARY KEY (`price_matrix_element_surrogate_id`,`apto_price_surrogate_id`),
  ADD UNIQUE KEY `UNIQ_8737B277742DA830` (`apto_price_surrogate_id`),
  ADD KEY `IDX_8737B277F2B6E851` (`price_matrix_element_surrogate_id`);

--
-- Indexes for table `apto_price_matrix_element_to_custom_property`
--
ALTER TABLE `apto_price_matrix_element_to_custom_property`
  ADD PRIMARY KEY (`price_matrix_element_surrogate_id`,`custom_property_surrogate_id`),
  ADD UNIQUE KEY `UNIQ_906B41A2DFFA90A` (`custom_property_surrogate_id`),
  ADD KEY `IDX_906B41AF2B6E851` (`price_matrix_element_surrogate_id`);

--
-- Indexes for table `apto_product`
--
ALTER TABLE `apto_product`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD UNIQUE KEY `UNIQ_8858E5D5FC5788D4` (`article_number`),
  ADD UNIQUE KEY `UNIQ_8858E5D59BEEE8F5` (`seo_url`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`),
  ADD KEY `AptoSearchId` (`id`),
  ADD KEY `IDX_8858E5D5FAE957CD` (`preview_image_id`);

--
-- Indexes for table `apto_product_attachment`
--
ALTER TABLE `apto_product_attachment`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `IDX_FC83D60EF21CFF25` (`media_file_id`),
  ADD KEY `IDX_FC83D60E1F1F2A24` (`element_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`);

--
-- Indexes for table `apto_product_computed_product_value`
--
ALTER TABLE `apto_product_computed_product_value`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `IDX_78C99B534584665A` (`product_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`);

--
-- Indexes for table `apto_product_computed_product_value_alias`
--
ALTER TABLE `apto_product_computed_product_value_alias`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `IDX_163F733454BB941E` (`computed_product_value_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`);

--
-- Indexes for table `apto_product_domain_properties`
--
ALTER TABLE `apto_product_domain_properties`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `IDX_3D82B01FAE957CD` (`preview_image_id`),
  ADD KEY `IDX_3D82B014D16C4DD` (`shop_id`),
  ADD KEY `IDX_3D82B014584665A` (`product_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`);

--
-- Indexes for table `apto_product_element`
--
ALTER TABLE `apto_product_element`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`),
  ADD KEY `IDX_4B263F45D823E37A` (`section_id`),
  ADD KEY `IDX_4B263F45FAE957CD` (`preview_image_id`),
  ADD KEY `IDX_4B263F4529B1381B` (`price_matrix_id`);

--
-- Indexes for table `apto_product_element_to_apto_discount`
--
ALTER TABLE `apto_product_element_to_apto_discount`
  ADD PRIMARY KEY (`product_element_surrogate_id`,`apto_discount_surrogate_id`),
  ADD UNIQUE KEY `UNIQ_EBB1ACD8AF80FF65` (`apto_discount_surrogate_id`),
  ADD KEY `IDX_EBB1ACD820D05E3D` (`product_element_surrogate_id`);

--
-- Indexes for table `apto_product_element_to_apto_price`
--
ALTER TABLE `apto_product_element_to_apto_price`
  ADD PRIMARY KEY (`product_element_surrogate_id`,`apto_price_surrogate_id`),
  ADD UNIQUE KEY `UNIQ_E6CFEB0B742DA830` (`apto_price_surrogate_id`),
  ADD KEY `IDX_E6CFEB0B20D05E3D` (`product_element_surrogate_id`);

--
-- Indexes for table `apto_product_element_to_apto_price_formula`
--
ALTER TABLE `apto_product_element_to_apto_price_formula`
  ADD PRIMARY KEY (`product_element_surrogate_id`,`apto_price_formula_surrogate_id`),
  ADD UNIQUE KEY `UNIQ_89EC959558EF938` (`apto_price_formula_surrogate_id`),
  ADD KEY `IDX_89EC95920D05E3D` (`product_element_surrogate_id`);

--
-- Indexes for table `apto_product_element_to_custom_property`
--
ALTER TABLE `apto_product_element_to_custom_property`
  ADD PRIMARY KEY (`product_element_id`,`custom_property_id`),
  ADD UNIQUE KEY `UNIQ_4410817262AEA626` (`custom_property_id`),
  ADD KEY `IDX_441081728C78750F` (`product_element_id`);

--
-- Indexes for table `apto_product_gallery`
--
ALTER TABLE `apto_product_gallery`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `IDX_4D4D1946F21CFF25` (`media_file_id`),
  ADD KEY `IDX_4D4D19461F1F2A24` (`element_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`);

--
-- Indexes for table `apto_product_render_image`
--
ALTER TABLE `apto_product_render_image`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `IDX_48B0E318F21CFF25` (`media_file_id`),
  ADD KEY `IDX_48B0E3181F1F2A24` (`element_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`);

--
-- Indexes for table `apto_product_rule`
--
ALTER TABLE `apto_product_rule`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `IDX_2ABCF0BF4584665A` (`product_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`);

--
-- Indexes for table `apto_product_rule_condition`
--
ALTER TABLE `apto_product_rule_condition`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `IDX_F3D59F4A744E0351` (`rule_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`),
  ADD KEY `IDX_F3D59F4A54BB941E` (`computed_product_value_id`);

--
-- Indexes for table `apto_product_rule_implication`
--
ALTER TABLE `apto_product_rule_implication`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `IDX_9ED94651744E0351` (`rule_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`),
  ADD KEY `IDX_9ED9465154BB941E` (`computed_product_value_id`);

--
-- Indexes for table `apto_product_section`
--
ALTER TABLE `apto_product_section`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`),
  ADD KEY `IDX_27151B934584665A` (`product_id`),
  ADD KEY `IDX_27151B93FE54D947` (`group_id`),
  ADD KEY `IDX_27151B93FAE957CD` (`preview_image_id`);

--
-- Indexes for table `apto_product_section_to_apto_discount`
--
ALTER TABLE `apto_product_section_to_apto_discount`
  ADD PRIMARY KEY (`product_section_surrogate_id`,`apto_discount_surrogate_id`),
  ADD UNIQUE KEY `UNIQ_4E2CEE7AF80FF65` (`apto_discount_surrogate_id`),
  ADD KEY `IDX_4E2CEE748B1BAE2` (`product_section_surrogate_id`);

--
-- Indexes for table `apto_product_section_to_apto_price`
--
ALTER TABLE `apto_product_section_to_apto_price`
  ADD PRIMARY KEY (`product_section_surrogate_id`,`apto_price_surrogate_id`),
  ADD UNIQUE KEY `UNIQ_F0CB45AA742DA830` (`apto_price_surrogate_id`),
  ADD KEY `IDX_F0CB45AA48B1BAE2` (`product_section_surrogate_id`);

--
-- Indexes for table `apto_product_section_to_custom_property`
--
ALTER TABLE `apto_product_section_to_custom_property`
  ADD PRIMARY KEY (`product_section_id`,`custom_property_id`),
  ADD UNIQUE KEY `UNIQ_BF72446962AEA626` (`custom_property_id`),
  ADD KEY `IDX_BF7244694B44BC51` (`product_section_id`);

--
-- Indexes for table `apto_product_to_apto_discount`
--
ALTER TABLE `apto_product_to_apto_discount`
  ADD PRIMARY KEY (`product_surrogate_id`,`apto_discount_surrogate_id`),
  ADD UNIQUE KEY `UNIQ_73FF9EE0AF80FF65` (`apto_discount_surrogate_id`),
  ADD KEY `IDX_73FF9EE01BE1B6D8` (`product_surrogate_id`);

--
-- Indexes for table `apto_product_to_apto_price`
--
ALTER TABLE `apto_product_to_apto_price`
  ADD PRIMARY KEY (`product_surrogate_id`,`apto_price_surrogate_id`),
  ADD UNIQUE KEY `UNIQ_6581545E742DA830` (`apto_price_surrogate_id`),
  ADD KEY `IDX_6581545E1BE1B6D8` (`product_surrogate_id`);

--
-- Indexes for table `apto_product_to_category`
--
ALTER TABLE `apto_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `IDX_709B1C634584665A` (`product_id`),
  ADD KEY `IDX_709B1C6312469DE2` (`category_id`);

--
-- Indexes for table `apto_product_to_custom_property`
--
ALTER TABLE `apto_product_to_custom_property`
  ADD PRIMARY KEY (`product_id`,`custom_property_id`),
  ADD UNIQUE KEY `UNIQ_9B58F44762AEA626` (`custom_property_id`),
  ADD KEY `IDX_9B58F4474584665A` (`product_id`);

--
-- Indexes for table `apto_product_to_filter_property`
--
ALTER TABLE `apto_product_to_filter_property`
  ADD PRIMARY KEY (`product_id`,`filterProperty_id`),
  ADD KEY `IDX_43E516834584665A` (`product_id`),
  ADD KEY `IDX_43E516836F28194A` (`filterProperty_id`);

--
-- Indexes for table `apto_product_to_shop`
--
ALTER TABLE `apto_product_to_shop`
  ADD PRIMARY KEY (`product_id`,`shop_id`),
  ADD KEY `IDX_41E23C114584665A` (`product_id`),
  ADD KEY `IDX_41E23C114D16C4DD` (`shop_id`);

--
-- Indexes for table `apto_proposed_configuration`
--
ALTER TABLE `apto_proposed_configuration`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `IDX_105C7FF24584665A` (`product_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`),
  ADD KEY `AptoSearchId` (`id`);

--
-- Indexes for table `apto_shop`
--
ALTER TABLE `apto_shop`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD UNIQUE KEY `UNIQ_D7A992CAA7A91E0B` (`domain`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`),
  ADD KEY `AptoSearchId` (`id`),
  ADD KEY `AptoSearchName` (`name`),
  ADD KEY `AptoSearchIdName` (`id`,`name`);

--
-- Indexes for table `apto_shop_to_category`
--
ALTER TABLE `apto_shop_to_category`
  ADD PRIMARY KEY (`shop_surrogate_id`,`category_id`),
  ADD KEY `IDX_8B6B409E8B20F321` (`shop_surrogate_id`),
  ADD KEY `IDX_8B6B409E12469DE2` (`category_id`);

--
-- Indexes for table `apto_shop_to_custom_property`
--
ALTER TABLE `apto_shop_to_custom_property`
  ADD PRIMARY KEY (`shop_id`,`custom_property_id`),
  ADD UNIQUE KEY `UNIQ_FCEEA62962AEA626` (`custom_property_id`),
  ADD KEY `IDX_FCEEA6294D16C4DD` (`shop_id`);

--
-- Indexes for table `apto_shop_to_language`
--
ALTER TABLE `apto_shop_to_language`
  ADD PRIMARY KEY (`shop_id`,`language_id`),
  ADD KEY `IDX_59FC28EA4D16C4DD` (`shop_id`),
  ADD KEY `IDX_59FC28EA82F1BAF4` (`language_id`);

--
-- Indexes for table `apto_user`
--
ALTER TABLE `apto_user`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD UNIQUE KEY `UNIQ_F6500821F85E0677` (`username`),
  ADD UNIQUE KEY `UNIQ_F6500821E7927C74` (`email`),
  ADD UNIQUE KEY `UNIQ_F6500821C912ED9D` (`api_key`);

--
-- Indexes for table `apto_user_licence`
--
ALTER TABLE `apto_user_licence`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD UNIQUE KEY `UNIQ_A42B86905116BFCB` (`validSince`);

--
-- Indexes for table `apto_user_role`
--
ALTER TABLE `apto_user_role`
  ADD PRIMARY KEY (`surrogate_id`);

--
-- Indexes for table `apto_user_role_to_user_role`
--
ALTER TABLE `apto_user_role_to_user_role`
  ADD PRIMARY KEY (`parent_id`,`child_id`),
  ADD KEY `IDX_B2C4BC20DD62C21B` (`child_id`),
  ADD KEY `IDX_B2C4BC20727ACA70` (`parent_id`);

--
-- Indexes for table `apto_user_to_user_role`
--
ALTER TABLE `apto_user_to_user_role`
  ADD PRIMARY KEY (`user_id`,`user_role_id`),
  ADD KEY `IDX_4B18B60FA76ED395` (`user_id`),
  ADD KEY `IDX_4B18B60F8E0E3CA6` (`user_role_id`);

--
-- Indexes for table `plugin_image_upload_canvas`
--
ALTER TABLE `plugin_image_upload_canvas`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`),
  ADD KEY `AptoSearchId` (`id`);

--
-- Indexes for table `plugin_material_picker_color_rating`
--
ALTER TABLE `plugin_material_picker_color_rating`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `IDX_619BE780E308AC6F` (`material_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`),
  ADD KEY `AptoSearchId` (`id`);

--
-- Indexes for table `plugin_material_picker_group`
--
ALTER TABLE `plugin_material_picker_group`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`),
  ADD KEY `AptoSearchId` (`id`);

--
-- Indexes for table `plugin_material_picker_material`
--
ALTER TABLE `plugin_material_picker_material`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD UNIQUE KEY `UNIQ_F66C3EDD772E836A` (`identifier`),
  ADD KEY `IDX_F66C3EDDFAE957CD` (`preview_image_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`),
  ADD KEY `AptoSearchId` (`id`);

--
-- Indexes for table `plugin_material_picker_material_to_apto_price`
--
ALTER TABLE `plugin_material_picker_material_to_apto_price`
  ADD PRIMARY KEY (`material_surrogate_id`,`apto_price_surrogate_id`),
  ADD UNIQUE KEY `UNIQ_A38A9323742DA830` (`apto_price_surrogate_id`),
  ADD KEY `IDX_A38A9323983D00B3` (`material_surrogate_id`);

--
-- Indexes for table `plugin_material_picker_material_to_media_file`
--
ALTER TABLE `plugin_material_picker_material_to_media_file`
  ADD PRIMARY KEY (`material_surrogate_id`,`media_image_surrogate_id`),
  ADD KEY `IDX_6588728D983D00B3` (`material_surrogate_id`),
  ADD KEY `IDX_6588728DB6B33E26` (`media_image_surrogate_id`);

--
-- Indexes for table `plugin_material_picker_material_to_property`
--
ALTER TABLE `plugin_material_picker_material_to_property`
  ADD PRIMARY KEY (`material_surrogate_id`,`property_surrogate_id`),
  ADD KEY `IDX_8E2E3A78983D00B3` (`material_surrogate_id`),
  ADD KEY `IDX_8E2E3A78594064EA` (`property_surrogate_id`);

--
-- Indexes for table `plugin_material_picker_pool`
--
ALTER TABLE `plugin_material_picker_pool`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`),
  ADD KEY `AptoSearchId` (`id`);

--
-- Indexes for table `plugin_material_picker_pool_item`
--
ALTER TABLE `plugin_material_picker_pool_item`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD UNIQUE KEY `unique_material_id_pool_id` (`material_id`,`pool_id`),
  ADD KEY `IDX_E1382FB07B3406DF` (`pool_id`),
  ADD KEY `IDX_E1382FB0E308AC6F` (`material_id`),
  ADD KEY `IDX_E1382FB09CE2E250` (`price_group_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`),
  ADD KEY `AptoSearchId` (`id`);

--
-- Indexes for table `plugin_material_picker_price_group`
--
ALTER TABLE `plugin_material_picker_price_group`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`),
  ADD KEY `AptoSearchId` (`id`);

--
-- Indexes for table `plugin_material_picker_property`
--
ALTER TABLE `plugin_material_picker_property`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `IDX_1205796FE54D947` (`group_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`),
  ADD KEY `AptoSearchId` (`id`);

--
-- Indexes for table `plugin_material_picker_property_to_custom_property`
--
ALTER TABLE `plugin_material_picker_property_to_custom_property`
  ADD PRIMARY KEY (`property_id`,`custom_property_id`),
  ADD UNIQUE KEY `UNIQ_AE7E952B62AEA626` (`custom_property_id`),
  ADD KEY `IDX_AE7E952B549213EC` (`property_id`);

--
-- Indexes for table `plugin_material_picker_render_image`
--
ALTER TABLE `plugin_material_picker_render_image`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `IDX_DDB1FEF8F21CFF25` (`media_file_id`),
  ADD KEY `IDX_DDB1FEF8E308AC6F` (`material_id`),
  ADD KEY `IDX_DDB1FEF87B3406DF` (`pool_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`);

--
-- Indexes for table `plugin_parts_list_part`
--
ALTER TABLE `plugin_parts_list_part`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `IDX_9610F06BF8BD700D` (`unit_id`);

--
-- Indexes for table `plugin_parts_list_part_element_usage`
--
ALTER TABLE `plugin_parts_list_part_element_usage`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD UNIQUE KEY `part_surrogate_id_usage_for_uuid_id` (`part_surrogate_id`,`usage_for_uuid_id`),
  ADD KEY `IDX_5F58517BA401C423` (`part_surrogate_id`);

--
-- Indexes for table `plugin_parts_list_part_product_association`
--
ALTER TABLE `plugin_parts_list_part_product_association`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `IDX_F6353DA5A401C423` (`part_surrogate_id`),
  ADD KEY `IDX_F6353DA54584665A` (`product_id`);

--
-- Indexes for table `plugin_parts_list_part_product_usage`
--
ALTER TABLE `plugin_parts_list_part_product_usage`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD UNIQUE KEY `part_surrogate_id_usage_for_uuid_id` (`part_surrogate_id`,`usage_for_uuid_id`),
  ADD KEY `IDX_3A265EBEA401C423` (`part_surrogate_id`);

--
-- Indexes for table `plugin_parts_list_part_rule_condition`
--
ALTER TABLE `plugin_parts_list_part_rule_condition`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `IDX_7C30F870744E0351` (`rule_id`),
  ADD KEY `AptoSurrogateId` (`surrogate_id`),
  ADD KEY `AptoCreated` (`created`);

--
-- Indexes for table `plugin_parts_list_part_rule_usage`
--
ALTER TABLE `plugin_parts_list_part_rule_usage`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD KEY `IDX_5B04EC2AA401C423` (`part_surrogate_id`);

--
-- Indexes for table `plugin_parts_list_part_section_usage`
--
ALTER TABLE `plugin_parts_list_part_section_usage`
  ADD PRIMARY KEY (`surrogate_id`),
  ADD UNIQUE KEY `part_surrogate_id_usage_for_uuid_id` (`part_surrogate_id`,`usage_for_uuid_id`),
  ADD KEY `IDX_C2D4286A401C423` (`part_surrogate_id`);

--
-- Indexes for table `plugin_parts_list_unit`
--
ALTER TABLE `plugin_parts_list_unit`
  ADD PRIMARY KEY (`surrogate_id`);

--
-- Indexes for table `plugin_parts_part_to_apto_price`
--
ALTER TABLE `plugin_parts_part_to_apto_price`
  ADD PRIMARY KEY (`part_surrogate_id`,`apto_price_surrogate_id`),
  ADD UNIQUE KEY `UNIQ_E0E5B3B1742DA830` (`apto_price_surrogate_id`),
  ADD KEY `IDX_E0E5B3B1A401C423` (`part_surrogate_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apto_acl_entry`
--
ALTER TABLE `apto_acl_entry`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=628;

--
-- AUTO_INCREMENT for table `apto_basket_configuration`
--
ALTER TABLE `apto_basket_configuration`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `apto_category`
--
ALTER TABLE `apto_category`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apto_code_configuration`
--
ALTER TABLE `apto_code_configuration`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `apto_configuration`
--
ALTER TABLE `apto_configuration`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apto_content_snippet`
--
ALTER TABLE `apto_content_snippet`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT for table `apto_customer`
--
ALTER TABLE `apto_customer`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `apto_customer_configuration`
--
ALTER TABLE `apto_customer_configuration`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apto_customer_group`
--
ALTER TABLE `apto_customer_group`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `apto_custom_property`
--
ALTER TABLE `apto_custom_property`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apto_discount`
--
ALTER TABLE `apto_discount`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apto_element_float_input_item`
--
ALTER TABLE `apto_element_float_input_item`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apto_element_price_per_unit_item`
--
ALTER TABLE `apto_element_price_per_unit_item`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `apto_element_select_box_item`
--
ALTER TABLE `apto_element_select_box_item`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `apto_event_store`
--
ALTER TABLE `apto_event_store`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `apto_filter_category`
--
ALTER TABLE `apto_filter_category`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apto_filter_property`
--
ALTER TABLE `apto_filter_property`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apto_group`
--
ALTER TABLE `apto_group`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `apto_guest_configuration`
--
ALTER TABLE `apto_guest_configuration`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `apto_immutable_configuration`
--
ALTER TABLE `apto_immutable_configuration`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apto_language`
--
ALTER TABLE `apto_language`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `apto_media_file`
--
ALTER TABLE `apto_media_file`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1317;

--
-- AUTO_INCREMENT for table `apto_order_configuration`
--
ALTER TABLE `apto_order_configuration`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `apto_plugin_frontend_user`
--
ALTER TABLE `apto_plugin_frontend_user`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apto_plugin_request_form_offer_data`
--
ALTER TABLE `apto_plugin_request_form_offer_data`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apto_plugin_request_form_offer_html`
--
ALTER TABLE `apto_plugin_request_form_offer_html`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apto_plugin_request_form_random_number`
--
ALTER TABLE `apto_plugin_request_form_random_number`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apto_price`
--
ALTER TABLE `apto_price`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5577;

--
-- AUTO_INCREMENT for table `apto_price_formula`
--
ALTER TABLE `apto_price_formula`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apto_price_matrix`
--
ALTER TABLE `apto_price_matrix`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `apto_price_matrix_element`
--
ALTER TABLE `apto_price_matrix_element`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3973;

--
-- AUTO_INCREMENT for table `apto_product`
--
ALTER TABLE `apto_product`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `apto_product_attachment`
--
ALTER TABLE `apto_product_attachment`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apto_product_computed_product_value`
--
ALTER TABLE `apto_product_computed_product_value`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apto_product_computed_product_value_alias`
--
ALTER TABLE `apto_product_computed_product_value_alias`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apto_product_domain_properties`
--
ALTER TABLE `apto_product_domain_properties`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apto_product_element`
--
ALTER TABLE `apto_product_element`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1038;

--
-- AUTO_INCREMENT for table `apto_product_gallery`
--
ALTER TABLE `apto_product_gallery`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apto_product_render_image`
--
ALTER TABLE `apto_product_render_image`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1150;

--
-- AUTO_INCREMENT for table `apto_product_rule`
--
ALTER TABLE `apto_product_rule`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `apto_product_rule_condition`
--
ALTER TABLE `apto_product_rule_condition`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `apto_product_rule_implication`
--
ALTER TABLE `apto_product_rule_implication`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=463;

--
-- AUTO_INCREMENT for table `apto_product_section`
--
ALTER TABLE `apto_product_section`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=359;

--
-- AUTO_INCREMENT for table `apto_proposed_configuration`
--
ALTER TABLE `apto_proposed_configuration`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apto_shop`
--
ALTER TABLE `apto_shop`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `apto_user`
--
ALTER TABLE `apto_user`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `apto_user_licence`
--
ALTER TABLE `apto_user_licence`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `apto_user_role`
--
ALTER TABLE `apto_user_role`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `plugin_image_upload_canvas`
--
ALTER TABLE `plugin_image_upload_canvas`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plugin_material_picker_color_rating`
--
ALTER TABLE `plugin_material_picker_color_rating`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `plugin_material_picker_group`
--
ALTER TABLE `plugin_material_picker_group`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plugin_material_picker_material`
--
ALTER TABLE `plugin_material_picker_material`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `plugin_material_picker_pool`
--
ALTER TABLE `plugin_material_picker_pool`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `plugin_material_picker_pool_item`
--
ALTER TABLE `plugin_material_picker_pool_item`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `plugin_material_picker_price_group`
--
ALTER TABLE `plugin_material_picker_price_group`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `plugin_material_picker_property`
--
ALTER TABLE `plugin_material_picker_property`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plugin_material_picker_render_image`
--
ALTER TABLE `plugin_material_picker_render_image`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plugin_parts_list_part`
--
ALTER TABLE `plugin_parts_list_part`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plugin_parts_list_part_element_usage`
--
ALTER TABLE `plugin_parts_list_part_element_usage`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plugin_parts_list_part_product_association`
--
ALTER TABLE `plugin_parts_list_part_product_association`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plugin_parts_list_part_product_usage`
--
ALTER TABLE `plugin_parts_list_part_product_usage`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plugin_parts_list_part_rule_condition`
--
ALTER TABLE `plugin_parts_list_part_rule_condition`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plugin_parts_list_part_rule_usage`
--
ALTER TABLE `plugin_parts_list_part_rule_usage`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plugin_parts_list_part_section_usage`
--
ALTER TABLE `plugin_parts_list_part_section_usage`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plugin_parts_list_unit`
--
ALTER TABLE `plugin_parts_list_unit`
  MODIFY `surrogate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apto_basket_configuration`
--
ALTER TABLE `apto_basket_configuration`
  ADD CONSTRAINT `FK_23689EFD4584665A` FOREIGN KEY (`product_id`) REFERENCES `apto_product` (`surrogate_id`) ON DELETE CASCADE;

--
-- Constraints for table `apto_category`
--
ALTER TABLE `apto_category`
  ADD CONSTRAINT `FK_58C9F22E727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `apto_category` (`surrogate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_58C9F22EFAE957CD` FOREIGN KEY (`preview_image_id`) REFERENCES `apto_media_file` (`surrogate_id`);

--
-- Constraints for table `apto_category_to_custom_property`
--
ALTER TABLE `apto_category_to_custom_property`
  ADD CONSTRAINT `FK_A222FC3712469DE2` FOREIGN KEY (`category_id`) REFERENCES `apto_category` (`surrogate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A222FC3762AEA626` FOREIGN KEY (`custom_property_id`) REFERENCES `apto_custom_property` (`surrogate_id`) ON DELETE CASCADE;

--
-- Constraints for table `apto_code_configuration`
--
ALTER TABLE `apto_code_configuration`
  ADD CONSTRAINT `FK_8E4A486C4584665A` FOREIGN KEY (`product_id`) REFERENCES `apto_product` (`surrogate_id`) ON DELETE CASCADE;

--
-- Constraints for table `apto_configuration_immutable_to_custom_property`
--
ALTER TABLE `apto_configuration_immutable_to_custom_property`
  ADD CONSTRAINT `FK_487FAA1C1C2BDBCA` FOREIGN KEY (`configuration_immutable_id`) REFERENCES `apto_immutable_configuration` (`surrogate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_487FAA1C62AEA626` FOREIGN KEY (`custom_property_id`) REFERENCES `apto_custom_property` (`surrogate_id`) ON DELETE CASCADE;

--
-- Constraints for table `apto_content_snippet`
--
ALTER TABLE `apto_content_snippet`
  ADD CONSTRAINT `FK_92AB2FAA727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `apto_content_snippet` (`surrogate_id`);

--
-- Constraints for table `apto_customer_configuration`
--
ALTER TABLE `apto_customer_configuration`
  ADD CONSTRAINT `FK_341AFD14584665A` FOREIGN KEY (`product_id`) REFERENCES `apto_product` (`surrogate_id`),
  ADD CONSTRAINT `FK_341AFD19395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `apto_customer` (`surrogate_id`);

--
-- Constraints for table `apto_element_float_input_item_to_apto_price`
--
ALTER TABLE `apto_element_float_input_item_to_apto_price`
  ADD CONSTRAINT `FK_8FB45A7C60DCD92F` FOREIGN KEY (`float_input_item_surrogate_id`) REFERENCES `apto_element_float_input_item` (`surrogate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_8FB45A7C742DA830` FOREIGN KEY (`apto_price_surrogate_id`) REFERENCES `apto_price` (`surrogate_id`) ON DELETE CASCADE;

--
-- Constraints for table `apto_element_price_per_unit_item_to_apto_price`
--
ALTER TABLE `apto_element_price_per_unit_item_to_apto_price`
  ADD CONSTRAINT `FK_5718FDDD742DA830` FOREIGN KEY (`apto_price_surrogate_id`) REFERENCES `apto_price` (`surrogate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_5718FDDDE4A9DB9F` FOREIGN KEY (`price_per_unit_item_surrogate_id`) REFERENCES `apto_element_price_per_unit_item` (`surrogate_id`) ON DELETE CASCADE;

--
-- Constraints for table `apto_element_select_box_item_to_apto_price`
--
ALTER TABLE `apto_element_select_box_item_to_apto_price`
  ADD CONSTRAINT `FK_5BABC315742DA830` FOREIGN KEY (`apto_price_surrogate_id`) REFERENCES `apto_price` (`surrogate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_5BABC315DCBF0037` FOREIGN KEY (`select_box_item_surrogate_id`) REFERENCES `apto_element_select_box_item` (`surrogate_id`) ON DELETE CASCADE;

--
-- Constraints for table `apto_filter_property_to_filter_category`
--
ALTER TABLE `apto_filter_property_to_filter_category`
  ADD CONSTRAINT `FK_683F4A029FC9744` FOREIGN KEY (`filterCategory_id`) REFERENCES `apto_filter_category` (`surrogate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_683F4A06F28194A` FOREIGN KEY (`filterProperty_id`) REFERENCES `apto_filter_property` (`surrogate_id`) ON DELETE CASCADE;

--
-- Constraints for table `apto_guest_configuration`
--
ALTER TABLE `apto_guest_configuration`
  ADD CONSTRAINT `FK_E745B73C4584665A` FOREIGN KEY (`product_id`) REFERENCES `apto_product` (`surrogate_id`) ON DELETE CASCADE;

--
-- Constraints for table `apto_immutable_configuration`
--
ALTER TABLE `apto_immutable_configuration`
  ADD CONSTRAINT `FK_B738BC74584665A` FOREIGN KEY (`product_id`) REFERENCES `apto_product` (`surrogate_id`) ON DELETE CASCADE;

--
-- Constraints for table `apto_media_file_to_custom_property`
--
ALTER TABLE `apto_media_file_to_custom_property`
  ADD CONSTRAINT `FK_7E59AF3162AEA626` FOREIGN KEY (`custom_property_id`) REFERENCES `apto_custom_property` (`surrogate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_7E59AF31F21CFF25` FOREIGN KEY (`media_file_id`) REFERENCES `apto_media_file` (`surrogate_id`) ON DELETE CASCADE;

--
-- Constraints for table `apto_order_configuration`
--
ALTER TABLE `apto_order_configuration`
  ADD CONSTRAINT `FK_1F20E8164584665A` FOREIGN KEY (`product_id`) REFERENCES `apto_product` (`surrogate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1F20E8169395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `apto_customer` (`surrogate_id`);

--
-- Constraints for table `apto_price_matrix_element`
--
ALTER TABLE `apto_price_matrix_element`
  ADD CONSTRAINT `FK_B199AFEA29B1381B` FOREIGN KEY (`price_matrix_id`) REFERENCES `apto_price_matrix` (`surrogate_id`);

--
-- Constraints for table `apto_price_matrix_element_to_apto_price`
--
ALTER TABLE `apto_price_matrix_element_to_apto_price`
  ADD CONSTRAINT `FK_8737B277742DA830` FOREIGN KEY (`apto_price_surrogate_id`) REFERENCES `apto_price` (`surrogate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_8737B277F2B6E851` FOREIGN KEY (`price_matrix_element_surrogate_id`) REFERENCES `apto_price_matrix_element` (`surrogate_id`) ON DELETE CASCADE;

--
-- Constraints for table `apto_price_matrix_element_to_custom_property`
--
ALTER TABLE `apto_price_matrix_element_to_custom_property`
  ADD CONSTRAINT `FK_906B41A2DFFA90A` FOREIGN KEY (`custom_property_surrogate_id`) REFERENCES `apto_custom_property` (`surrogate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_906B41AF2B6E851` FOREIGN KEY (`price_matrix_element_surrogate_id`) REFERENCES `apto_price_matrix_element` (`surrogate_id`) ON DELETE CASCADE;

--
-- Constraints for table `apto_product`
--
ALTER TABLE `apto_product`
  ADD CONSTRAINT `FK_8858E5D5FAE957CD` FOREIGN KEY (`preview_image_id`) REFERENCES `apto_media_file` (`surrogate_id`);

--
-- Constraints for table `apto_product_attachment`
--
ALTER TABLE `apto_product_attachment`
  ADD CONSTRAINT `FK_FC83D60E1F1F2A24` FOREIGN KEY (`element_id`) REFERENCES `apto_product_element` (`surrogate_id`),
  ADD CONSTRAINT `FK_FC83D60EF21CFF25` FOREIGN KEY (`media_file_id`) REFERENCES `apto_media_file` (`surrogate_id`);

--
-- Constraints for table `apto_product_computed_product_value`
--
ALTER TABLE `apto_product_computed_product_value`
  ADD CONSTRAINT `FK_78C99B534584665A` FOREIGN KEY (`product_id`) REFERENCES `apto_product` (`surrogate_id`);

--
-- Constraints for table `apto_product_computed_product_value_alias`
--
ALTER TABLE `apto_product_computed_product_value_alias`
  ADD CONSTRAINT `FK_163F733454BB941E` FOREIGN KEY (`computed_product_value_id`) REFERENCES `apto_product_computed_product_value` (`surrogate_id`);

--
-- Constraints for table `apto_product_domain_properties`
--
ALTER TABLE `apto_product_domain_properties`
  ADD CONSTRAINT `FK_3D82B014584665A` FOREIGN KEY (`product_id`) REFERENCES `apto_product` (`surrogate_id`),
  ADD CONSTRAINT `FK_3D82B014D16C4DD` FOREIGN KEY (`shop_id`) REFERENCES `apto_shop` (`surrogate_id`),
  ADD CONSTRAINT `FK_3D82B01FAE957CD` FOREIGN KEY (`preview_image_id`) REFERENCES `apto_media_file` (`surrogate_id`);

--
-- Constraints for table `apto_product_element`
--
ALTER TABLE `apto_product_element`
  ADD CONSTRAINT `FK_4B263F4529B1381B` FOREIGN KEY (`price_matrix_id`) REFERENCES `apto_price_matrix` (`surrogate_id`),
  ADD CONSTRAINT `FK_4B263F45D823E37A` FOREIGN KEY (`section_id`) REFERENCES `apto_product_section` (`surrogate_id`),
  ADD CONSTRAINT `FK_4B263F45FAE957CD` FOREIGN KEY (`preview_image_id`) REFERENCES `apto_media_file` (`surrogate_id`);

--
-- Constraints for table `apto_product_element_to_apto_discount`
--
ALTER TABLE `apto_product_element_to_apto_discount`
  ADD CONSTRAINT `FK_EBB1ACD820D05E3D` FOREIGN KEY (`product_element_surrogate_id`) REFERENCES `apto_product_element` (`surrogate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_EBB1ACD8AF80FF65` FOREIGN KEY (`apto_discount_surrogate_id`) REFERENCES `apto_discount` (`surrogate_id`) ON DELETE CASCADE;

--
-- Constraints for table `apto_product_element_to_apto_price`
--
ALTER TABLE `apto_product_element_to_apto_price`
  ADD CONSTRAINT `FK_E6CFEB0B20D05E3D` FOREIGN KEY (`product_element_surrogate_id`) REFERENCES `apto_product_element` (`surrogate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E6CFEB0B742DA830` FOREIGN KEY (`apto_price_surrogate_id`) REFERENCES `apto_price` (`surrogate_id`) ON DELETE CASCADE;

--
-- Constraints for table `apto_product_element_to_apto_price_formula`
--
ALTER TABLE `apto_product_element_to_apto_price_formula`
  ADD CONSTRAINT `FK_89EC95920D05E3D` FOREIGN KEY (`product_element_surrogate_id`) REFERENCES `apto_product_element` (`surrogate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_89EC959558EF938` FOREIGN KEY (`apto_price_formula_surrogate_id`) REFERENCES `apto_price_formula` (`surrogate_id`) ON DELETE CASCADE;

--
-- Constraints for table `apto_product_element_to_custom_property`
--
ALTER TABLE `apto_product_element_to_custom_property`
  ADD CONSTRAINT `FK_4410817262AEA626` FOREIGN KEY (`custom_property_id`) REFERENCES `apto_custom_property` (`surrogate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_441081728C78750F` FOREIGN KEY (`product_element_id`) REFERENCES `apto_product_element` (`surrogate_id`) ON DELETE CASCADE;

--
-- Constraints for table `apto_product_gallery`
--
ALTER TABLE `apto_product_gallery`
  ADD CONSTRAINT `FK_4D4D19461F1F2A24` FOREIGN KEY (`element_id`) REFERENCES `apto_product_element` (`surrogate_id`),
  ADD CONSTRAINT `FK_4D4D1946F21CFF25` FOREIGN KEY (`media_file_id`) REFERENCES `apto_media_file` (`surrogate_id`);

--
-- Constraints for table `apto_product_render_image`
--
ALTER TABLE `apto_product_render_image`
  ADD CONSTRAINT `FK_48B0E3181F1F2A24` FOREIGN KEY (`element_id`) REFERENCES `apto_product_element` (`surrogate_id`),
  ADD CONSTRAINT `FK_48B0E318F21CFF25` FOREIGN KEY (`media_file_id`) REFERENCES `apto_media_file` (`surrogate_id`);

--
-- Constraints for table `apto_product_rule`
--
ALTER TABLE `apto_product_rule`
  ADD CONSTRAINT `FK_2ABCF0BF4584665A` FOREIGN KEY (`product_id`) REFERENCES `apto_product` (`surrogate_id`);

--
-- Constraints for table `apto_product_rule_condition`
--
ALTER TABLE `apto_product_rule_condition`
  ADD CONSTRAINT `FK_F3D59F4A54BB941E` FOREIGN KEY (`computed_product_value_id`) REFERENCES `apto_product_computed_product_value` (`surrogate_id`),
  ADD CONSTRAINT `FK_F3D59F4A744E0351` FOREIGN KEY (`rule_id`) REFERENCES `apto_product_rule` (`surrogate_id`);

--
-- Constraints for table `apto_product_rule_implication`
--
ALTER TABLE `apto_product_rule_implication`
  ADD CONSTRAINT `FK_9ED9465154BB941E` FOREIGN KEY (`computed_product_value_id`) REFERENCES `apto_product_computed_product_value` (`surrogate_id`),
  ADD CONSTRAINT `FK_9ED94651744E0351` FOREIGN KEY (`rule_id`) REFERENCES `apto_product_rule` (`surrogate_id`);

--
-- Constraints for table `apto_product_section`
--
ALTER TABLE `apto_product_section`
  ADD CONSTRAINT `FK_27151B934584665A` FOREIGN KEY (`product_id`) REFERENCES `apto_product` (`surrogate_id`),
  ADD CONSTRAINT `FK_27151B93FAE957CD` FOREIGN KEY (`preview_image_id`) REFERENCES `apto_media_file` (`surrogate_id`),
  ADD CONSTRAINT `FK_27151B93FE54D947` FOREIGN KEY (`group_id`) REFERENCES `apto_group` (`surrogate_id`);

--
-- Constraints for table `apto_product_section_to_apto_discount`
--
ALTER TABLE `apto_product_section_to_apto_discount`
  ADD CONSTRAINT `FK_4E2CEE748B1BAE2` FOREIGN KEY (`product_section_surrogate_id`) REFERENCES `apto_product_section` (`surrogate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_4E2CEE7AF80FF65` FOREIGN KEY (`apto_discount_surrogate_id`) REFERENCES `apto_discount` (`surrogate_id`) ON DELETE CASCADE;

--
-- Constraints for table `apto_product_section_to_apto_price`
--
ALTER TABLE `apto_product_section_to_apto_price`
  ADD CONSTRAINT `FK_F0CB45AA48B1BAE2` FOREIGN KEY (`product_section_surrogate_id`) REFERENCES `apto_product_section` (`surrogate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_F0CB45AA742DA830` FOREIGN KEY (`apto_price_surrogate_id`) REFERENCES `apto_price` (`surrogate_id`) ON DELETE CASCADE;

--
-- Constraints for table `apto_product_section_to_custom_property`
--
ALTER TABLE `apto_product_section_to_custom_property`
  ADD CONSTRAINT `FK_BF7244694B44BC51` FOREIGN KEY (`product_section_id`) REFERENCES `apto_product_section` (`surrogate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_BF72446962AEA626` FOREIGN KEY (`custom_property_id`) REFERENCES `apto_custom_property` (`surrogate_id`) ON DELETE CASCADE;

--
-- Constraints for table `apto_product_to_apto_discount`
--
ALTER TABLE `apto_product_to_apto_discount`
  ADD CONSTRAINT `FK_73FF9EE01BE1B6D8` FOREIGN KEY (`product_surrogate_id`) REFERENCES `apto_product` (`surrogate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_73FF9EE0AF80FF65` FOREIGN KEY (`apto_discount_surrogate_id`) REFERENCES `apto_discount` (`surrogate_id`) ON DELETE CASCADE;

--
-- Constraints for table `apto_product_to_apto_price`
--
ALTER TABLE `apto_product_to_apto_price`
  ADD CONSTRAINT `FK_6581545E1BE1B6D8` FOREIGN KEY (`product_surrogate_id`) REFERENCES `apto_product` (`surrogate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6581545E742DA830` FOREIGN KEY (`apto_price_surrogate_id`) REFERENCES `apto_price` (`surrogate_id`) ON DELETE CASCADE;

--
-- Constraints for table `apto_product_to_category`
--
ALTER TABLE `apto_product_to_category`
  ADD CONSTRAINT `FK_709B1C6312469DE2` FOREIGN KEY (`category_id`) REFERENCES `apto_category` (`surrogate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_709B1C634584665A` FOREIGN KEY (`product_id`) REFERENCES `apto_product` (`surrogate_id`) ON DELETE CASCADE;

--
-- Constraints for table `apto_product_to_custom_property`
--
ALTER TABLE `apto_product_to_custom_property`
  ADD CONSTRAINT `FK_9B58F4474584665A` FOREIGN KEY (`product_id`) REFERENCES `apto_product` (`surrogate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_9B58F44762AEA626` FOREIGN KEY (`custom_property_id`) REFERENCES `apto_custom_property` (`surrogate_id`) ON DELETE CASCADE;

--
-- Constraints for table `apto_product_to_filter_property`
--
ALTER TABLE `apto_product_to_filter_property`
  ADD CONSTRAINT `FK_43E516834584665A` FOREIGN KEY (`product_id`) REFERENCES `apto_product` (`surrogate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_43E516836F28194A` FOREIGN KEY (`filterProperty_id`) REFERENCES `apto_filter_property` (`surrogate_id`) ON DELETE CASCADE;

--
-- Constraints for table `apto_product_to_shop`
--
ALTER TABLE `apto_product_to_shop`
  ADD CONSTRAINT `FK_41E23C114584665A` FOREIGN KEY (`product_id`) REFERENCES `apto_product` (`surrogate_id`),
  ADD CONSTRAINT `FK_41E23C114D16C4DD` FOREIGN KEY (`shop_id`) REFERENCES `apto_shop` (`surrogate_id`);

--
-- Constraints for table `apto_proposed_configuration`
--
ALTER TABLE `apto_proposed_configuration`
  ADD CONSTRAINT `FK_105C7FF24584665A` FOREIGN KEY (`product_id`) REFERENCES `apto_product` (`surrogate_id`) ON DELETE CASCADE;

--
-- Constraints for table `apto_shop_to_category`
--
ALTER TABLE `apto_shop_to_category`
  ADD CONSTRAINT `FK_8B6B409E12469DE2` FOREIGN KEY (`category_id`) REFERENCES `apto_category` (`surrogate_id`),
  ADD CONSTRAINT `FK_8B6B409E8B20F321` FOREIGN KEY (`shop_surrogate_id`) REFERENCES `apto_shop` (`surrogate_id`);

--
-- Constraints for table `apto_shop_to_custom_property`
--
ALTER TABLE `apto_shop_to_custom_property`
  ADD CONSTRAINT `FK_FCEEA6294D16C4DD` FOREIGN KEY (`shop_id`) REFERENCES `apto_shop` (`surrogate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_FCEEA62962AEA626` FOREIGN KEY (`custom_property_id`) REFERENCES `apto_custom_property` (`surrogate_id`) ON DELETE CASCADE;

--
-- Constraints for table `apto_shop_to_language`
--
ALTER TABLE `apto_shop_to_language`
  ADD CONSTRAINT `FK_59FC28EA4D16C4DD` FOREIGN KEY (`shop_id`) REFERENCES `apto_shop` (`surrogate_id`),
  ADD CONSTRAINT `FK_59FC28EA82F1BAF4` FOREIGN KEY (`language_id`) REFERENCES `apto_language` (`surrogate_id`);

--
-- Constraints for table `apto_user_role_to_user_role`
--
ALTER TABLE `apto_user_role_to_user_role`
  ADD CONSTRAINT `FK_B2C4BC20727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `apto_user_role` (`surrogate_id`),
  ADD CONSTRAINT `FK_B2C4BC20DD62C21B` FOREIGN KEY (`child_id`) REFERENCES `apto_user_role` (`surrogate_id`);

--
-- Constraints for table `apto_user_to_user_role`
--
ALTER TABLE `apto_user_to_user_role`
  ADD CONSTRAINT `FK_4B18B60F8E0E3CA6` FOREIGN KEY (`user_role_id`) REFERENCES `apto_user_role` (`surrogate_id`),
  ADD CONSTRAINT `FK_4B18B60FA76ED395` FOREIGN KEY (`user_id`) REFERENCES `apto_user` (`surrogate_id`);

--
-- Constraints for table `plugin_material_picker_color_rating`
--
ALTER TABLE `plugin_material_picker_color_rating`
  ADD CONSTRAINT `FK_619BE780E308AC6F` FOREIGN KEY (`material_id`) REFERENCES `plugin_material_picker_material` (`surrogate_id`);

--
-- Constraints for table `plugin_material_picker_material`
--
ALTER TABLE `plugin_material_picker_material`
  ADD CONSTRAINT `FK_F66C3EDDFAE957CD` FOREIGN KEY (`preview_image_id`) REFERENCES `apto_media_file` (`surrogate_id`);

--
-- Constraints for table `plugin_material_picker_material_to_apto_price`
--
ALTER TABLE `plugin_material_picker_material_to_apto_price`
  ADD CONSTRAINT `FK_A38A9323742DA830` FOREIGN KEY (`apto_price_surrogate_id`) REFERENCES `apto_price` (`surrogate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A38A9323983D00B3` FOREIGN KEY (`material_surrogate_id`) REFERENCES `plugin_material_picker_material` (`surrogate_id`) ON DELETE CASCADE;

--
-- Constraints for table `plugin_material_picker_material_to_media_file`
--
ALTER TABLE `plugin_material_picker_material_to_media_file`
  ADD CONSTRAINT `FK_6588728D983D00B3` FOREIGN KEY (`material_surrogate_id`) REFERENCES `plugin_material_picker_material` (`surrogate_id`),
  ADD CONSTRAINT `FK_6588728DB6B33E26` FOREIGN KEY (`media_image_surrogate_id`) REFERENCES `apto_media_file` (`surrogate_id`);

--
-- Constraints for table `plugin_material_picker_material_to_property`
--
ALTER TABLE `plugin_material_picker_material_to_property`
  ADD CONSTRAINT `FK_8E2E3A78594064EA` FOREIGN KEY (`property_surrogate_id`) REFERENCES `plugin_material_picker_property` (`surrogate_id`),
  ADD CONSTRAINT `FK_8E2E3A78983D00B3` FOREIGN KEY (`material_surrogate_id`) REFERENCES `plugin_material_picker_material` (`surrogate_id`);

--
-- Constraints for table `plugin_material_picker_pool_item`
--
ALTER TABLE `plugin_material_picker_pool_item`
  ADD CONSTRAINT `FK_E1382FB07B3406DF` FOREIGN KEY (`pool_id`) REFERENCES `plugin_material_picker_pool` (`surrogate_id`),
  ADD CONSTRAINT `FK_E1382FB09CE2E250` FOREIGN KEY (`price_group_id`) REFERENCES `plugin_material_picker_price_group` (`surrogate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E1382FB0E308AC6F` FOREIGN KEY (`material_id`) REFERENCES `plugin_material_picker_material` (`surrogate_id`);

--
-- Constraints for table `plugin_material_picker_property`
--
ALTER TABLE `plugin_material_picker_property`
  ADD CONSTRAINT `FK_1205796FE54D947` FOREIGN KEY (`group_id`) REFERENCES `plugin_material_picker_group` (`surrogate_id`);

--
-- Constraints for table `plugin_material_picker_property_to_custom_property`
--
ALTER TABLE `plugin_material_picker_property_to_custom_property`
  ADD CONSTRAINT `FK_AE7E952B549213EC` FOREIGN KEY (`property_id`) REFERENCES `plugin_material_picker_property` (`surrogate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AE7E952B62AEA626` FOREIGN KEY (`custom_property_id`) REFERENCES `apto_custom_property` (`surrogate_id`) ON DELETE CASCADE;

--
-- Constraints for table `plugin_material_picker_render_image`
--
ALTER TABLE `plugin_material_picker_render_image`
  ADD CONSTRAINT `FK_DDB1FEF87B3406DF` FOREIGN KEY (`pool_id`) REFERENCES `plugin_material_picker_pool` (`surrogate_id`),
  ADD CONSTRAINT `FK_DDB1FEF8E308AC6F` FOREIGN KEY (`material_id`) REFERENCES `plugin_material_picker_material` (`surrogate_id`),
  ADD CONSTRAINT `FK_DDB1FEF8F21CFF25` FOREIGN KEY (`media_file_id`) REFERENCES `apto_media_file` (`surrogate_id`);

--
-- Constraints for table `plugin_parts_list_part`
--
ALTER TABLE `plugin_parts_list_part`
  ADD CONSTRAINT `FK_9610F06BF8BD700D` FOREIGN KEY (`unit_id`) REFERENCES `plugin_parts_list_unit` (`surrogate_id`);

--
-- Constraints for table `plugin_parts_list_part_element_usage`
--
ALTER TABLE `plugin_parts_list_part_element_usage`
  ADD CONSTRAINT `FK_5F58517BA401C423` FOREIGN KEY (`part_surrogate_id`) REFERENCES `plugin_parts_list_part` (`surrogate_id`);

--
-- Constraints for table `plugin_parts_list_part_product_association`
--
ALTER TABLE `plugin_parts_list_part_product_association`
  ADD CONSTRAINT `FK_F6353DA54584665A` FOREIGN KEY (`product_id`) REFERENCES `apto_product` (`surrogate_id`),
  ADD CONSTRAINT `FK_F6353DA5A401C423` FOREIGN KEY (`part_surrogate_id`) REFERENCES `plugin_parts_list_part` (`surrogate_id`);

--
-- Constraints for table `plugin_parts_list_part_product_usage`
--
ALTER TABLE `plugin_parts_list_part_product_usage`
  ADD CONSTRAINT `FK_3A265EBEA401C423` FOREIGN KEY (`part_surrogate_id`) REFERENCES `plugin_parts_list_part` (`surrogate_id`);

--
-- Constraints for table `plugin_parts_list_part_rule_condition`
--
ALTER TABLE `plugin_parts_list_part_rule_condition`
  ADD CONSTRAINT `FK_7C30F870744E0351` FOREIGN KEY (`rule_id`) REFERENCES `plugin_parts_list_part_rule_usage` (`surrogate_id`);

--
-- Constraints for table `plugin_parts_list_part_rule_usage`
--
ALTER TABLE `plugin_parts_list_part_rule_usage`
  ADD CONSTRAINT `FK_5B04EC2AA401C423` FOREIGN KEY (`part_surrogate_id`) REFERENCES `plugin_parts_list_part` (`surrogate_id`);

--
-- Constraints for table `plugin_parts_list_part_section_usage`
--
ALTER TABLE `plugin_parts_list_part_section_usage`
  ADD CONSTRAINT `FK_C2D4286A401C423` FOREIGN KEY (`part_surrogate_id`) REFERENCES `plugin_parts_list_part` (`surrogate_id`);

--
-- Constraints for table `plugin_parts_part_to_apto_price`
--
ALTER TABLE `plugin_parts_part_to_apto_price`
  ADD CONSTRAINT `FK_E0E5B3B1742DA830` FOREIGN KEY (`apto_price_surrogate_id`) REFERENCES `apto_price` (`surrogate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E0E5B3B1A401C423` FOREIGN KEY (`part_surrogate_id`) REFERENCES `plugin_parts_list_part` (`surrogate_id`) ON DELETE CASCADE;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
