package com.ecommerce.chaijaai.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ecommerce.chaijaai.model.ProductCategory;

@Repository
public interface ProductCategoryDao extends CrudRepository<ProductCategory, Long>{

	
}
