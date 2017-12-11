package com.ibotrics.fuelfilling;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FuelFilling1Controller {
	
	@RequestMapping(value="/fuelFilling1",method = RequestMethod.GET)
	public String getFuelFilling1Page() {
		return "fuelFilling1";
	}

}
