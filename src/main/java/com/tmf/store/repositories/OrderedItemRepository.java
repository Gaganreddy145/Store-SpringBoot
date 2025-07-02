package com.tmf.store.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tmf.store.entites.OrderedItem;

@Repository
public interface OrderedItemRepository extends JpaRepository<OrderedItem, Long>{

}
