package com.ecommerce.chaijaai.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="Product_Category")
public class ProductCategory {

	@Id@GeneratedValue(strategy=GenerationType.IDENTITY)
	long id;
	
	@NotNull(message="Category Name is required")
	@NotEmpty(message="Category Name is required")
	@Column(name="Name")
	String name;
	
	@Column(name="Image")
	String image;

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

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	
	
}
