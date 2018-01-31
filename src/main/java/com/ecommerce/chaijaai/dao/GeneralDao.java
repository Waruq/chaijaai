package com.ecommerce.chaijaai.dao;

import java.util.List;

import com.ecommerce.chaijaai.model.Product;

public interface GeneralDao{
	public List<Product> productsOnType(String type);
	public List<Product> productsOnFlavor(String flavor);
	public List<Product> productsOnTypeAndFlavour(String type, String flavor);
}
