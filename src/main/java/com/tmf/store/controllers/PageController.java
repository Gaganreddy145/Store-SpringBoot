package com.tmf.store.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PageController {

	@RequestMapping(path = "/register", method = RequestMethod.GET)
	public String getRegisterPage() {
		return "Register";
	}

	@GetMapping("/items")
	public String getItemsPage() {
		return "Items";
	}
}
