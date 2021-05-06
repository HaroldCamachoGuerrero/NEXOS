package com.nexo.automotriz.modelo;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


public interface UsuarioRepository extends JpaRepository<Usuario, Long > {

//   @Query("from productos e where e.id =:id")
//    Producto getporId( @Param("id") Long  id);


}
