package Dao;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.PageContext;

public class User {
	private String userName;
	private String passwd;

	public User() {
		// TODO Auto-generated constructor stub
	}

	public User(String userName, String passwd) {
		super();
		this.passwd = passwd;
		this.userName = userName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
/*
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String username = (String) request.getAttribute("username");
		String passwd = (String)request.getAttribute("passwd");
		if(username.equals("admin")&&passwd.equals("admin")) {
			User u = new User("username",username);
			pagecon
		}
		
	}*/

}
