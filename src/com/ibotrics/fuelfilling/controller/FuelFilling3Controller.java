package com.ibotrics.fuelfilling.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FuelFilling3Controller {
	@RequestMapping(value="/fuelFilling3",method = RequestMethod.GET)
	public String getFuelFilling3Page() {
		return "fuelFilling3";
	}
}
