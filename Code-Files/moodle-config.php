<?php  // Moodle configuration file

unset($CFG);
global $CFG;
$CFG = new stdClass();

$CFG->dbtype    = 'pgsql';
$CFG->dblibrary = 'native';
$CFG->dbhost    = 'localhost';
$CFG->dbname    = 'moodle';
$CFG->dbuser    = 'moodleuser';
$CFG->dbpass    = '123qweasd';
$CFG->prefix    = 'mdl_';
$CFG->dboptions = array (
  'dbpersist' => 0,
  'dbport' => 5432,
  'dbsocket' => '',
);

$CFG->sslproxy  = true;
$CFG->themedir = '/var/www/html/moodle/theme';
$CFG->themerev = -1;
$CFG->langstringcache = false;

// Force a debugging mode regardless the settings in the site administration
// @error_reporting(E_ALL | E_STRICT);   // NOT FOR PRODUCTION SERVERS!
// @ini_set('display_errors', '1');         // NOT FOR PRODUCTION SERVERS!
// $CFG->debug = (E_ALL | E_STRICT);   // === DEBUG_DEVELOPER - NOT FOR PRODUCTION SERVERS!
// $CFG->debugdisplay = 1;              // NOT FOR PRODUCTION SERVERS!

$CFG->dirroot   = '/var/www/html/moodle';
$CFG->wwwroot   = 'https://yourdomain.xyz';
$CFG->dataroot  = '/var/www/moodledata';
$CFG->admin     = 'admin';

$CFG->directorypermissions = 0777;
//$CFG->themedesignermode = true;
$CFG->slasharguments = false;
require_once(__DIR__ . '/lib/setup.php');
                                                              