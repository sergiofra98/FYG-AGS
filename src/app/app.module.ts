import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { LoginComponent } from './login/login.component';
import { RegistrarComponent } from './registrar/registrar.component';
import { HomeComponent } from './home/home.component';
import { UsuariosComponent } from './usuarios/usuarios.component';
import { ReportesComponent } from './reportes/reportes.component';
import { NotificacionesComponent } from './notificaciones/notificaciones.component';
import { AjustesComponent } from './ajustes/ajustes.component';
import { NotificacionesPrevisComponent } from './notificaciones-previs/notificaciones-previs.component';
import { NavegadorComponent } from './navegador/navegador.component';
import { OperacionesDetenidasComponent } from './operaciones-detenidas/operaciones-detenidas.component';
import { HttpClientModule } from '@angular/common/http';
import { TablasHomeService } from './tablas-home.service';

@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    RegistrarComponent,
    HomeComponent,
    UsuariosComponent,
    ReportesComponent,
    NotificacionesComponent,
    AjustesComponent,
    NotificacionesPrevisComponent,
    NavegadorComponent,
    OperacionesDetenidasComponent
  ],
  imports: [
    BrowserModule,
    HttpClientModule,
    AppRoutingModule
  ],
  providers: [TablasHomeService],
  bootstrap: [AppComponent]
})
export class AppModule { }
