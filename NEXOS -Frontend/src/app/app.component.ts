import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { NuevoComponent } from './Automotriz/nuevo/nuevo.component';
import { JsonService } from './Service/json.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'NEXO';
  constructor(private router:Router) {}

  Listar(){
 // this.json.getProductos().subscribe((res)=>{console.log(res)});
this.router.navigate(["listar"]);
}

Nuevo(){
//  this.router.navigate(["listar"]);
this.router.navigate(["nuevo"]);



  }
}
