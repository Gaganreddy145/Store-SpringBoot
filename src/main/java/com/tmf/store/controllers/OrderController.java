package com.tmf.store.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tmf.store.entites.User;
import com.tmf.store.services.OrderService;
import com.tmf.store.utils.CartItem;
import com.tmf.store.utils.UserOrderItem;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/orders")
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	
	@GetMapping
	public String getAllOrders(HttpSession session,Model m) {
		User user = (User)session.getAttribute("user");
		if(user != null) {
			List<UserOrderItem> orders = orderService.getAllOrdersOfUser(user.getId());
			m.addAttribute("orders",orders);
//			System.out.println(orders.size());
		}
		return "Orders";
	}
	
	@PostMapping
	@ResponseBody
	public ResponseEntity<String> createOrder(HttpSession session,@RequestBody List<CartItem> cartItems) {
		for(CartItem item:cartItems) {
			System.out.println(item.getItemId() + "-" + item.getQuantity());	
		}
		System.out.println("Size: " + cartItems.size());
		User user = (User) session.getAttribute("user");
		System.out.println(user.getFirstName());
		return ResponseEntity.ok("Order received successfully");
	}
}
