package com.javaproject.bm.DAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.javaproject.bm.api.UserDTO;

@Repository
public class SignupDAoImpl implements SignupDAO {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public void saveUser(UserDTO userDTO) {
		String sql = "insert into users values (?,?,?)";
		String sql2 = "insert into authorities values(?,?)";
		jdbcTemplate.update(sql, userDTO.getUsername(),userDTO.getPassword(),1);
		jdbcTemplate.update(sql2, userDTO.getUsername(),"USER");
	}

}
