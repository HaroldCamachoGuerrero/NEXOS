import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Producto } from '../Modelo/Producto';
import { Usuario } from '../Modelo/Usuario';


@Injectable({
  providedIn: 'root'
})
export class JsonService {

  constructor(private http:HttpClient) {  }

  
 
    getProductos(){
      return this.http.get<Producto[]>('http://localhost:8080/automotriz');
    }



    getListaUsuarios(){
      return this.http.get<Usuario[]>('http://localhost:8080/automotriz/usuario');
    }

    getProductoId(id:number){
      return this.http.get<Producto>('http://localhost:8080/automotriz'+'/'+id);
    }

    crearProducto(producto:Producto){
      return this.http.post<Producto>('http://localhost:8080/automotriz',producto);
    } 

    updatePersona(producto:Producto){
      return this.http.put<Producto>('http://localhost:8080/automotriz/'+producto.id,producto);
    }

    deleteProducto(producto:Producto){
      return this.http.delete<Producto>('http://localhost:8080/automotriz/'+producto.id);
    }

    getFiltroNombre(producto:Producto){
      return this.http.post<Producto[]>('http://localhost:8080/automotriz/filtronombre',producto);
    }

    getFiltroUsuario(producto:Producto){
      return this.http.post<Producto[]>('http://localhost:8080/automotriz/filtrousuario',producto);
    }

    getFiltroFecha(producto:Producto){
      return this.http.post<Producto[]>('http://localhost:8080/automotriz/filtrofecha',producto.fechaIni+"T"+producto.fechaFin);
    }

}
