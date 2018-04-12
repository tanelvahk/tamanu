# WordPress MySQL database migration
#
# Generated: Wednesday 11. April 2018 21:08 UTC
# Hostname: localhost
# Database: `tamanu_dev`
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wcbd_commentmeta`
#

DROP TABLE IF EXISTS `wcbd_commentmeta`;


#
# Table structure of table `wcbd_commentmeta`
#

CREATE TABLE `wcbd_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wcbd_commentmeta`
#

#
# End of data contents of table `wcbd_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wcbd_comments`
#

DROP TABLE IF EXISTS `wcbd_comments`;


#
# Table structure of table `wcbd_comments`
#

CREATE TABLE `wcbd_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wcbd_comments`
#
INSERT INTO `wcbd_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'http://wordpress.org/', '', '2010-06-18 20:51:35', '2010-06-18 20:51:35', 'Hi, this is a comment.<br />To delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0),
(2, 118, 'tere', 'tere@tere.ee', '', '2001:7d0:8408:ba80:4157:8285:15de:25ec', '2017-10-30 16:38:08', '2017-10-30 16:38:08', 'Very nice', 0, '0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '', 0, 0) ;

#
# End of data contents of table `wcbd_comments`
# --------------------------------------------------------



#
# Delete any existing table `wcbd_links`
#

DROP TABLE IF EXISTS `wcbd_links`;


#
# Table structure of table `wcbd_links`
#

CREATE TABLE `wcbd_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wcbd_links`
#
INSERT INTO `wcbd_links` ( `link_id`, `link_url`, `link_name`, `link_image`, `link_target`, `link_description`, `link_visible`, `link_owner`, `link_rating`, `link_updated`, `link_rel`, `link_notes`, `link_rss`) VALUES
(1, 'http://codex.wordpress.org/', 'Documentation', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(2, 'http://wordpress.org/development/', 'WordPress Blog', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', 'http://wordpress.org/development/feed/'),
(3, 'http://wordpress.org/extend/ideas/', 'Suggest Ideas', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(4, 'http://wordpress.org/support/', 'Support Forum', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(5, 'http://wordpress.org/extend/plugins/', 'Plugins', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(6, 'http://wordpress.org/extend/themes/', 'Themes', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(7, 'http://planet.wordpress.org/', 'WordPress Planet', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', '') ;

#
# End of data contents of table `wcbd_links`
# --------------------------------------------------------



#
# Delete any existing table `wcbd_options`
#

DROP TABLE IF EXISTS `wcbd_options`;


#
# Table structure of table `wcbd_options`
#

CREATE TABLE `wcbd_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=1639 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wcbd_options`
#
INSERT INTO `wcbd_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://tamanu.site', 'yes'),
(2, 'blogname', 'Tamanu', 'yes'),
(3, 'blogdescription', '', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'tanel.vahk@gmail.com', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(29, 'comment_moderation', '0', 'yes'),
(30, 'moderation_notify', '1', 'yes'),
(31, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(33, 'hack_file', '0', 'yes'),
(34, 'blog_charset', 'UTF-8', 'yes'),
(35, 'moderation_keys', '', 'no'),
(36, 'active_plugins', 'a:10:{i:0;s:47:"bootstrap-3-shortcodes/bootstrap-shortcodes.php";i:1;s:19:"jetpack/jetpack.php";i:2;s:45:"limit-login-attempts/limit-login-attempts.php";i:3;s:25:"menu-icons/menu-icons.php";i:4;s:29:"pirate-forms/pirate-forms.php";i:5;s:32:"simple-back-to-top/backtotop.php";i:6;s:43:"themeisle-companion/themeisle-companion.php";i:7;s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";i:8;s:27:"woocommerce/woocommerce.php";i:9;s:32:"wp-sync-db-master/wp-sync-db.php";}', 'yes'),
(37, 'home', 'http://tamanu.site', 'yes'),
(38, 'category_base', '', 'yes'),
(39, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(41, 'comment_max_links', '2', 'yes'),
(42, 'gmt_offset', '0', 'yes'),
(43, 'default_email_category', '1', 'yes'),
(44, 'recently_edited', 'a:3:{i:0;s:83:"/srv/www/tamanu_dev/public_html/wp-content/plugins/simple-back-to-top/backtotop.php";i:1;s:66:"/srv/www/tamanu_dev/public_html/wp-content/themes/hestia/style.css";i:2;s:0:"";}', 'no'),
(45, 'template', 'hestia', 'yes'),
(46, 'stylesheet', 'hestia', 'yes'),
(47, 'comment_whitelist', '1', 'yes'),
(48, 'blacklist_keys', '', 'no'),
(49, 'comment_registration', '0', 'yes'),
(51, 'html_type', 'text/html', 'yes'),
(52, 'use_trackback', '0', 'yes'),
(53, 'default_role', 'subscriber', 'yes'),
(54, 'db_version', '38590', 'yes'),
(55, 'uploads_use_yearmonth_folders', '1', 'yes'),
(56, 'upload_path', '/srv/www/tamanu_dev/public_html/wp-content/uploads', 'yes'),
(57, 'blog_public', '1', 'yes'),
(58, 'default_link_category', '2', 'yes'),
(59, 'show_on_front', 'page', 'yes'),
(60, 'tag_base', '', 'yes'),
(61, 'show_avatars', '1', 'yes'),
(62, 'avatar_rating', 'G', 'yes'),
(63, 'upload_url_path', '', 'yes'),
(64, 'thumbnail_size_w', '150', 'yes'),
(65, 'thumbnail_size_h', '150', 'yes'),
(66, 'thumbnail_crop', '1', 'yes'),
(67, 'medium_size_w', '300', 'yes'),
(68, 'medium_size_h', '300', 'yes'),
(69, 'avatar_default', 'mystery', 'yes'),
(72, 'large_size_w', '1024', 'yes'),
(73, 'large_size_h', '1024', 'yes'),
(74, 'image_default_link_type', 'file', 'yes'),
(75, 'image_default_size', '', 'yes'),
(76, 'image_default_align', '', 'yes'),
(77, 'close_comments_for_old_posts', '0', 'yes'),
(78, 'close_comments_days_old', '14', 'yes'),
(79, 'thread_comments', '1', 'yes'),
(80, 'thread_comments_depth', '5', 'yes'),
(81, 'page_comments', '0', 'yes'),
(82, 'comments_per_page', '50', 'yes'),
(83, 'default_comments_page', 'newest', 'yes'),
(84, 'comment_order', 'asc', 'yes'),
(85, 'sticky_posts', 'a:0:{}', 'yes'),
(86, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(87, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(88, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(89, 'timezone_string', '', 'yes'),
(91, 'embed_size_w', '', 'yes'),
(92, 'embed_size_h', '600', 'yes'),
(93, 'page_for_posts', '2', 'yes'),
(94, 'page_on_front', '5', 'yes'),
(95, 'wcbd_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:131:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:6:"Klient";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:10:"Poe haldur";s:12:"capabilities";a:109:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:11:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";}s:17:"subscribe-widgets";a:0:{}s:22:"blog-subscribe-widgets";a:0:{}s:18:"footer-one-widgets";a:0:{}s:18:"footer-two-widgets";a:0:{}s:20:"footer-three-widgets";a:0:{}s:19:"sidebar-woocommerce";a:0:{}s:15:"sidebar-top-bar";a:0:{}s:14:"header-sidebar";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(102, 'ftp_credentials', 'a:3:{s:8:"hostname";s:9:"localhost";s:8:"username";N;s:15:"connection_type";s:3:"ftp";}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_links', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wcbd_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(111, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'rewrite_rules', 'a:188:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:7:"pood/?$";s:27:"index.php?post_type=product";s:37:"pood/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"pood/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"pood/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:13:"pf_contact/?$";s:30:"index.php?post_type=pf_contact";s:43:"pf_contact/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?post_type=pf_contact&feed=$matches[1]";s:38:"pf_contact/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?post_type=pf_contact&feed=$matches[1]";s:30:"pf_contact/page/([0-9]{1,})/?$";s:48:"index.php?post_type=pf_contact&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:54:"tootekategooria/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:49:"tootekategooria/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:30:"tootekategooria/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:42:"tootekategooria/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:24:"tootekategooria/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:50:"tootesilt/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:45:"tootesilt/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:26:"tootesilt/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:38:"tootesilt/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:20:"tootesilt/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:33:"toode/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"toode/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"toode/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"toode/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"toode/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"toode/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:22:"toode/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:26:"toode/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:46:"toode/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:41:"toode/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:34:"toode/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:41:"toode/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:31:"toode/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:37:"toode/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:48:"toode/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:30:"toode/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:22:"toode/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:32:"toode/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:52:"toode/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"toode/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"toode/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"toode/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:38:"pf_contact/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:48:"pf_contact/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"pf_contact/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"pf_contact/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"pf_contact/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"pf_contact/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:27:"pf_contact/([^/]+)/embed/?$";s:43:"index.php?pf_contact=$matches[1]&embed=true";s:31:"pf_contact/([^/]+)/trackback/?$";s:37:"index.php?pf_contact=$matches[1]&tb=1";s:51:"pf_contact/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?pf_contact=$matches[1]&feed=$matches[2]";s:46:"pf_contact/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?pf_contact=$matches[1]&feed=$matches[2]";s:39:"pf_contact/([^/]+)/page/?([0-9]{1,})/?$";s:50:"index.php?pf_contact=$matches[1]&paged=$matches[2]";s:46:"pf_contact/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?pf_contact=$matches[1]&cpage=$matches[2]";s:36:"pf_contact/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?pf_contact=$matches[1]&wc-api=$matches[3]";s:42:"pf_contact/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:53:"pf_contact/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:35:"pf_contact/([^/]+)(?:/([0-9]+))?/?$";s:49:"index.php?pf_contact=$matches[1]&page=$matches[2]";s:27:"pf_contact/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"pf_contact/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"pf_contact/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"pf_contact/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"pf_contact/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"pf_contact/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=5&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:25:"(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:28:"(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:34:"(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:40:"(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:45:"(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:31:".+?/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:".+?/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:".+?/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:22:"(.+?)/([^/]+)/embed/?$";s:63:"index.php?category_name=$matches[1]&name=$matches[2]&embed=true";s:26:"(.+?)/([^/]+)/trackback/?$";s:57:"index.php?category_name=$matches[1]&name=$matches[2]&tb=1";s:46:"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:69:"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]";s:41:"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:69:"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]";s:34:"(.+?)/([^/]+)/page/?([0-9]{1,})/?$";s:70:"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]";s:41:"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$";s:70:"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]";s:31:"(.+?)/([^/]+)/wc-api(/(.*))?/?$";s:71:"index.php?category_name=$matches[1]&name=$matches[2]&wc-api=$matches[4]";s:35:".+?/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:46:".+?/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:30:"(.+?)/([^/]+)(?:/([0-9]+))?/?$";s:69:"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]";s:20:".+?/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:30:".+?/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:50:".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:26:".+?/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:38:"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:33:"(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:14:"(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:26:"(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:33:"(.+?)/comment-page-([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&cpage=$matches[2]";s:23:"(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:8:"(.+?)/?$";s:35:"index.php?category_name=$matches[1]";}', 'yes'),
(113, 'uninstall_plugins', 'a:0:{}', 'no'),
(114, 'default_post_format', '0', 'yes'),
(115, 'link_manager_enabled', '1', 'yes'),
(116, 'finished_splitting_shared_terms', '1', 'yes'),
(117, 'site_icon', '0', 'yes'),
(118, 'medium_large_size_w', '768', 'yes'),
(119, 'medium_large_size_h', '0', 'yes'),
(120, 'initial_db_version', '15260', 'yes'),
(122, 'cron', 'a:12:{i:1523483169;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1523483672;a:1:{s:20:"jetpack_clean_nonces";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1523487828;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"a6944bdac5bf04c2bc7a0d6b9abd42f6";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:126;}}}}i:1523491200;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1523507480;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1523519428;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1523551376;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1523551573;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1523562628;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1523566088;a:1:{s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1525824000;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(123, 'db_upgraded', '', 'yes'),
(125, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1508690680;s:4:"data";a:7:{s:19:"wp_inactive_widgets";a:0:{}s:19:"primary-widget-area";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:21:"secondary-widget-area";a:0:{}s:24:"first-footer-widget-area";a:0:{}s:25:"second-footer-widget-area";a:0:{}s:24:"third-footer-widget-area";a:0:{}s:25:"fourth-footer-widget-area";a:0:{}}}}', 'yes'),
(140, 'can_compress_scripts', '0', 'no'),
(162, 'current_theme', 'Hestia', 'yes'),
(163, 'theme_mods_clarina', 'a:12:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:27:"llorix_one_lite_header_logo";s:57:"http://tamanu.site/wp-content/uploads/2017/10/vSample.png";s:12:"header_image";s:84:"http://tamanu.site/wp-content/themes/clarina/images/background-images/background.jpg";s:17:"header_image_data";a:2:{s:3:"url";s:84:"http://tamanu.site/wp-content/themes/clarina/images/background-images/background.jpg";s:13:"thumbnail_url";s:102:"http://tamanu.site/wp-content/themes/llorix-one-lite/images/background-images/background_thumbnail.jpg";}s:27:"llorix_one_lite_enable_move";s:1:"1";s:37:"llorix_one_lite_very_top_social_icons";s:157:"[{"icon_value":"\\t\\t\\t\\tfa-facebook","link":"#cgh"},{"icon_value":"\\t\\t\\t\\tfa-twitter","link":"#"},{"icon_value":"\\t\\t\\t\\tfa-google-plus-square","link":"#"}]";s:29:"llorix_one_lite_logos_content";s:516:"[{"image_url":"http:\\/\\/tamanu.site\\/wp-content\\/themes\\/clarina\\/images\\/companies\\/1.png","link":"#"},{"image_url":"http:\\/\\/tamanu.site\\/wp-content\\/themes\\/clarina\\/images\\/companies\\/2.png","link":"#"},{"image_url":"http:\\/\\/tamanu.site\\/wp-content\\/themes\\/clarina\\/images\\/companies\\/3.png","link":"#"},{"image_url":"http:\\/\\/tamanu.site\\/wp-content\\/themes\\/clarina\\/images\\/companies\\/4.png","link":"#"},{"image_url":"http:\\/\\/tamanu.site\\/wp-content\\/themes\\/clarina\\/images\\/companies\\/5.png","link":"#"}]";s:36:"llorix_one_lite_contact_info_content";s:219:"[{"text":"contact@site.com","icon_value":"\\t\\t\\t\\tfa-envelope","link":"#"},{"text":"Company address","icon_value":"\\t\\t\\t\\tfa-map-marker","link":"#"},{"text":"0 332 548 954","icon_value":"\\t\\t\\t\\tfa-tablet","link":"#"}]";s:28:"llorix_one_lite_social_icons";s:27:"[{"icon_value":"\\t\\t\\t\\t"}]";s:33:"llorix_one_lite_frontpage_opacity";s:22:"rgba(132,214,157,0.84)";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1508701094;s:4:"data";a:7:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:11:"footer-area";a:0:{}s:13:"footer-area-2";a:0:{}s:13:"footer-area-3";a:0:{}s:13:"footer-area-4";a:0:{}s:31:"llorix-one-sidebar-shop-archive";a:0:{}}}}', 'yes'),
(164, 'theme_switched', '', 'yes'),
(172, 'fresh_site', '0', 'yes'),
(187, 'theme_mods_flat-bootstrap', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1508691246;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:9:"sidebar-4";a:0:{}s:9:"sidebar-5";a:0:{}}}}', 'yes'),
(198, 'theme_mods_hestia', 'a:45:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:23:"hestia_slider_alignment";s:4:"left";s:22:"hestia_big_title_title";s:45:"TAMANU OIL FOR AGING AND COMMON SKIN PROBLEMS";s:21:"hestia_big_title_text";s:56:"SKIN CARE PRODUCTS FOR OILY, ACNE, SENSITIVE OR DRY SKIN";s:28:"hestia_big_title_button_text";s:9:"Look more";s:28:"hestia_big_title_button_link";s:19:"http://www.delfi.ee";s:18:"hestia_page_editor";s:2452:"[row]\r\n[column md="6"]\r\n<p>Volcanic Earth Tamanu Oil is the best brand of Tamanu Oil on the market today because of the consistent high quality of the product. It is certified organic, 100% pure Tamanu Oil that is undiluted, has no additives whatsoever and is never subjected to any chemical filtering or other processes. The end result is a rich, luxurious oil that is thick, dark green in color with its natural nutty aroma. In addition, our Tamanu Oil only comes from the nuts of coastal trees rather than inland or man-made plantations. The Ni Vanuatu say that Tamanu Trees that grow like this by the shoreline produce the best Tamanu Oil. Their belief is that these trees draw additional nutrients from the coral. While this long-standing custom belief has never been scientifically tested, it is true that Tamanu Trees that grow by the seaside can be quite magnificent and prolific when it comes to producing extremely high quality, Tamanu Nuts.</p>\r\n[/column]\r\n[column md="1"]\r\n[/column]\r\n[column md="5"]\r\n[img type="rounded" responsive="true"]<img src="http://tamanu.site/wp-content/uploads/2017/10/about_us1.jpg" alt="" />[/img]\r\n[/column]\r\n[/row]\r\n\r\n[row]\r\n[column md="5"]\r\n[img type="rounded" responsive="true"]<img src="http://tamanu.site/wp-content/uploads/2017/10/about_us2.jpg" />[/img]\r\n[/column]\r\n[column md="1"]\r\n[/column]\r\n[column md="6"]\r\n<p>Stay away from black colored or lightly-colored or yellowish-coloured oil. None of these are the real deal and this is why they are so cheap. There is a lot of rubbish oil coming out of Vietnam especially. Black Tamanu Oil occurs where the Tamanu Nuts have been thrown into the fire to try and speed up the curing process. However, all this does is burn the nut and the resulting oil which seriously diminishes its natural, skin-healing and anti-aging properties. Oh and then we have the yellow Tamanu Oil that has been either diluted down with a cheap carrier oil or in some cases, the product has been put through a chemical filtering process. Yes the oil may be a lighter oil but again the product has been chemically stripped of some of its natural components making it inferior and much less effective. While 100% pure Tamanu Oil is expensive, it is the only cure that we know of for psoriasis and things like cystic acne. If you want fast, effective results then you have to be willing to buy only the best quality Tamanu Oil and that comes from Volcanic Earth.</p>\r\n[/column]\r\n[/row]";s:24:"hestia_feature_thumbnail";s:0:"";s:22:"hestia_subscribe_title";s:21:"Newsletteit on vaja??";s:25:"hestia_subscribe_subtitle";s:7:"Kas on?";s:21:"hestia_subscribe_hide";b:1;s:19:"hestia_top_bar_hide";b:1;s:26:"hestia_page_sidebar_layout";s:10:"full-width";s:19:"hestia_font_subsets";a:1:{i:0;s:12:"cyrillic-ext";}s:20:"hestia_headings_font";s:4:"Lato";s:16:"hestia_body_font";s:4:"Lato";s:18:"hestia_ribbon_hide";b:0;s:23:"hestia_header_alignment";s:4:"left";s:27:"hestia_big_title_background";s:58:"http://tamanu.site/wp-content/uploads/2017/10/tamanuBG.jpg";s:16:"background_color";s:6:"ffffff";s:12:"accent_color";s:7:"#094c08";s:18:"nav_menu_locations";a:3:{s:7:"primary";i:16;s:6:"footer";i:0;s:12:"top-bar-menu";i:0;}s:21:"hestia_features_title";s:19:"Tamanu Oil Benefits";s:24:"hestia_features_subtitle";s:0:"";s:12:"header_image";s:13:"remove-header";s:11:"custom_logo";i:71;s:23:"hestia_features_content";s:1206:"[{"icon_value":"fa-leaf","color":"#96c03a","text":"For irritations, rashes, stretch marks and burns. Tamanu Oil is also famous for fighting more specific skin problems like acne, psoriaisis and eczema.","link":"#","text2":"undefined","title":"Healing Effect","subtitle":"undefined","social_repeater":"undefined","id":"social-repeater-59ef7f22ba3a4","shortcode":"undefined"},{"icon_value":"fa-heart","color":"#96c03a","text":"For aging skin and wrinkles. Tamanu Oil promotes skin cell rejuvenation through the growth of new, healthy skin tissue","link":"#","text2":"undefined","title":"Anti-aging","subtitle":"undefined","social_repeater":"undefined","id":"social-repeater-59ef7f22c08d7","shortcode":"undefined"},{"icon_value":"fa-tree","color":"#96c03a","text":"Tamanu Nut Oil is made from the nuts of the Tamanu Tree and Vanuatu Tamanu Oil is regarded by many as the best in the world. Apart from the obvious Tamanu Oil benefits for skin, hair and even animals, this extraordinary product doesn&#039;t harm the environment in any way.","link":"#","text2":"undefined","title":"Bio-Firendly","subtitle":"undefined","social_repeater":"undefined","id":"social-repeater-59ef7f22bfd11","shortcode":"undefined"}]";s:27:"hestia_testimonials_content";s:1353:"[{"text":"&quot;We have no regrets! After using your product my business skyrocketed! I made back the purchase price in just 48 hours! I couldn&#039;t have asked for more than this.&quot;","link":"","text2":"undefined","image_url":"http:\\/\\/tamanu.site\\/wp-content\\/themes\\/hestia\\/assets\\/img\\/5.jpg","title":"Inverness McKenzie","subtitle":"Business Owner","social_repeater":"undefined","id":"customizer_repeater_56d7ea7f40d56","shortcode":"undefined"},{"text":"&quot;Your company is truly upstanding and is behind its product 100 percent. Hestia is worth much more than I paid. I like Hestia more each day because it makes easier.&quot;","link":"","text2":"undefined","image_url":"http:\\/\\/tamanu.site\\/wp-content\\/themes\\/hestia\\/assets\\/img\\/6.jpg","title":"Hanson Deck","subtitle":"Independent Artist","social_repeater":"undefined","id":"customizer_repeater_56d7ea7f40d66","shortcode":"undefined"},{"text":"&quot;Thank you for making it painless, pleasant and most of all hassle free! I am so pleased with this product. Dude, your stuff is great! I will refer everyone I know.&quot;","link":"","text2":"undefined","image_url":"http:\\/\\/tamanu.site\\/wp-content\\/themes\\/hestia\\/assets\\/img\\/7.jpg","title":"Natalya Undergrowth","subtitle":"Freelancer","social_repeater":"undefined","id":"customizer_repeater_56d7ea7f40d76","shortcode":"undefined"}]";s:19:"hestia_team_content";s:4305:"[{"icon_value":"fa-facebook","text":"Locavore pinterest chambray affogato art party, forage coloring book typewriter. Bitters cold selfies, retro celiac sartorial mustache.","link":"","text2":"undefined","image_url":"http:\\/\\/tamanu.site\\/wp-content\\/themes\\/hestia\\/assets\\/img\\/1.jpg","title":"Desmond Purpleson","subtitle":"CEO","social_repeater":"[{&quot;id&quot;:&quot;customizer-repeater-social-repeater-57fb908674e06&quot;,&quot;link&quot;:&quot;facebook.com&quot;,&quot;icon&quot;:&quot;fa-facebook&quot;},{&quot;id&quot;:&quot;customizer-repeater-social-repeater-57fb9148530ft&quot;,&quot;link&quot;:&quot;plus.google.com&quot;,&quot;icon&quot;:&quot;fa-google-plus&quot;},{&quot;id&quot;:&quot;customizer-repeater-social-repeater-57fb9148530fc&quot;,&quot;link&quot;:&quot;twitter.com&quot;,&quot;icon&quot;:&quot;fa-twitter&quot;},{&quot;id&quot;:&quot;customizer-repeater-social-repeater-57fb9150e1e89&quot;,&quot;link&quot;:&quot;linkedin.com&quot;,&quot;icon&quot;:&quot;fa-linkedin&quot;}]","id":"customizer_repeater_56d7ea7f40c56","shortcode":"undefined"},{"icon_value":"fa-facebook","text":"Craft beer salvia celiac mlkshk. Pinterest celiac tumblr, portland salvia skateboard cliche thundercats. Tattooed chia austin hell.","link":"","text2":"undefined","image_url":"http:\\/\\/tamanu.site\\/wp-content\\/themes\\/hestia\\/assets\\/img\\/2.jpg","title":"Parsley Pepperspray","subtitle":"Marketing Specialist","social_repeater":"[{&quot;id&quot;:&quot;customizer-repeater-social-repeater-57fb9155a1072&quot;,&quot;link&quot;:&quot;facebook.com&quot;,&quot;icon&quot;:&quot;fa-facebook&quot;},{&quot;id&quot;:&quot;customizer-repeater-social-repeater-57fb9160ab683&quot;,&quot;link&quot;:&quot;twitter.com&quot;,&quot;icon&quot;:&quot;fa-twitter&quot;},{&quot;id&quot;:&quot;customizer-repeater-social-repeater-57fb9160ab484&quot;,&quot;link&quot;:&quot;pinterest.com&quot;,&quot;icon&quot;:&quot;fa-pinterest&quot;},{&quot;id&quot;:&quot;customizer-repeater-social-repeater-57fb916ddffc9&quot;,&quot;link&quot;:&quot;linkedin.com&quot;,&quot;icon&quot;:&quot;fa-linkedin&quot;}]","id":"customizer_repeater_56d7ea7f40c66","shortcode":"undefined"},{"icon_value":"fa-facebook","text":"Pok pok direct trade godard street art, poutine fam typewriter food truck narwhal kombucha wolf cardigan butcher whatever pickled you.","link":"","text2":"undefined","image_url":"http:\\/\\/tamanu.site\\/wp-content\\/themes\\/hestia\\/assets\\/img\\/3.jpg","title":"Desmond Eagle","subtitle":"Graphic Designer","social_repeater":"[{&quot;id&quot;:&quot;customizer-repeater-social-repeater-57fb917e4c69e&quot;,&quot;link&quot;:&quot;facebook.com&quot;,&quot;icon&quot;:&quot;fa-facebook&quot;},{&quot;id&quot;:&quot;customizer-repeater-social-repeater-57fb91830825c&quot;,&quot;link&quot;:&quot;twitter.com&quot;,&quot;icon&quot;:&quot;fa-twitter&quot;},{&quot;id&quot;:&quot;customizer-repeater-social-repeater-57fb918d65f2e&quot;,&quot;link&quot;:&quot;linkedin.com&quot;,&quot;icon&quot;:&quot;fa-linkedin&quot;},{&quot;id&quot;:&quot;customizer-repeater-social-repeater-57fb918d65f2x&quot;,&quot;link&quot;:&quot;dribbble.com&quot;,&quot;icon&quot;:&quot;fa-dribbble&quot;}]","id":"customizer_repeater_56d7ea7f40c76","shortcode":"undefined"},{"icon_value":"fa-github-square","text":"Small batch vexillologist 90&#039;s blue bottle stumptown bespoke. Pok pok tilde fixie chartreuse, VHS gluten-free selfies wolf hot.","link":"","text2":"undefined","image_url":"http:\\/\\/tamanu.site\\/wp-content\\/themes\\/hestia\\/assets\\/img\\/4.jpg","title":"Ruby Von Rails","subtitle":"Lead Developer","social_repeater":"[{&quot;id&quot;:&quot;customizer-repeater-social-repeater-57fb925cedcg5&quot;,&quot;link&quot;:&quot;github.com&quot;,&quot;icon&quot;:&quot;fa-github-square&quot;},{&quot;id&quot;:&quot;customizer-repeater-social-repeater-57fb925cedcb2&quot;,&quot;link&quot;:&quot;facebook.com&quot;,&quot;icon&quot;:&quot;fa-facebook&quot;},{&quot;id&quot;:&quot;customizer-repeater-social-repeater-57fb92615f030&quot;,&quot;link&quot;:&quot;twitter.com&quot;,&quot;icon&quot;:&quot;fa-twitter&quot;},{&quot;id&quot;:&quot;customizer-repeater-social-repeater-57fb9266c223a&quot;,&quot;link&quot;:&quot;linkedin.com&quot;,&quot;icon&quot;:&quot;fa-linkedin&quot;}]","id":"customizer_repeater_56d7ea7f40c86","shortcode":"undefined"}]";s:26:"hestia_clients_bar_content";s:201:"[{"text":"undefined","link":"","text2":"undefined","image_url":"","title":"undefined","subtitle":"undefined","social_repeater":"undefined","id":"social-repeater-59ef7f22d1210","shortcode":"undefined"}]";s:24:"hestia_testimonials_hide";b:1;s:16:"hestia_team_hide";b:1;s:17:"hestia_about_hide";b:0;s:24:"hestia_ribbon_background";s:69:"http://tamanu.site/wp-content/uploads/2017/10/TAMANU-Flowers-Nuts.jpg";s:18:"hestia_ribbon_text";s:23:"Subscribe to Newsletter";s:25:"hestia_ribbon_button_text";s:13:"Subscribe Now";s:20:"hestia_contact_title";s:12:"Get in Touch";s:23:"hestia_contact_subtitle";s:38:"Change this subtitle in the Customizer";s:25:"hestia_contact_area_title";s:10:"Contact Us";s:19:"hestia_contact_hide";b:1;s:24:"hestia_ribbon_button_url";s:5:"#link";s:20:"hestia_shop_subtitle";s:0:"";s:20:"hestia_blog_subtitle";s:0:"";s:17:"hestia_blog_items";i:4;}', 'yes'),
(201, 'hestia_install', '1508701095', 'yes'),
(204, 'hestia_time_activated', '1508701096', 'yes'),
(205, 'hestia_had_elementor', 'no', 'yes'),
(208, 'category_children', 'a:0:{}', 'yes'),
(209, 'hestia_sync_needed', '', 'yes'),
(212, 'recently_activated', 'a:1:{s:31:"wp-migrate-db/wp-migrate-db.php";i:1523480615;}', 'yes'),
(213, 'themeisle_companion_install', '1508701450', 'yes'),
(224, 'woocommerce_store_address', 'Pärnu maantee 107', 'yes'),
(225, 'woocommerce_store_address_2', '', 'yes'),
(226, 'woocommerce_store_city', 'Tallinn', 'yes'),
(227, 'woocommerce_default_country', 'EE', 'yes'),
(228, 'woocommerce_store_postcode', '11312', 'yes'),
(229, 'woocommerce_allowed_countries', 'all', 'yes'),
(230, 'woocommerce_all_except_countries', '', 'yes'),
(231, 'woocommerce_specific_allowed_countries', '', 'yes'),
(232, 'woocommerce_ship_to_countries', '', 'yes'),
(233, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(234, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(235, 'woocommerce_calc_taxes', 'no', 'yes'),
(236, 'woocommerce_demo_store', 'no', 'yes'),
(237, 'woocommerce_demo_store_notice', 'See on näidispood testimise jaoks &mdash; ühtegi tellimust ei täideta.', 'no'),
(238, 'woocommerce_currency', 'EUR', 'yes'),
(239, 'woocommerce_currency_pos', 'left', 'yes'),
(240, 'woocommerce_price_thousand_sep', ',', 'yes'),
(241, 'woocommerce_price_decimal_sep', '.', 'yes'),
(242, 'woocommerce_price_num_decimals', '2', 'yes'),
(243, 'woocommerce_weight_unit', 'kg', 'yes'),
(244, 'woocommerce_dimension_unit', 'cm', 'yes'),
(245, 'woocommerce_enable_reviews', 'yes', 'yes'),
(246, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(247, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(248, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(249, 'woocommerce_review_rating_required', 'yes', 'no'),
(250, 'woocommerce_shop_page_id', '25', 'yes'),
(251, 'woocommerce_shop_page_display', '', 'yes'),
(252, 'woocommerce_category_archive_display', '', 'yes'),
(253, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(254, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(255, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(256, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(257, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(258, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(259, 'woocommerce_manage_stock', 'yes', 'yes'),
(260, 'woocommerce_hold_stock_minutes', '60', 'no'),
(261, 'woocommerce_notify_low_stock', 'yes', 'no'),
(262, 'woocommerce_notify_no_stock', 'yes', 'no'),
(263, 'woocommerce_stock_email_recipient', 'tanel.vahk@gmail.com', 'no'),
(264, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(265, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(266, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(267, 'woocommerce_stock_format', '', 'yes'),
(268, 'woocommerce_file_download_method', 'force', 'no'),
(269, 'woocommerce_downloads_require_login', 'no', 'no'),
(270, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(271, 'woocommerce_prices_include_tax', 'no', 'yes'),
(272, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(273, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(274, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(275, 'woocommerce_tax_classes', 'Vähendatud maksumäär\nNullmäär', 'yes'),
(276, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(277, 'woocommerce_tax_display_cart', 'excl', 'no'),
(278, 'woocommerce_price_display_suffix', '', 'yes'),
(279, 'woocommerce_tax_total_display', 'itemized', 'no'),
(280, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(281, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(282, 'woocommerce_ship_to_destination', 'billing', 'no'),
(283, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(284, 'woocommerce_enable_coupons', 'yes', 'yes'),
(285, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(286, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(287, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(288, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(289, 'woocommerce_cart_page_id', '26', 'yes'),
(290, 'woocommerce_checkout_page_id', '27', 'yes'),
(291, 'woocommerce_terms_page_id', '', 'no'),
(292, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(293, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(294, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(295, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(296, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes') ;
INSERT INTO `wcbd_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(297, 'woocommerce_myaccount_page_id', '28', 'yes'),
(298, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(299, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(300, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(301, 'woocommerce_registration_generate_username', 'yes', 'no'),
(302, 'woocommerce_registration_generate_password', 'no', 'no'),
(303, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(304, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(305, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(306, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(307, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(308, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(309, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(310, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(311, 'woocommerce_email_from_name', 'Tamanu', 'no'),
(312, 'woocommerce_email_from_address', 'tanel.vahk@gmail.com', 'no'),
(313, 'woocommerce_email_header_image', '', 'no'),
(314, 'woocommerce_email_footer_text', 'Tamanu', 'no'),
(315, 'woocommerce_email_base_color', '#96588a', 'no'),
(316, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(317, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(318, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(319, 'woocommerce_api_enabled', 'yes', 'yes'),
(323, 'woocommerce_version', '3.2.1', 'yes'),
(324, 'woocommerce_db_version', '3.2.1', 'yes'),
(325, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(327, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(328, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(329, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(330, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(331, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(332, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(333, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(334, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(335, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(336, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(337, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(338, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(341, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(344, 'woocommerce_product_type', 'physical', 'yes'),
(345, 'woocommerce_allow_tracking', 'no', 'yes'),
(347, 'woocommerce_ppec_paypal_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(348, 'woocommerce_paypal_settings', 'a:2:{s:7:"enabled";s:2:"no";s:5:"email";b:0;}', 'yes'),
(349, 'wc_ppec_version', '1.4.4', 'yes'),
(355, 'woocommerce_setup_jetpack_opted_in', '1', 'yes'),
(358, 'jetpack_activated', '1', 'yes'),
(361, 'jetpack_activation_source', 'a:2:{i:0;s:7:"unknown";i:1;N;}', 'yes'),
(362, 'jetpack_sync_settings_disable', '0', 'yes'),
(363, 'jetpack_file_data', 'a:1:{s:3:"5.4";a:55:{s:32:"31e5b9ae08b62c2b0cd8a7792242298b";a:14:{s:4:"name";s:20:"Spelling and Grammar";s:11:"description";s:39:"Check your spelling, style, and grammar";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"6";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:115:"after the deadline, afterthedeadline, spell, spellchecker, spelling, grammar, proofreading, style, language, cliche";}s:32:"3f41b2d629265b5de8108b463abbe8e2";a:14:{s:4:"name";s:8:"Carousel";s:11:"description";s:75:"Display images and galleries in a gorgeous, full-screen browsing experience";s:14:"jumpstart_desc";s:79:"Brings your photos and images to life as full-size, easily navigable galleries.";s:4:"sort";s:2:"22";s:20:"recommendation_order";s:2:"12";s:10:"introduced";s:3:"1.5";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:17:"Photos and Videos";s:7:"feature";s:21:"Appearance, Jumpstart";s:25:"additional_search_queries";s:80:"gallery, carousel, diaporama, slideshow, images, lightbox, exif, metadata, image";}s:32:"e1c539d5b392f5a1709dada3da5793cc";a:14:{s:4:"name";s:13:"Comment Likes";s:11:"description";s:64:"Increase visitor engagement by adding a Like button to comments.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"39";s:20:"recommendation_order";s:2:"17";s:10:"introduced";s:3:"5.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:6:"Social";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:37:"like widget, like button, like, likes";}s:32:"c6ebb418dde302de09600a6025370583";a:14:{s:4:"name";s:8:"Comments";s:11:"description";s:80:"Let readers use WordPress.com, Twitter, Facebook, or Google+ accounts to comment";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"20";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:6:"Social";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:53:"comments, comment, facebook, twitter, google+, social";}s:32:"836f9485669e1bbb02920cb474730df0";a:14:{s:4:"name";s:12:"Contact Form";s:11:"description";s:57:"Insert a customizable contact form anywhere on your site.";s:14:"jumpstart_desc";s:111:"Adds a button to your post and page editors, allowing you to build simple forms to help visitors stay in touch.";s:4:"sort";s:2:"15";s:20:"recommendation_order";s:2:"14";s:10:"introduced";s:3:"1.3";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:5:"Other";s:7:"feature";s:18:"Writing, Jumpstart";s:25:"additional_search_queries";s:44:"contact, form, grunion, feedback, submission";}s:32:"ea3970eebf8aac55fc3eca5dca0e0157";a:14:{s:4:"name";s:20:"Custom content types";s:11:"description";s:74:"Display different types of content on your site with custom content types.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"34";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"3.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:72:"cpt, custom post types, portfolio, portfolios, testimonial, testimonials";}s:32:"d2bb05ccad3d8789df40ca3abb97336c";a:14:{s:4:"name";s:10:"Custom CSS";s:11:"description";s:53:"Tweak your site’s CSS without modifying your theme.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"2";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.7";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:10:"Appearance";s:7:"feature";s:10:"Appearance";s:25:"additional_search_queries";s:108:"css, customize, custom, style, editor, less, sass, preprocessor, font, mobile, appearance, theme, stylesheet";}s:32:"a2064eec5b9c7e0d816af71dee7a715f";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"53a4ec755022ef3953699734c343da02";a:14:{s:4:"name";s:21:"Enhanced Distribution";s:11:"description";s:27:"Increase reach and traffic.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"5";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:6:"Public";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:54:"google, seo, firehose, search, broadcast, broadcasting";}s:32:"e1f1f6e3689fc31c477e64b06e2f8fbf";a:14:{s:4:"name";s:16:"Google Analytics";s:11:"description";s:56:"Set up Google Analytics without touching a line of code.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"37";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"4.5";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:0:"";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:37:"webmaster, google, analytics, console";}s:32:"72fecb67ee6704ba0a33e0225316ad06";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"d56e2886185a9eace719cc57d46770df";a:14:{s:4:"name";s:19:"Gravatar Hovercards";s:11:"description";s:58:"Enable pop-up business cards over commenters’ Gravatars.";s:14:"jumpstart_desc";s:131:"Let commenters link their profiles to their Gravatar accounts, making it easy for your visitors to learn more about your community.";s:4:"sort";s:2:"11";s:20:"recommendation_order";s:2:"13";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:18:"Social, Appearance";s:7:"feature";s:21:"Appearance, Jumpstart";s:25:"additional_search_queries";s:20:"gravatar, hovercards";}s:32:"e391e760617bd0e0736550e34a73d7fe";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:8:"2.0.3 ??";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"2e345370766346c616b3c5046e817720";a:14:{s:4:"name";s:15:"Infinite Scroll";s:11:"description";s:53:"Automatically load new content when a visitor scrolls";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"26";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:10:"Appearance";s:7:"feature";s:10:"Appearance";s:25:"additional_search_queries";s:33:"scroll, infinite, infinite scroll";}s:32:"bd69edbf134de5fae8fdcf2e70a45b56";a:14:{s:4:"name";s:8:"JSON API";s:11:"description";s:51:"Allow applications to securely access your content.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"19";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.9";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:6:"Public";s:11:"module_tags";s:19:"Writing, Developers";s:7:"feature";s:7:"General";s:25:"additional_search_queries";s:50:"api, rest, develop, developers, json, klout, oauth";}s:32:"8110b7a4423aaa619dfa46b8843e10d1";a:14:{s:4:"name";s:14:"Beautiful Math";s:11:"description";s:57:"Use LaTeX markup for complex equations and other geekery.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"12";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:47:"latex, math, equation, equations, formula, code";}s:32:"fd7e85d3b4887fa6b6f997d6592c1f33";a:14:{s:4:"name";s:5:"Likes";s:11:"description";s:63:"Give visitors an easy way to show they appreciate your content.";s:14:"jumpstart_desc";s:63:"Give visitors an easy way to show they appreciate your content.";s:4:"sort";s:2:"23";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:6:"Social";s:7:"feature";s:21:"Engagement, Jumpstart";s:25:"additional_search_queries";s:26:"like, likes, wordpress.com";}s:32:"c5dfef41fad5bcdcaae8e315e5cfc420";a:14:{s:4:"name";s:6:"Manage";s:11:"description";s:54:"Manage all of your sites from a centralized dashboard.";s:14:"jumpstart_desc";s:151:"Helps you remotely manage plugins, turn on automated updates, and more from <a href="https://wordpress.com/plugins/" target="_blank">wordpress.com</a>.";s:4:"sort";s:1:"1";s:20:"recommendation_order";s:1:"3";s:10:"introduced";s:3:"3.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:35:"Centralized Management, Recommended";s:7:"feature";s:7:"General";s:25:"additional_search_queries";s:26:"manage, management, remote";}s:32:"fd6dc399b92bce76013427e3107c314f";a:14:{s:4:"name";s:8:"Markdown";s:11:"description";s:50:"Write posts or pages in plain-text Markdown syntax";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"31";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.8";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:12:"md, markdown";}s:32:"614679778a7db6d8129c9f69ac8e10a5";a:14:{s:4:"name";s:21:"WordPress.com Toolbar";s:11:"description";s:91:"Replaces the admin bar with a useful toolbar to quickly manage your site via WordPress.com.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"38";s:20:"recommendation_order";s:2:"16";s:10:"introduced";s:3:"4.8";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:7:"General";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:19:"adminbar, masterbar";}s:32:"c49a35b6482b0426cb07ad28ecf5d7df";a:14:{s:4:"name";s:12:"Mobile Theme";s:11:"description";s:31:"Enable the Jetpack Mobile theme";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"21";s:20:"recommendation_order";s:2:"11";s:10:"introduced";s:3:"1.8";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:31:"Appearance, Mobile, Recommended";s:7:"feature";s:10:"Appearance";s:25:"additional_search_queries";s:24:"mobile, theme, minileven";}s:32:"b42e38f6fafd2e4104ebe5bf39b4be47";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"771cfeeba0d3d23ec344d5e781fb0ae2";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"54f0661d27c814fc8bde39580181d939";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"46c4c413b5c72bbd3c3dbd14ff8f8adc";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"9ea52fa25783e5ceeb6bfaed3268e64e";a:14:{s:4:"name";s:7:"Monitor";s:11:"description";s:61:"Receive immediate notifications if your site goes down, 24/7.";s:14:"jumpstart_desc";s:61:"Receive immediate notifications if your site goes down, 24/7.";s:4:"sort";s:2:"28";s:20:"recommendation_order";s:2:"10";s:10:"introduced";s:3:"2.6";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:11:"Recommended";s:7:"feature";s:19:"Security, Jumpstart";s:25:"additional_search_queries";s:37:"monitor, uptime, downtime, monitoring";}s:32:"cfcaafd0fcad087899d715e0b877474d";a:14:{s:4:"name";s:13:"Notifications";s:11:"description";s:57:"Receive instant notifications of site comments and likes.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"13";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.9";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:5:"Other";s:7:"feature";s:7:"General";s:25:"additional_search_queries";s:62:"notification, notifications, toolbar, adminbar, push, comments";}s:32:"0d18bfa69bec61550c1d813ce64149b0";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"3f0a11e23118f0788d424b646a6d465f";a:14:{s:4:"name";s:6:"Photon";s:11:"description";s:26:"Speed up images and photos";s:14:"jumpstart_desc";s:141:"Mirrors and serves your images from our free and fast image CDN, improving your site’s performance with no additional load on your servers.";s:4:"sort";s:2:"25";s:20:"recommendation_order";s:1:"1";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:42:"Photos and Videos, Appearance, Recommended";s:7:"feature";s:34:"Recommended, Jumpstart, Appearance";s:25:"additional_search_queries";s:38:"photon, image, cdn, performance, speed";}s:32:"e37cfbcb72323fb1fe8255a2edb4d738";a:14:{s:4:"name";s:13:"Post by email";s:11:"description";s:33:"Publish posts by sending an email";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"14";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:20:"post by email, email";}s:32:"728290d131a480bfe7b9e405d7cd925f";a:14:{s:4:"name";s:7:"Protect";s:11:"description";s:41:"Block suspicious-looking sign in activity";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"1";s:20:"recommendation_order";s:1:"4";s:10:"introduced";s:3:"3.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:11:"Recommended";s:7:"feature";s:8:"Security";s:25:"additional_search_queries";s:65:"security, secure, protection, botnet, brute force, protect, login";}s:32:"f9ce784babbbf4dcca99b8cd2ceb420c";a:14:{s:4:"name";s:9:"Publicize";s:11:"description";s:27:"Automated social marketing.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"10";s:20:"recommendation_order";s:1:"7";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:19:"Social, Recommended";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:107:"facebook, twitter, google+, googleplus, google, path, tumblr, linkedin, social, tweet, connections, sharing";}s:32:"052c03877dd3d296a71531cb07ad939a";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"52edecb2a75222e75b2dce4356a4efce";a:14:{s:4:"name";s:13:"Related posts";s:11:"description";s:64:"Increase page views by showing related content to your visitors.";s:14:"jumpstart_desc";s:113:"Keep visitors engaged on your blog by highlighting relevant and new content at the bottom of each published post.";s:4:"sort";s:2:"29";s:20:"recommendation_order";s:1:"9";s:10:"introduced";s:3:"2.9";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:11:"Recommended";s:7:"feature";s:21:"Engagement, Jumpstart";s:25:"additional_search_queries";s:22:"related, related posts";}s:32:"fe7a38addc9275dcbe6c4ff6c44a9350";a:14:{s:4:"name";s:6:"Search";s:11:"description";s:41:"Enhanced search, powered by Elasticsearch";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"5.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:5:"false";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:0:"";s:7:"feature";s:6:"Search";s:25:"additional_search_queries";s:6:"search";}s:32:"68b0d01689803c0ea7e4e60a86de2519";a:14:{s:4:"name";s:9:"SEO Tools";s:11:"description";s:50:"Better results on search engines and social media.";s:14:"jumpstart_desc";s:50:"Better results on search engines and social media.";s:4:"sort";s:2:"35";s:20:"recommendation_order";s:2:"15";s:10:"introduced";s:3:"4.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:18:"Social, Appearance";s:7:"feature";s:18:"Traffic, Jumpstart";s:25:"additional_search_queries";s:81:"search engine optimization, social preview, meta description, custom title format";}s:32:"8b059cb50a66b717f1ec842e736b858c";a:14:{s:4:"name";s:7:"Sharing";s:11:"description";s:37:"Allow visitors to share your content.";s:14:"jumpstart_desc";s:116:"Twitter, Facebook and Google+ buttons at the bottom of each post, making it easy for visitors to share your content.";s:4:"sort";s:1:"7";s:20:"recommendation_order";s:1:"6";s:10:"introduced";s:3:"1.1";s:7:"changed";s:3:"1.2";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:19:"Social, Recommended";s:7:"feature";s:21:"Engagement, Jumpstart";s:25:"additional_search_queries";s:141:"share, sharing, sharedaddy, buttons, icons, email, facebook, twitter, google+, linkedin, pinterest, pocket, press this, print, reddit, tumblr";}s:32:"a6d2394329871857401255533a9873f7";a:14:{s:4:"name";s:16:"Shortcode Embeds";s:11:"description";s:50:"Embed media from popular sites without any coding.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"3";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.1";s:7:"changed";s:3:"1.2";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:46:"Photos and Videos, Social, Writing, Appearance";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:236:"shortcodes, shortcode, embeds, media, bandcamp, dailymotion, facebook, flickr, google calendars, google maps, google+, polldaddy, recipe, recipes, scribd, slideshare, slideshow, slideshows, soundcloud, ted, twitter, vimeo, vine, youtube";}s:32:"21496e2897ea5f81605e2f2ac3beb921";a:14:{s:4:"name";s:16:"WP.me Shortlinks";s:11:"description";s:54:"Create short and simple links for all posts and pages.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"8";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:6:"Social";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:17:"shortlinks, wp.me";}s:32:"e2a54a5d7879a4162709e6ffb540dd08";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"f5c537bc304f55b29c1a87e30be0cd24";a:14:{s:4:"name";s:8:"Sitemaps";s:11:"description";s:50:"Make it easy for search engines to find your site.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"13";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"3.9";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:6:"Public";s:11:"module_tags";s:20:"Recommended, Traffic";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:39:"sitemap, traffic, search, site map, seo";}s:32:"59a23643437358a9b557f1d1e20ab040";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"6a90f97c3194cfca5671728eaaeaf15e";a:14:{s:4:"name";s:14:"Single Sign On";s:11:"description";s:62:"Allow users to log into this site using WordPress.com accounts";s:14:"jumpstart_desc";s:98:"Lets you log in to all your Jetpack-enabled sites with one click using your WordPress.com account.";s:4:"sort";s:2:"30";s:20:"recommendation_order";s:1:"5";s:10:"introduced";s:3:"2.6";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:10:"Developers";s:7:"feature";s:19:"Security, Jumpstart";s:25:"additional_search_queries";s:34:"sso, single sign on, login, log in";}s:32:"b65604e920392e2f7134b646760b75e8";a:14:{s:4:"name";s:10:"Site Stats";s:11:"description";s:44:"Collect valuable traffic stats and insights.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"1";s:20:"recommendation_order";s:1:"2";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:23:"Site Stats, Recommended";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:54:"statistics, tracking, analytics, views, traffic, stats";}s:32:"23a586dd7ead00e69ec53eb32ef740e4";a:14:{s:4:"name";s:13:"Subscriptions";s:11:"description";s:87:"Allow users to subscribe to your posts and comments and receive notifications via email";s:14:"jumpstart_desc";s:126:"Give visitors two easy subscription options — while commenting, or via a separate email subscription widget you can display.";s:4:"sort";s:1:"9";s:20:"recommendation_order";s:1:"8";s:10:"introduced";s:3:"1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:6:"Social";s:7:"feature";s:21:"Engagement, Jumpstart";s:25:"additional_search_queries";s:74:"subscriptions, subscription, email, follow, followers, subscribers, signup";}s:32:"1d978b8d84d2f378fe1a702a67633b6d";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"b3b983461d7f3d27322a3551ed8a9405";a:14:{s:4:"name";s:15:"Tiled Galleries";s:11:"description";s:61:"Display image galleries in a variety of elegant arrangements.";s:14:"jumpstart_desc";s:61:"Display image galleries in a variety of elegant arrangements.";s:4:"sort";s:2:"24";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:17:"Photos and Videos";s:7:"feature";s:21:"Appearance, Jumpstart";s:25:"additional_search_queries";s:43:"gallery, tiles, tiled, grid, mosaic, images";}s:32:"d924e5b05722b0e104448543598f54c0";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"36741583b10c521997e563ad8e1e8b77";a:14:{s:4:"name";s:12:"Data Backups";s:11:"description";s:54:"Off-site backups, security scans, and automatic fixes.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"32";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:5:"0:1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:5:"false";s:4:"free";s:5:"false";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:0:"";s:7:"feature";s:16:"Security, Health";s:25:"additional_search_queries";s:28:"vaultpress, backup, security";}s:32:"2b9b44f09b5459617d68dd82ee17002a";a:14:{s:4:"name";s:17:"Site verification";s:11:"description";s:58:"Establish your site\'s authenticity with external services.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"33";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"3.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:0:"";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:56:"webmaster, seo, google, bing, pinterest, search, console";}s:32:"5ab4c0db7c42e10e646342da0274c491";a:14:{s:4:"name";s:10:"VideoPress";s:11:"description";s:27:"Fast, ad-free video hosting";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"27";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.5";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:5:"false";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:17:"Photos and Videos";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:25:"video, videos, videopress";}s:32:"60a1d3aa38bc0fe1039e59dd60888543";a:14:{s:4:"name";s:17:"Widget Visibility";s:11:"description";s:42:"Control where widgets appear on your site.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"17";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:10:"Appearance";s:7:"feature";s:10:"Appearance";s:25:"additional_search_queries";s:54:"widget visibility, logic, conditional, widgets, widget";}s:32:"174ed3416476c2cb9ff5b0f671280b15";a:14:{s:4:"name";s:21:"Extra Sidebar Widgets";s:11:"description";s:54:"Add images, Twitter streams, and more to your sidebar.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"4";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:18:"Social, Appearance";s:7:"feature";s:10:"Appearance";s:25:"additional_search_queries";s:65:"widget, widgets, facebook, gallery, twitter, gravatar, image, rss";}s:32:"a668bc9418d6de87409f867892fcdd7f";a:14:{s:4:"name";s:3:"Ads";s:11:"description";s:60:"Earn income by allowing Jetpack to display high quality ads.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"1";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:5:"4.5.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:19:"Traffic, Appearance";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:26:"advertising, ad codes, ads";}s:32:"28b931a1db19bd24869bd54b14e733d5";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}}}', 'yes'),
(364, 'jetpack_available_modules', 'a:1:{s:3:"5.4";a:41:{s:18:"after-the-deadline";s:3:"1.1";s:8:"carousel";s:3:"1.5";s:13:"comment-likes";s:3:"5.1";s:8:"comments";s:3:"1.4";s:12:"contact-form";s:3:"1.3";s:20:"custom-content-types";s:3:"3.1";s:10:"custom-css";s:3:"1.7";s:21:"enhanced-distribution";s:3:"1.2";s:16:"google-analytics";s:3:"4.5";s:19:"gravatar-hovercards";s:3:"1.1";s:15:"infinite-scroll";s:3:"2.0";s:8:"json-api";s:3:"1.9";s:5:"latex";s:3:"1.1";s:5:"likes";s:3:"2.2";s:6:"manage";s:3:"3.4";s:8:"markdown";s:3:"2.8";s:9:"masterbar";s:3:"4.8";s:9:"minileven";s:3:"1.8";s:7:"monitor";s:3:"2.6";s:5:"notes";s:3:"1.9";s:6:"photon";s:3:"2.0";s:13:"post-by-email";s:3:"2.0";s:7:"protect";s:3:"3.4";s:9:"publicize";s:3:"2.0";s:13:"related-posts";s:3:"2.9";s:6:"search";s:3:"5.0";s:9:"seo-tools";s:3:"4.4";s:10:"sharedaddy";s:3:"1.1";s:10:"shortcodes";s:3:"1.1";s:10:"shortlinks";s:3:"1.1";s:8:"sitemaps";s:3:"3.9";s:3:"sso";s:3:"2.6";s:5:"stats";s:3:"1.1";s:13:"subscriptions";s:3:"1.2";s:13:"tiled-gallery";s:3:"2.1";s:10:"vaultpress";s:5:"0:1.2";s:18:"verification-tools";s:3:"3.0";s:10:"videopress";s:3:"2.5";s:17:"widget-visibility";s:3:"2.4";s:7:"widgets";s:3:"1.2";s:7:"wordads";s:5:"4.5.0";}}', 'yes'),
(365, 'jetpack_options', 'a:7:{s:7:"version";s:14:"5.4:1508702072";s:11:"old_version";s:14:"5.4:1508702072";s:28:"fallback_no_verify_ssl_certs";i:0;s:9:"time_diff";i:0;s:2:"id";i:137514403;s:6:"public";i:1;s:9:"jumpstart";s:14:"new_connection";}', 'yes'),
(366, 'jetpack_secrets', 'a:1:{s:19:"jetpack_authorize_1";a:3:{s:8:"secret_1";s:32:"OeEMR4zowOtKrdJH3svDMhBTzBHjrHgH";s:8:"secret_2";s:32:"GuLU6Cx2FpUF7i7kaNzDotRkMqnBhLXr";s:3:"exp";i:1508870922;}}', 'no'),
(370, 'jetpack_private_options', 'a:1:{s:10:"blog_token";s:65:"umbw%0@)oAJ07p@0)ftMFG5l#^B*ASzC.Zb!EJwxvHUxWgy4(!uk3#HL(y3XuiDDa";}', 'yes'),
(371, 'jetpack_last_connect_url_check', '1508863722', 'no'),
(373, 'do_activate', '0', 'yes'),
(476, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(506, 'jetpack_dismissed_connection_banner', '1', 'yes'),
(552, 'widget_pirate_forms_contact_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(553, 'pirate_forms_install', '1508873712', 'yes'),
(556, 'pirate_forms_settings_array', 'a:33:{s:20:"pirateformsopt_email";s:27:"wordpress@tamanu.respeye.ee";s:31:"pirateformsopt_email_recipients";s:20:"tanel.vahk@gmail.com";s:20:"pirateformsopt_store";s:3:"yes";s:20:"pirateformsopt_nonce";s:3:"yes";s:28:"pirateformsopt_confirm_email";s:0:"";s:28:"pirateformsopt_thank_you_url";s:0:"";s:22:"pirateformsopt_akismet";s:0:"";s:25:"pirateformsopt_name_field";s:3:"req";s:26:"pirateformsopt_email_field";s:3:"req";s:28:"pirateformsopt_subject_field";s:3:"req";s:28:"pirateformsopt_message_field";s:3:"req";s:31:"pirateformsopt_attachment_field";s:0:"";s:30:"pirateformsopt_recaptcha_field";s:3:"yes";s:32:"pirateformsopt_recaptcha_sitekey";s:0:"";s:34:"pirateformsopt_recaptcha_secretkey";s:0:"";s:25:"pirateformsopt_label_name";s:9:"Your Name";s:26:"pirateformsopt_label_email";s:10:"Your Email";s:28:"pirateformsopt_label_subject";s:7:"Subject";s:28:"pirateformsopt_label_message";s:12:"Your message";s:31:"pirateformsopt_label_submit_btn";s:12:"Send Message";s:29:"pirateformsopt_label_err_name";s:15:"Enter your name";s:30:"pirateformsopt_label_err_email";s:17:"Enter valid email";s:32:"pirateformsopt_label_err_subject";s:22:"Please enter a subject";s:35:"pirateformsopt_label_err_no_content";s:30:"Enter your question or comment";s:38:"pirateformsopt_label_err_no_attachment";s:24:"Please add an attachment";s:27:"pirateformsopt_label_submit";s:41:"Thanks, your email was sent successfully!";s:23:"pirateformsopt_use_smtp";s:0:"";s:24:"pirateformsopt_smtp_host";s:0:"";s:24:"pirateformsopt_smtp_port";s:0:"";s:38:"pirateformsopt_use_smtp_authentication";s:3:"yes";s:25:"pirateformsopt_use_secure";s:0:"";s:28:"pirateformsopt_smtp_username";s:0:"";s:28:"pirateformsopt_smtp_password";s:0:"";}', 'yes'),
(661, 'themeisle_sdk_active_notification', 'a:2:{s:3:"key";s:32:"pirate_formsThemeIsle_SDK_Logger";s:4:"time";i:1523479688;}', 'yes'),
(707, 'sbtt_options', 'a:1:{s:10:"sbtt_image";s:77:"http://tamanu.site/wp-content/plugins/simple-back-to-top/images/backtotop.png";}', 'yes'),
(754, 'product_cat_children', 'a:0:{}', 'yes'),
(889, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(984, 'limit_login_retries', 'a:1:{s:38:"2001:7d0:8408:ba80:5dc3:43b2:42c5:89c1";i:3;}', 'no'),
(985, 'limit_login_retries_valid', 'a:1:{s:38:"2001:7d0:8408:ba80:5dc3:43b2:42c5:89c1";i:1523522798;}', 'no'),
(1006, 'limit_login_lockouts', 'a:0:{}', 'yes'),
(1007, 'limit_login_logged', 'a:1:{s:12:"93.77.79.129";a:1:{s:5:"admin";i:1;}}', 'no'),
(1008, 'limit_login_lockouts_total', '1', 'no'),
(1542, 'WPLANG', 'et', 'yes'),
(1630, 'wpmdb_settings', 'a:11:{s:3:"key";s:40:"LnD8J+6RA8rMYnPBUtHhzK7jHGiAV4vsErq/8cWi";s:10:"allow_pull";b:0;s:10:"allow_push";b:0;s:8:"profiles";a:0:{}s:7:"licence";s:0:"";s:10:"verify_ssl";b:0;s:17:"whitelist_plugins";a:12:{i:0;s:19:"akismet/akismet.php";i:1;s:47:"bootstrap-3-shortcodes/bootstrap-shortcodes.php";i:2;s:29:"pirate-forms/pirate-forms.php";i:3;s:9:"hello.php";i:4;s:19:"jetpack/jetpack.php";i:5;s:45:"limit-login-attempts/limit-login-attempts.php";i:6;s:45:"llorix-one-companion/llorix-one-companion.php";i:7;s:25:"menu-icons/menu-icons.php";i:8;s:43:"themeisle-companion/themeisle-companion.php";i:9;s:32:"simple-back-to-top/backtotop.php";i:10;s:27:"woocommerce/woocommerce.php";i:11;s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";}s:11:"max_request";i:1048576;s:22:"delay_between_requests";i:0;s:18:"prog_tables_hidden";b:1;s:21:"pause_before_finalize";b:0;}', 'no'),
(1631, 'wpmdb_schema_version', '1', 'no'),
(1637, 'wpsdb_error_log', '********************************************\n******  Log date: 2018/04/11 21:05:35 ******\n********************************************\n\nWPSDB Error: The connection succeeded but the remote site is configured to reject push connections. You can change this in the "settings" tab on the remote site. (#122) <a href="#" class="try-again js-action-link">Try again?</a>\n\nAttempted to connect to: http://tamanu.respeye.ee/wp-admin/admin-ajax.php\n\nArray\n(\n    [error] => 1\n    [message] => The connection succeeded but the remote site is configured to reject push connections. You can change this in the "settings" tab on the remote site. (#122) <a href="#" class="try-again js-action-link">Try again?</a>\n)\n\n\n', 'yes'),
(1638, 'wpsdb_settings', 'a:7:{s:11:"max_request";i:26214400;s:3:"key";s:32:"zkWqxI5AVJiUYVF6KEv4cHknkx3lrJlQ";s:10:"allow_pull";b:0;s:10:"allow_push";b:0;s:8:"profiles";a:1:{i:0;a:19:{s:13:"save_computer";s:1:"1";s:9:"gzip_file";s:1:"1";s:13:"replace_guids";s:1:"1";s:12:"exclude_spam";s:1:"0";s:19:"keep_active_plugins";s:1:"0";s:13:"create_backup";s:1:"1";s:18:"exclude_post_types";s:1:"0";s:6:"action";s:4:"pull";s:15:"connection_info";s:58:"http://tamanu.respeye.ee\r\n6ydXW5zYK0li1SJ1RaUkI61tjb9CeE21";s:11:"replace_old";a:2:{i:1;s:19:"//tamanu.respeye.ee";i:2;s:48:"/data02/virt59051/domeenid/www.respeye.ee/tamanu";}s:11:"replace_new";a:2:{i:1;s:13:"//tamanu.site";i:2;s:31:"/srv/www/tamanu_dev/public_html";}s:20:"table_migrate_option";s:14:"migrate_select";s:13:"select_tables";a:26:{i:0;s:16:"wcbd_commentmeta";i:1;s:13:"wcbd_comments";i:2;s:10:"wcbd_links";i:3;s:12:"wcbd_options";i:4;s:13:"wcbd_postmeta";i:5;s:10:"wcbd_posts";i:6;s:23:"wcbd_term_relationships";i:7;s:18:"wcbd_term_taxonomy";i:8;s:13:"wcbd_termmeta";i:9;s:10:"wcbd_terms";i:10;s:13:"wcbd_usermeta";i:11;s:10:"wcbd_users";i:12;s:25:"wcbd_woocommerce_api_keys";i:13;s:37:"wcbd_woocommerce_attribute_taxonomies";i:14;s:49:"wcbd_woocommerce_downloadable_product_permissions";i:15;s:20:"wcbd_woocommerce_log";i:16;s:31:"wcbd_woocommerce_order_itemmeta";i:17;s:28:"wcbd_woocommerce_order_items";i:18;s:34:"wcbd_woocommerce_payment_tokenmeta";i:19;s:31:"wcbd_woocommerce_payment_tokens";i:20;s:25:"wcbd_woocommerce_sessions";i:21;s:40:"wcbd_woocommerce_shipping_zone_locations";i:22;s:38:"wcbd_woocommerce_shipping_zone_methods";i:23;s:31:"wcbd_woocommerce_shipping_zones";i:24;s:35:"wcbd_woocommerce_tax_rate_locations";i:25;s:26:"wcbd_woocommerce_tax_rates";}s:18:"exclude_transients";s:1:"1";s:13:"backup_option";s:15:"backup_selected";s:22:"save_migration_profile";s:1:"1";s:29:"save_migration_profile_option";s:3:"new";s:18:"create_new_profile";s:17:"tamanu.respeye.ee";s:4:"name";s:17:"tamanu.respeye.ee";}}s:10:"verify_ssl";b:0;s:17:"blacklist_plugins";a:0:{}}', 'yes') ;

#
# End of data contents of table `wcbd_options`
# --------------------------------------------------------



#
# Delete any existing table `wcbd_postmeta`
#

DROP TABLE IF EXISTS `wcbd_postmeta`;


#
# Table structure of table `wcbd_postmeta`
#

CREATE TABLE `wcbd_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=372 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wcbd_postmeta`
#
INSERT INTO `wcbd_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(4, 2, '_edit_lock', '1508867402:1'),
(5, 5, '_edit_last', '1'),
(6, 5, '_wp_page_template', 'default'),
(7, 5, '_edit_lock', '1509127919:1'),
(41, 29, '_wc_review_count', '0'),
(42, 29, '_wc_rating_count', 'a:0:{}'),
(43, 29, '_wc_average_rating', '0'),
(44, 29, '_edit_last', '1'),
(45, 29, '_edit_lock', '1509185110:1'),
(47, 29, '_sku', '87237y489061'),
(48, 29, '_regular_price', '50'),
(49, 29, '_sale_price', '49'),
(50, 29, '_sale_price_dates_from', ''),
(51, 29, '_sale_price_dates_to', ''),
(52, 29, 'total_sales', '0'),
(53, 29, '_tax_status', 'taxable'),
(54, 29, '_tax_class', ''),
(55, 29, '_manage_stock', 'no'),
(56, 29, '_backorders', 'no'),
(57, 29, '_sold_individually', 'no'),
(58, 29, '_weight', ''),
(59, 29, '_length', ''),
(60, 29, '_width', ''),
(61, 29, '_height', ''),
(62, 29, '_upsell_ids', 'a:0:{}'),
(63, 29, '_crosssell_ids', 'a:0:{}'),
(64, 29, '_purchase_note', ''),
(65, 29, '_default_attributes', 'a:0:{}'),
(66, 29, '_virtual', 'no'),
(67, 29, '_downloadable', 'no'),
(68, 29, '_product_image_gallery', ''),
(69, 29, '_download_limit', '-1'),
(70, 29, '_download_expiry', '-1'),
(71, 29, '_stock', NULL),
(72, 29, '_stock_status', 'instock'),
(73, 29, '_product_version', '3.2.1'),
(74, 29, '_price', '49'),
(108, 2, '_edit_last', '1'),
(109, 47, '_menu_item_type', 'post_type'),
(110, 47, '_menu_item_menu_item_parent', '0'),
(111, 47, '_menu_item_object_id', '5'),
(112, 47, '_menu_item_object', 'page'),
(113, 47, '_menu_item_target', ''),
(114, 47, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(115, 47, '_menu_item_xfn', ''),
(116, 47, '_menu_item_url', ''),
(118, 48, '_menu_item_type', 'post_type'),
(119, 48, '_menu_item_menu_item_parent', '0'),
(120, 48, '_menu_item_object_id', '2'),
(121, 48, '_menu_item_object', 'page'),
(122, 48, '_menu_item_target', ''),
(123, 48, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(124, 48, '_menu_item_xfn', ''),
(125, 48, '_menu_item_url', ''),
(127, 49, '_menu_item_type', 'post_type'),
(128, 49, '_menu_item_menu_item_parent', '0'),
(129, 49, '_menu_item_object_id', '25'),
(130, 49, '_menu_item_object', 'page'),
(131, 49, '_menu_item_target', ''),
(132, 49, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(133, 49, '_menu_item_xfn', ''),
(134, 49, '_menu_item_url', ''),
(136, 50, '_menu_item_type', 'post_type'),
(137, 50, '_menu_item_menu_item_parent', '49'),
(138, 50, '_menu_item_object_id', '28'),
(139, 50, '_menu_item_object', 'page'),
(140, 50, '_menu_item_target', ''),
(141, 50, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(142, 50, '_menu_item_xfn', ''),
(143, 50, '_menu_item_url', ''),
(145, 51, '_menu_item_type', 'post_type'),
(146, 51, '_menu_item_menu_item_parent', '49'),
(147, 51, '_menu_item_object_id', '27'),
(148, 51, '_menu_item_object', 'page'),
(149, 51, '_menu_item_target', ''),
(150, 51, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(151, 51, '_menu_item_xfn', ''),
(152, 51, '_menu_item_url', ''),
(154, 52, '_menu_item_type', 'post_type'),
(155, 52, '_menu_item_menu_item_parent', '0'),
(156, 52, '_menu_item_object_id', '27'),
(157, 52, '_menu_item_object', 'page'),
(158, 52, '_menu_item_target', ''),
(159, 52, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(160, 52, '_menu_item_xfn', ''),
(161, 52, '_menu_item_url', ''),
(162, 52, '_menu_item_orphaned', '1508822474'),
(163, 53, '_menu_item_type', 'post_type'),
(164, 53, '_menu_item_menu_item_parent', '0'),
(165, 53, '_menu_item_object_id', '26'),
(166, 53, '_menu_item_object', 'page'),
(167, 53, '_menu_item_target', ''),
(168, 53, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(169, 53, '_menu_item_xfn', ''),
(170, 53, '_menu_item_url', ''),
(180, 58, '_wp_attached_file', '2017/10/tamanuBG.jpg'),
(181, 58, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:735;s:4:"file";s:20:"2017/10/tamanuBG.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"tamanuBG-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"tamanuBG-300x115.jpg";s:5:"width";i:300;s:6:"height";i:115;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"tamanuBG-768x294.jpg";s:5:"width";i:768;s:6:"height";i:294;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"tamanuBG-1024x392.jpg";s:5:"width";i:1024;s:6:"height";i:392;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"tamanuBG-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"tamanuBG-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"tamanuBG-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:11:"hestia-blog";a:4:{s:4:"file";s:20:"tamanuBG-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"hestia-shop";a:4:{s:4:"file";s:20:"tamanuBG-230x350.jpg";s:5:"width";i:230;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:14:"hestia-shop-2x";a:4:{s:4:"file";s:20:"tamanuBG-460x700.jpg";s:5:"width";i:460;s:6:"height";i:700;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(188, 62, '_wp_attached_file', '2017/10/cropped-tamanu_bg.jpg'),
(189, 62, '_wp_attachment_context', 'custom-header') ;
INSERT INTO `wcbd_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(190, 62, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1900;s:6:"height";i:850;s:4:"file";s:29:"2017/10/cropped-tamanu_bg.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"cropped-tamanu_bg-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"cropped-tamanu_bg-300x134.jpg";s:5:"width";i:300;s:6:"height";i:134;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:29:"cropped-tamanu_bg-768x344.jpg";s:5:"width";i:768;s:6:"height";i:344;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:30:"cropped-tamanu_bg-1024x458.jpg";s:5:"width";i:1024;s:6:"height";i:458;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:29:"cropped-tamanu_bg-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:29:"cropped-tamanu_bg-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:29:"cropped-tamanu_bg-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:11:"hestia-blog";a:4:{s:4:"file";s:29:"cropped-tamanu_bg-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"hestia-shop";a:4:{s:4:"file";s:29:"cropped-tamanu_bg-230x350.jpg";s:5:"width";i:230;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:14:"hestia-shop-2x";a:4:{s:4:"file";s:29:"cropped-tamanu_bg-460x700.jpg";s:5:"width";i:460;s:6:"height";i:700;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(191, 62, '_wp_attachment_custom_header_last_used_hestia', '1508866406'),
(192, 62, '_wp_attachment_is_custom_header', 'hestia'),
(195, 65, '_wp_attached_file', '2017/10/cropped-tamanu_bg-1.jpg'),
(196, 65, '_wp_attachment_context', 'custom-logo'),
(197, 65, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:149;s:6:"height";i:100;s:4:"file";s:31:"2017/10/cropped-tamanu_bg-1.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(198, 66, '_wp_attached_file', '2017/10/tamanulogo.png'),
(199, 66, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:252;s:4:"file";s:22:"2017/10/tamanulogo.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"tamanulogo-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"tamanulogo-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:11:"hestia-blog";a:4:{s:4:"file";s:22:"tamanulogo-250x240.png";s:5:"width";i:250;s:6:"height";i:240;s:9:"mime-type";s:9:"image/png";}s:11:"hestia-shop";a:4:{s:4:"file";s:22:"tamanulogo-230x252.png";s:5:"width";i:230;s:6:"height";i:252;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(200, 67, '_wp_attached_file', '2017/10/cropped-tamanulogo.png'),
(201, 67, '_wp_attachment_context', 'custom-logo'),
(202, 67, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:103;s:6:"height";i:100;s:4:"file";s:30:"2017/10/cropped-tamanulogo.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(203, 68, '_wp_attached_file', '2017/10/tamanulogo_black.png'),
(204, 68, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:195;s:6:"height";i:195;s:4:"file";s:28:"2017/10/tamanulogo_black.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"tamanulogo_black-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"tamanulogo_black-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(205, 69, '_wp_attached_file', '2017/10/cropped-tamanulogo_black.png'),
(206, 69, '_wp_attachment_context', 'custom-logo'),
(207, 69, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:100;s:4:"file";s:36:"2017/10/cropped-tamanulogo_black.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(210, 70, '_wp_attached_file', '2017/10/tamanu_new.png'),
(211, 70, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:200;s:4:"file";s:22:"2017/10/tamanu_new.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"tamanu_new-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"tamanu_new-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:11:"hestia-shop";a:4:{s:4:"file";s:22:"tamanu_new-230x200.png";s:5:"width";i:230;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(212, 71, '_wp_attached_file', '2017/10/cropped-tamanu_new.png'),
(213, 71, '_wp_attachment_context', 'custom-logo'),
(214, 71, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:125;s:6:"height";i:100;s:4:"file";s:30:"2017/10/cropped-tamanu_new.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(231, 82, '_wp_attached_file', '2017/10/TAMANU-Flowers-Nuts.jpg'),
(232, 82, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1494;s:6:"height";i:1088;s:4:"file";s:31:"2017/10/TAMANU-Flowers-Nuts.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"TAMANU-Flowers-Nuts-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"TAMANU-Flowers-Nuts-300x218.jpg";s:5:"width";i:300;s:6:"height";i:218;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"TAMANU-Flowers-Nuts-768x559.jpg";s:5:"width";i:768;s:6:"height";i:559;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"TAMANU-Flowers-Nuts-1024x746.jpg";s:5:"width";i:1024;s:6:"height";i:746;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"TAMANU-Flowers-Nuts-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"TAMANU-Flowers-Nuts-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:31:"TAMANU-Flowers-Nuts-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:11:"hestia-blog";a:4:{s:4:"file";s:31:"TAMANU-Flowers-Nuts-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"hestia-shop";a:4:{s:4:"file";s:31:"TAMANU-Flowers-Nuts-230x350.jpg";s:5:"width";i:230;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:14:"hestia-shop-2x";a:4:{s:4:"file";s:31:"TAMANU-Flowers-Nuts-460x700.jpg";s:5:"width";i:460;s:6:"height";i:700;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(239, 86, '_wp_attached_file', '2017/10/face-care-packs.jpg'),
(240, 86, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:430;s:6:"height";i:525;s:4:"file";s:27:"2017/10/face-care-packs.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"face-care-packs-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"face-care-packs-246x300.jpg";s:5:"width";i:246;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:27:"face-care-packs-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:27:"face-care-packs-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"hestia-blog";a:4:{s:4:"file";s:27:"face-care-packs-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"hestia-shop";a:4:{s:4:"file";s:27:"face-care-packs-230x350.jpg";s:5:"width";i:230;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1456392714";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(241, 29, '_thumbnail_id', '115'),
(242, 1, '_edit_lock', '1509127613:1'),
(243, 87, '_wp_attached_file', '2017/10/Final3837.jpg'),
(244, 87, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:6000;s:6:"height";i:4000;s:4:"file";s:21:"2017/10/Final3837.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"Final3837-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"Final3837-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"Final3837-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"Final3837-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"Final3837-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"Final3837-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"Final3837-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:11:"hestia-blog";a:4:{s:4:"file";s:21:"Final3837-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"hestia-shop";a:4:{s:4:"file";s:21:"Final3837-230x350.jpg";s:5:"width";i:230;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:14:"hestia-shop-2x";a:4:{s:4:"file";s:21:"Final3837-460x700.jpg";s:5:"width";i:460;s:6:"height";i:700;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:2:"10";s:6:"credit";s:0:"";s:6:"camera";s:9:"ILCE-5100";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1431526576";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"16";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:7:"0.00625";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(245, 1, '_edit_last', '1'),
(246, 1, '_thumbnail_id', '87'),
(248, 90, '_wp_attached_file', '2017/10/pure-tamanu-oil.jpeg'),
(249, 90, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:470;s:6:"height";i:310;s:4:"file";s:28:"2017/10/pure-tamanu-oil.jpeg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"pure-tamanu-oil-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"pure-tamanu-oil-300x198.jpeg";s:5:"width";i:300;s:6:"height";i:198;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"pure-tamanu-oil-180x180.jpeg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:28:"pure-tamanu-oil-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"hestia-blog";a:4:{s:4:"file";s:28:"pure-tamanu-oil-360x240.jpeg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"hestia-shop";a:4:{s:4:"file";s:28:"pure-tamanu-oil-230x310.jpeg";s:5:"width";i:230;s:6:"height";i:310;s:9:"mime-type";s:10:"image/jpeg";}s:14:"hestia-shop-2x";a:4:{s:4:"file";s:28:"pure-tamanu-oil-460x310.jpeg";s:5:"width";i:460;s:6:"height";i:310;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(252, 93, '_wp_attached_file', '2017/10/olej-tamanu.jpg'),
(253, 93, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:652;s:4:"file";s:23:"2017/10/olej-tamanu.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"olej-tamanu-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"olej-tamanu-300x217.jpg";s:5:"width";i:300;s:6:"height";i:217;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"olej-tamanu-768x556.jpg";s:5:"width";i:768;s:6:"height";i:556;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"olej-tamanu-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"olej-tamanu-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:23:"olej-tamanu-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:11:"hestia-blog";a:4:{s:4:"file";s:23:"olej-tamanu-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"hestia-shop";a:4:{s:4:"file";s:23:"olej-tamanu-230x350.jpg";s:5:"width";i:230;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:14:"hestia-shop-2x";a:4:{s:4:"file";s:23:"olej-tamanu-460x652.jpg";s:5:"width";i:460;s:6:"height";i:652;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:60:"Health spa with massage oil and white flower ,candle on leaf";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:8:"Bigstock";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:60:"Health spa with massage oil and white flower ,candle on leaf";s:11:"orientation";s:1:"0";s:8:"keywords";a:47:{i:0;s:11:"alternative";i:1;s:5:"aroma";i:2;s:12:"aromatherapy";i:3;s:8:"aromatic";i:4;s:11:"banana leaf";i:5;s:6:"beauty";i:6;s:6:"bottle";i:7;s:6:"candle";i:8;s:4:"care";i:9;s:9:"cosmetics";i:10;s:9:"essential";i:11;s:6:"exotic";i:12;s:6:"floral";i:13;s:6:"flower";i:14;s:10:"frangipani";i:15;s:5:"fresh";i:16;s:5:"green";i:17;s:6:"health";i:18;s:7:"healthy";i:19;s:4:"herb";i:20;s:7:"hygiene";i:21;s:4:"leaf";i:22;s:4:"life";i:23;s:6:"luxury";i:24;s:7:"massage";i:25;s:8:"medicine";i:26;s:7:"natural";i:27;s:6:"nature";i:28;s:3:"oil";i:29;s:6:"orchid";i:30;s:9:"pampering";i:31;s:7:"product";i:32;s:4:"pure";i:33;s:6:"purple";i:34;s:5:"relax";i:35;s:10:"relaxation";i:36;s:5:"salon";i:37;s:5:"scent";i:38;s:7:"scented";i:39;s:8:"skincare";i:40;s:3:"spa";i:41;s:5:"sweet";i:42;s:7:"therapy";i:43;s:9:"treatment";i:44;s:8:"wellness";i:45;s:5:"white";i:46;s:6:"yellow";}}}'),
(257, 97, '_wp_attached_file', '2017/10/about_us1.jpg'),
(258, 97, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:500;s:4:"file";s:21:"2017/10/about_us1.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"about_us1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"about_us1-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"about_us1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"about_us1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"about_us1-600x500.jpg";s:5:"width";i:600;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}s:11:"hestia-blog";a:4:{s:4:"file";s:21:"about_us1-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"hestia-shop";a:4:{s:4:"file";s:21:"about_us1-230x350.jpg";s:5:"width";i:230;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:14:"hestia-shop-2x";a:4:{s:4:"file";s:21:"about_us1-460x500.jpg";s:5:"width";i:460;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(259, 98, '_wp_attached_file', '2017/10/about_us2.jpg'),
(260, 98, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:500;s:4:"file";s:21:"2017/10/about_us2.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"about_us2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"about_us2-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"about_us2-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"about_us2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"about_us2-600x500.jpg";s:5:"width";i:600;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}s:11:"hestia-blog";a:4:{s:4:"file";s:21:"about_us2-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"hestia-shop";a:4:{s:4:"file";s:21:"about_us2-230x350.jpg";s:5:"width";i:230;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:14:"hestia-shop-2x";a:4:{s:4:"file";s:21:"about_us2-460x500.jpg";s:5:"width";i:460;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(270, 5, '_thumbnail_id', '0'),
(282, 53, 'menu-icons', 'a:8:{s:4:"type";s:9:"dashicons";s:4:"icon";s:14:"dashicons-cart";s:10:"hide_label";s:1:"1";s:8:"position";s:6:"before";s:14:"vertical_align";s:6:"middle";s:9:"font_size";s:1:"2";s:9:"svg_width";s:1:"1";s:10:"image_size";s:9:"thumbnail";}'),
(283, 114, '_wc_review_count', '0'),
(284, 114, '_wc_rating_count', 'a:0:{}'),
(285, 114, '_wc_average_rating', '0'),
(286, 114, '_edit_last', '1'),
(287, 114, '_edit_lock', '1509184875:1'),
(288, 115, '_wp_attached_file', '2017/10/Volcanic-Earth-Tamanu-Oil-140ml.jpg_350x350.jpg'),
(289, 115, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:350;s:6:"height";i:350;s:4:"file";s:55:"2017/10/Volcanic-Earth-Tamanu-Oil-140ml.jpg_350x350.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:55:"Volcanic-Earth-Tamanu-Oil-140ml.jpg_350x350-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:55:"Volcanic-Earth-Tamanu-Oil-140ml.jpg_350x350-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:55:"Volcanic-Earth-Tamanu-Oil-140ml.jpg_350x350-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:55:"Volcanic-Earth-Tamanu-Oil-140ml.jpg_350x350-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"hestia-blog";a:4:{s:4:"file";s:55:"Volcanic-Earth-Tamanu-Oil-140ml.jpg_350x350-350x240.jpg";s:5:"width";i:350;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"hestia-shop";a:4:{s:4:"file";s:55:"Volcanic-Earth-Tamanu-Oil-140ml.jpg_350x350-230x350.jpg";s:5:"width";i:230;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(290, 114, '_thumbnail_id', '117'),
(291, 114, '_sku', '2234234234234'),
(292, 114, '_regular_price', '45'),
(293, 114, '_sale_price', '23'),
(294, 114, '_sale_price_dates_from', ''),
(295, 114, '_sale_price_dates_to', ''),
(296, 114, 'total_sales', '0'),
(297, 114, '_tax_status', 'taxable'),
(298, 114, '_tax_class', ''),
(299, 114, '_manage_stock', 'no'),
(300, 114, '_backorders', 'no'),
(301, 114, '_sold_individually', 'no'),
(302, 114, '_weight', ''),
(303, 114, '_length', ''),
(304, 114, '_width', ''),
(305, 114, '_height', ''),
(306, 114, '_upsell_ids', 'a:0:{}'),
(307, 114, '_crosssell_ids', 'a:0:{}'),
(308, 114, '_purchase_note', ''),
(309, 114, '_default_attributes', 'a:0:{}'),
(310, 114, '_virtual', 'no'),
(311, 114, '_downloadable', 'no'),
(312, 114, '_product_image_gallery', ''),
(313, 114, '_download_limit', '-1'),
(314, 114, '_download_expiry', '-1'),
(315, 114, '_stock', NULL),
(316, 114, '_stock_status', 'instock'),
(317, 114, '_product_version', '3.2.1'),
(318, 114, '_price', '23'),
(319, 116, '_wc_review_count', '0'),
(320, 116, '_wc_rating_count', 'a:0:{}'),
(321, 116, '_wc_average_rating', '0'),
(322, 116, '_edit_last', '1'),
(323, 116, '_edit_lock', '1509185009:1'),
(324, 117, '_wp_attached_file', '2017/10/il_340x270.858452438_n64j.jpg'),
(325, 117, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:340;s:6:"height";i:270;s:4:"file";s:37:"2017/10/il_340x270.858452438_n64j.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"il_340x270.858452438_n64j-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"il_340x270.858452438_n64j-300x238.jpg";s:5:"width";i:300;s:6:"height";i:238;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:37:"il_340x270.858452438_n64j-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:37:"il_340x270.858452438_n64j-300x270.jpg";s:5:"width";i:300;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:11:"hestia-blog";a:4:{s:4:"file";s:37:"il_340x270.858452438_n64j-340x240.jpg";s:5:"width";i:340;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"hestia-shop";a:4:{s:4:"file";s:37:"il_340x270.858452438_n64j-230x270.jpg";s:5:"width";i:230;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(326, 116, '_sku', '34234234324'),
(327, 116, '_regular_price', '12'),
(328, 116, '_sale_price', ''),
(329, 116, '_sale_price_dates_from', ''),
(330, 116, '_sale_price_dates_to', ''),
(331, 116, 'total_sales', '0'),
(332, 116, '_tax_status', 'taxable'),
(333, 116, '_tax_class', ''),
(334, 116, '_manage_stock', 'yes'),
(335, 116, '_backorders', 'no'),
(336, 116, '_sold_individually', 'no'),
(337, 116, '_weight', ''),
(338, 116, '_length', ''),
(339, 116, '_width', ''),
(340, 116, '_height', ''),
(341, 116, '_upsell_ids', 'a:0:{}') ;
INSERT INTO `wcbd_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(342, 116, '_crosssell_ids', 'a:0:{}'),
(343, 116, '_purchase_note', ''),
(344, 116, '_default_attributes', 'a:0:{}'),
(345, 116, '_virtual', 'no'),
(346, 116, '_downloadable', 'no'),
(347, 116, '_product_image_gallery', '117'),
(348, 116, '_download_limit', '-1'),
(349, 116, '_download_expiry', '-1'),
(350, 116, '_stock', '0'),
(351, 116, '_stock_status', 'outofstock'),
(352, 116, '_product_version', '3.2.1'),
(353, 116, '_price', '12'),
(354, 116, '_thumbnail_id', '117'),
(355, 118, '_edit_last', '1'),
(356, 118, '_edit_lock', '1509127916:1'),
(357, 118, '_thumbnail_id', '82'),
(368, 116, '_product_attributes', 'a:1:{s:4:"test";a:6:{s:4:"name";s:4:"Test";s:5:"value";s:11:"Test omadus";s:8:"position";i:0;s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:0;}}'),
(369, 25, '_edit_lock', '1509185120:1') ;

#
# End of data contents of table `wcbd_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wcbd_posts`
#

DROP TABLE IF EXISTS `wcbd_posts`;


#
# Table structure of table `wcbd_posts`
#

CREATE TABLE `wcbd_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `post_name` (`post_name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wcbd_posts`
#
INSERT INTO `wcbd_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-10-22 19:31:18', '2017-10-22 19:31:18', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-10-24 19:39:53', '2017-10-24 19:39:53', '', 0, 'http://tamanu.site/?p=1', 0, 'post', '', 1),
(2, 1, '2017-10-22 19:31:18', '2017-10-22 19:31:18', 'This is an example of a WordPress page, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many pages like this one or sub-pages as you like and manage all of your content inside of WordPress.', 'Blogi', '', 'publish', 'open', 'open', '', 'about', '', '', '2017-10-24 05:20:18', '2017-10-24 05:20:18', '', 0, 'http://tamanu.site/?page_id=2', 0, 'page', '', 0),
(5, 1, '2017-10-22 16:46:24', '2017-10-22 16:46:24', '[row]\r\n[column md="6"]\r\n<p>Volcanic Earth Tamanu Oil is the best brand of Tamanu Oil on the market today because of the consistent high quality of the product. It is certified organic, 100% pure Tamanu Oil that is undiluted, has no additives whatsoever and is never subjected to any chemical filtering or other processes. The end result is a rich, luxurious oil that is thick, dark green in color with its natural nutty aroma. In addition, our Tamanu Oil only comes from the nuts of coastal trees rather than inland or man-made plantations. The Ni Vanuatu say that Tamanu Trees that grow like this by the shoreline produce the best Tamanu Oil. Their belief is that these trees draw additional nutrients from the coral. While this long-standing custom belief has never been scientifically tested, it is true that Tamanu Trees that grow by the seaside can be quite magnificent and prolific when it comes to producing extremely high quality, Tamanu Nuts.</p>\r\n[/column]\r\n[column md="1"]\r\n[/column]\r\n[column md="5"]\r\n[img type="rounded" responsive="true"]<img src="http://tamanu.site/wp-content/uploads/2017/10/about_us1.jpg" alt="" />[/img]\r\n[/column]\r\n[/row]\r\n\r\n[row]\r\n[column md="5"]\r\n[img type="rounded" responsive="true"]<img src="http://tamanu.site/wp-content/uploads/2017/10/about_us2.jpg" />[/img]\r\n[/column]\r\n[column md="1"]\r\n[/column]\r\n[column md="6"]\r\n<p>Stay away from black colored or lightly-colored or yellowish-coloured oil. None of these are the real deal and this is why they are so cheap. There is a lot of rubbish oil coming out of Vietnam especially. Black Tamanu Oil occurs where the Tamanu Nuts have been thrown into the fire to try and speed up the curing process. However, all this does is burn the nut and the resulting oil which seriously diminishes its natural, skin-healing and anti-aging properties. Oh and then we have the yellow Tamanu Oil that has been either diluted down with a cheap carrier oil or in some cases, the product has been put through a chemical filtering process. Yes the oil may be a lighter oil but again the product has been chemically stripped of some of its natural components making it inferior and much less effective. While 100% pure Tamanu Oil is expensive, it is the only cure that we know of for psoriasis and things like cystic acne. If you want fast, effective results then you have to be willing to buy only the best quality Tamanu Oil and that comes from Volcanic Earth.</p>\r\n[/column]\r\n[/row]', 'Esileht', '', 'publish', 'closed', 'closed', '', 'esileht', '', '', '2018-04-11 21:06:36', '2018-04-11 21:06:36', '', 0, 'http://tamanu.site/?page_id=5', 0, 'page', '', 0),
(6, 1, '2017-10-22 16:46:24', '2017-10-22 16:46:24', 'Siia tuleb esilehe sisu!!', 'Esileht', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-10-22 16:46:24', '2017-10-22 16:46:24', '', 5, 'http://tamanu.site/uncategorized/5-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2017-10-22 19:42:18', '2017-10-22 19:42:18', '<p>Siia tuleb esilehe sisu!!</p><p>Veel tuleb teksti kohe kohe!!</p><p>Siis saame valmis sellega.</p>', 'Esileht', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-10-22 19:42:18', '2017-10-22 19:42:18', '', 5, 'http://tamanu.site/uncategorized/5-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2017-10-22 19:53:23', '2017-10-22 19:53:23', '', 'Pood', '', 'publish', 'closed', 'closed', '', 'pood', '', '', '2017-10-22 19:53:23', '2017-10-22 19:53:23', '', 0, 'http://tamanu.site/pood/', 0, 'page', '', 0),
(26, 1, '2017-10-22 19:53:23', '2017-10-22 19:53:23', '[woocommerce_cart]', 'Ostukorv', '', 'publish', 'closed', 'closed', '', 'ostukorv', '', '', '2017-10-22 19:53:23', '2017-10-22 19:53:23', '', 0, 'http://tamanu.site/ostukorv/', 0, 'page', '', 0),
(27, 1, '2017-10-22 19:53:23', '2017-10-22 19:53:23', '[woocommerce_checkout]', 'Kassa', '', 'publish', 'closed', 'closed', '', 'kassa', '', '', '2017-10-22 19:53:23', '2017-10-22 19:53:23', '', 0, 'http://tamanu.site/kassa/', 0, 'page', '', 0),
(28, 1, '2017-10-22 19:53:23', '2017-10-22 19:53:23', '[woocommerce_my_account]', 'Minu konto', '', 'publish', 'closed', 'closed', '', 'minu-konto', '', '', '2017-10-22 19:53:23', '2017-10-22 19:53:23', '', 0, 'http://tamanu.site/minu-konto/', 0, 'page', '', 0),
(29, 1, '2017-10-22 19:56:21', '2017-10-22 19:56:21', 'Siia tuleb kirjeldus!', 'Esimene toode', 'Väga vinge toode', 'publish', 'open', 'closed', '', 'esimene-toode', '', '', '2017-10-28 10:07:26', '2017-10-28 10:07:26', '', 0, 'http://tamanu.site/?post_type=product&#038;p=29', 0, 'product', '', 0),
(46, 1, '2017-10-24 05:20:18', '2017-10-24 05:20:18', 'This is an example of a WordPress page, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many pages like this one or sub-pages as you like and manage all of your content inside of WordPress.', 'Blogi', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-10-24 05:20:18', '2017-10-24 05:20:18', '', 2, 'http://tamanu.site/uncategorized/2-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2017-10-24 05:21:45', '2017-10-24 05:21:45', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2017-10-27 17:35:51', '2017-10-27 17:35:51', '', 0, 'http://tamanu.site/?p=47', 1, 'nav_menu_item', '', 0),
(48, 1, '2017-10-24 05:21:45', '2017-10-24 05:21:45', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2017-10-27 17:35:51', '2017-10-27 17:35:51', '', 0, 'http://tamanu.site/?p=48', 2, 'nav_menu_item', '', 0),
(49, 1, '2017-10-24 05:21:45', '2017-10-24 05:21:45', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2017-10-27 17:35:51', '2017-10-27 17:35:51', '', 0, 'http://tamanu.site/?p=49', 3, 'nav_menu_item', '', 0),
(50, 1, '2017-10-24 05:21:45', '2017-10-24 05:21:45', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2017-10-27 17:35:51', '2017-10-27 17:35:51', '', 0, 'http://tamanu.site/?p=50', 4, 'nav_menu_item', '', 0),
(51, 1, '2017-10-24 05:21:45', '2017-10-24 05:21:45', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2017-10-27 17:35:51', '2017-10-27 17:35:51', '', 0, 'http://tamanu.site/?p=51', 5, 'nav_menu_item', '', 0),
(52, 1, '2017-10-24 05:21:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-10-24 05:21:14', '0000-00-00 00:00:00', '', 0, 'http://tamanu.site/?p=52', 1, 'nav_menu_item', '', 0),
(53, 1, '2017-10-24 05:21:45', '2017-10-24 05:21:45', ' ', '', '', 'publish', 'closed', 'closed', '', '53', '', '', '2017-10-27 17:35:51', '2017-10-27 17:35:51', '', 0, 'http://tamanu.site/?p=53', 6, 'nav_menu_item', '', 0),
(58, 1, '2017-10-24 17:25:04', '2017-10-24 17:25:04', '', 'tamanuBG', '', 'inherit', 'open', 'closed', '', 'tamanubg', '', '', '2017-10-24 17:25:04', '2017-10-24 17:25:04', '', 0, 'http://tamanu.site/wp-content/uploads/2017/10/tamanuBG.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2017-10-24 17:33:19', '2017-10-24 17:33:19', '', 'cropped-tamanu_bg.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-tamanu_bg-jpg', '', '', '2017-10-24 17:33:19', '2017-10-24 17:33:19', '', 0, 'http://tamanu.site/wp-content/uploads/2017/10/cropped-tamanu_bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2017-10-24 17:34:39', '2017-10-24 17:34:39', 'http://tamanu.site/wp-content/uploads/2017/10/cropped-tamanu_bg-1.jpg', 'cropped-tamanu_bg-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-tamanu_bg-1-jpg', '', '', '2017-10-24 17:34:39', '2017-10-24 17:34:39', '', 0, 'http://tamanu.site/wp-content/uploads/2017/10/cropped-tamanu_bg-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2017-10-24 17:42:00', '2017-10-24 17:42:00', '', 'tamanulogo', '', 'inherit', 'open', 'closed', '', 'tamanulogo', '', '', '2017-10-24 17:42:00', '2017-10-24 17:42:00', '', 0, 'http://tamanu.site/wp-content/uploads/2017/10/tamanulogo.png', 0, 'attachment', 'image/png', 0),
(67, 1, '2017-10-24 17:42:11', '2017-10-24 17:42:11', 'http://tamanu.site/wp-content/uploads/2017/10/cropped-tamanulogo.png', 'cropped-tamanulogo.png', '', 'inherit', 'open', 'closed', '', 'cropped-tamanulogo-png', '', '', '2017-10-24 17:42:11', '2017-10-24 17:42:11', '', 0, 'http://tamanu.site/wp-content/uploads/2017/10/cropped-tamanulogo.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2017-10-24 17:44:25', '2017-10-24 17:44:25', '', 'tamanulogo_black', '', 'inherit', 'open', 'closed', '', 'tamanulogo_black', '', '', '2017-10-24 17:44:25', '2017-10-24 17:44:25', '', 0, 'http://tamanu.site/wp-content/uploads/2017/10/tamanulogo_black.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2017-10-24 17:44:32', '2017-10-24 17:44:32', 'http://tamanu.site/wp-content/uploads/2017/10/cropped-tamanulogo_black.png', 'cropped-tamanulogo_black.png', '', 'inherit', 'open', 'closed', '', 'cropped-tamanulogo_black-png', '', '', '2017-10-24 17:44:32', '2017-10-24 17:44:32', '', 0, 'http://tamanu.site/wp-content/uploads/2017/10/cropped-tamanulogo_black.png', 0, 'attachment', 'image/png', 0),
(70, 1, '2017-10-24 17:46:52', '2017-10-24 17:46:52', '', 'tamanu_new', '', 'inherit', 'open', 'closed', '', 'tamanu_new', '', '', '2017-10-24 17:46:52', '2017-10-24 17:46:52', '', 0, 'http://tamanu.site/wp-content/uploads/2017/10/tamanu_new.png', 0, 'attachment', 'image/png', 0),
(71, 1, '2017-10-24 17:46:58', '2017-10-24 17:46:58', 'http://tamanu.site/wp-content/uploads/2017/10/cropped-tamanu_new.png', 'cropped-tamanu_new.png', '', 'inherit', 'open', 'closed', '', 'cropped-tamanu_new-png', '', '', '2017-10-24 17:46:58', '2017-10-24 17:46:58', '', 0, 'http://tamanu.site/wp-content/uploads/2017/10/cropped-tamanu_new.png', 0, 'attachment', 'image/png', 0),
(73, 1, '2017-10-24 17:52:34', '2017-10-24 17:52:34', '', 'Esileht', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-10-24 17:52:34', '2017-10-24 17:52:34', '', 5, 'http://tamanu.site/uncategorized/5-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2017-10-24 18:57:06', '2017-10-24 18:57:06', '<p>Testime</p>', 'Esileht', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-10-24 18:57:06', '2017-10-24 18:57:06', '', 5, 'http://tamanu.site/uncategorized/5-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2017-10-24 18:57:50', '2017-10-24 18:57:50', 'Testime üks kaks kolm', 'Esileht', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-10-24 18:57:50', '2017-10-24 18:57:50', '', 5, 'http://tamanu.site/uncategorized/5-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2017-10-24 19:33:50', '2017-10-24 19:33:50', '', 'TAMANU Flowers & Nuts', '', 'inherit', 'open', 'closed', '', 'tamanu-flowers-nuts', '', '', '2017-10-24 19:33:50', '2017-10-24 19:33:50', '', 0, 'http://tamanu.site/wp-content/uploads/2017/10/TAMANU-Flowers-Nuts.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2017-10-24 19:38:41', '2017-10-24 19:38:41', '', 'face-care-packs', '', 'inherit', 'open', 'closed', '', 'face-care-packs', '', '', '2017-10-24 19:38:41', '2017-10-24 19:38:41', '', 29, 'http://tamanu.site/wp-content/uploads/2017/10/face-care-packs.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2017-10-24 19:39:27', '2017-10-24 19:39:27', '', 'Final3837', '', 'inherit', 'open', 'closed', '', 'final3837', '', '', '2017-10-24 19:39:27', '2017-10-24 19:39:27', '', 1, 'http://tamanu.site/wp-content/uploads/2017/10/Final3837.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2017-10-24 19:39:53', '2017-10-24 19:39:53', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-10-24 19:39:53', '2017-10-24 19:39:53', '', 1, 'http://tamanu.site/uncategorized/1-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2017-10-27 16:06:39', '2017-10-27 16:06:39', '[row]\n[column md="6"]\n<p>Volcanic Earth Tamanu Oil is the best brand of Tamanu Oil on the market today because of the consistent high quality of the product. It is certified organic, 100% pure Tamanu Oil that is undiluted, has no additives whatsoever and is never subjected to any chemical filtering or other processes. The end result is a rich, luxurious oil that is thick, dark green in color with its natural nutty aroma. In addition, our Tamanu Oil only comes from the nuts of coastal trees rather than inland or man-made plantations. The Ni Vanuatu say that Tamanu Trees that grow like this by the shoreline produce the best Tamanu Oil. Their belief is that these trees draw additional nutrients from the coral. While this long-standing custom belief has never been scientifically tested, it is true that Tamanu Trees that grow by the seaside can be quite magnificent and prolific when it comes to producing extremely high quality, Tamanu Nuts.</p>\n[/column]\n[column md="6"][img type="circle" responsive="true"] ... [/img]\n[img type="circle" responsive="true"]<img src="http://tamanu.site/wp-content/uploads/2017/10/about_us1.jpg" alt="" class="alignnone wp-image-97 size-full" />\n[/column]\n[/row]\n\n[row]\n[column md="6"]\n<img src="http://tamanu.site/wp-content/uploads/2017/10/about_us2.jpg" alt="" class="alignnone wp-image-97 size-full" />\n[/column]\n[column md="6"]\n<p>Stay away from black colored or lightly-colored or yellowish-coloured oil. None of these are the real deal and this is why they are so cheap. There is a lot of rubbish oil coming out of Vietnam especially. Black Tamanu Oil occurs where the Tamanu Nuts have been thrown into the fire to try and speed up the curing process. However, all this does is burn the nut and the resulting oil which seriously diminishes its natural, skin-healing and anti-aging properties. Oh and then we have the yellow Tamanu Oil that has been either diluted down with a cheap carrier oil or in some cases, the product has been put through a chemical filtering process. Yes the oil may be a lighter oil but again the product has been chemically stripped of some of its natural components making it inferior and much less effective. While 100% pure Tamanu Oil is expensive, it is the only cure that we know of for psoriasis and things like cystic acne. If you want fast, effective results then you have to be willing to buy only the best quality Tamanu Oil and that comes from Volcanic Earth.</p>\n[/column]\n[/row]', 'Esileht', '', 'inherit', 'closed', 'closed', '', '5-autosave-v1', '', '', '2017-10-27 16:06:39', '2017-10-27 16:06:39', '', 5, 'http://tamanu.site/uncategorized/5-autosave-v1/', 0, 'revision', '', 0),
(90, 1, '2017-10-26 05:30:56', '2017-10-26 05:30:56', '', 'pure-tamanu-oil', '', 'inherit', 'open', 'closed', '', 'pure-tamanu-oil', '', '', '2017-10-26 05:30:56', '2017-10-26 05:30:56', '', 5, 'http://tamanu.site/wp-content/uploads/2017/10/pure-tamanu-oil.jpeg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2017-10-26 05:31:06', '2017-10-26 05:31:06', '[row]\r\n[column md="6"]\r\n<span>Volcanic Earth Tamanu Oil is the best brand of Tamanu Oil on the market today because of the consistent high quality of the product. It is certified organic, 100% pure Tamanu Oil that is undiluted, has no additives whatsoever and is never subjected to any chemical filtering or other processes. The end result is a rich, luxurious oil that is thick, dark green in color with its natural nutty aroma. In addition, our Tamanu Oil only comes from the nuts of coastal trees rather than inland or man-made plantations. The Ni Vanuatu say that Tamanu Trees that grow like this by the shoreline produce the best Tamanu Oil. Their belief is that these trees draw additional nutrients from the coral. While this long-standing custom belief has never been scientifically tested, it is true that Tamanu Trees that grow by the seaside can be quite magnificent and prolific when it comes to producing extremely high quality, Tamanu Nuts.</span>\r\n[/column]\r\n[column md="6"]\r\n[img type="circle" responsive="true"] <a href="http://tamanu.site/wp-content/uploads/2017/10/pure-tamanu-oil.jpeg"><img src="http://tamanu.site/wp-content/uploads/2017/10/pure-tamanu-oil-300x198.jpeg" alt="" width="300" height="198" class="alignnone size-medium wp-image-90" /></a> [/img]\r\n[/column]\r\n[/row]', 'Esileht', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-10-26 05:31:06', '2017-10-26 05:31:06', '', 5, 'http://tamanu.site/uncategorized/5-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2017-10-26 05:31:58', '2017-10-26 05:31:58', '[row]\r\n[column md="6"]\r\n<span>Volcanic Earth Tamanu Oil is the best brand of Tamanu Oil on the market today because of the consistent high quality of the product. It is certified organic, 100% pure Tamanu Oil that is undiluted, has no additives whatsoever and is never subjected to any chemical filtering or other processes. The end result is a rich, luxurious oil that is thick, dark green in color with its natural nutty aroma. In addition, our Tamanu Oil only comes from the nuts of coastal trees rather than inland or man-made plantations. The Ni Vanuatu say that Tamanu Trees that grow like this by the shoreline produce the best Tamanu Oil. Their belief is that these trees draw additional nutrients from the coral. While this long-standing custom belief has never been scientifically tested, it is true that Tamanu Trees that grow by the seaside can be quite magnificent and prolific when it comes to producing extremely high quality, Tamanu Nuts.</span>\r\n[/column]\r\n[column md="6"]\r\n[img type="rounded" responsive="true"] <a href="http://tamanu.site/wp-content/uploads/2017/10/pure-tamanu-oil.jpeg"><img src="http://tamanu.site/wp-content/uploads/2017/10/pure-tamanu-oil-300x198.jpeg" alt="" width="300" height="198" class="alignnone size-medium wp-image-90" /></a> [/img]\r\n[/column]\r\n[/row]', 'Esileht', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-10-26 05:31:58', '2017-10-26 05:31:58', '', 5, 'http://tamanu.site/uncategorized/5-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2017-10-26 05:34:36', '2017-10-26 05:34:36', '', 'Health spa with massage oil and white flower ,candle on leaf', 'Health spa with massage oil and white flower ,candle on leaf', 'inherit', 'open', 'closed', '', 'health-spa-with-massage-oil-and-white-flower-candle-on-leaf', '', '', '2017-10-26 05:34:36', '2017-10-26 05:34:36', '', 5, 'http://tamanu.site/wp-content/uploads/2017/10/olej-tamanu.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2017-10-26 05:34:41', '2017-10-26 05:34:41', '[row]\r\n[column md="6"]\r\n<span>Volcanic Earth Tamanu Oil is the best brand of Tamanu Oil on the market today because of the consistent high quality of the product. It is certified organic, 100% pure Tamanu Oil that is undiluted, has no additives whatsoever and is never subjected to any chemical filtering or other processes. The end result is a rich, luxurious oil that is thick, dark green in color with its natural nutty aroma. In addition, our Tamanu Oil only comes from the nuts of coastal trees rather than inland or man-made plantations. The Ni Vanuatu say that Tamanu Trees that grow like this by the shoreline produce the best Tamanu Oil. Their belief is that these trees draw additional nutrients from the coral. While this long-standing custom belief has never been scientifically tested, it is true that Tamanu Trees that grow by the seaside can be quite magnificent and prolific when it comes to producing extremely high quality, Tamanu Nuts.</span>\r\n[/column]\r\n[column md="6"]\r\n[img type="rounded" responsive="true"] <a href="http://tamanu.site/wp-content/uploads/2017/10/pure-tamanu-oil.jpeg"><img src="http://tamanu.site/wp-content/uploads/2017/10/pure-tamanu-oil-300x198.jpeg" alt="" width="300" height="198" class="alignnone size-medium wp-image-90" /></a> [/img]\r\n[/column]\r\n[/row]\r\n\r\n[row]\r\n[column md="6"]\r\n\r\n[caption id="attachment_93" align="alignnone" width="300"]<a href="http://tamanu.site/wp-content/uploads/2017/10/olej-tamanu.jpg"><img src="http://tamanu.site/wp-content/uploads/2017/10/olej-tamanu-300x217.jpg" alt="" width="300" height="217" class="size-medium wp-image-93" /></a> Health spa with massage oil and white flower ,candle on leaf[/caption]\r\n\r\n[/column]\r\n[column md="6"]\r\n<span>Stay away from black colored or lightly-colored or yellowish-coloured oil. None of these are the real deal and this is why they are so cheap. There is a lot of rubbish oil coming out of Vietnam especially. Black Tamanu Oil occurs where the Tamanu Nuts have been thrown into the fire to try and speed up the curing process. However, all this does is burn the nut and the resulting oil which seriously diminishes its natural, skin-healing and anti-aging properties. Oh and then we have the yellow Tamanu Oil that has been either diluted down with a cheap carrier oil or in some cases, the product has been put through a chemical filtering process. Yes the oil may be a lighter oil but again the product has been chemically stripped of some of its natural components making it inferior and much less effective. While 100% pure Tamanu Oil is expensive, it is the only cure that we know of for psoriasis and things like cystic acne. If you want fast, effective results then you have to be willing to buy only the best quality Tamanu Oil and that comes from Volcanic Earth.</span>\r\n[/column]\r\n[/row]', 'Esileht', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-10-26 05:34:41', '2017-10-26 05:34:41', '', 5, 'http://tamanu.site/uncategorized/5-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2017-10-26 05:35:02', '2017-10-26 05:35:02', '[row]\r\n[column md="6"]\r\n<span>Volcanic Earth Tamanu Oil is the best brand of Tamanu Oil on the market today because of the consistent high quality of the product. It is certified organic, 100% pure Tamanu Oil that is undiluted, has no additives whatsoever and is never subjected to any chemical filtering or other processes. The end result is a rich, luxurious oil that is thick, dark green in color with its natural nutty aroma. In addition, our Tamanu Oil only comes from the nuts of coastal trees rather than inland or man-made plantations. The Ni Vanuatu say that Tamanu Trees that grow like this by the shoreline produce the best Tamanu Oil. Their belief is that these trees draw additional nutrients from the coral. While this long-standing custom belief has never been scientifically tested, it is true that Tamanu Trees that grow by the seaside can be quite magnificent and prolific when it comes to producing extremely high quality, Tamanu Nuts.</span>\r\n[/column]\r\n[column md="6"]\r\n[img type="rounded" responsive="true"] <a href="http://tamanu.site/wp-content/uploads/2017/10/pure-tamanu-oil.jpeg"><img src="http://tamanu.site/wp-content/uploads/2017/10/pure-tamanu-oil-300x198.jpeg" alt="" width="300" height="198" class="alignnone size-medium wp-image-90" /></a> [/img]\r\n[/column]\r\n[/row]\r\n\r\n[row]\r\n[column md="6"]\r\n\r\n<a href="http://tamanu.site/wp-content/uploads/2017/10/olej-tamanu.jpg"><img src="http://tamanu.site/wp-content/uploads/2017/10/olej-tamanu-300x217.jpg" alt="" width="300" height="217" class="size-medium wp-image-93" /></a>\r\n\r\n[/column]\r\n[column md="6"]\r\n<span>Stay away from black colored or lightly-colored or yellowish-coloured oil. None of these are the real deal and this is why they are so cheap. There is a lot of rubbish oil coming out of Vietnam especially. Black Tamanu Oil occurs where the Tamanu Nuts have been thrown into the fire to try and speed up the curing process. However, all this does is burn the nut and the resulting oil which seriously diminishes its natural, skin-healing and anti-aging properties. Oh and then we have the yellow Tamanu Oil that has been either diluted down with a cheap carrier oil or in some cases, the product has been put through a chemical filtering process. Yes the oil may be a lighter oil but again the product has been chemically stripped of some of its natural components making it inferior and much less effective. While 100% pure Tamanu Oil is expensive, it is the only cure that we know of for psoriasis and things like cystic acne. If you want fast, effective results then you have to be willing to buy only the best quality Tamanu Oil and that comes from Volcanic Earth.</span>\r\n[/column]\r\n[/row]', 'Esileht', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-10-26 05:35:02', '2017-10-26 05:35:02', '', 5, 'http://tamanu.site/uncategorized/5-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2017-10-27 15:34:03', '2017-10-27 15:34:03', '[row]\r\n[column md="6"]\r\n<span>Volcanic Earth Tamanu Oil is the best brand of Tamanu Oil on the market today because of the consistent high quality of the product. It is certified organic, 100% pure Tamanu Oil that is undiluted, has no additives whatsoever and is never subjected to any chemical filtering or other processes. The end result is a rich, luxurious oil that is thick, dark green in color with its natural nutty aroma. In addition, our Tamanu Oil only comes from the nuts of coastal trees rather than inland or man-made plantations. The Ni Vanuatu say that Tamanu Trees that grow like this by the shoreline produce the best Tamanu Oil. Their belief is that these trees draw additional nutrients from the coral. While this long-standing custom belief has never been scientifically tested, it is true that Tamanu Trees that grow by the seaside can be quite magnificent and prolific when it comes to producing extremely high quality, Tamanu Nuts.</span>\r\n[/column]\r\n[column md="6"]\r\n[img type="rounded" responsive="true"] <a href="http://tamanu.site/wp-content/uploads/2017/10/pure-tamanu-oil.jpeg"><img src="http://tamanu.site/wp-content/uploads/2017/10/pure-tamanu-oil.jpeg" alt="" width="470" height="310" class="alignnone wp-image-90 size-full" /></a> [/img]\r\n[/column]\r\n[/row]\r\n\r\n[row]\r\n[column md="6"]\r\n\r\n<a href="http://tamanu.site/wp-content/uploads/2017/10/olej-tamanu.jpg"><img src="http://tamanu.site/wp-content/uploads/2017/10/olej-tamanu.jpg" alt="" width="900" height="652" class="alignnone wp-image-93 size-full" /></a>\r\n\r\n[/column]\r\n[column md="6"]\r\n<span>Stay away from black colored or lightly-colored or yellowish-coloured oil. None of these are the real deal and this is why they are so cheap. There is a lot of rubbish oil coming out of Vietnam especially. Black Tamanu Oil occurs where the Tamanu Nuts have been thrown into the fire to try and speed up the curing process. However, all this does is burn the nut and the resulting oil which seriously diminishes its natural, skin-healing and anti-aging properties. Oh and then we have the yellow Tamanu Oil that has been either diluted down with a cheap carrier oil or in some cases, the product has been put through a chemical filtering process. Yes the oil may be a lighter oil but again the product has been chemically stripped of some of its natural components making it inferior and much less effective. While 100% pure Tamanu Oil is expensive, it is the only cure that we know of for psoriasis and things like cystic acne. If you want fast, effective results then you have to be willing to buy only the best quality Tamanu Oil and that comes from Volcanic Earth.</span>\r\n[/column]\r\n[/row]', 'Esileht', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-10-27 15:34:03', '2017-10-27 15:34:03', '', 5, 'http://tamanu.site/uncategorized/5-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2017-10-27 16:04:11', '2017-10-27 16:04:11', '', 'about_us1', '', 'inherit', 'open', 'closed', '', 'about_us1', '', '', '2017-10-27 16:04:11', '2017-10-27 16:04:11', '', 5, 'http://tamanu.site/wp-content/uploads/2017/10/about_us1.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2017-10-27 16:04:11', '2017-10-27 16:04:11', '', 'about_us2', '', 'inherit', 'open', 'closed', '', 'about_us2', '', '', '2017-10-27 16:04:11', '2017-10-27 16:04:11', '', 5, 'http://tamanu.site/wp-content/uploads/2017/10/about_us2.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2017-10-27 16:05:38', '2017-10-27 16:05:38', '[row]\r\n[column md="6"]\r\n<p>Volcanic Earth Tamanu Oil is the best brand of Tamanu Oil on the market today because of the consistent high quality of the product. It is certified organic, 100% pure Tamanu Oil that is undiluted, has no additives whatsoever and is never subjected to any chemical filtering or other processes. The end result is a rich, luxurious oil that is thick, dark green in color with its natural nutty aroma. In addition, our Tamanu Oil only comes from the nuts of coastal trees rather than inland or man-made plantations. The Ni Vanuatu say that Tamanu Trees that grow like this by the shoreline produce the best Tamanu Oil. Their belief is that these trees draw additional nutrients from the coral. While this long-standing custom belief has never been scientifically tested, it is true that Tamanu Trees that grow by the seaside can be quite magnificent and prolific when it comes to producing extremely high quality, Tamanu Nuts.</p>\r\n[/column]\r\n[column md="6"]\r\n<img src="http://tamanu.site/wp-content/uploads/2017/10/about_us1.jpg" alt="" class="alignnone wp-image-97 size-full" />\r\n[/column]\r\n[/row]\r\n\r\n[row]\r\n[column md="6"]\r\n<img src="http://tamanu.site/wp-content/uploads/2017/10/about_us2.jpg" alt="" class="alignnone wp-image-97 size-full" />\r\n[/column]\r\n[column md="6"]\r\n<p>Stay away from black colored or lightly-colored or yellowish-coloured oil. None of these are the real deal and this is why they are so cheap. There is a lot of rubbish oil coming out of Vietnam especially. Black Tamanu Oil occurs where the Tamanu Nuts have been thrown into the fire to try and speed up the curing process. However, all this does is burn the nut and the resulting oil which seriously diminishes its natural, skin-healing and anti-aging properties. Oh and then we have the yellow Tamanu Oil that has been either diluted down with a cheap carrier oil or in some cases, the product has been put through a chemical filtering process. Yes the oil may be a lighter oil but again the product has been chemically stripped of some of its natural components making it inferior and much less effective. While 100% pure Tamanu Oil is expensive, it is the only cure that we know of for psoriasis and things like cystic acne. If you want fast, effective results then you have to be willing to buy only the best quality Tamanu Oil and that comes from Volcanic Earth.</p>\r\n[/column]\r\n[/row]', 'Esileht', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-10-27 16:05:38', '2017-10-27 16:05:38', '', 5, 'http://tamanu.site/uncategorized/5-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2017-10-27 16:06:59', '2017-10-27 16:06:59', '[row]\r\n[column md="6"]\r\n<p>Volcanic Earth Tamanu Oil is the best brand of Tamanu Oil on the market today because of the consistent high quality of the product. It is certified organic, 100% pure Tamanu Oil that is undiluted, has no additives whatsoever and is never subjected to any chemical filtering or other processes. The end result is a rich, luxurious oil that is thick, dark green in color with its natural nutty aroma. In addition, our Tamanu Oil only comes from the nuts of coastal trees rather than inland or man-made plantations. The Ni Vanuatu say that Tamanu Trees that grow like this by the shoreline produce the best Tamanu Oil. Their belief is that these trees draw additional nutrients from the coral. While this long-standing custom belief has never been scientifically tested, it is true that Tamanu Trees that grow by the seaside can be quite magnificent and prolific when it comes to producing extremely high quality, Tamanu Nuts.</p>\r\n[/column]\r\n[column md="6"]\r\n[img type="circle" responsive="true"]<img src="http://tamanu.site/wp-content/uploads/2017/10/about_us1.jpg" alt="" class="alignnone wp-image-97 size-full" />[/img]\r\n[/column]\r\n[/row]\r\n\r\n[row]\r\n[img type="circle" responsive="true"]<img src="http://tamanu.site/wp-content/uploads/2017/10/about_us2.jpg" alt="" class="alignnone wp-image-97 size-full" />[/img]\r\n[/column]\r\n[column md="6"]\r\n<p>Stay away from black colored or lightly-colored or yellowish-coloured oil. None of these are the real deal and this is why they are so cheap. There is a lot of rubbish oil coming out of Vietnam especially. Black Tamanu Oil occurs where the Tamanu Nuts have been thrown into the fire to try and speed up the curing process. However, all this does is burn the nut and the resulting oil which seriously diminishes its natural, skin-healing and anti-aging properties. Oh and then we have the yellow Tamanu Oil that has been either diluted down with a cheap carrier oil or in some cases, the product has been put through a chemical filtering process. Yes the oil may be a lighter oil but again the product has been chemically stripped of some of its natural components making it inferior and much less effective. While 100% pure Tamanu Oil is expensive, it is the only cure that we know of for psoriasis and things like cystic acne. If you want fast, effective results then you have to be willing to buy only the best quality Tamanu Oil and that comes from Volcanic Earth.</p>\r\n[/column]\r\n[/row]', 'Esileht', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-10-27 16:06:59', '2017-10-27 16:06:59', '', 5, 'http://tamanu.site/uncategorized/5-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2017-10-27 16:07:47', '2017-10-27 16:07:47', '[row]\r\n[column md="6"]\r\n<p>Volcanic Earth Tamanu Oil is the best brand of Tamanu Oil on the market today because of the consistent high quality of the product. It is certified organic, 100% pure Tamanu Oil that is undiluted, has no additives whatsoever and is never subjected to any chemical filtering or other processes. The end result is a rich, luxurious oil that is thick, dark green in color with its natural nutty aroma. In addition, our Tamanu Oil only comes from the nuts of coastal trees rather than inland or man-made plantations. The Ni Vanuatu say that Tamanu Trees that grow like this by the shoreline produce the best Tamanu Oil. Their belief is that these trees draw additional nutrients from the coral. While this long-standing custom belief has never been scientifically tested, it is true that Tamanu Trees that grow by the seaside can be quite magnificent and prolific when it comes to producing extremely high quality, Tamanu Nuts.</p>\r\n[/column]\r\n[column md="6"]\r\n[img type="circle" responsive="true"]<img src="http://tamanu.site/wp-content/uploads/2017/10/about_us1.jpg" alt="" />[/img]\r\n[/column]\r\n[/row]\r\n\r\n[row]\r\n[column md="6"]\r\n[img type="circle" responsive="true"]<img src="http://tamanu.site/wp-content/uploads/2017/10/about_us2.jpg" />[/img]\r\n[/column]\r\n[column md="6"]\r\n<p>Stay away from black colored or lightly-colored or yellowish-coloured oil. None of these are the real deal and this is why they are so cheap. There is a lot of rubbish oil coming out of Vietnam especially. Black Tamanu Oil occurs where the Tamanu Nuts have been thrown into the fire to try and speed up the curing process. However, all this does is burn the nut and the resulting oil which seriously diminishes its natural, skin-healing and anti-aging properties. Oh and then we have the yellow Tamanu Oil that has been either diluted down with a cheap carrier oil or in some cases, the product has been put through a chemical filtering process. Yes the oil may be a lighter oil but again the product has been chemically stripped of some of its natural components making it inferior and much less effective. While 100% pure Tamanu Oil is expensive, it is the only cure that we know of for psoriasis and things like cystic acne. If you want fast, effective results then you have to be willing to buy only the best quality Tamanu Oil and that comes from Volcanic Earth.</p>\r\n[/column]\r\n[/row]', 'Esileht', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-10-27 16:07:47', '2017-10-27 16:07:47', '', 5, 'http://tamanu.site/uncategorized/5-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2017-10-27 16:08:28', '2017-10-27 16:08:28', '[row]\r\n[column md="6"]\r\n<p>Volcanic Earth Tamanu Oil is the best brand of Tamanu Oil on the market today because of the consistent high quality of the product. It is certified organic, 100% pure Tamanu Oil that is undiluted, has no additives whatsoever and is never subjected to any chemical filtering or other processes. The end result is a rich, luxurious oil that is thick, dark green in color with its natural nutty aroma. In addition, our Tamanu Oil only comes from the nuts of coastal trees rather than inland or man-made plantations. The Ni Vanuatu say that Tamanu Trees that grow like this by the shoreline produce the best Tamanu Oil. Their belief is that these trees draw additional nutrients from the coral. While this long-standing custom belief has never been scientifically tested, it is true that Tamanu Trees that grow by the seaside can be quite magnificent and prolific when it comes to producing extremely high quality, Tamanu Nuts.</p>\r\n[/column]\r\n[column md="6"]\r\n[img type="rounded" responsive="true"]<img src="http://tamanu.site/wp-content/uploads/2017/10/about_us1.jpg" alt="" />[/img]\r\n[/column]\r\n[/row]\r\n\r\n[row]\r\n[column md="6"]\r\n[img type="rounded" responsive="true"]<img src="http://tamanu.site/wp-content/uploads/2017/10/about_us2.jpg" />[/img]\r\n[/column]\r\n[column md="6"]\r\n<p>Stay away from black colored or lightly-colored or yellowish-coloured oil. None of these are the real deal and this is why they are so cheap. There is a lot of rubbish oil coming out of Vietnam especially. Black Tamanu Oil occurs where the Tamanu Nuts have been thrown into the fire to try and speed up the curing process. However, all this does is burn the nut and the resulting oil which seriously diminishes its natural, skin-healing and anti-aging properties. Oh and then we have the yellow Tamanu Oil that has been either diluted down with a cheap carrier oil or in some cases, the product has been put through a chemical filtering process. Yes the oil may be a lighter oil but again the product has been chemically stripped of some of its natural components making it inferior and much less effective. While 100% pure Tamanu Oil is expensive, it is the only cure that we know of for psoriasis and things like cystic acne. If you want fast, effective results then you have to be willing to buy only the best quality Tamanu Oil and that comes from Volcanic Earth.</p>\r\n[/column]\r\n[/row]', 'Esileht', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-10-27 16:08:28', '2017-10-27 16:08:28', '', 5, 'http://tamanu.site/uncategorized/5-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2017-10-27 16:09:11', '2017-10-27 16:09:11', '[row]\r\n[column md="8"]\r\n<p>Volcanic Earth Tamanu Oil is the best brand of Tamanu Oil on the market today because of the consistent high quality of the product. It is certified organic, 100% pure Tamanu Oil that is undiluted, has no additives whatsoever and is never subjected to any chemical filtering or other processes. The end result is a rich, luxurious oil that is thick, dark green in color with its natural nutty aroma. In addition, our Tamanu Oil only comes from the nuts of coastal trees rather than inland or man-made plantations. The Ni Vanuatu say that Tamanu Trees that grow like this by the shoreline produce the best Tamanu Oil. Their belief is that these trees draw additional nutrients from the coral. While this long-standing custom belief has never been scientifically tested, it is true that Tamanu Trees that grow by the seaside can be quite magnificent and prolific when it comes to producing extremely high quality, Tamanu Nuts.</p>\r\n[/column]\r\n[column md="4"]\r\n[img type="rounded" responsive="true"]<img src="http://tamanu.site/wp-content/uploads/2017/10/about_us1.jpg" alt="" />[/img]\r\n[/column]\r\n[/row]\r\n\r\n[row]\r\n[column md="6"]\r\n[img type="rounded" responsive="true"]<img src="http://tamanu.site/wp-content/uploads/2017/10/about_us2.jpg" />[/img]\r\n[/column]\r\n[column md="6"]\r\n<p>Stay away from black colored or lightly-colored or yellowish-coloured oil. None of these are the real deal and this is why they are so cheap. There is a lot of rubbish oil coming out of Vietnam especially. Black Tamanu Oil occurs where the Tamanu Nuts have been thrown into the fire to try and speed up the curing process. However, all this does is burn the nut and the resulting oil which seriously diminishes its natural, skin-healing and anti-aging properties. Oh and then we have the yellow Tamanu Oil that has been either diluted down with a cheap carrier oil or in some cases, the product has been put through a chemical filtering process. Yes the oil may be a lighter oil but again the product has been chemically stripped of some of its natural components making it inferior and much less effective. While 100% pure Tamanu Oil is expensive, it is the only cure that we know of for psoriasis and things like cystic acne. If you want fast, effective results then you have to be willing to buy only the best quality Tamanu Oil and that comes from Volcanic Earth.</p>\r\n[/column]\r\n[/row]', 'Esileht', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-10-27 16:09:11', '2017-10-27 16:09:11', '', 5, 'http://tamanu.site/uncategorized/5-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2017-10-27 16:09:23', '2017-10-27 16:09:23', '[row]\r\n[column md="7"]\r\n<p>Volcanic Earth Tamanu Oil is the best brand of Tamanu Oil on the market today because of the consistent high quality of the product. It is certified organic, 100% pure Tamanu Oil that is undiluted, has no additives whatsoever and is never subjected to any chemical filtering or other processes. The end result is a rich, luxurious oil that is thick, dark green in color with its natural nutty aroma. In addition, our Tamanu Oil only comes from the nuts of coastal trees rather than inland or man-made plantations. The Ni Vanuatu say that Tamanu Trees that grow like this by the shoreline produce the best Tamanu Oil. Their belief is that these trees draw additional nutrients from the coral. While this long-standing custom belief has never been scientifically tested, it is true that Tamanu Trees that grow by the seaside can be quite magnificent and prolific when it comes to producing extremely high quality, Tamanu Nuts.</p>\r\n[/column]\r\n[column md="5"]\r\n[img type="rounded" responsive="true"]<img src="http://tamanu.site/wp-content/uploads/2017/10/about_us1.jpg" alt="" />[/img]\r\n[/column]\r\n[/row]\r\n\r\n[row]\r\n[column md="6"]\r\n[img type="rounded" responsive="true"]<img src="http://tamanu.site/wp-content/uploads/2017/10/about_us2.jpg" />[/img]\r\n[/column]\r\n[column md="6"]\r\n<p>Stay away from black colored or lightly-colored or yellowish-coloured oil. None of these are the real deal and this is why they are so cheap. There is a lot of rubbish oil coming out of Vietnam especially. Black Tamanu Oil occurs where the Tamanu Nuts have been thrown into the fire to try and speed up the curing process. However, all this does is burn the nut and the resulting oil which seriously diminishes its natural, skin-healing and anti-aging properties. Oh and then we have the yellow Tamanu Oil that has been either diluted down with a cheap carrier oil or in some cases, the product has been put through a chemical filtering process. Yes the oil may be a lighter oil but again the product has been chemically stripped of some of its natural components making it inferior and much less effective. While 100% pure Tamanu Oil is expensive, it is the only cure that we know of for psoriasis and things like cystic acne. If you want fast, effective results then you have to be willing to buy only the best quality Tamanu Oil and that comes from Volcanic Earth.</p>\r\n[/column]\r\n[/row]', 'Esileht', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-10-27 16:09:23', '2017-10-27 16:09:23', '', 5, 'http://tamanu.site/uncategorized/5-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2017-10-27 16:10:00', '2017-10-27 16:10:00', '[row]\r\n[column md="6"]\r\n<p>Volcanic Earth Tamanu Oil is the best brand of Tamanu Oil on the market today because of the consistent high quality of the product. It is certified organic, 100% pure Tamanu Oil that is undiluted, has no additives whatsoever and is never subjected to any chemical filtering or other processes. The end result is a rich, luxurious oil that is thick, dark green in color with its natural nutty aroma. In addition, our Tamanu Oil only comes from the nuts of coastal trees rather than inland or man-made plantations. The Ni Vanuatu say that Tamanu Trees that grow like this by the shoreline produce the best Tamanu Oil. Their belief is that these trees draw additional nutrients from the coral. While this long-standing custom belief has never been scientifically tested, it is true that Tamanu Trees that grow by the seaside can be quite magnificent and prolific when it comes to producing extremely high quality, Tamanu Nuts.</p>\r\n[/column]\r\n[column md="1"]\r\n[/column]\r\n[column md="4"]\r\n[img type="rounded" responsive="true"]<img src="http://tamanu.site/wp-content/uploads/2017/10/about_us1.jpg" alt="" />[/img]\r\n[/column]\r\n[/row]\r\n\r\n[row]\r\n[column md="6"]\r\n[img type="rounded" responsive="true"]<img src="http://tamanu.site/wp-content/uploads/2017/10/about_us2.jpg" />[/img]\r\n[/column]\r\n[column md="1"]\r\n[/column]\r\n[column md="5"]\r\n<p>Stay away from black colored or lightly-colored or yellowish-coloured oil. None of these are the real deal and this is why they are so cheap. There is a lot of rubbish oil coming out of Vietnam especially. Black Tamanu Oil occurs where the Tamanu Nuts have been thrown into the fire to try and speed up the curing process. However, all this does is burn the nut and the resulting oil which seriously diminishes its natural, skin-healing and anti-aging properties. Oh and then we have the yellow Tamanu Oil that has been either diluted down with a cheap carrier oil or in some cases, the product has been put through a chemical filtering process. Yes the oil may be a lighter oil but again the product has been chemically stripped of some of its natural components making it inferior and much less effective. While 100% pure Tamanu Oil is expensive, it is the only cure that we know of for psoriasis and things like cystic acne. If you want fast, effective results then you have to be willing to buy only the best quality Tamanu Oil and that comes from Volcanic Earth.</p>\r\n[/column]\r\n[/row]', 'Esileht', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-10-27 16:10:00', '2017-10-27 16:10:00', '', 5, 'http://tamanu.site/uncategorized/5-revision-v1/', 0, 'revision', '', 0) ;
INSERT INTO `wcbd_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(106, 1, '2017-10-27 16:10:15', '2017-10-27 16:10:15', '[row]\r\n[column md="6"]\r\n<p>Volcanic Earth Tamanu Oil is the best brand of Tamanu Oil on the market today because of the consistent high quality of the product. It is certified organic, 100% pure Tamanu Oil that is undiluted, has no additives whatsoever and is never subjected to any chemical filtering or other processes. The end result is a rich, luxurious oil that is thick, dark green in color with its natural nutty aroma. In addition, our Tamanu Oil only comes from the nuts of coastal trees rather than inland or man-made plantations. The Ni Vanuatu say that Tamanu Trees that grow like this by the shoreline produce the best Tamanu Oil. Their belief is that these trees draw additional nutrients from the coral. While this long-standing custom belief has never been scientifically tested, it is true that Tamanu Trees that grow by the seaside can be quite magnificent and prolific when it comes to producing extremely high quality, Tamanu Nuts.</p>\r\n[/column]\r\n[column md="1"]\r\n[/column]\r\n[column md="4"]\r\n[img type="rounded" responsive="true"]<img src="http://tamanu.site/wp-content/uploads/2017/10/about_us1.jpg" alt="" />[/img]\r\n[/column]\r\n[/row]\r\n\r\n[row]\r\n[column md="5"]\r\n[img type="rounded" responsive="true"]<img src="http://tamanu.site/wp-content/uploads/2017/10/about_us2.jpg" />[/img]\r\n[/column]\r\n[column md="1"]\r\n[/column]\r\n[column md="6"]\r\n<p>Stay away from black colored or lightly-colored or yellowish-coloured oil. None of these are the real deal and this is why they are so cheap. There is a lot of rubbish oil coming out of Vietnam especially. Black Tamanu Oil occurs where the Tamanu Nuts have been thrown into the fire to try and speed up the curing process. However, all this does is burn the nut and the resulting oil which seriously diminishes its natural, skin-healing and anti-aging properties. Oh and then we have the yellow Tamanu Oil that has been either diluted down with a cheap carrier oil or in some cases, the product has been put through a chemical filtering process. Yes the oil may be a lighter oil but again the product has been chemically stripped of some of its natural components making it inferior and much less effective. While 100% pure Tamanu Oil is expensive, it is the only cure that we know of for psoriasis and things like cystic acne. If you want fast, effective results then you have to be willing to buy only the best quality Tamanu Oil and that comes from Volcanic Earth.</p>\r\n[/column]\r\n[/row]', 'Esileht', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-10-27 16:10:15', '2017-10-27 16:10:15', '', 5, 'http://tamanu.site/uncategorized/5-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2017-10-27 16:11:00', '2017-10-27 16:11:00', '[row]\r\n[column md="6"]\r\n<p>Volcanic Earth Tamanu Oil is the best brand of Tamanu Oil on the market today because of the consistent high quality of the product. It is certified organic, 100% pure Tamanu Oil that is undiluted, has no additives whatsoever and is never subjected to any chemical filtering or other processes. The end result is a rich, luxurious oil that is thick, dark green in color with its natural nutty aroma. In addition, our Tamanu Oil only comes from the nuts of coastal trees rather than inland or man-made plantations. The Ni Vanuatu say that Tamanu Trees that grow like this by the shoreline produce the best Tamanu Oil. Their belief is that these trees draw additional nutrients from the coral. While this long-standing custom belief has never been scientifically tested, it is true that Tamanu Trees that grow by the seaside can be quite magnificent and prolific when it comes to producing extremely high quality, Tamanu Nuts.</p>\r\n[/column]\r\n[column md="2"]\r\n[/column]\r\n[column md="4"]\r\n[img type="rounded" responsive="true"]<img src="http://tamanu.site/wp-content/uploads/2017/10/about_us1.jpg" alt="" />[/img]\r\n[/column]\r\n[/row]\r\n\r\n[row]\r\n[column md="4"]\r\n[img type="rounded" responsive="true"]<img src="http://tamanu.site/wp-content/uploads/2017/10/about_us2.jpg" />[/img]\r\n[/column]\r\n[column md="2"]\r\n[/column]\r\n[column md="6"]\r\n<p>Stay away from black colored or lightly-colored or yellowish-coloured oil. None of these are the real deal and this is why they are so cheap. There is a lot of rubbish oil coming out of Vietnam especially. Black Tamanu Oil occurs where the Tamanu Nuts have been thrown into the fire to try and speed up the curing process. However, all this does is burn the nut and the resulting oil which seriously diminishes its natural, skin-healing and anti-aging properties. Oh and then we have the yellow Tamanu Oil that has been either diluted down with a cheap carrier oil or in some cases, the product has been put through a chemical filtering process. Yes the oil may be a lighter oil but again the product has been chemically stripped of some of its natural components making it inferior and much less effective. While 100% pure Tamanu Oil is expensive, it is the only cure that we know of for psoriasis and things like cystic acne. If you want fast, effective results then you have to be willing to buy only the best quality Tamanu Oil and that comes from Volcanic Earth.</p>\r\n[/column]\r\n[/row]', 'Esileht', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-10-27 16:11:00', '2017-10-27 16:11:00', '', 5, 'http://tamanu.site/uncategorized/5-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2017-10-27 16:11:15', '2017-10-27 16:11:15', '[row]\r\n[column md="6"]\r\n<p>Volcanic Earth Tamanu Oil is the best brand of Tamanu Oil on the market today because of the consistent high quality of the product. It is certified organic, 100% pure Tamanu Oil that is undiluted, has no additives whatsoever and is never subjected to any chemical filtering or other processes. The end result is a rich, luxurious oil that is thick, dark green in color with its natural nutty aroma. In addition, our Tamanu Oil only comes from the nuts of coastal trees rather than inland or man-made plantations. The Ni Vanuatu say that Tamanu Trees that grow like this by the shoreline produce the best Tamanu Oil. Their belief is that these trees draw additional nutrients from the coral. While this long-standing custom belief has never been scientifically tested, it is true that Tamanu Trees that grow by the seaside can be quite magnificent and prolific when it comes to producing extremely high quality, Tamanu Nuts.</p>\r\n[/column]\r\n[column md="1"]\r\n[/column]\r\n[column md="5"]\r\n[img type="rounded" responsive="true"]<img src="http://tamanu.site/wp-content/uploads/2017/10/about_us1.jpg" alt="" />[/img]\r\n[/column]\r\n[/row]\r\n\r\n[row]\r\n[column md="5"]\r\n[img type="rounded" responsive="true"]<img src="http://tamanu.site/wp-content/uploads/2017/10/about_us2.jpg" />[/img]\r\n[/column]\r\n[column md="1"]\r\n[/column]\r\n[column md="6"]\r\n<p>Stay away from black colored or lightly-colored or yellowish-coloured oil. None of these are the real deal and this is why they are so cheap. There is a lot of rubbish oil coming out of Vietnam especially. Black Tamanu Oil occurs where the Tamanu Nuts have been thrown into the fire to try and speed up the curing process. However, all this does is burn the nut and the resulting oil which seriously diminishes its natural, skin-healing and anti-aging properties. Oh and then we have the yellow Tamanu Oil that has been either diluted down with a cheap carrier oil or in some cases, the product has been put through a chemical filtering process. Yes the oil may be a lighter oil but again the product has been chemically stripped of some of its natural components making it inferior and much less effective. While 100% pure Tamanu Oil is expensive, it is the only cure that we know of for psoriasis and things like cystic acne. If you want fast, effective results then you have to be willing to buy only the best quality Tamanu Oil and that comes from Volcanic Earth.</p>\r\n[/column]\r\n[/row]', 'Esileht', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-10-27 16:11:15', '2017-10-27 16:11:15', '', 5, 'http://tamanu.site/uncategorized/5-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2017-10-27 18:11:21', '2017-10-27 18:11:21', 'Timmtimm', 'Test teine toode', 'Väga hea toode soodse hinnaga!!', 'publish', 'open', 'closed', '', 'test-teine-toode', '', '', '2017-10-28 10:03:27', '2017-10-28 10:03:27', '', 0, 'http://tamanu.site/?post_type=product&#038;p=114', 0, 'product', '', 0),
(115, 1, '2017-10-27 18:11:16', '2017-10-27 18:11:16', '', 'Volcanic-Earth-Tamanu-Oil-140ml.jpg_350x350', '', 'inherit', 'open', 'closed', '', 'volcanic-earth-tamanu-oil-140ml-jpg_350x350', '', '', '2017-10-27 18:11:16', '2017-10-27 18:11:16', '', 114, 'http://tamanu.site/wp-content/uploads/2017/10/Volcanic-Earth-Tamanu-Oil-140ml.jpg_350x350.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2017-10-27 18:12:13', '2017-10-27 18:12:13', 'asdfedfasdf', 'Kolmas toode', 'Lorem ipsum, lorem ipsum', 'publish', 'open', 'closed', '', 'kolmas-toode', '', '', '2017-10-28 10:05:24', '2017-10-28 10:05:24', '', 0, 'http://tamanu.site/?post_type=product&#038;p=116', 0, 'product', '', 0),
(117, 1, '2017-10-27 18:12:07', '2017-10-27 18:12:07', '', 'il_340x270.858452438_n64j', '', 'inherit', 'open', 'closed', '', 'il_340x270-858452438_n64j', '', '', '2017-10-27 18:12:07', '2017-10-27 18:12:07', '', 116, 'http://tamanu.site/wp-content/uploads/2017/10/il_340x270.858452438_n64j.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2017-10-27 18:13:52', '2017-10-27 18:13:52', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus pretium mi, et tempus ipsum tempus ac. Integer leo neque, feugiat rutrum magna blandit, rhoncus lobortis velit. Phasellus diam nisi, accumsan sit amet auctor a, elementum at mi. Morbi cursus faucibus condimentum. Vestibulum ut est et tellus facilisis pellentesque. Fusce non viverra nisi, sit amet lacinia ligula. Curabitur feugiat, urna maximus molestie accumsan, odio mauris bibendum quam, a gravida orci odio nec felis. Mauris efficitur aliquam justo eu blandit. Nunc lectus nunc, mollis et pulvinar eget, vulputate quis ex. Quisque vitae vulputate dolor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec tempus nisl quis mauris auctor dictum. Cras facilisis luctus mauris, sed blandit ante ultricies sed.\r\n\r\nInterdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam pharetra tempus erat porta dapibus. Quisque eleifend, massa eget fringilla sagittis, mi velit semper tellus, vitae pellentesque nisi ex sagittis diam. Quisque blandit ut dolor mattis auctor. Quisque ultricies, orci ac sagittis congue, lacus mauris ornare nunc, in elementum velit lectus nec augue. Nullam eget elit magna. Nam eget velit nulla.\r\n\r\nNulla mattis orci quam. Etiam facilisis nunc vitae viverra ultrices. Maecenas vulputate, leo ac egestas lobortis, sapien dui auctor risus, quis sollicitudin erat dui in orci. Aenean ultricies vel elit quis sodales. Aliquam dictum at augue eu ornare. Quisque malesuada volutpat dolor ut ultrices. Quisque eu purus tincidunt, varius velit et, tempus sapien. Morbi sit amet arcu erat. Praesent semper lectus eros, a dictum dui lobortis ut. Vivamus dolor eros, fermentum ut tortor at, vulputate semper nunc. Aliquam faucibus tellus non nulla scelerisque, a ultricies lectus tempus. Fusce commodo felis urna, ut tincidunt odio feugiat quis. Mauris at mattis augue, eu faucibus lacus. Sed non lorem sed arcu dapibus vulputate ut ac urna.\r\n\r\nPraesent laoreet metus vel velit ornare, nec iaculis erat fermentum. Donec sed mauris mollis, pretium mi a, tincidunt metus. Nulla facilisi. Mauris sit amet enim eu arcu malesuada porttitor. Nunc nec tincidunt justo. Nam aliquam, turpis eu gravida venenatis, ante turpis tristique lacus, at commodo urna urna et eros. Ut sed egestas neque. Maecenas sagittis posuere tristique. Sed porta dui et dapibus volutpat. Integer malesuada dapibus ipsum, ut bibendum nisl pellentesque eu. Vestibulum ullamcorper accumsan purus, non mattis ex imperdiet a. Aenean hendrerit et massa at eleifend. Vestibulum vel dui nisi. Aliquam enim nunc, vulputate malesuada sagittis et, facilisis vitae justo. Etiam hendrerit commodo turpis ac consectetur. Etiam vitae risus eu enim porta gravida eget id nunc.\r\n\r\nInteger iaculis auctor nulla eget imperdiet. Nam pellentesque, sapien sed dignissim tempor, ligula risus dictum massa, sed finibus urna ligula at mauris. Pellentesque at urna laoreet, porta libero sit amet, porttitor sapien. Pellentesque vestibulum elementum velit ut sollicitudin. Suspendisse felis dui, consectetur non velit ac, bibendum tincidunt enim. Pellentesque elit quam, sollicitudin ut enim vitae, suscipit feugiat justo. Donec id dolor consectetur, auctor neque ac, tempor mi. Morbi ac enim congue, pulvinar massa in, placerat elit.\r\n\r\nDuis consequat mi et urna feugiat, ac tristique magna malesuada. Praesent sit amet magna ligula. Phasellus non mattis augue. Quisque nec mattis arcu, at porta enim. Fusce id est non libero rutrum aliquam vel ut lacus. Vivamus quis consectetur massa. Nam imperdiet mauris consequat arcu mollis, at maximus lorem viverra.\r\n\r\nPhasellus molestie nisl vitae vulputate scelerisque. Morbi id malesuada nisl. Fusce placerat libero at mi aliquet commodo. Morbi fermentum elit in nibh convallis, vel molestie ligula tincidunt. In et rhoncus est, sed iaculis leo. Mauris commodo nunc vel eros laoreet, ut egestas metus commodo. Nunc gravida neque nec ultricies luctus. Sed consectetur lorem lectus, at posuere mi fringilla convallis. Cras ligula mi, ornare et ligula sed, fringilla accumsan nunc. Nam suscipit placerat quam, et consequat mauris venenatis sit amet.\r\n\r\nPellentesque vitae augue felis. Vivamus sed dapibus lorem. In hac habitasse platea dictumst. Etiam ipsum ante, cursus non convallis eget, malesuada id elit. Nulla vel placerat sapien. Curabitur eget ligula orci. Aliquam suscipit accumsan leo, ut congue risus auctor id. Nulla vulputate enim a velit placerat elementum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque eu turpis orci.\r\n\r\nAenean mollis metus vitae libero tincidunt pulvinar eget vel felis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In lacinia sem et felis sodales placerat. Vestibulum non nulla vel sem vehicula pulvinar sed at tortor. Praesent mi nisi, placerat nec quam eget, pulvinar congue libero. Sed malesuada eros et nisl pretium lacinia. Nam viverra rutrum ante, et tincidunt lacus ullamcorper vitae. Nullam vel scelerisque nunc. Maecenas at maximus dui. Integer tincidunt at mi vitae aliquet. Cras vel justo in nunc tempus suscipit.\r\n\r\nUt varius, libero quis pretium rhoncus, justo ex porta enim, dictum molestie justo libero et odio. Cras fringilla tortor fermentum dui vestibulum sollicitudin. Sed gravida erat vitae nibh suscipit, quis interdum nisi tincidunt. Fusce urna erat, vulputate sed pharetra sodales, ultrices pellentesque purus. Nulla tortor dui, gravida ut nulla id, pellentesque consectetur purus. Phasellus nec hendrerit purus. Cras pharetra justo in orci porta, id aliquam est faucibus. Maecenas mi velit, molestie malesuada placerat sit amet, imperdiet eget mauris.\r\n\r\nNunc porttitor bibendum odio vitae dapibus. In hac habitasse platea dictumst. Vestibulum et nisi non justo vehicula egestas id in dolor. Vestibulum dapibus, dolor eget vehicula eleifend, sem urna mattis tortor, eu pulvinar nisl est et metus. Duis faucibus feugiat auctor. Curabitur eu purus eu justo feugiat elementum ac at nulla. Proin lacus purus, fringilla in nunc et, tincidunt pretium enim. Etiam quis sodales lorem, in semper purus. Curabitur rhoncus vehicula velit at vestibulum. Maecenas luctus libero vel dui congue posuere sit amet at tellus. Maecenas nunc turpis, volutpat eu commodo sed, interdum maximus ligula. Integer semper leo nibh, ac finibus risus ullamcorper eu.', 'Minu teine postitus', '', 'publish', 'open', 'open', '', 'minu-teine-postitus', '', '', '2017-10-27 18:13:52', '2017-10-27 18:13:52', '', 0, 'http://tamanu.site/?p=118', 0, 'post', '', 0),
(119, 1, '2017-10-27 18:13:52', '2017-10-27 18:13:52', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus pretium mi, et tempus ipsum tempus ac. Integer leo neque, feugiat rutrum magna blandit, rhoncus lobortis velit. Phasellus diam nisi, accumsan sit amet auctor a, elementum at mi. Morbi cursus faucibus condimentum. Vestibulum ut est et tellus facilisis pellentesque. Fusce non viverra nisi, sit amet lacinia ligula. Curabitur feugiat, urna maximus molestie accumsan, odio mauris bibendum quam, a gravida orci odio nec felis. Mauris efficitur aliquam justo eu blandit. Nunc lectus nunc, mollis et pulvinar eget, vulputate quis ex. Quisque vitae vulputate dolor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec tempus nisl quis mauris auctor dictum. Cras facilisis luctus mauris, sed blandit ante ultricies sed.\r\n\r\nInterdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam pharetra tempus erat porta dapibus. Quisque eleifend, massa eget fringilla sagittis, mi velit semper tellus, vitae pellentesque nisi ex sagittis diam. Quisque blandit ut dolor mattis auctor. Quisque ultricies, orci ac sagittis congue, lacus mauris ornare nunc, in elementum velit lectus nec augue. Nullam eget elit magna. Nam eget velit nulla.\r\n\r\nNulla mattis orci quam. Etiam facilisis nunc vitae viverra ultrices. Maecenas vulputate, leo ac egestas lobortis, sapien dui auctor risus, quis sollicitudin erat dui in orci. Aenean ultricies vel elit quis sodales. Aliquam dictum at augue eu ornare. Quisque malesuada volutpat dolor ut ultrices. Quisque eu purus tincidunt, varius velit et, tempus sapien. Morbi sit amet arcu erat. Praesent semper lectus eros, a dictum dui lobortis ut. Vivamus dolor eros, fermentum ut tortor at, vulputate semper nunc. Aliquam faucibus tellus non nulla scelerisque, a ultricies lectus tempus. Fusce commodo felis urna, ut tincidunt odio feugiat quis. Mauris at mattis augue, eu faucibus lacus. Sed non lorem sed arcu dapibus vulputate ut ac urna.\r\n\r\nPraesent laoreet metus vel velit ornare, nec iaculis erat fermentum. Donec sed mauris mollis, pretium mi a, tincidunt metus. Nulla facilisi. Mauris sit amet enim eu arcu malesuada porttitor. Nunc nec tincidunt justo. Nam aliquam, turpis eu gravida venenatis, ante turpis tristique lacus, at commodo urna urna et eros. Ut sed egestas neque. Maecenas sagittis posuere tristique. Sed porta dui et dapibus volutpat. Integer malesuada dapibus ipsum, ut bibendum nisl pellentesque eu. Vestibulum ullamcorper accumsan purus, non mattis ex imperdiet a. Aenean hendrerit et massa at eleifend. Vestibulum vel dui nisi. Aliquam enim nunc, vulputate malesuada sagittis et, facilisis vitae justo. Etiam hendrerit commodo turpis ac consectetur. Etiam vitae risus eu enim porta gravida eget id nunc.\r\n\r\nInteger iaculis auctor nulla eget imperdiet. Nam pellentesque, sapien sed dignissim tempor, ligula risus dictum massa, sed finibus urna ligula at mauris. Pellentesque at urna laoreet, porta libero sit amet, porttitor sapien. Pellentesque vestibulum elementum velit ut sollicitudin. Suspendisse felis dui, consectetur non velit ac, bibendum tincidunt enim. Pellentesque elit quam, sollicitudin ut enim vitae, suscipit feugiat justo. Donec id dolor consectetur, auctor neque ac, tempor mi. Morbi ac enim congue, pulvinar massa in, placerat elit.\r\n\r\nDuis consequat mi et urna feugiat, ac tristique magna malesuada. Praesent sit amet magna ligula. Phasellus non mattis augue. Quisque nec mattis arcu, at porta enim. Fusce id est non libero rutrum aliquam vel ut lacus. Vivamus quis consectetur massa. Nam imperdiet mauris consequat arcu mollis, at maximus lorem viverra.\r\n\r\nPhasellus molestie nisl vitae vulputate scelerisque. Morbi id malesuada nisl. Fusce placerat libero at mi aliquet commodo. Morbi fermentum elit in nibh convallis, vel molestie ligula tincidunt. In et rhoncus est, sed iaculis leo. Mauris commodo nunc vel eros laoreet, ut egestas metus commodo. Nunc gravida neque nec ultricies luctus. Sed consectetur lorem lectus, at posuere mi fringilla convallis. Cras ligula mi, ornare et ligula sed, fringilla accumsan nunc. Nam suscipit placerat quam, et consequat mauris venenatis sit amet.\r\n\r\nPellentesque vitae augue felis. Vivamus sed dapibus lorem. In hac habitasse platea dictumst. Etiam ipsum ante, cursus non convallis eget, malesuada id elit. Nulla vel placerat sapien. Curabitur eget ligula orci. Aliquam suscipit accumsan leo, ut congue risus auctor id. Nulla vulputate enim a velit placerat elementum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque eu turpis orci.\r\n\r\nAenean mollis metus vitae libero tincidunt pulvinar eget vel felis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In lacinia sem et felis sodales placerat. Vestibulum non nulla vel sem vehicula pulvinar sed at tortor. Praesent mi nisi, placerat nec quam eget, pulvinar congue libero. Sed malesuada eros et nisl pretium lacinia. Nam viverra rutrum ante, et tincidunt lacus ullamcorper vitae. Nullam vel scelerisque nunc. Maecenas at maximus dui. Integer tincidunt at mi vitae aliquet. Cras vel justo in nunc tempus suscipit.\r\n\r\nUt varius, libero quis pretium rhoncus, justo ex porta enim, dictum molestie justo libero et odio. Cras fringilla tortor fermentum dui vestibulum sollicitudin. Sed gravida erat vitae nibh suscipit, quis interdum nisi tincidunt. Fusce urna erat, vulputate sed pharetra sodales, ultrices pellentesque purus. Nulla tortor dui, gravida ut nulla id, pellentesque consectetur purus. Phasellus nec hendrerit purus. Cras pharetra justo in orci porta, id aliquam est faucibus. Maecenas mi velit, molestie malesuada placerat sit amet, imperdiet eget mauris.\r\n\r\nNunc porttitor bibendum odio vitae dapibus. In hac habitasse platea dictumst. Vestibulum et nisi non justo vehicula egestas id in dolor. Vestibulum dapibus, dolor eget vehicula eleifend, sem urna mattis tortor, eu pulvinar nisl est et metus. Duis faucibus feugiat auctor. Curabitur eu purus eu justo feugiat elementum ac at nulla. Proin lacus purus, fringilla in nunc et, tincidunt pretium enim. Etiam quis sodales lorem, in semper purus. Curabitur rhoncus vehicula velit at vestibulum. Maecenas luctus libero vel dui congue posuere sit amet at tellus. Maecenas nunc turpis, volutpat eu commodo sed, interdum maximus ligula. Integer semper leo nibh, ac finibus risus ullamcorper eu.', 'Minu teine postitus', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2017-10-27 18:13:52', '2017-10-27 18:13:52', '', 118, 'http://tamanu.site/uncategorized/118-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2018-04-11 20:48:12', '0000-00-00 00:00:00', '', 'Automaatmustand', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-11 20:48:12', '0000-00-00 00:00:00', '', 0, 'http://tamanu.site/?p=125', 0, 'post', '', 0) ;

#
# End of data contents of table `wcbd_posts`
# --------------------------------------------------------



#
# Delete any existing table `wcbd_term_relationships`
#

DROP TABLE IF EXISTS `wcbd_term_relationships`;


#
# Table structure of table `wcbd_term_relationships`
#

CREATE TABLE `wcbd_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wcbd_term_relationships`
#
INSERT INTO `wcbd_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 2, 0),
(2, 2, 0),
(3, 2, 0),
(4, 2, 0),
(5, 2, 0),
(6, 2, 0),
(7, 2, 0),
(29, 3, 0),
(29, 7, 0),
(29, 9, 0),
(29, 17, 0),
(47, 16, 0),
(48, 16, 0),
(49, 16, 0),
(50, 16, 0),
(51, 16, 0),
(53, 16, 0),
(114, 3, 0),
(116, 3, 0),
(116, 10, 0),
(116, 17, 0),
(116, 18, 0),
(118, 1, 0) ;

#
# End of data contents of table `wcbd_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wcbd_term_taxonomy`
#

DROP TABLE IF EXISTS `wcbd_term_taxonomy`;


#
# Table structure of table `wcbd_term_taxonomy`
#

CREATE TABLE `wcbd_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wcbd_term_taxonomy`
#
INSERT INTO `wcbd_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'link_category', '', 0, 7),
(3, 3, 'product_type', '', 0, 3),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_type', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 1),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 1),
(10, 10, 'product_visibility', '', 0, 1),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'nav_menu', '', 0, 6),
(17, 17, 'product_cat', '', 0, 2),
(18, 18, 'product_tag', '', 0, 1) ;

#
# End of data contents of table `wcbd_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wcbd_termmeta`
#

DROP TABLE IF EXISTS `wcbd_termmeta`;


#
# Table structure of table `wcbd_termmeta`
#

CREATE TABLE `wcbd_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wcbd_termmeta`
#
INSERT INTO `wcbd_termmeta` ( `meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 17, 'order', '0'),
(2, 17, 'display_type', 'products'),
(3, 17, 'thumbnail_id', '0'),
(4, 17, 'product_count_product_cat', '2'),
(5, 18, 'product_count_product_tag', '1') ;

#
# End of data contents of table `wcbd_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wcbd_terms`
#

DROP TABLE IF EXISTS `wcbd_terms`;


#
# Table structure of table `wcbd_terms`
#

CREATE TABLE `wcbd_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wcbd_terms`
#
INSERT INTO `wcbd_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Blogroll', 'blogroll', 0),
(3, 'simple', 'simple', 0),
(4, 'grouped', 'grouped', 0),
(5, 'variable', 'variable', 0),
(6, 'external', 'external', 0),
(7, 'exclude-from-search', 'exclude-from-search', 0),
(8, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(9, 'featured', 'featured', 0),
(10, 'outofstock', 'outofstock', 0),
(11, 'rated-1', 'rated-1', 0),
(12, 'rated-2', 'rated-2', 0),
(13, 'rated-3', 'rated-3', 0),
(14, 'rated-4', 'rated-4', 0),
(15, 'rated-5', 'rated-5', 0),
(16, 'Main menu', 'main-menu', 0),
(17, 'Õlid', 'olid', 0),
(18, 'tamanu', 'tamanu', 0) ;

#
# End of data contents of table `wcbd_terms`
# --------------------------------------------------------



#
# Delete any existing table `wcbd_usermeta`
#

DROP TABLE IF EXISTS `wcbd_usermeta`;


#
# Table structure of table `wcbd_usermeta`
#

CREATE TABLE `wcbd_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wcbd_usermeta`
#
INSERT INTO `wcbd_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'admin'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'aim', ''),
(10, 1, 'yim', ''),
(11, 1, 'jabber', ''),
(12, 1, 'wcbd_capabilities', 'a:1:{s:13:"administrator";s:1:"1";}'),
(13, 1, 'wcbd_user_level', '10'),
(14, 1, 'session_tokens', 'a:1:{s:64:"ed94eed90a854790fff3a3b511f3cc529bd33fb8aa4d3ceb2b77e72cb0407739";a:4:{s:10:"expiration";i:1524689283;s:2:"ip";s:38:"2001:7d0:8408:ba80:5dc3:43b2:42c5:89c1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36";s:5:"login";i:1523479683;}}'),
(15, 1, 'wcbd_dashboard_quick_press_last_post_id', '125'),
(16, 1, 'community-events-location', 'a:1:{s:2:"ip";s:20:"2001:7d0:8408:ba80::";}'),
(17, 1, 'show_admin_bar_front', 'true'),
(18, 1, 'locale', ''),
(19, 1, 'wcbd_user-settings', 'libraryContent=browse&editor=html&hidetb=0&editor_expand=on'),
(20, 1, 'wcbd_user-settings-time', '1509127753'),
(21, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:2:{s:32:"5fd0b37cd7dbbb00f97ba6ce92bf5add";a:10:{s:3:"key";s:32:"5fd0b37cd7dbbb00f97ba6ce92bf5add";s:10:"product_id";i:114;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";i:23;s:17:"line_subtotal_tax";i:0;s:10:"line_total";i:23;s:8:"line_tax";i:0;}s:32:"6ea9ab1baa0efb9e19094440c317e21b";a:10:{s:3:"key";s:32:"6ea9ab1baa0efb9e19094440c317e21b";s:10:"product_id";i:29;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";i:49;s:17:"line_subtotal_tax";i:0;s:10:"line_total";i:49;s:8:"line_tax";i:0;}}}'),
(22, 1, 'jetpack_tracks_anon_id', 'jetpack:0lO26VzQs/5EMNB/uXEz+La7'),
(23, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:15:"title-attribute";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:"add-post-type-product";i:1;s:12:"add-post_tag";i:2;s:15:"add-product_cat";i:3;s:15:"add-product_tag";}'),
(25, 1, 'nav_menu_recently_edited', '16'),
(26, 1, 'closedpostboxes_post', 'a:0:{}'),
(27, 1, 'metaboxhidden_post', 'a:7:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:11:"commentsdiv";i:5;s:7:"slugdiv";i:6;s:9:"authordiv";}') ;

#
# End of data contents of table `wcbd_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wcbd_users`
#

DROP TABLE IF EXISTS `wcbd_users`;


#
# Table structure of table `wcbd_users`
#

CREATE TABLE `wcbd_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wcbd_users`
#
INSERT INTO `wcbd_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'zoneplus', '$P$Bzb4ewAmEpNTmBjxnA22IAa11W93Ld0', 'admin', 'tanel.vahk@gmail.com', '', '2017-10-22 19:31:18', '', 0, 'admin') ;

#
# End of data contents of table `wcbd_users`
# --------------------------------------------------------



#
# Delete any existing table `wcbd_woocommerce_api_keys`
#

DROP TABLE IF EXISTS `wcbd_woocommerce_api_keys`;


#
# Table structure of table `wcbd_woocommerce_api_keys`
#

CREATE TABLE `wcbd_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wcbd_woocommerce_api_keys`
#

#
# End of data contents of table `wcbd_woocommerce_api_keys`
# --------------------------------------------------------



#
# Delete any existing table `wcbd_woocommerce_attribute_taxonomies`
#

DROP TABLE IF EXISTS `wcbd_woocommerce_attribute_taxonomies`;


#
# Table structure of table `wcbd_woocommerce_attribute_taxonomies`
#

CREATE TABLE `wcbd_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wcbd_woocommerce_attribute_taxonomies`
#

#
# End of data contents of table `wcbd_woocommerce_attribute_taxonomies`
# --------------------------------------------------------



#
# Delete any existing table `wcbd_woocommerce_downloadable_product_permissions`
#

DROP TABLE IF EXISTS `wcbd_woocommerce_downloadable_product_permissions`;


#
# Table structure of table `wcbd_woocommerce_downloadable_product_permissions`
#

CREATE TABLE `wcbd_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wcbd_woocommerce_downloadable_product_permissions`
#

#
# End of data contents of table `wcbd_woocommerce_downloadable_product_permissions`
# --------------------------------------------------------



#
# Delete any existing table `wcbd_woocommerce_log`
#

DROP TABLE IF EXISTS `wcbd_woocommerce_log`;


#
# Table structure of table `wcbd_woocommerce_log`
#

CREATE TABLE `wcbd_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wcbd_woocommerce_log`
#

#
# End of data contents of table `wcbd_woocommerce_log`
# --------------------------------------------------------



#
# Delete any existing table `wcbd_woocommerce_order_itemmeta`
#

DROP TABLE IF EXISTS `wcbd_woocommerce_order_itemmeta`;


#
# Table structure of table `wcbd_woocommerce_order_itemmeta`
#

CREATE TABLE `wcbd_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wcbd_woocommerce_order_itemmeta`
#

#
# End of data contents of table `wcbd_woocommerce_order_itemmeta`
# --------------------------------------------------------



#
# Delete any existing table `wcbd_woocommerce_order_items`
#

DROP TABLE IF EXISTS `wcbd_woocommerce_order_items`;


#
# Table structure of table `wcbd_woocommerce_order_items`
#

CREATE TABLE `wcbd_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wcbd_woocommerce_order_items`
#

#
# End of data contents of table `wcbd_woocommerce_order_items`
# --------------------------------------------------------



#
# Delete any existing table `wcbd_woocommerce_payment_tokenmeta`
#

DROP TABLE IF EXISTS `wcbd_woocommerce_payment_tokenmeta`;


#
# Table structure of table `wcbd_woocommerce_payment_tokenmeta`
#

CREATE TABLE `wcbd_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wcbd_woocommerce_payment_tokenmeta`
#

#
# End of data contents of table `wcbd_woocommerce_payment_tokenmeta`
# --------------------------------------------------------



#
# Delete any existing table `wcbd_woocommerce_payment_tokens`
#

DROP TABLE IF EXISTS `wcbd_woocommerce_payment_tokens`;


#
# Table structure of table `wcbd_woocommerce_payment_tokens`
#

CREATE TABLE `wcbd_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wcbd_woocommerce_payment_tokens`
#

#
# End of data contents of table `wcbd_woocommerce_payment_tokens`
# --------------------------------------------------------



#
# Delete any existing table `wcbd_woocommerce_sessions`
#

DROP TABLE IF EXISTS `wcbd_woocommerce_sessions`;


#
# Table structure of table `wcbd_woocommerce_sessions`
#

CREATE TABLE `wcbd_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_key`),
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wcbd_woocommerce_sessions`
#
INSERT INTO `wcbd_woocommerce_sessions` ( `session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(1, '1', 'a:7:{s:4:"cart";s:703:"a:2:{s:32:"5fd0b37cd7dbbb00f97ba6ce92bf5add";a:10:{s:3:"key";s:32:"5fd0b37cd7dbbb00f97ba6ce92bf5add";s:10:"product_id";i:114;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";i:23;s:17:"line_subtotal_tax";i:0;s:10:"line_total";i:23;s:8:"line_tax";i:0;}s:32:"6ea9ab1baa0efb9e19094440c317e21b";a:10:{s:3:"key";s:32:"6ea9ab1baa0efb9e19094440c317e21b";s:10:"product_id";i:29;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";i:49;s:17:"line_subtotal_tax";i:0;s:10:"line_total";i:49;s:8:"line_tax";i:0;}}";s:11:"cart_totals";s:394:"a:15:{s:8:"subtotal";s:2:"72";s:12:"subtotal_tax";d:0;s:14:"shipping_total";s:1:"0";s:12:"shipping_tax";d:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";d:0;s:12:"discount_tax";s:1:"0";s:19:"cart_contents_total";s:2:"72";s:17:"cart_contents_tax";d:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";s:1:"0";s:7:"fee_tax";d:0;s:9:"fee_taxes";a:0:{}s:5:"total";s:2:"72";s:9:"total_tax";d:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:8:"customer";s:670:"a:25:{s:2:"id";i:1;s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"EE";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"EE";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:0;s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:20:"tanel.vahk@gmail.com";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";}', 1523652483) ;

#
# End of data contents of table `wcbd_woocommerce_sessions`
# --------------------------------------------------------



#
# Delete any existing table `wcbd_woocommerce_shipping_zone_locations`
#

DROP TABLE IF EXISTS `wcbd_woocommerce_shipping_zone_locations`;


#
# Table structure of table `wcbd_woocommerce_shipping_zone_locations`
#

CREATE TABLE `wcbd_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wcbd_woocommerce_shipping_zone_locations`
#

#
# End of data contents of table `wcbd_woocommerce_shipping_zone_locations`
# --------------------------------------------------------



#
# Delete any existing table `wcbd_woocommerce_shipping_zone_methods`
#

DROP TABLE IF EXISTS `wcbd_woocommerce_shipping_zone_methods`;


#
# Table structure of table `wcbd_woocommerce_shipping_zone_methods`
#

CREATE TABLE `wcbd_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wcbd_woocommerce_shipping_zone_methods`
#

#
# End of data contents of table `wcbd_woocommerce_shipping_zone_methods`
# --------------------------------------------------------



#
# Delete any existing table `wcbd_woocommerce_shipping_zones`
#

DROP TABLE IF EXISTS `wcbd_woocommerce_shipping_zones`;


#
# Table structure of table `wcbd_woocommerce_shipping_zones`
#

CREATE TABLE `wcbd_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wcbd_woocommerce_shipping_zones`
#

#
# End of data contents of table `wcbd_woocommerce_shipping_zones`
# --------------------------------------------------------



#
# Delete any existing table `wcbd_woocommerce_tax_rate_locations`
#

DROP TABLE IF EXISTS `wcbd_woocommerce_tax_rate_locations`;


#
# Table structure of table `wcbd_woocommerce_tax_rate_locations`
#

CREATE TABLE `wcbd_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wcbd_woocommerce_tax_rate_locations`
#

#
# End of data contents of table `wcbd_woocommerce_tax_rate_locations`
# --------------------------------------------------------



#
# Delete any existing table `wcbd_woocommerce_tax_rates`
#

DROP TABLE IF EXISTS `wcbd_woocommerce_tax_rates`;


#
# Table structure of table `wcbd_woocommerce_tax_rates`
#

CREATE TABLE `wcbd_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wcbd_woocommerce_tax_rates`
#

#
# End of data contents of table `wcbd_woocommerce_tax_rates`
# --------------------------------------------------------

#
# Add constraints back in
#

