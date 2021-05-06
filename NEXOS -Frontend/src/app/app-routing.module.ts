import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { EditarComponent } from './Automotriz/editar/editar.component';
import { EliminarComponent } from './Automotriz/eliminar/eliminar.component';
import { ListarComponent } from './Automotriz/listar/listar.component';
import { NuevoComponent } from './Automotriz/nuevo/nuevo.component';

const routes: Routes = [
  {path:'nuevo' , component:NuevoComponent},
  {path:'eliminar' , component:EliminarComponent},
  {path:'editar',component:EditarComponent},
  {path:'listar', component:ListarComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
