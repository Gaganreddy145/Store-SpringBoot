package com.tmf.store.controllers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tmf.store.utils.DbConnection;

@Controller
@RequestMapping("/login")
public class LoginController {

	@GetMapping("/auth")
	public String authenticateUser(@RequestParam("email") String email, @RequestParam("password") String password) {
		try {
			Connection conn = DbConnection.getConnection();
			String selectQuery = "select * from user_details";
			PreparedStatement ps = conn.prepareStatement(selectQuery);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				System.out.println("Id: " + rs.getInt(1) + " firstname: " + rs.getString("first_name"));
			}
			ps.close();
			conn.close();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "something";
	}
}
