<?php

// Update the path below to your autoload.php,
// see https://getcomposer.org/doc/01-basic-usage.md
require_once '/path/to/vendor/autoload.php';

use Twilio\Rest\Client;

// Your Account Sid and Auth Token from twilio.com/console
$sid    = "ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
$token  = "your_auth_token";
$twilio = new Client($sid, $token);

$ipAccessControlListMappings = $twilio->sip
                                      ->domains("SDXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX")
                                      ->ipAccessControlListMappings
                                      ->read();

foreach ($ipAccessControlListMappings as $record) {
    print($record->sid);
}