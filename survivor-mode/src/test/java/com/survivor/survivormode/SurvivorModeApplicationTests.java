package com.survivor.survivormode;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.sql.*;
@SpringBootApplication
class SurvivorApplication {

	public static void main(String[] args) {
		SpringApplication.run(SurvivorApplication.class, args);
	}


	public class PostgresDataFetcher {

		private static final String JDBC_URL = "jdbc:postgresql://localhost:5432/Apocalypse
		private static final String USERNAME = "postgres";
		private static final String PASSWORD = "postgres";

		// SQL query to fetch data
		private static final String SQL_QUERY = "SELECT * FROM your_table";

		public static void main(String[] args) {
			try {
				Class.forName("org.postgresql.Driver");

				//connection
				try (Connection connection = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD)) {

					try (PreparedStatement preparedStatement = connection.prepareStatement(SQL_QUERY)) {

						try (ResultSet resultSet = preparedStatement.executeQuery()) {

							while (resultSet.next()) {

								int id = resultSet.getInt("id");
								String name = resultSet.getString("name");

								System.out.println("ID: " + id + ", Name: " + name);
							}
						}
					}
				}

			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
		}
	}

}
