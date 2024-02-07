SURVIVOR MODE

1.PREREQUISITES
Must have the following tools installed on your machine:
Java Development Kit (JDK)
PostgresSQL / Maven

2.CLONE THE REPOSITORY
git clone https://github.com/reitumetse-maseko/survivor-mode-api.git
cd survivor-mode-api

3.DATABASE NAME MUST MATCH WITH DATABASE ADMIN


4.CONFIGURE THE DATABASE
The application uses postgresSQL database.

spring.datasource.url=jdbc:postgresql://localhost:5432/Apocalypse
spring.datasource.username=postgres
spring.datasource.password=postgres

spring.jpa.hibernate.ddl-auto=update
spring.datasource.driver-class-name=org.postgresql.Driver
spring.jpa.show-sql=true

5.BUILD AND RUN APPLICAION
mvn clean install
mvn spring-boot:run
The application will be accessible at http://localhost:8080/api/survivors.

6.TESTING
You can run tests using the following command:
mvn test

