package com.tmf.store.services;

import java.util.List;

import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tmf.store.entites.Address;
import com.tmf.store.entites.User;
import com.tmf.store.repositories.UserRepository;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepo;
	
	public User authUser(String email,String password) {
		List<User> userList = userRepo.findByEmailAndPassword(email, password);
		if(userList.size() == 1) {
			return userList.get(0);
		}
		return null;
	}
	
	@Transactional
	public List<Address> getAddressListByUser(User user){
		if(user != null) {
			User userForAddress = userRepo.findById(user.getId()).orElse(null);
			if(userForAddress != null) {				
				Hibernate.initialize(userForAddress.getAddressList());
				return userForAddress.getAddressList();
			}
		}
		return null;
	}
}
