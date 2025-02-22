
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {

    static String url = "jdbc:mysql://127.0.0.1:3306/Library";
    static String username = "root";
    static String password = "Pgarg#2113";

    public static void main(String[] args) throws ClassNotFoundException {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("Drivers Loaded Successfully!!!");
            Connection conn = getConnection();
            if (conn != null) {
                System.out.println("Database Connected Successfully!");
            } else {
                System.out.println("Database Connection Failed!");
            }
        } catch (ClassNotFoundException e) {
            System.out.println("MySql Driver Not Found: " + e.getMessage());
        }
    }

    @SuppressWarnings("CallToPrintStackTrace")
    public static Connection getConnection() {
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(url, username, password);
        } catch (SQLException e) {
            System.out.println("Database Connection Failed!");
            e.printStackTrace();
        }
        return conn;
    }

}
