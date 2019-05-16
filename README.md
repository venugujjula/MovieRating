# MovieRating
This Repository is intended to access the API call from shell script at Linux flavour Operating systems to display the given movie name rating.

Repository contains :
1. mrating.sh
--> This file is used to access the api call and get the movie name rating by using ./mrating.sh command.
    Steps to USE:
	1. we need to go to this /etc/movierating/ and enter the command ./mrating.sh 
	   it will prompts us to enter the movie name.
	2. It will read the movie name and pass the movie name to our dedicated API service and will fetch the return data in json format.
	   once movie data received it checks the Rotten tomatoes rating to the provide movie name and will display the respective movie rating value.
	3. If movie name not matched to the API call output it will display Movie name not found.
	   If movie name found and rating part with Rotten tomatoes not found it will display Movie Rating not found.
	
2.Dockerfile
--> It is used to build the customised Docker Image by using base centos image along with mrating.sh files
   Steps to USE:
   1. we need to copy/clone this file to the docker Runtime engine machine at this /etc/movierating/
   2. by using below command we need to build the docker image 
	  docker build -t movierating:v1 . 
	  docker iamges # to see the list of images
	  docker run -it movierating:v1  # to run the created image and we can hop in to the container.
    3.Once we entered in to the container we should be landed in /etc/movierating path as it is working directory.
	  From there we can run the ./mrating.sh command to test the API call as mentioned earlier.
	  
3.Read.MD File
--> It contains the information for the Current repository details , purpose and scope.

NOTE: Due to time constraints I am unable to implement the security part for this total task.
	  I have create Docker image by using above docerfile and unable to share it in GIT hub as its size is greater than 290MB 
	  (-rw-r--r-- 1 root root 290M May 15 20:23 mrating.tar)
