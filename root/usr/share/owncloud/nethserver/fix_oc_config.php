<?php
// Fixes the owncloud config file.
//
// $argv[1]: filepath of owncloud config file
// $argv[3]: list of trusted domains (ip or domain names separated by commas)

$FILEPATH = $argv[1];

if (file_exists($FILEPATH)) {

    require($FILEPATH);

    // replace values
    $CONFIG['forcessl'] = true;
    $CONFIG['updatechecker'] = false;
    $CONFIG['check_for_working_webdav'] = false;
    $array_values = split(',', $argv[2]);
    $CONFIG['trusted_domains'] = $array_values;

    // output
    $str = var_export($CONFIG, true);
    $str = '<?php
$CONFIG = ' . $str . ';
';

    // write to file
    if (file_put_contents($FILEPATH, $str) === true) {
        exit(0);
    } else {
        exit(2);
    }

} else {
    exit(1);
}
?>
