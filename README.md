# DevOps-Assignment-2
Contains the required Dockerfile &amp; test.sql files

# About Files:
# test.sql:
This file contains schema of database and few insert queries for demo.

# Dockerfile:
This file has instruction for creation of the image with follwing things:

Student Schema provided in test.sql.
Database named pucsdStudents.
User named as 'pucsd' and password as 'pucsd'.
Root password is set as 'pucsd'.

# How to use?
# Build Image:
Note : If there is error of permission denied add sudo at start of instruction conatining docker as command in it or you can also become super user(This note is for LINUX user).

docker build -t <image_name> <path_to_Dockerfile>

build : this instruction is used to build the image according to the dockerfile\
-t <image_name> : option to provide tagname according to the user's requirement. If using -t then provide image name whatever to your liking.\
path : path of the directory where the dockerfile is present. If your working in the same directory.

# Create a container from this image:
docker run -d --name <container_name> -p 3306:3306 <image_name>

run : This command is use to run a instance of the conatiner.\
-d : This option tells to run the image in detach mode.\
--name <container_name> : This option is used to provide a custom name to the container. If not provided, Docker creates a random name.\
-p 3306 : This tells that the host machine will connect to the conatiner through 3306 port.\
<image_name> : To mention the image we are working with.

# Execute the container (use interactive bash):
docker exec -it <container_name> /bin/bash

exec :This command is used to execute the running container.\
-it : This tells docker that we want to run in interactive mode.\
<container_name>: The container_name which you have provdided in earlier command.\
/bin/bash: This tells docker that you will be executing with help of bash.

# Enter MySQL prompt:
mysql -upucsd -ppucsd

mysql : to enter mysql shell\
-upucsd : we want to enter mysql using user as pucsd.\
-ppucsd : the password for the user 'pucsd' is 'pucsd'.

# Use Database pucsdStudents:
use pucsdStudents: This tells that we want to use datbase pucsdStudents.

# To see the content of the table 'StudentData':
select * from studentData; : Inorder to view all the table.

# Refer the following video for detailed explanation:
https://youtu.be/w_aVnMmrASE
