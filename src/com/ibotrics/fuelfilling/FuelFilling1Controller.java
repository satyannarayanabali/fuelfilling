package com.ibotrics.fuelfilling;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FuelFilling1Controller {
	
	@RequestMapping(value="/fuelfilling1",method = RequestMethod.GET)
	public String home() {
		System.out.println("Fuel Filling - 1");
		return "fuelfilling1";
	}

}
