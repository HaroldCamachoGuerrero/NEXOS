import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { JsonService } from '../../Service/json.service';
import { Producto } from '../../Modelo/Producto';
import { Usuario } from '../../Modelo/Usuario';

@Component({
  selector: 'app-listar',
  templateUrl: './listar.component.html',
  styleUrls: ['./listar.component.css']
})
export class ListarComponent implements OnInit {

  productos?:Producto[];
  producto:Producto=new Producto();
  usuarios?:Usuario[];

  lista?:string[];//=["juliana","margarita","Josefina"];
  constructor( private service:JsonService,private  router:Router) { }

  ngOnInit(): void {
    this.service.getListaUsuarios().subscribe(data=>{this.usuarios=data;})
    this.service.getProductos().subscribe(data=>{this.productos=data;})


   
    this.Listar();
  }

  Editar(producto:Producto):void{

    localStorage.setItem("id",producto.id!.toString());
    this.router.navigate(["editar"]);

  }

  Eliminar(producto:Producto){
    this.service.deleteProducto(producto).subscribe(data=>{this.productos=this.productos?.filter(p=>p!==producto);})

    this.router.navigate(["listar"]);
    

  }

  FiltroNombre(){
    if(this.producto.nombre==''|| this.producto.nombre==null){
    this.service.getProductos().subscribe(data=>{this.productos=data;})}

    else
    this.service.getFiltroNombre(this.producto).subscribe(data=>{this.productos=data;})

  }

  FiltroUsuario(){
    if(this.producto.usuario==''|| this.producto.usuario==null){
    this.service.getProductos().subscribe(data=>{this.productos=data;})}

    else
    this.service.getFiltroUsuario(this.producto).subscribe(data=>{this.productos=data;})

  }

  Listar(){
    this.service.getListaUsuarios().subscribe(data=>{this.usuarios=data;
      console.log(this.usuarios)})
      this.service.getProductos().subscribe(data=>{this.productos=data;})

  }

  FiltroFecha(){
    if(this.producto.fechaIni==''|| this.producto.fechaIni==null){
    this.service.getProductos().subscribe(data=>{this.productos=data;})}

    else{

      if(this.producto.fechaIni==''|| this.producto.fechaIni==null){
        this.service.getProductos().subscribe(data=>{this.productos=data;})}
else{
        this.service.getFiltroFecha(this.producto).subscribe(data=>{this.productos=data;})}
    }

  }
 
}
