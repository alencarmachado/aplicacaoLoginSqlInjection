package model;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionPostgres {

	public static void main(String args[]){
		conexao();
	}
	
	public static Connection conexao() {
		Connection c = null;
		try {

			Class.forName("org.postgresql.Driver");
			//c = DriverManager.getConnection("jdbc:postgresql://localhost:5432/bancosqlinjection", "postgres", "teste001");
			c = DriverManager.getConnection("jdbc:postgresql://localhost:5432/bancosqlinjection", "postgres", "123");

		} catch (Exception e) {
			e.printStackTrace();
			System.err.println(e.getClass().getName() + ": " + e.getMessage());
		}
		System.out.println("Opened database successfully");
		return c;
	}

	
}
