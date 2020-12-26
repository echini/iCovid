package register;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class userdao {

	
	private String dbUrl = "jdbc:mysql://localhost:3306/userdb?serverTimezone=UTC";
	private String dbUname = "root";
	private String dbPassword = "a2a4a5p54473";
	private String dbDriver = "com.mysql.cj.jdbc.Driver";



	
	public void  loadDriver(String dbDriver){
		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
	public Connection getConnection(){
		Connection con = null ;
		try {
			con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
	
	//for register user
	public boolean insert(user user)
	{
		boolean res=false;
		loadDriver(dbDriver);
		Connection con = getConnection();
		String sql = "INSERT INTO user values(?,?)";
		
		PreparedStatement ps;
		try {
		ps = con.prepareStatement(sql);
		ps.setString(1, user.getName());
		ps.setString(2, user.getEmail());
		ps.executeUpdate();
		res=true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	}


	public boolean validate(String name,String email)
	{
		boolean status=false;
		
		loadDriver(dbDriver);
		Connection con = getConnection();
		
		String sql = "SELECT * FROM user WHERE email= ? ";
		
		PreparedStatement ps;
		try {
		ps = con.prepareStatement(sql);
		ps.setString(1,user.getEmail());
		
		ResultSet rs = ps.executeQuery();
		status= rs.next();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}

	
}