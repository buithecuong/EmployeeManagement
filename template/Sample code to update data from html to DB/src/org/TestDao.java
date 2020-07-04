package org;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class TestDao {

	/*
	 * Just as the below method you need to create your own method For the
	 * functionality that you want to test with the DB
	 * 
	 * Sample commands for different queries are :
	 * 
	 * For Select query the given method explains
	 * 
	 * For Insert query insert into Employee values(?,?,?)"
	 * 
	 * For Delete query delete from Employee where id = ?"
	 */

	public static String login(String email, String password) {
		String query = "select * from  Employee where name = ? and password = ?";

		try {
			Connection con = DBConnect.getConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, password);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				return "true";
			}

			ps.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "false";
	}
}
