import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule } from  '@angular/common/http';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { NuevoComponent } from './Automotriz/nuevo/nuevo.component';
import { EditarComponent } from './Automotriz/editar/editar.component';
import { EliminarComponent } from './Automotriz/eliminar/eliminar.component';
import { ListarComponent } from './Automotriz/listar/listar.component';
import { FormsModule } from '@angular/forms';
import { JsonService} from './Service/json.service' 
@NgModule({
  declarations: [
    AppComponent,
    NuevoComponent,
    EditarComponent,
    EliminarComponent,
    ListarComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule
  ],
  providers: [JsonService],
  bootstrap: [AppComponent]
})
export class AppModule { }
