package com.ecommerce.chaijaai.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ecommerce.chaijaai.model.Order;

@Repository
public interface OrderDao extends CrudRepository<Order, Long> {

}
