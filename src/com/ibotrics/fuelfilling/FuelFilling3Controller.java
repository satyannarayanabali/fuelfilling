package com.ibotrics.fuelfilling;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FuelFilling3Controller {
	@RequestMapping(value="/fuelfilling3",method = RequestMethod.GET)
	public String home() {
		
		return "fuelfilling3";
	}
}
