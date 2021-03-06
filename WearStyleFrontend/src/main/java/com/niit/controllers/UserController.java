package com.niit.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.WearStyleBackend.dao.UserDao;
import com.niit.WearStyleBackend.models.User;


@Controller
public class UserController
{ 
	@Autowired 
	UserDao userDAO;
	@RequestMapping(value="/reg", method=RequestMethod.POST)
	public String userReg(@RequestParam("Name")String name,@RequestParam("Password") String password ,@RequestParam("Email")String email,@RequestParam("Phone")String phone,@RequestParam("Address")String address,@RequestParam("Country")String country)
	{
		System.out.println("In Registration...");
		User user=new User();
		user.setName(name);
		user.setEmail(email);
		user.setPhone(phone);
		user.setAddress(address);
		user.setPassword(password);
		user.setRole("ROLE_USER");
		user.setCountry(country);
		user.setEnabled(true);
		
		userDAO.insertUser(user);
	
		
		return "redirect:/login";
	}

}
