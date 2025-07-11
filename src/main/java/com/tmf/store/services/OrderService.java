package com.tmf.store.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tmf.store.entites.OrderedItem;
import com.tmf.store.repositories.OrderedItemRepository;
import com.tmf.store.utils.UserOrderItem;

@Service
public class OrderService {
	
	@Autowired
	private OrderedItemRepository orderItemRepo;
	
	public List<UserOrderItem> getAllOrdersOfUser(Long userId){
		return orderItemRepo.getOrders(userId);
	}
	
	public String cancelItem(Long orderItemId) {
		OrderedItem orderItem = orderItemRepo.findById(orderItemId).orElse(null);
		if(orderItem == null) return "fail";
		
		if(orderItem.getStatus().equals("ordered")) {
			orderItem.setStatus("cancelled");
			orderItemRepo.save(orderItem);
			return "success";
		}
		return "fail";
	}
}
