package com.javaproject.bm.controllers;

import java.util.List;







import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaproject.bm.DAO.BusDAO;
import com.javaproject.bm.DAO.BusDAOimpl;
import com.javaproject.bm.DAO.DriverDAO;
import com.javaproject.bm.DAO.SignupDAO;
import com.javaproject.bm.api.Bus;
import com.javaproject.bm.api.BusDTO;
import com.javaproject.bm.api.Driver;
import com.javaproject.bm.api.DriverDTO;
import com.javaproject.bm.api.UserDTO;

@Controller
public class BusController {
	@Autowired
	PasswordEncoder passwordEncoder;
	
	@Autowired
	private SignupDAO signupDAO;

	@Autowired
	private BusDAO busDAO;
	
	@Autowired
	private DriverDAO driverDAO;
	
	// LOGIN PAGE 
	
	@GetMapping("/mylogin")
	public String login() {
		
		return "admin";
	}
	
	@GetMapping("/index")
	public String index() {
		
		return "index";
	}
	
	@GetMapping("/dashboard")
	public String dashboard() {

		return "dashboard";
	}
	
	@GetMapping("/")
	private String singIn(@ModelAttribute("userdto") UserDTO userDTO) {
		
		return "index";
	}
	
	@PostMapping("/signin-process")
	public String processSignIn(UserDTO userDTO) {
		
		System.out.println(userDTO);
		
		//password encoding
		
		String encodepassword = passwordEncoder.encode(userDTO.getPassword());
		userDTO.setPassword(encodepassword);
		
		//writting logic to save user
		
		signupDAO.saveUser(userDTO);
		
		return "redirect:/mylogin";
	}
	
	// BUS PAGE DISPLAY AND ADD
	
	@GetMapping("/busList")
	public String showBuses(Model model) {
		// call service to get the data
			List<Bus> busList = busDAO.loadBuses();
			model.addAttribute("buses", busList);
		return "bus";

	}
	 
	
	/*
	 * @GetMapping("/search") public String searchBus(Model
	 * model, @RequestParam("keyword") int id) { Bus busList2 =
	 * busDAO.searchBus(id); System.out.println("keyword :"+id);
	 * model.addAttribute("buses", busList2); return "bus"; }
	 */
	
	@GetMapping("/addBus")
	private String addBus(Model model) {
		BusDTO busDTO = new BusDTO();
		
		model.addAttribute("bus",busDTO);
		
		return "add-bus";
	}
	
	@PostMapping("/save-bus")
	private String saveBus(BusDTO busDTO) {
		// Logic to save BUS
		System.out.println(busDTO);
		
		//DO condition check
		// If the bus doesn't have bus_no then do a insert
		//If the bus does have bus_no then do a update
		
		if(busDTO.getBus_id() ==  0) {
			// do DAO call t0 save Bus
			busDAO.saveBus(busDTO);
		}
		else {
			// do an update
			busDAO.update(busDTO);
		}
		return "redirect:/busList";
	} 
	
	// Update Bus
	@GetMapping("/updateBus")
	private String updateBus(@RequestParam("busID") int busID,Model model) {
		// give a user object to fetch the data
		System.out.println("Looking data for bus :"+ busID);
		
		 Bus theBus = busDAO.getBus(busID); 
		
		System.out.println(theBus);
		
		// sending student Data
		/*bus.setBus_no(theBus.getBus_no());
		bus.setArrival_time(theBus.getArrival_time());
		bus.setDispater_time(theBus.getDispater_time());
		bus.setDiver(theBus.getDiver());*/
		
		// OR
		model.addAttribute("bus", theBus);
		return "add-bus";
	}
	
	// DELETE BUS
	@GetMapping("/deleteBus")
	private String deleteBus(@RequestParam("busID") int busID) {
		// Capture Bus_no
		// Do DAO call
		
		busDAO.deleteBus(busID);
		
		return "redirect:/busList";
	}
	
	
	//Driver
	
	@GetMapping("/driverList")
	public String showDriver(Model model) {
		// call DAO to get the data
		List<Driver> driverList = driverDAO.loadDrivers();
		
		model.addAttribute("drivers", driverList);
		
		return "driver";

	}
	
	@GetMapping("/addDriver")
	private String addDriver(Model model) {
		
		DriverDTO driverDTO = new DriverDTO();
		
		model.addAttribute("driver",driverDTO);
		
		return "adddriver";
	}
	
	@PostMapping("/save-driver")
	private String saveDriver(DriverDTO driverDTO) {
		// Logic to save Driver
		System.out.println(driverDTO);
		// do DAO call t0 save Bus
		driverDAO.saveDriver(driverDTO);
		
		return "redirect:/driverList";
	} 
	
	// FOR SERACHING 
	/*
	 * @RequestMapping("/search") public String search(@RequestParam("querybox")
	 * String busNo, Model model){
	 * 
	 * List<Bus> busList = busDAO.searchBus(busNo);
	 * 
	 * model.addAttribute("search", busList);
	 * 
	 * return"redirect:/busList"; }
	 */
}
