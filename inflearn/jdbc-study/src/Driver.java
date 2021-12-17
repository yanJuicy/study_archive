import java.sql.*;

public class Driver {

    public static void main(String[] args) throws SQLException {
        Connection myConn = null;
        PreparedStatement myStmt = null;
        ResultSet myRs = null;

        String dbUrl = "jdbc:mysql://localhost:3306/demo"; // SSL issue replace: jdbc:mysql://localhost:3306/demo?useSSL=false
        String user = "yanju";   // mysql user
        String password = "gkswn14520";   // mysql user password


        // Get a connection to database
        try {
            myConn = DriverManager.getConnection(dbUrl, user, password);

            myStmt = myConn.prepareStatement("SELECT * FROM employees WHERE salary>? AND department=?");
            myStmt.setDouble(1, 80000);
            myStmt.setString(2, "Legal");

            myRs = myStmt.executeQuery();

            display(myRs);

            //
            // Reuse the prepared statement:  salary > 25000,  department = HR
            //
            System.out.println("\n\nReuse the prepared statement:  salary > 25000,  department = HR");

            // 6. Set the parameters
            myStmt.setDouble(1, 25000);
            myStmt.setString(2, "HR");

            // 7. Execute SQL query
            myRs = myStmt.executeQuery();

            // 8. Display the result set
            display(myRs);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (myConn != null) {
                myConn.close();
            }
            if (myStmt != null) {
                myStmt.close();
            }
            if (myRs != null) {
                myRs.close();
            }
        }
    }

    private static void display(ResultSet myRs) throws SQLException {
        while(myRs.next()) {
            String lastName = myRs.getString("last_name");
            String firstName = myRs.getString("first_name");
            double salary = myRs.getDouble("salary");
            String department = myRs.getString("department");

            System.out.printf("%s %s %.2f %s\n", lastName, firstName, salary, department);
        }
    }


}
