package com.javaproject.bm.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
@EnableWebSecurity(debug = true)
public class MySecurityConfig extends WebSecurityConfigurerAdapter {
	@Autowired
	private DataSource dataSource;
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth
		.jdbcAuthentication().dataSource(dataSource)
		.passwordEncoder(NoOpPasswordEncoder.getInstance());
	}
	
	@Override protected void configure(HttpSecurity http) throws Exception {
	  // TODO Auto-generated method stub 
		http 
		.authorizeRequests()
		.antMatchers("/index").permitAll() 
		.antMatchers("/dashboard").hasAuthority("ADMIN")
		.and()
		.formLogin().loginPage("/mylogin").loginProcessingUrl("/loginprocess").defaultSuccessUrl("/dashboard",true)
		.and()
		.httpBasic(); }
	 
}
