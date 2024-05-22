#!/bin/bash

function getdata {

 year1=$1
 year2=$2

for (( year= $year1 ; year<=$year2; year++ )); do
year=$(( $year ))

   wget -r ftp://ftp.star.nesdis.noaa.gov/pub/sod/mecb/crw/data/5km/v3.1_op/nc/v1.0/monthly/${year}/*baa-max*.nc
   wget -r ftp://ftp.star.nesdis.noaa.gov/pub/sod/mecb/crw/data/5km/v3.1_op/nc/v1.0/monthly/${year}/*dhw-max*.nc


mv ftp.star.nesdis.noaa.gov/pub/sod/mecb/crw/data/5km/v3.1_op/nc/v1.0/monthly/* . 

done 

    }

getdata $1 $2

# usage: ./getdata.sh 1993 2020 
