package com.javaproject.bm.config;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = {"com.javaproject"})
public class BusAppConfig implements WebMvcConfigurer{
	
	@Bean
	public InternalResourceViewResolver viewResolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setPrefix("WEB-INF/view/");
		viewResolver.setSuffix(".jsp");
		
		return viewResolver;
		
	}
	
	@Bean
	JdbcTemplate jdbcTemplate() {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource());
		
		return jdbcTemplate;
	}

	@Bean
	DataSource dataSource() {
		
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setUsername("root");
		dataSource.setPassword("qaz$02pm");
		dataSource.setUrl("jdbc:mysql://localhost:3306/javaproject?useSSl=false");
		dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
		
		return dataSource;
		
	}
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		
		registry
		.addResourceHandler("/URLToReachResource/**")
		.addResourceLocations("/resources/");
	}
	
	public void addResourceHandlers1(ResourceHandlerRegistry registry) {
		
		registry
		.addResourceHandler("/URLToReachWEB-INF/**")
		.addResourceLocations("/WEB-INF/");
	}
}
