# DevOps-Assignment-2
Contains the required Dockerfile &amp; test.sql files

About Files:
schema.sql:
This file contains schema of database and few insert queries for demo.

dockerfile:
This file has instruction for creation of the image with follwing things:

Student Schema provided in schema.sql.
Database named pucsdStudents.
User named as 'pucsd' and password as 'pucsd'.
Root password is set as 'pucsd'.
How to use?
Build Image:
Note : If there is error of permission denied add sudo at start of instruction conatining docker as command in it or you can also become super user(This note is for LINUX user).

docker build -t <container_name> path

build : this instruction is used to build the image according to the dockerfile
-t <container_name> : option to provide tagname according to the user's requirement.If using -t then provide image name whatever to your liking.
path : path of the directory where the dockerfile is present. If your working in the same directory.
Run Image:
docker run -d --name <image_name> -p 3306 <container_name>

run : This command is use to run a instance of the conatiner.
-d : This option tells to run the image in detach mode.
--name <image_name> : This option is used to provide name to the image according to user's requirement provide the name in place of <image_name>. If not provided then docker creates a random name.
-p 3306 : This tells that the host machine will connect to the conatiner through 3306 port.
<container_name> : The container name which you have given in the above command.
Use interactive bash
docker exec -it <image_name> /bin/bash

exec :This command is used to execute the running container.
-it : This tells docker that we want to run in interactive mode.
<image_name>: The image_name which you have provdided in earlier command.
/bin/bash: This tells docker that you will be executing with help of bash.
Enter Mysql prompt:
mysql -upucsd -ppucsd

mysql : to enter mysql shell
-upucsd : we want to enter mysql using user as pucsd.
-ppucsd : the password for the user 'pucsd' is 'pucsd'.
Use Database pucsdStudents:
use pucsdStudents: This tells that we want to use datbase pucsdStudents.

To see the content of the table 'StudentData':
select * from studentData; : Inorder to view all the table.
