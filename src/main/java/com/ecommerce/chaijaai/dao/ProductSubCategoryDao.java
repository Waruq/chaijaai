package com.ecommerce.chaijaai.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ecommerce.chaijaai.model.ProductSubCategory;

@Repository
public interface ProductSubCategoryDao extends CrudRepository<ProductSubCategory, Long> {

}
