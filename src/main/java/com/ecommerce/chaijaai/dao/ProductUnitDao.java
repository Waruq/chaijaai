package com.ecommerce.chaijaai.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ecommerce.chaijaai.model.ProductUnit;

@Repository
public interface ProductUnitDao extends CrudRepository<ProductUnit, Long> {

}
