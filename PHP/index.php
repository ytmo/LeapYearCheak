<?php
/*

    LeapYearCheck
    By Toms Project on 2020/6/22
    Useage: http://www.yourdomain.com/index.php?year=[YEAR, like 1, 2020, 2018]
    Metmod: GET

*/
$year = $_GET['year'];
if($year % 4 == 0 && $year % 100 != 0)    //we learned from math that if a year remainder 4 equals 0 and that year remainder 100 don't equals 0 or the year remainder 400 equals 0, than the year must be a leap year
    {
        echo $year . " is a leap year!";
    }
    else if ($year % 400 == 0)
    {
        echo $year . " is a leap year!";
    }
    else
    {
        echo $year . " is not a leap year!";
    }
?>
