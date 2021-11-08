package com.javaproject.bm.DAO;

import java.util.ArrayList;
import java.util.EventObject;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.javaproject.bm.api.Bus;
import com.javaproject.bm.api.BusDTO;
import com.javaproject.bm.rowMapper.BusRowMapper;
import com.mysql.cj.x.protobuf.MysqlxDatatypes.Object;

@Repository
public class BusDAOimpl implements BusDAO {
	
	@Autowired
	 JdbcTemplate jdbcTemplate;
	
	@Override
	public List<Bus> loadBuses() {
		// TODO Auto-generated method stub
		 String sql3 = "SELECT * FROM javaproject.buses";
		 
		List<Bus> listOfBus = jdbcTemplate.query(sql3, new BusRowMapper());
		 
		return listOfBus;
	}

	@Override
	public void saveBus(BusDTO busDTO) {
		
		// to save to db
		
		java.lang.Object[] sqlparameters = {busDTO.getBus_no(),busDTO.getArrival_time(),busDTO.getDispater_time(),busDTO.getDiver()};
		
		String sql4 = "insert into buses(bus_no,arrival_time,dispater_time,driver) values(?,?,?,?)";
		 
		jdbcTemplate.update(sql4, sqlparameters);
	}

	@Override
	public Bus getBus(int busID) {
		
		String sql = "SELECT * FROM buses WHERE bus_id = ?";
		Bus bus = jdbcTemplate.queryForObject(sql, new BusRowMapper(), busID);
		
		return bus;
	}

	@Override
	public void update(BusDTO busDTO) {
		// TODO Auto-generated method stub
		String sql = "update buses set bus_no = ?, arrival_time = ?, dispater_time = ?, driver  = ? where bus_id = ?";
		jdbcTemplate.update(sql,busDTO.getBus_no(), busDTO.getArrival_time(),busDTO.getDispater_time(),busDTO.getDiver(),busDTO.getBus_id());
		System.out.println("Record updated...");
	}

	@Override
	public void deleteBus(int busID) {
		// TODO Auto-generated method stub
		String sql = "delete from buses where bus_id = ?";
		jdbcTemplate.update(sql, busID);
		
	}

	/*
	 * @Override public Bus searchBus(int id) { // TODO Auto-generated method stub
	 * String sql = "select * from buses where bus_id = ?";
	 * 
	 * return jdbcTemplate.queryForObject(sql, new BusRowMapper(), id); }
	 */

	
}
