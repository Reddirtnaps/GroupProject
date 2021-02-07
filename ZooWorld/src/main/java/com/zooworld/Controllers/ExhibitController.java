package com.zooworld.Controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zooworld.Models.Exhibit;
import com.zooworld.Services.ExhibitService;
import com.zooworld.Services.UserService;

@Controller
@RequestMapping("/exhibits")
public class ExhibitController {

	@Autowired
	private ExhibitService eService;
	
	@Autowired 
	private UserService uService;
	
	
//	@GetMapping("/exhibits")
//	public String viewExhibits() {
//		return "exhibits.jsp";
//	}
	
	@GetMapping("")
	private String tasks(Model viewModel, HttpSession session) {
		List<Exhibit> allExhibits = this.eService.getAllExhibits();	
		viewModel.addAttribute("allExhibits", allExhibits);
		return "exhibits.jsp";
	}
	
	//Why @ModelAttribute: It holds our info, it also let's us connect the blank info from the  java bean to the front-end form
	@GetMapping("/new")
	public String newTask(@ModelAttribute("exhibit") Exhibit exhibit, Model viewModel) {
		viewModel.addAttribute("allUsers", this.eService.getAllExhibits());
		return "newExhibit.jsp";
	}
	
	@PostMapping("/new")
	public String create(@Valid @ModelAttribute("exhibit") Exhibit exhibit, Model viewModel, BindingResult result) {
		viewModel.addAttribute("allUsers", this.uService.getAllUsers());
		if(result.hasErrors()) {
			System.out.println("errors");
			return "newExhibit.jsp";
		}
		//exhibit.setCreator(this.uService.getCurrentUser().getFirstName());
		this.eService.create(exhibit);
		return "redirect:/exhibits";
	}
	
	@GetMapping("/edit/{id}")
	public String editTask(@PathVariable("id") Long id, Model viewModel, @ModelAttribute("exhibit") Exhibit exhibit) {
		viewModel.addAttribute("exhibit", eService.getById(id));
		viewModel.addAttribute("allUsers", this.uService.getAllUsers());
		return "editExhibit.jsp";
	}
	
	@PostMapping("edit/{id}")
	public String updateTask(@ModelAttribute("exhibit") Exhibit exhibit, BindingResult result) {
		if(result.hasErrors()) {
			return "editExhibit.jsp";
		}
		this.eService.updateExhibit(exhibit);
		return "redirect:/exhibits";
	}
	
	@GetMapping("delete/{id}")
	public String deleteExhibit(@PathVariable("id") Long id) {
		this.eService.deleteExhibit(id);
		return "redirect:/exhibits";
	}
	
	
}
