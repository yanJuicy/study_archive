import java.sql.*;

/**
 *
 * @author yanju
 *
 */
public class JdbcInsertDemo {

    public static void main(String[] args) throws SQLException {

        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;

        String dbUrl = "jdbc:mysql://localhost:3306/demo"; // SSL issue replace: jdbc:mysql://localhost:3306/demo?useSSL=false
        String user = "";   // mysql user
        String password = "";   // mysql user password

        try {
            // 1. Get a connection to database
            myConn = DriverManager.getConnection(dbUrl, user, password);


            // 2. Create a statement
            myStmt = myConn.createStatement();

            // 3. Insert a new employee
            System.out.println("Inserting a new employee to database\n");

            int rowsAffected = myStmt.executeUpdate(
                    "INSERT INTO employees " +
                            "(last_name, first_name, email, department, salary) " +
                            "VALUES " +
                            "('Wright', 'Eric', 'eric.wirght@foo.com', 'HR', 33000.00)"
            );

            // 4. Verify this by getting a list of employees
            myRs = myStmt.executeQuery("SELECT * FROM employees ORDER BY last_name");

            while (myRs.next()) {
                System.out.println(myRs.getString("last_name") + ", " + myRs.getString("first_name"));
            }
        }
        catch (Exception exc) {
            exc.printStackTrace();
        }
        finally {
            if (myRs != null) {
                myRs.close();
            }

            if (myStmt != null) {
                myStmt.close();
            }

            if (myConn != null) {
                myConn.close();
            }
        }
    }

}