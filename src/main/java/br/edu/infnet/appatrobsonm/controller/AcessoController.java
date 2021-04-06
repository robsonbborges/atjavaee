package br.edu.infnet.appatrobsonm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AcessoController {

	
	@GetMapping(value = "/")
	public String init(Model model) {
		
		model.addAttribute("nome", "Robson");
		model.addAttribute("email", "robson.borges");
		model.addAttribute("git", "https://github.com/robsonbborges");
		
		return "index";
	}
}
