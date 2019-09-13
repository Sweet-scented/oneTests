package Dao;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao {
public UserDao() {
	// TODO Auto-generated constructor stub
	
	
}
public void createDriver() {
	try {
		Class.forName("com.mysql.jdbc.Driver");
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	try {
		Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.45.129:3306/Test","root","155465");
		Statement stat = (Statement) conn.createStatement();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
public boolean Querry(String username, String passwd) {
	String QuerrySQL= "SELECT * from User where username='"+username+"'and passwd ='"+passwd+"'";
	ResultSet rs = stat.executeQuery(QuerrySQL);
	boolean flag = false;
	if(rs.next()){
		flag = true;
		session.setAttribute("username", username);
	}else{
		flag = false;
	}
	return flag;
}

}
