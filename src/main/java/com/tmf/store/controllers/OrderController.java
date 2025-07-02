package com.tmf.store.controllers;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tmf.store.utils.CartItem;

@Controller
@RequestMapping("/orders")
public class OrderController {

	@GetMapping
	public String getAllOrders() {
		return "Orders";
	}
	
	@PostMapping
	@ResponseBody
	public ResponseEntity<String> createOrder(@RequestBody List<CartItem> cartItems) {
		System.out.println(cartItems.size());
		return ResponseEntity.ok("Order received successfully");
	}
}
