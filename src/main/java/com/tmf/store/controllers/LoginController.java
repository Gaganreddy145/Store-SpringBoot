package com.tmf.store.controllers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tmf.store.entites.User;
import com.tmf.store.repositories.UserRepository;
import com.tmf.store.services.UserService;
import com.tmf.store.utils.DbConnection;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	@Autowired
	private UserService userService;
	

	@PostMapping("/auth")
	public String authenticateUser(Model m,HttpSession session,@RequestParam("email") String email, @RequestParam("password") String password) {
//		try {
//			Connection conn = DbConnection.getConnection();
//			String selectQuery = "select * from user_details";
//			PreparedStatement ps = conn.prepareStatement(selectQuery);
//			ResultSet rs = ps.executeQuery();
//			while (rs.next()) {
//				System.out.println("Id: " + rs.getInt(1) + " firstname: " + rs.getString("first_name"));
//			}
//			ps.close();
//			conn.close();
//		} catch (ClassNotFoundException | SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
		//System.out.println("email" + email);
		
		User user = userService.authUser(email, password);
		if(user == null || user.getRole().equals("admin")) {
			m.addAttribute("error","Incorrect email or password");
			return "login";
		}
		
		session.setAttribute("user", user);
		return "redirect:/items";
	}
	
	@PostMapping("/auth/admin")
	public String authenticateAdmin(Model m,HttpSession session,@RequestParam("email") String email,@RequestParam("password") String password) {
		User user = userService.authUser(email, password);
		if(user == null || user.getRole().equals("customer")) {
			m.addAttribute("error","Incorrect email or password");
			return "login";
		}
		
		session.setAttribute("user", user);
		return "redirect:/items/admin";
	}
	
	@GetMapping
	public String getLoginPage(HttpSession session) {
		User user = (User) session.getAttribute("user");
		if(user != null) return "redirect:/items";
		return "login";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "login";
	}
}
