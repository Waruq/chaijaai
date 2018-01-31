package com.ecommerce.chaijaai.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="User")
public class User {

	@Id@GeneratedValue(strategy=GenerationType.IDENTITY)
	long id;

	@Column(name="First_Name")
	String firstName;
	
	@Column(name="Last_Name")
	String lastName;
	
	@Column(name="Email")
	String email;
	
	@Column(name="Contact_No")
	String contactNo;
	
	@Column(name="Password")
	String password;
	
	@Column(name="Image")
	String image;
}
