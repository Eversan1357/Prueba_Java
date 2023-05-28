package persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseUtil {
  private static final String URL = "jdbc:sqlserver://localhost:1433;databaseName=Prueba";
  private static final String USER = "admin";
  private static final String PASSWORD = "1234";

  public static Connection getConnection() throws SQLException {
    return DriverManager.getConnection(URL, USER, PASSWORD);
  }
}
