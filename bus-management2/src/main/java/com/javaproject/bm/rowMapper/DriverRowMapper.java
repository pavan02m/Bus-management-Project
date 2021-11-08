package com.javaproject.bm.rowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import com.javaproject.bm.api.Driver;

public class DriverRowMapper implements RowMapper<Driver>{

	@Override
	public Driver mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		Driver driver = new Driver();
		
		driver.setDriver_name(rs.getString("driver_name"));
		driver.setLastname(rs.getString("lastname"));
		driver.setEmail(rs.getString("email"));
		driver.setAddress(rs.getString("address"));
		driver.setPincode(rs.getInt("pincode"));
		driver.setContact_number(rs.getBigDecimal("contact_number"));
		driver.setLicence_number(rs.getString("licence_number"));
		driver.setAuthority_number(rs.getString("authority_number"));
		driver.setExpiry_date(rs.getString("expiry_date"));
		driver.setState_issued(rs.getString("state_issued"));
		
		return driver;
	}

	
}
