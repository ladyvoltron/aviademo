<html lang="en">
<head>
    <title>Eindhoven Airport - find airplanes!</title>
    <meta charset="utf-8">
</head>
<body>
<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$date_time_array = getdate( time() );
//$date_time_array = date ( "His", $timestamp = time() );
echo "The time is " . date("H:i:s");

$weekdays[0]="Понедельник";
$weekdays[1]="Вторник";
$weekdays[2]="Среда";
$weekdays[3]="Четверг";
$weekdays[4]="Пятница";
$weekdays[5]="Суббота";
$weekdays[6]="Воскресенье";

$wd=$date_time_array['wday']-1;
$weekdayrus=$weekdays[$wd];

$month_year[0]="января";
$month_year[1]="февраля";
$month_year[2]="марта";
$month_year[3]="апреля";
$month_year[4]="мая";
$month_year[5]="июня";
$month_year[6]="июля";
$month_year[7]="августа";
$month_year[8]="сентября";
$month_year[9]="октября";
$month_year[10]="ноября";
$month_year[11]="декабря";

$m=$date_time_array['mon']-1;

$month_rus = $month_year[$m];

$date_now = $date_time_array['mday']." ".$month_rus." ".$date_time_array['year'].", ".$weekdayrus;
$time_now=$date_time_array['hours'].":".$date_time_array['minutes'].":".$date_time_array['seconds'];


echo "Текущее время ".$time_now."<br>";
echo "Текущая дата ".$date_now."<br>";
 ?>

</body>
<html>