package com.sidharth.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloWorldController {

	// Controller method to show the initial Form
	
	@RequestMapping("/showForm")
	public String showForm() {
		return "helloWorld-form";
	}
	
	// Process the form data
	@RequestMapping("/processForm")
	public String processForm() {
		return "helloWorld";
	}
	 
	// new Controller method to read form data and add data to model
	@RequestMapping("/processFormVersionTwo")
	public String processToUppercase(HttpServletRequest request, Model model) {
		
		// read the request parameter from HTML form
		String studentName=request.getParameter("studentName");
		
		// convert the data to uppercase
		studentName=studentName.toUpperCase();
		
		// create a message
		String result="Hey "+studentName;
		
		// add message to model
		model.addAttribute("message",result);
		
		return "helloWorld";
	}
	
}
