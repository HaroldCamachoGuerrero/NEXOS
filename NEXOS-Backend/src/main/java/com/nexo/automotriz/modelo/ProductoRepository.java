package com.nexo.automotriz.modelo;



import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


public interface ProductoRepository extends JpaRepository<Producto, Long > {

	@Query("from Producto e where e.nombre like  %:nombre%")
	 List<Producto> getFiltroNombre(@Param("nombre") String nombre);

         	@Query("from Producto e where e.usuario =:usuario")
	 List<Producto> getFiltroUsuario(@Param("usuario") String usuario);
         
                  	@Query("from Producto e where e.fecha between :fechaIni and :fechaFin")
	 List<Producto> getFiltroFecha(@Param("fechaIni") String fechaIni,@Param("fechaFin") String fechaFin);

}
