package br.edu.infnet.appatrobsonm.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.infnet.appatrobsonm.model.negocio.Pedido;
import br.edu.infnet.appatrobsonm.model.repository.IPedidoRepository;

@Service
public class PedidoService {
	
	@Autowired
	private IPedidoRepository pedidoRepository;
	
	public void incluir (Pedido pedido) {
		pedidoRepository.save(pedido);
	}
	
	public void excluir (Integer id) { 
		pedidoRepository.deleteById(id);
	}
	
	public List<Pedido> obterLista() {
		return (List<Pedido>)pedidoRepository.findAll();
	}
}
