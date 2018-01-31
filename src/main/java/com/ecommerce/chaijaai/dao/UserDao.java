package com.ecommerce.chaijaai.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ecommerce.chaijaai.model.User;

@Repository
public interface UserDao extends CrudRepository<User, Long> {

}
