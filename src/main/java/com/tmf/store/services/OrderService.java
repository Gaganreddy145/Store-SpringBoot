package com.tmf.store.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tmf.store.repositories.OrderedItemRepository;
import com.tmf.store.utils.UserOrderItem;

@Service
public class OrderService {
	
	@Autowired
	private OrderedItemRepository orderItemRepo;
	
	public List<UserOrderItem> getAllOrdersOfUser(Long userId){
		return orderItemRepo.getOrders(userId);
	}
}
