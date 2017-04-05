<?php
// HTTP
define('HTTP_SERVER', 'http://' . $_SERVER['SERVER_NAME'].'/');
// HTTPS
define('HTTPS_SERVER', 'http://' . $_SERVER['SERVER_NAME'].'/');

// DIR
define('DIR_APPLICATION', $_SERVER['DOCUMENT_ROOT'].'/store/upload/catalog/');
define('DIR_SYSTEM',$_SERVER['DOCUMENT_ROOT'].'/store/upload/system/');
define('DIR_IMAGE', $_SERVER['DOCUMENT_ROOT'].'/store/upload/image/');
define('DIR_LANGUAGE', $_SERVER['DOCUMENT_ROOT'].'/store/upload/catalog/language/');
define('DIR_TEMPLATE', $_SERVER['DOCUMENT_ROOT'].'/store/upload/catalog/view/theme/');
define('DIR_CONFIG', $_SERVER['DOCUMENT_ROOT'].'/store/upload/system/config/');
define('DIR_CACHE', $_SERVER['DOCUMENT_ROOT'].'/store/upload/system/storage/cache/');
define('DIR_DOWNLOAD', $_SERVER['DOCUMENT_ROOT'].'/store/upload/system/storage/download/');
define('DIR_LOGS', $_SERVER['DOCUMENT_ROOT'].'/store/upload/system/storage/logs/');
define('DIR_MODIFICATION', $_SERVER['DOCUMENT_ROOT'].'/store/upload/system/storage/modification/');
define('DIR_UPLOAD', $_SERVER['DOCUMENT_ROOT'].'/store/upload/system/storage/upload/');

// DB
/*$url=parse_url(getenv("JAWSDB_URL"));
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', $url['host']);
define('DB_USERNAME', $url['user']);
define('DB_PASSWORD', $url['pass']);
define('DB_DATABASE', substr($url["path"],1));
define('DB_PREFIX', 'oc_');*/

define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', 'ryvdxs57afyjk41z.cbetxkdyhwsb.us-east-1.rds.amazonaws.com');
define('DB_USERNAME', 'smw73rsewyi7wok9');
define('DB_PASSWORD', 'mxivntya3idztsvu');
define('DB_DATABASE', 'oh8u3g0ucp0zbidb');
define('DB_PORT', '3306');
define('DB_PREFIX', 'oc_');
