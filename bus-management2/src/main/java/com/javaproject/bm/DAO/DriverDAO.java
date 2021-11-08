package com.javaproject.bm.DAO;

import java.util.List;
import com.javaproject.bm.api.Driver;
import com.javaproject.bm.api.DriverDTO;

public interface DriverDAO {

	List<Driver> loadDrivers();
	
	void saveDriver(DriverDTO driverDTO);
}
