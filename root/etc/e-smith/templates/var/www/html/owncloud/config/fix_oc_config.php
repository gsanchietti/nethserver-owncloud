<?php
// Fixes the owncloud config file.
//
// $argv[1]: filepath of owncloud config file
// $argv[2]: dbpassword
// $argv[3] $argv[4]: ip and domain name

$FILEPATH = $argv[1];
echo $FILEPATH;

if (file_exists($FILEPATH)) {

    require($FILEPATH);

    // replace values
    $CONFIG['forcessl'] = true;
    $CONFIG['installed'] = true;
    $CONFIG['dbpassword'] = $argv[2];
    $CONFIG['updatechecker'] = false;
    $CONFIG['check_for_working_webdav'] = false;
    $array_value = array($argv[3], $argv[4]);
    $CONFIG['trusted_domains'] = $array_value;

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
