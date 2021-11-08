package com.javaproject.bm.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.javaproject.bm.api.Driver;
import com.javaproject.bm.api.DriverDTO;
import com.javaproject.bm.rowMapper.DriverRowMapper;

@Repository
public class DriverDAOImpl implements DriverDAO {

	@Autowired
	 JdbcTemplate jdbcTemplate;
	
	@Override
	public List<Driver> loadDrivers() {
		// TODO Auto-generated method stub
		 String sql5 = "SELECT * FROM javaproject.drivers";
		 
			List<Driver> listOfDrivers = jdbcTemplate.query(sql5, new DriverRowMapper());
			 
			return listOfDrivers;
	}

	@Override
	public void saveDriver(DriverDTO driverDTO) {
		// TODO Auto-generated method stub
		java.lang.Object[] sqlparameters2 = {driverDTO.getDriver_name(),driverDTO.getLastname(),driverDTO.getEmail(),driverDTO.getAddress(),driverDTO.getPincode(),driverDTO.getContact_number(),driverDTO.getLicence_number(),driverDTO.getAuthority_number(),driverDTO.getExpiry_date(),driverDTO.getState_issued()};
		
		String sql6 = "insert into drivers(driver_name,lastname,email,address,pincode,contact_number,licence_number,authority_number,expiry_date,state_issued) values(?,?,?,?,?,?,?,?,?,?)";
		
		jdbcTemplate.update(sql6, sqlparameters2);
	}

}
