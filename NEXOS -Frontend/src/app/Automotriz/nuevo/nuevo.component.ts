import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { JsonService } from 'src/app/Service/json.service';
import { Producto } from '../../Modelo/Producto';
import { Usuario } from '../../Modelo/Usuario';

@Component({
  selector: 'app-nuevo',
  templateUrl: './nuevo.component.html',
  styleUrls: ['./nuevo.component.css']
})
export class NuevoComponent implements OnInit {
  usuarios?:Usuario[];
  producto:Producto=new Producto();
  productos?:Producto[];
  constructor(private  router:Router,private service:JsonService) { }

  ngOnInit(): void {
this.Listar();
  }

  Listar(){
    this.service.getListaUsuarios().subscribe(data=>{this.usuarios=data;
      console.log()})
      this.service.getProductos().subscribe(data=>{this.productos=data;})

  }

  Guardar(){


      let estado=0;
      this.service.getProductos().subscribe(data=>{this.productos=data;})

      for(let prod of this.productos!){
        //console.log(prod)
        if(this.producto.nombre==prod.nombre){
         
          estado=1
        }
      }

if(estado==1){
  alert("producto ya existente")
} else {
if(this.producto==null){
  alert("todos los campos estan vacios por favor llenarlos ");
    } else{
      if(this.producto.nombre=='' ||this.producto.nombre==null){


        alert("debe llenarse el nombre de producto");
        this.router.navigate(["nuevo"]);
        }    else{
          if(this.producto.cantidad=='' ||this.producto.cantidad==null ){
            alert("debe llenarse la cantidad de productos ");
            this.router.navigate(["nuevo"]);
          } else {
            if(this.producto.fecha=='' ||this.producto.fecha==null ){


              alert("debe  seleccionar la fecha de ingreso del producto ");
              this.router.navigate(["nuevo"]);

            } else{
              let fecha1:string[]=this.producto.fecha?.split('-')!;
let fechaActual:Date=new Date();
let fechaAnterior:Date=new Date(parseInt(fecha1[0]),parseInt(fecha1[1])-1,parseInt(fecha1[2]),0,0,0);
console.log(fecha1[0])
console.log(fecha1[1])
console.log(fecha1[2])
console.log(fechaActual)
console.log(fechaAnterior)

            if(fechaActual>=fechaAnterior){             
              if(this.producto.usuario=='' ||this.producto.usuario==null ){
                alert("debe  seleccionar un usuario");
                this.router.navigate(["nuevo"]);
              } else {
                    this.service.crearProducto(this.producto).subscribe(data=>{alert("se Agrego Correctamente");
                    this.router.navigate(["listar"])});
              }
            }
            else{
            alert("la fecha debe ser menor a la fecha actual");}


   
            }
          }

    }
  }
}
  }

}
