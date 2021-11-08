package com.javaproject.bm.api;

public class BusDTO {

	private int bus_id;
	private String bus_no;
	private float arrival_time;
	private float dispater_time;
	private String diver;
	

	public int getBus_id() {
		return bus_id;
	}
	public void setBus_id(int bus_id) {
		this.bus_id = bus_id;
	}
	public String getBus_no() {
		return bus_no;
	}
	public void setBus_no(String bus_no) {
		this.bus_no = bus_no;
	}
	public float getArrival_time() {
		return arrival_time;
	}
	public void setArrival_time(float arrival_time) {
		this.arrival_time = arrival_time;
	}
	public float getDispater_time() {
		return dispater_time;
	}
	public void setDispater_time(float dispater_time) {
		this.dispater_time = dispater_time;
	}
	public String getDiver() {
		return diver;
	}
	public void setDiver(String diver) {
		this.diver = diver;
	}
	
	@Override
	public String toString() {
		return "BusDTO [bus_id=" + bus_id + ", bus_no=" + bus_no + ", arrival_time=" + arrival_time + ", dispater_time="
				+ dispater_time + ", diver=" + diver + "]";
	}
	
	
	
	}	

