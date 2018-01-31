package com.ecommerce.chaijaai.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ecommerce.chaijaai.model.Cart;

@Repository
public interface CartDao extends CrudRepository<Cart, Long> {

}
