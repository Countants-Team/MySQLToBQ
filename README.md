# MySQLToBQ
How we can upload data MySQL using apache airflow

![alt text](https://drive.google.com/file/d/1HrpbPeXGmUsrPaaTXO9G3UD1K1BOhlnN)

# Step 1: Download the docker utility 
https://docs.docker.com/install/linux/docker-ce/ubuntu/

# Step 2: Pull the Container image from docker hub

sudo docker pull countantsteam/mysql-to-bq:v1

# Step 3: Run the container in the terminal with all services

#### sudo docker run   -it -p 7000:80 -p 9000:8080 -p 10000:8081 countantsteam/mysql-to-bq:v1  /bin/bash


Here we have exposed three ports. 

These are internal ports of containers
Port 80   for apache server
Port 8080 for apache-airflow
Port 8081 for mongo-express

change the host ports however you need, we have used 7000,9000,10000 respectively.

# Step 4: Run the all services using one command

$ :  countants_services.sh 

Command will start all the services of container including all the services. Then you are ready to test all the services.

# Step 5: Visit the following following urls

## MySQL 
http://your_ip:port/phpmyadmin  here use port 7000 in our case


## Apache - Airflow

 http://your_ip:port     here use port  9000 in our case
 
 ## Mongo - Express
 
 http://your_ip:port   here use port 10000 in our case.
 
 
 All the ports we are using which we have mentioned in the command while running the docker command.
 
 
 ##### *NOTE: whatever port you use should not be in use by another application on your host machine. 
 
 ### Configuring Connections in Apache -airflow
 
1. In apache airflow here you have to configure connections for mysql, mongo, bigquery, google cloud storage.
 
2. You will see many connections in the list. Scroll down and select mysql connection
 
3. Fill up submit connection you do it for all connections. Like bigquery, mongo


Once the apache airflow is configured.

You are ready to go.

##### if you want to add your own customized dags into container you can use following command.
#### $: docker cp   sample_dag.py container_tag:/root/airflow/dags/

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
