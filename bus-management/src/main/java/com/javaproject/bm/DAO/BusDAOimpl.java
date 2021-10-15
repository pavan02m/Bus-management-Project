package com.javaproject.bm.DAO;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.javaproject.bm.api.Bus;
import com.javaproject.bm.rowMapper.BusRowMapper;

@Repository
public class BusDAOimpl implements BusDAO {
	
	@Autowired
	 JdbcTemplate jdbcTemplate;
	
	@Override
	public List<Bus> loadBuses() {
		// TODO Auto-generated method stub
		 String sql = "SELECT * FROM javaproject.buses";
		List<Bus> listOfBus = jdbcTemplate.query(sql, new BusRowMapper());
		 
		return listOfBus;
	}

}
