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

@Entity
@Table(name="Cart_Item")
public class CartItem {

	@Id@GeneratedValue(strategy=GenerationType.IDENTITY)
	long id;
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="Product_ID")
	Product product; 
	
	@NotNull(message="Quantity is required")
	@Column(name="Quantity")
	Integer quantity;
	
	@NotNull(message="Unit Price is required")
	@Column(name="Unit_Price")
	Double unitPrice;
	
	@NotNull(message="Price is required")
	@Column(name="Price")
	Double price;

	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="Cart_ID")
	Cart cart;
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Double getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Double unitPrice) {
		this.unitPrice = unitPrice;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}


	
	
}
