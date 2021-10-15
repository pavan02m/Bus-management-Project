package com.javaproject.bm.rowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.javaproject.bm.api.Bus;

public class BusRowMapper implements RowMapper<Bus>{

	@Override
	public Bus mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		Bus bus = new Bus();
		
		bus.setBus_no(rs.getInt("bus_no"));
		bus.setArrival_time(rs.getFloat("arrival_time"));
		bus.setDispater_time(rs.getFloat("dispater_time"));
		bus.setDiver(rs.getString("driver"));
		
		return bus;
	}

}
