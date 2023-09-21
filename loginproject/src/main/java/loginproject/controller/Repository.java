package loginproject.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Random;

import loginproject.model.User;

public class Repository {

	public static int saveUser(User user) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/akshay", "root", "root");
		// here sonoo is database name, root is username and password
		PreparedStatement pst = con.prepareStatement("insert into user(id,email,password) values(?,?,?)");
		Random random = new Random();
		pst.setInt(1, random.nextInt());
		pst.setString(2, user.getEmail());
		pst.setString(3, user.getPassword());
		int executeUpdate = pst.executeUpdate();
		return executeUpdate;
//		return 0;
	}

}
