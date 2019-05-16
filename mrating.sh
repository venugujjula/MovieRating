#!/bin/sh
###
clear
### This script is used to fetch the below API call with given movie name to display the Rotten Tomatoes rating"
### api url = http://www.omdbapi.com/
### api key = 73c42886
### Devlope by Venu.G
### Date "05/15/2019
#Declaring the variables
apiURL="http://www.omdbapi.com/"
apiKEY="73c42886"
#ratingVar="Rotten Tomatoes"
ratingVar="tomatoes"
echo "Welcome to Movie world !!"
echo "API URL is : $apiURL"
echo -n "Please Enter Movie Name to see the rating: "
read movieName
mNameTrim="$( echo "$movieName" | sed 's/[[:space:]]/%20/g')"
#echo "U entered movie name is ::: "$movieName

reqVar="http://www.omdbapi.com/?t=$mNameTrim&apikey=73c42886"
movieInfo=$(curl -s ${reqVar})
#echo $movieInfo
if [ `echo $movieInfo | grep -c -i "Error"` -gt 0 ]
then
	 echo "Selected Movie: "$movieName "not found";
else
	#echo "$movieName"
	#echo "$ratingVar" 
	if [ "$movieName" != "$ratingVar" ]
	then
		#echo $movieInfo
                #echo `$movieInfo | grep -c $ratingVar`
		if [ `echo $movieInfo | grep -c -i $ratingVar` -gt 0 ]
		then
  		#echo "Success"
  		#checkVar="Rotten Tomatoes"
  		ratepos=`echo $movieInfo | grep -ob -i $ratingVar | head -c 3`
  		#echo "Rate position "$ratepos
  		rating=`echo ${movieInfo: $ratepos+10}| head -c 13`
  		echo "Selected Movie  $movieName Rating  $rating"
		else
  		echo "Selected Movie: $movieName  Rating not found"
		fi

	else
	echo "Selected Movie: $movieName Rating not found"
      fi
fi
##################### ENd of the Script ########################
