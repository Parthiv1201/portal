<?php
$link = mysqli_connect("sql201.epizy.com", "epiz_32166605", "iA7Ku6Zzjqz");
mysqli_select_db($link,"epiz_32166605_parthivportal");
// Check connection
if($link === false)
{
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
?>
