package com.ecommerce.chaijaai.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ecommerce.chaijaai.model.CartItem;

@Repository
public interface CartItemDao extends CrudRepository<CartItem, Long> {

}
