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
	
	public List<UserOrderItem> getAllOrders(){
		return orderItemRepo.getAllOrders();
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
	
	public String updateItemStatus(Long id,String status) {
		OrderedItem orderItem = orderItemRepo.findById(id).orElse(null);
		if(orderItem == null) return "fail";
		
		if(orderItem.getStatus().equals("ordered")) {
			orderItem.setStatus(status);
			orderItemRepo.save(orderItem);
			return "success";
		}
		return "fail";
	}
}
