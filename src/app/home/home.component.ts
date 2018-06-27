import { Component, AfterViewInit  } from '@angular/core';
import { TablasHomeService } from '../tablas-home.service';
import { Chart } from 'chart.js';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css'],
  providers: [TablasHomeService]
})
export class HomeComponent implements AfterViewInit {

  public selectorPagina: number;
  public mostrarPrevisNotificaciones: boolean;
  public contadorNotificaciones: number;

  canvas: any;
  ctx: any;

  ngAfterViewInit() {
    this.canvas = document.getElementById('graficaTransExitosas');

    const canvasDetenidas = new Chart(this.canvas.getContext( '2d'), this._consultaTablas.graficaDetenidas);

    this.canvas = document.getElementById('graficaTransRiesgo');

    const canvasExitosas = new Chart(this.canvas.getContext( '2d'), this._consultaTablas.graficaExitosas);

    this.canvas = document.getElementById('graficaTransHistoria');

    const canvasGrafica = new Chart(this.canvas.getContext( '2d'), this._consultaTablas.historialTransacciones);
  }

  constructor( private _consultaTablas: TablasHomeService) {
    this.contadorNotificaciones = 0;
    this.selectorPagina = 1;
    this.mostrarPrevisNotificaciones = false;
  }

  cerrarSesion() {
  }
}
