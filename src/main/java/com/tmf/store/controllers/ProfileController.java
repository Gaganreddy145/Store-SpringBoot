package com.tmf.store.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tmf.store.entites.Address;
import com.tmf.store.entites.User;
import com.tmf.store.services.UserService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/profile")
public class ProfileController {

	@Autowired
	private UserService userService;

	@GetMapping
	public String getProfileDetails(HttpSession session, Model m) {
		User user = (User) session.getAttribute("user");
		List<Address> addressList = userService.getAddressListByUser(user);
		if (addressList != null) {
			m.addAttribute("addresses", addressList);
			return "Profile";
		}
		return "redirect:/login";
	}
}
