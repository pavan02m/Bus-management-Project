package com.javaproject.bm.api;

import java.math.BigDecimal;
import java.math.BigInteger;

public class Driver {
	
	private String driver_name;
	private String lastname; 
	private String email;
	private String address; 
	private int pincode;
	private BigDecimal contact_number; 
	private String licence_number; 
	private String authority_number;
	private String expiry_date;
	private String state_issued;
	public String getDriver_name() {
		return driver_name;
	}
	public void setDriver_name(String driver_name) {
		this.driver_name = driver_name;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
	public BigDecimal getContact_number() {
		return contact_number;
	}
	public void setContact_number(BigDecimal contact_number) {
		this.contact_number = contact_number;
	}
	public String getLicence_number() {
		return licence_number;
	}
	public void setLicence_number(String licence_number) {
		this.licence_number = licence_number;
	}
	public String getAuthority_number() {
		return authority_number;
	}
	public void setAuthority_number(String authority_number) {
		this.authority_number = authority_number;
	}
	public String getExpiry_date() {
		return expiry_date;
	}
	public void setExpiry_date(String expiry_date) {
		this.expiry_date = expiry_date;
	}
	public String getState_issued() {
		return state_issued;
	}
	public void setState_issued(String state_issued) {
		this.state_issued = state_issued;
	}
	@Override
	public String toString() {
		return "Driver [driver_name=" + driver_name + ", lastname=" + lastname + ", email=" + email + ", address="
				+ address + ", pincode=" + pincode + ", contact_number=" + contact_number + ", licence_number="
				+ licence_number + ", authority_number=" + authority_number + ", expiry_date=" + expiry_date
				+ ", state_issued=" + state_issued + "]";
	}
	
	
}
