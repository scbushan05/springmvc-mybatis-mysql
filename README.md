# Spring MVC, Mybatis and MySQL

This web application demonstrates the Integration of Spring MVC and Mybatis connecting to a MySQL database and demonstrates the database operations such as Create, Read, Update and Delete.

## Requirements

1. Java - 1.8.x

2. Maven - 3.x.x

3. Mysql - 5.x.x

4. Bootstrap - 4.x.x

## Steps to Setup

**1. Clone the application**

`git clone https://github.com/scbushan05/springmvc-mybatis-mysql.git`

**2. Create Mysql database**

`create database employeedirectory`

**3. Run the script file**

`Run the script file queries.sql attached to the project`

**4. Change mysql username and password as per your installation**

+ open `src/main/java/resources/mybatis-config.xml`

+ change `username` and `password` as per your mysql installation

**5. Build and run the app using maven**

`mvn package`

The app will start running at <http://localhost:8080/springmybatis/>.

## Learn more

You can find the tutorial for this application on my blog -

<https://bushansirgur.in/a-complete-crud-application-with-spring-mvc-and-mybatis-ibatis/>