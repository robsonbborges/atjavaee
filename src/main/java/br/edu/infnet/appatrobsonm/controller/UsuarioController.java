package br.edu.infnet.appatrobsonm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import br.edu.infnet.appatrobsonm.model.negocio.Usuario;
import br.edu.infnet.appatrobsonm.model.service.UsuarioService;

@Controller
@SessionAttributes("user")
public class UsuarioController {
	
	@Autowired
	private UsuarioService usuarioService;
	
	@PostMapping(value = "/usuario/login")
	public String login(Model model, @RequestParam String email, @RequestParam String senha) {
		
		Usuario usuario = usuarioService.autenticacao(email, senha);
		
		if(usuario !=null) {
			
			model.addAttribute("user", usuario);
			
			return "redirect:/home";
	}
		model.addAttribute("mensagem", "Email invalido: " + email);
		return "login";
	}

	@GetMapping (value = "/usuario")
	public String showDetalhe(Model model) {
		
		model.addAttribute("lista", usuarioService.obterLista());
		
		return "usuario/detalhe";
	}
	
	@PostMapping (value = "/usuario/incluir")
	public String incluir(Usuario usuario ) {
		
		usuarioService.incluir(usuario);
		
		return "redirect:/usuario";
		
	}
	
	@GetMapping (value = "/usuario/{id}/incluir")
	public String excluir(@PathVariable Integer id) {
		
		usuarioService.excluir(id);
		
		return "redirect:/usuario";
	}

}
