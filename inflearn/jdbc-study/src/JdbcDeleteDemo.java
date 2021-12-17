import java.sql.*;

public class JdbcDeleteDemo {

    public static void main(String[] args) throws SQLException {
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;

        String dbUrl = "jdbc:mysql://localhost:3306/demo"; // SSL issue replace: jdbc:mysql://localhost:3306/demo?useSSL=false
        String user = "";   // mysql user
        String password = "";   // mysql user password

        try {
            // Get a connection to database
            myConn = DriverManager.getConnection(dbUrl, user, password);

            // Create a statement
            myStmt = myConn.createStatement();

            // Call helper method to display the employee's information
            System.out.println("BEFORE THE DELETE...");
            displayEmployee(myConn, "John", "Doe");

            // DELETE the employee
            System.out.println("\nDELETE the employee: John Doe\n");

            int rowsAffected = myStmt.executeUpdate(
                    "DELETE FROM employees " +
                            "WHERE last_name='Doe' AND first_name='John'");

            // Call helper method to display the employee's information
            System.out.println("AFTER THE DELETE...");
            displayEmployee(myConn, "John", "Doe");

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            close(myConn, myStmt, myRs);
        }

    }

    private static void close(PreparedStatement pstmt, ResultSet resultSet) throws SQLException {
        close(null, pstmt, resultSet);
    }

    private static void close(Connection connection, Statement stmt, ResultSet resultSet) throws SQLException {
        if (connection != null) {
            connection.close();
        }
        if (stmt != null) {
            stmt.close();
        }
        if (resultSet != null) {
            resultSet.close();
        }
    }

    private static void displayEmployee(Connection connection, String firstName, String lastName) throws SQLException {
        PreparedStatement pstmt = null;
        ResultSet resultSet = null;

        try {
            pstmt = connection.prepareStatement("SELECT last_name, first_name, email FROM employees WHERE last_name=? AND first_name=?");
            pstmt.setString(1, lastName);
            pstmt.setString(2, firstName);

            resultSet = pstmt.executeQuery();

            boolean found = false;

            while (resultSet.next()) {
                String theLastName = resultSet.getString("last_name");
                String theFirstName = resultSet.getString("first_name");
                String email = resultSet.getString("email");

                System.out.printf("%s %s %s\n", theFirstName, theLastName, email);
                found = true;
            }

            if (!found) {
                System.out.println("Employee NOT found: " + firstName + " " + lastName);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            close(pstmt, resultSet);
        }
    }
}
