<?php
define('user','root');
define('pass','');
define('host','localhost');
define('dbname','cinemadb');

$dbc = mysqli_connect(user, pass, host, dbname);
if(!dbc)
{
	echo "Failed to connect to MySQL:".mysqli_connect_error();
}
/* php& mysqldb connection file
$user = "root"; //mysqlusername
$pass = ""; //mysqlpassword
$host = "localhost"; //127.0.0.1.server name or ipaddress
$dbname= "cinemadb"; //your db name
$dbconn= mysqli_connect($host, $user, $pass,$dbname) or die(mysqli_error($dbconn));*/
?>