package com.ecommerce.chaijaai.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ecommerce.chaijaai.model.CustomerAddress;

@Repository
public interface CustomerAddressDao extends CrudRepository<CustomerAddress, Long> {

}
