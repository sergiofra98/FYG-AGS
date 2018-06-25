import { Component, OnInit } from '@angular/core';
import { UsuariosComponent } from '../usuarios/usuarios.component';
import { HttpClientModule } from '@angular/common/http';
import { TablasHomeService } from '../tablas-home.service';
import { Chart } from 'chart.js';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {

  public selectorPagina: number;
  public mostrarPrevisNotificaciones: boolean;
  public contadorNotificaciones: number;
  chart = [];

  data = {
    datasets: [{
      data: [10, 20, 30]
    }],

    // These labels appear in the legend and in the tooltips when hovering different arcs
    labels: [
      'Red',
      'Yellow',
      'Blue'
    ]
  };

  constructor() {
    this.contadorNotificaciones = 0;
    this.selectorPagina = 1;
    this.mostrarPrevisNotificaciones = false;

    this.chart = new Chart('canvas', {
      type: 'pie',
      data: this.data,
      options: ''
    });
  }

  ngOnInit() {
  }

  cerrarSesion() {
  }
}
