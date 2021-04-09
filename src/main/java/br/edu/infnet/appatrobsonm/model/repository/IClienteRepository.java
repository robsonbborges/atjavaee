package br.edu.infnet.appatrobsonm.model.repository;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.edu.infnet.appatrobsonm.model.negocio.Cliente;

@Repository
public interface IClienteRepository extends CrudRepository<Cliente, Integer>  {
	
	@Query ("from Cliente c where c.usuario.id=:id")
	List <Cliente> obterLista(Integer id, Sort sort);
}
