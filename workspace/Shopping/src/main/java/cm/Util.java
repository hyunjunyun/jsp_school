package cm;

import java.sql.Connection;
import java.sql.DriverManager;

public class Util {
	public static Connection getConnection() throws Exception {
		Class.forName("oracle.jdbc.OracleDriver");
		Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
		return connection;
	}

	public static String getNN(String string) {
		return string == null ? "" : string;
	}
}
