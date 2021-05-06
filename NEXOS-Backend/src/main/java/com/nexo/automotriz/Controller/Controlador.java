package com.nexo.automotriz.Controller;

import com.nexo.automotriz.modelo.Producto;
import com.nexo.automotriz.modelo.ProductoRepository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("/automotriz")
public class Controlador {

    @Autowired
    private ProductoRepository productoRepository;

    @RequestMapping(method = RequestMethod.GET)
    public List<Producto> listarProducto() {
        List<Producto> productos = new ArrayList<>();
        productos = productoRepository.findAll();
        return productos;
    }
    
        @RequestMapping(method = RequestMethod.GET,path={"/{id}"})
    public Optional<Producto> listarProducto(@PathVariable("id") Long id) {
        Optional<Producto> producto ;
        producto=productoRepository.findById(id);
        return producto;
    }

    @PostMapping
    public Producto crearProducto(@RequestBody Producto producto) {
        producto = productoRepository.save(producto);
        return producto;
    }
    
        @PutMapping(path={"/{id}"})
    public Producto ActualizarProducto(@RequestBody Producto producto,@PathVariable("id") Long id) {
        producto.setId(id);
        producto = productoRepository.save(producto);
        return producto;
    }
    
            @DeleteMapping(path={"/{id}"})
    public Producto BorrarProducto(@PathVariable("id") Long id) {
        
Optional<Producto> producto=productoRepository.findById(id);
if(producto!=null){
    productoRepository.delete(producto.get());
}
       
        return producto.get();
    }
    
        @RequestMapping(method = RequestMethod.POST,path="/filtronombre")
    public List<Producto> filtroNombre(@RequestBody Producto producto) {
        List<Producto> productos = productoRepository.getFiltroNombre(producto.getNombre());
        return productos;
    }
    
            @RequestMapping(method = RequestMethod.POST,path="/filtrousuario")
    public List<Producto> filtroUsuario(@RequestBody Producto producto) {
        List<Producto> productos = productoRepository.getFiltroUsuario(producto.getUsuario());
        return productos;
    }
    
                @RequestMapping(method = RequestMethod.POST,path="/filtrofecha")
    public List<Producto> filtroFecha(@RequestBody String fecha) {
        String[] fechas=fecha.split("T");
        List<Producto> productos = productoRepository.getFiltroFecha(fechas[0],fechas[1]);
        return productos;
    }

}
