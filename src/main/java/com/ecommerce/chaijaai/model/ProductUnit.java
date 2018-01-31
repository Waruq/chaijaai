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
@Table(name="Product_Unit")
public class ProductUnit {

	@Id@GeneratedValue(strategy=GenerationType.IDENTITY)
	long id;
	
	@NotNull(message="Unit Name is required")
	@NotEmpty(message="Unit Name is required")
	@Column(name="Name")
	String name;
	
	
	@NotNull(message="Description is required")
	@NotEmpty(message="Description is required")
	@Column(name="Description")
	String description;


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


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}
	
	
}
