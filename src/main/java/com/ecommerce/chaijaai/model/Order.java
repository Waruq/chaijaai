package com.ecommerce.chaijaai.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="Orders")
public class Order {

	@Id@GeneratedValue(strategy=GenerationType.IDENTITY)
	long id;
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="Cart_ID")
	Cart cart;
	
	@Column(name="Order_ID")
	String orderId;
	
	@DateTimeFormat(pattern="dd-MM-yyyy")
	Date date;
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="Address_ID")
	CustomerAddress address;

	@Column(name="Status")
	String status;
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public CustomerAddress getAddress() {
		return address;
	}

	public void setAddress(CustomerAddress address) {
		this.address = address;
	}
	
	
}
