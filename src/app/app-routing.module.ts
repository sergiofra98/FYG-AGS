import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { LoginComponent } from './login/login.component';
import { HomeComponent } from './home/home.component';
import { AjustesComponent } from './ajustes/ajustes.component';
import { ReportesComponent } from './reportes/reportes.component';
import { UsuariosComponent } from './usuarios/usuarios.component';
import { NotificacionesComponent } from './notificaciones/notificaciones.component';
import { OperacionesDetenidasComponent } from './operaciones-detenidas/operaciones-detenidas.component';

const routes: Routes = [
  { path: 'Login', component: LoginComponent },
  { path: 'Reportes', component: ReportesComponent },
  { path: 'Usuarios', component: UsuariosComponent },
  { path: 'OperacionesDetenidas', component: OperacionesDetenidasComponent },
  { path: 'Ajustes', component: AjustesComponent },
  { path: 'Home', component: HomeComponent },
  { path: 'Notificaciones', component: NotificacionesComponent },
  { path: '', component: HomeComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
