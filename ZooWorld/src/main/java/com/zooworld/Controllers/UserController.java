package com.zooworld.Controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.zooworld.Models.User;
import com.zooworld.Services.UserService;
import com.zooworld.Validators.UserValidator;

@Controller
public class UserController {
	
	@Autowired
	private UserService uService;
	
	@Autowired
	private UserValidator uValidator;
	
	@GetMapping("/")
	public String redirHome() {
		return "redirect:/home";
	}
	
	@GetMapping("/userlogin")
	public String index(@ModelAttribute("user") User user) {
		return "registerLogin.jsp";
	}
	
	@GetMapping("/adminlogin")
	public String adminLogin(@ModelAttribute("user") User user) {
		return "adminlogin.jsp";
	}
	
	@PostMapping("/register")
	public String register(@Valid @ModelAttribute("user") User user, BindingResult result, HttpSession session) {
		// appending potential errors to result
		uValidator.validate(user, result);
		if(result.hasErrors()) {
			return "registerLogin.jsp";
		}
		setUser(this.uService.registerUser(user), session);
		return "redirect:/home";
	}
	
	@PostMapping("/login")
	public String login(@RequestParam("loginEmail") String email, @RequestParam("loginPassword") String password,
			RedirectAttributes redirectAttributes, HttpSession session) {
		if (!this.uService.authenticateUser(email, password)) {
			redirectAttributes.addFlashAttribute("loginError", "ivalid Credentials");
			return "redirect:/home";
		}
		//setUser(this.uService.getByEmail(email), session);
		User user = this.uService.getByEmail(email);
		session.setAttribute("user_id", user.getId());
		if(user.getIsAdmin() == 1) {
			return "redirect:/adminhome";
		}
		return "redirect:/home";
	}
	
	private void setUser(User user, HttpSession session) {
		this.uService.setCurrentUser(user);
		session.setAttribute("user_id", user.getId());
	}
	
	@GetMapping("/home")
	public String home() {
		return "home.jsp";
	}
	
	@GetMapping("/feedback")
	public String feedback() {
		return "feedback.jsp";
	}
	
	@GetMapping("/aboutus")
	public String aboutUs() {
		return "aboutus.jsp";
	}
	
	@GetMapping("/adminhome")
	public String adminHome(Model model, HttpSession session) {
		Long userId = (Long)session.getAttribute("user_id");
		model.addAttribute("user", this.uService.getSingleUser(userId));
		return "adminHome.jsp";
	}
	
	@GetMapping("/perks")
	public String userPerks(Model model, HttpSession session, HttpServletRequest request) {
		HttpSession newSession  = request.getSession(false);
		if(newSession!= null) {
			//model.addAttribute("user", this.uService.getSingleUser(userId));
			return "redirect:/aboutus";
		}
		return "redirect:/feedback";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	@GetMapping("/buyticket")
	public String buyTicket(){
		return "ticket.jsp";
	}
	@GetMapping("/confirm")
	public String confim() {
		return "confirm.jsp";
	}
	
}
