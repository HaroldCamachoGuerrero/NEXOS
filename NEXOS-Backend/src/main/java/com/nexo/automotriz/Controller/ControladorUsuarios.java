package com.nexo.automotriz.Controller;

import com.nexo.automotriz.modelo.UsuarioRepository;
import com.nexo.automotriz.modelo.Usuario;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("/automotriz/usuario")
public class ControladorUsuarios {

    @Autowired
    private UsuarioRepository usuariosrepository;

    @RequestMapping(method = RequestMethod.GET)
    public List<Usuario> listarUsuario() {
        List<Usuario> usuarios = new ArrayList<>();
        usuarios = usuariosrepository.findAll();
        return usuarios;
    }
    
    

    @PostMapping
    public Usuario crearUsuario(@RequestBody Usuario usuario) {
        usuario = usuariosrepository.save(usuario);
        return usuario;
    }
    
        @PutMapping(path={"/{id}"})
    public Usuario ActualizarUsuario(@RequestBody Usuario usuario,@PathVariable("id") Long id) {
        usuario.setId(id);
        usuario = usuariosrepository.save(usuario);
        return usuario;
    }

}
