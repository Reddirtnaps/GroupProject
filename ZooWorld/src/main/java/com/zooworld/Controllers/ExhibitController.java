package com.zooworld.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.zooworld.Services.ExhibitService;

@Controller
public class ExhibitController {

	@Autowired
	private ExhibitService eService;
}
