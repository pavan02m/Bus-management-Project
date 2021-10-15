package com.javaproject.bm.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.javaproject.bm.DAO.BusDAO;
import com.javaproject.bm.DAO.BusDAOimpl;
import com.javaproject.bm.api.Bus;

@Controller
public class BusController {

	@Autowired
	private BusDAO BusDAO;

	
	  @GetMapping("/showBus") public String showBuses(Model model) {
	  
	  List<Bus> busList = BusDAO.loadBuses(); model.addAttribute("buses",busList);
	  return "index"; 
	  }
	 

	
	
	  @GetMapping("/admin") public String adminPage() {
	  
	  return "admin"; }
	 
	  
}
