package com.abebe.tvshows.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.abebe.tvshows.models.Show;
import com.abebe.tvshows.services.ShowService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
@Controller
/* @RequestMapping("/shows") */
public class ShowController {

	@Autowired
	private ShowService showServ;

	@GetMapping("shows/new")
	public String createShow(@ModelAttribute("show") Show show,HttpSession session) {
		if(session.getAttribute("user_id") == null) {
			return "redirect:/users/login/reg";
		}
		return "show/create.jsp";
	}
	
	@PostMapping("shows/process/new")
	public String processCreateShow(@Valid @ModelAttribute("show") Show show, BindingResult result) {
		if(result.hasErrors()) {
			return "show/create.jsp";
		}
		showServ.create(show);
		return "redirect:/";
		
	}
	
	@GetMapping("shows/display/{id}")
	public String diplayShow(@PathVariable("id") Long id, Model model) {
		model.addAttribute("show", showServ.getOne(id));
		return "show/display.jsp";
	}
	
	@GetMapping("shows/edit/{id}")
	public String editShow(@PathVariable("id") Long id, Model model, HttpSession session) {
		if(session.getAttribute("user_id") == null) {
			return "redirect:/users/login/reg";
		}
		model.addAttribute("show", showServ.getOne(id));
		return "show/edit.jsp";
	}
	
	@PutMapping("shows/process/edit/{id}")
	public String processEditShow(@Valid @ModelAttribute("show") Show show, BindingResult result) {
		if(result.hasErrors()) {
			return "show/edit.jsp";
		}
		showServ.update(show);
		return "redirect:/" ;
	}
	
	@DeleteMapping("shows/delete/{id}")
	public String deleteShow(@PathVariable("id") Long id) {
		showServ.delete(id);
		return "redirect:/";
	}
}
