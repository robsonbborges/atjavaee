package br.edu.infnet.appatrobsonm.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.infnet.appatrobsonm.model.negocio.Usuario;
import br.edu.infnet.appatrobsonm.model.repository.IUsuarioRepository;

@Service
public class UsuarioService {
	
	@Autowired
	private IUsuarioRepository usuarioRepository;

	public List<Usuario> obterLista() {
		
		return (List<Usuario>)usuarioRepository.findAll();
	}

}
