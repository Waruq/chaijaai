package com.ecommerce.chaijaai.model;

import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;
import org.hibernate.validator.constraints.NotEmpty;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name="Product")
public class Product {

	@Id@GeneratedValue(strategy=GenerationType.IDENTITY)
	long id;
	
	@NotNull(message="Name is required")
	@NotEmpty(message="Name is required")
	@Column(name="Name")
	String name;
	
	@NotNull(message="Description is required")
	@NotEmpty(message="Description is required")
	@Column(name="Description")
	String description;
	
	@NotNull(message="Price is required")
	@Column(name="Price")
	Double price;
	
	@Column(name="Weight")
	Double weight;
	
	@ManyToOne(fetch=FetchType.EAGER)
	@NotNull(message="Unit is required")
	@JoinColumn(name="Unit_ID")
	ProductUnit unit;
	
	@ManyToOne(fetch=FetchType.EAGER)
	@NotNull(message="Product Category is required")
	@JoinColumn(name="Category_ID")
	ProductCategory category;
	
	@ManyToOne(fetch=FetchType.EAGER)
	@NotNull(message="Product Type is required")
	@JoinColumn(name="Type_ID")
	ProductType type;
	
	@ManyToOne(fetch=FetchType.EAGER)
	@NotNull(message="Product Flavor is required")
	@JoinColumn(name="Flavor_ID")
	ProductFlavor flavor;
	
	@LazyCollection(LazyCollectionOption.FALSE)
	@ElementCollection
	@CollectionTable(name="Product_Images")
	List<String> images = new ArrayList<String>();

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

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Double getWeight() {
		return weight;
	}

	public void setWeight(Double weight) {
		this.weight = weight;
	}

	public ProductUnit getUnit() {
		return unit;
	}

	public void setUnit(ProductUnit unit) {
		this.unit = unit;
	}

	public ProductCategory getCategory() {
		return category;
	}

	public void setCategory(ProductCategory category) {
		this.category = category;
	}

	public ProductType getType() {
		return type;
	}

	public void setType(ProductType type) {
		this.type = type;
	}

	public ProductFlavor getFlavor() {
		return flavor;
	}

	public void setFlavor(ProductFlavor flavor) {
		this.flavor = flavor;
	}

	public List<String> getImages() {
		return images;
	}

	public void setImages(List<String> images) {
		this.images = images;
	}
	
	
	
}
