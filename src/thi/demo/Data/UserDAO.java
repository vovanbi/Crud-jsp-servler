package thi.demo.Data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import thi.demo.model.Users;

public class UserDAO {

	    private String jdbcURL = "jdbc:sqlserver://localhost:1433;databasename=THI";
	    private String jdbcUsername = "sa";
	    private String jdbcPassword = "123";

	    private static final String INSERT = "INSERT INTO USERS" + "  (firstname, lastname, username,password) VALUES " +
	        " (? ,? ,? ,? );";

	    private static final String SELECT_USER = "select id,firstname,lastname,username,password from USERS where id =?";
	    private static final String SELECT_ALL_USERS = "select * from USERS";
	    private static final String DELETE = "delete from USERS where id = ?;";
	    private static final String UPDATE = "update USERS set firstname = ?,lastname= ?, username =?,password=? where id = ?;";

	    public UserDAO() {}

	    public Connection getConnection() {
	        Connection connection = null;
	        try {
	            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
	        	System.out.print("connection sucess");
	        } catch (SQLException e) {
	        
	            e.printStackTrace();
	        } catch (ClassNotFoundException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
	        return connection;
	    }
	    public static boolean checklogin(String username,String password){  
	    	boolean status=false;  
	    	try{
	    	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");  
	    	Connection con=DriverManager.getConnection(  
	    	"jdbc:sqlserver://localhost:1433;databaseName=THI","sa","123");  
	    	PreparedStatement ps=con.prepareStatement(
	    	"select * from USERS where username=? and password=? ");  
	    	ps.setString(1,username);  
	    	ps.setString(2,password); 
	    	ResultSet rs=ps.executeQuery();  
	    	status=rs.next();  
	    	
	    	}catch(Exception e){
	    		System.out.println(e);
	    	}  
	    	return status;  
	    	} 
	    public int insertUser(Users user) throws SQLException {
	        int status=0;  
	        System.out.println(INSERT);
	        // try-with-resource statement will auto close the connection.
	        try (Connection connection = getConnection();
	        PreparedStatement preparedStatement = connection.prepareStatement(INSERT);) {
	            preparedStatement.setString(1, user.getFirstname());
	            preparedStatement.setString(2, user.getLastname());
	            preparedStatement.setString(3, user.getUsername());
	            preparedStatement.setString(4, user.getPassword());
	            status=preparedStatement.executeUpdate();
//	            System.out.println(preparedStatement);
	    
	             preparedStatement.close();
	        } catch (SQLException e) {
	            printSQLException(e);
	        }
	        return status;
	    }

	    public Users selectUser(int id) {
	        Users user = null;
	      
	        try (Connection connection = getConnection();
	          
	            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER);) {
	            preparedStatement.setInt(1, id);
	            System.out.println(preparedStatement);
	            ResultSet rs = preparedStatement.executeQuery();
	            while (rs.next()) {
	                String firstname = rs.getString("firstname");
	                String lastname = rs.getString("lastname");
	                String username = rs.getString("username");
	                String password = rs.getString("password");
	                user = new Users(id, firstname, lastname, username,password);
	            }
	        } catch (SQLException e) {
	            printSQLException(e);
	        }
	        return user;
	    }

	    public List < Users > selectAllUsers() {

	       
	        List < Users > user = new ArrayList < > ();
	        // thiet lap connection
	        try (Connection connection = getConnection();

	            // tao 1 phuong thuc 
	            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS);) {
	            System.out.println(preparedStatement);
	            // Step 3: thuc thi cau truy van
	            ResultSet rs = preparedStatement.executeQuery();

	            //  truy van  ResultSet doi tuonf
	            while (rs.next()) {
	                int id = rs.getInt("id");
	                String firstname = rs.getString("firstname");
	                String lastname = rs.getString("lastname");
	                String username = rs.getString("username");
	                String password = rs.getString("password");
	       
	                user.add(new Users(id, firstname, lastname, username,password));
	            }
	        } catch (SQLException e) {
	            printSQLException(e);
	        }
	        return user;
	    }

	    public boolean deleteUser(int id) throws SQLException {
	        boolean rowDeleted;
	        try (Connection connection = getConnection(); 
	     	PreparedStatement statement = connection.prepareStatement(DELETE);) {
	            statement.setInt(1, id);
	            rowDeleted = statement.executeUpdate() > 0;
	        }
	        return rowDeleted;
	    }

	    public boolean updateUser(Users user) throws SQLException {
	        boolean rowUpdated;
	        try (Connection connection = getConnection();
	         PreparedStatement statement = connection.prepareStatement(UPDATE);) {
	            statement.setString(1, user.getFirstname());
	            statement.setString(2, user.getLastname());
	            statement.setString(3, user.getUsername());
	            statement.setString(4, user.getPassword());
	            statement.setInt(5, user.getId());

	            rowUpdated = statement.executeUpdate() > 0;
	        }
	        return rowUpdated;
	    }

	    private void printSQLException(SQLException ex) {
	        for (Throwable e: ex) {
	            if (e instanceof SQLException) {
	                e.printStackTrace(System.err);
	                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
	                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
	                System.err.println("Message: " + e.getMessage());
	                Throwable t = ex.getCause();
	                while (t != null) {
	                    System.out.println("Cause: " + t);
	                    t = t.getCause();
	                }
	            }
	        }
	    }
}
