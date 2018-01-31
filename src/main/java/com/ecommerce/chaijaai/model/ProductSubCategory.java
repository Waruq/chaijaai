package com.ecommerce.chaijaai.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;


@Entity
@Table(name="Product_Sub_Category")
public class ProductSubCategory {

	@Id@GeneratedValue(strategy=GenerationType.IDENTITY)
	long id;
	
	@NotNull(message="SubCategory Name is required")
	@NotEmpty(message="SubCategory Name is required")
	@Column(name="Name")
	String name;
	
	@NotNull(message="Category is required")
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="Category_ID")
	ProductCategory productCategory;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public ProductCategory getCategory() {
		return productCategory;
	}

	public void setCategory(ProductCategory productCategory) {
		this.productCategory = productCategory;
	}
	
	
	
}
