package com.tmf.store.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tmf.store.entites.Item;

@Repository
public interface ItemRepository extends JpaRepository<Item, Long>{

}
