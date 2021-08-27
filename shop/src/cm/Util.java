package cm;

import java.sql.Connection;
import java.sql.DriverManager;

public class Util {
	public static Connection getConnection() throws Exception {
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
		return con;
	}

	public static String getNN(Object obj) {
		if (obj == null) {
			return "";
		}

		return obj.toString();
	}
}
