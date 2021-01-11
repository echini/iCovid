package register;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;



public class userdao {

	private String dbUrl = "jdbc:mysql://localhost:3306/userdb?serverTimezone=UTC";
	private String dbUname = "root";
	private String dbPassword = "";
	private String dbDriver = "com.mysql.cj.jdbc.Driver";



	
	public void loadDriver(String dbDriver){
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
		String sql = "INSERT INTO user values(?,?,?,?)";
		
		PreparedStatement ps;
		try {
		ps = con.prepareStatement(sql);
		ps.setString(1, user.getName());
		ps.setString(2, user.getEmail());
		ps.setString(3, user.getLat());
		ps.setString(4, user.getLng());
		ps.executeUpdate();
		res=true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	}
	
	public boolean validate(user user)
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
	
	public ArrayList<String> getCoords(user user)
	{
		ArrayList<String> coords =new ArrayList<String>();
		loadDriver(dbDriver);
		Connection con = getConnection();
		
		String sql = "SELECT lat,lng FROM user";
		
		PreparedStatement ps;
		try {
			ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				coords.add(rs.getString("lat"));
				coords.add(rs.getString("lng"));
				
			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
	}
	return coords;
	}
}