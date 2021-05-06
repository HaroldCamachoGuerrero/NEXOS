import { Component, OnInit } from '@angular/core';
import { JsonService } from '../../Service/json.service';
import { Router } from '@angular/router';
import { Producto } from '../../Modelo/Producto';
import { Usuario } from '../../Modelo/Usuario';

@Component({
  selector: 'app-editar',
  templateUrl: './editar.component.html',
  styleUrls: ['./editar.component.css']
})
export class EditarComponent implements OnInit {

  lista?:string[];//=["juliana","margarita","Josefina"];
  usuarios?:Usuario[];
producto:Producto=new Producto();
  constructor( private service:JsonService,private  router:Router) { }

  ngOnInit(): void {
    this.Edit()
  }
  Edit(){
    this.service.getListaUsuarios().subscribe(data=>{this.usuarios=data;
      })
      
let id=localStorage.getItem("id");
if(id===null){
id="0";}
this.service.getProductoId(+id).subscribe(data=>{this.producto=data});

  }

  Actualizar(producto:Producto){

    this.service.updatePersona(producto).subscribe(data=>{this.producto=data;
      alert("Se actualizo con exito");
      this.router.navigate(["listar"])}
      );
  }




}
