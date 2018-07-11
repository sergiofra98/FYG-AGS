import { Component, OnInit } from '@angular/core';
import {CalendarModule} from 'primeng/calendar';
import { trigger, state, style, animate, transition } from '@angular/animations';
import { SelectorListContext } from '@angular/compiler';

@Component({
  selector: 'app-reportes',
  templateUrl: './reportes.component.html',
  styleUrls: ['./reportes.component.css']
})
export class ReportesComponent implements OnInit {

  public selectorTiempo: any;
  public form: form;
  public reportesDatos: any;

  constructor() {
    this.reportesDatos = [
      {nombre: 'Luis Perez', transaccion: 'Retiro'}, ];
    this.form = new form('','','','','');
  }

  ngOnInit() {
    console.log(this.reportesDatos);
  }

  eliminarReporte() {
    console.log(3);
  }

}

export class form{
  public fecha1: Fecha;
  public fecha2: Fecha;
    constructor(
        public nombre: string,
        public apellidoPat: string,
        public apellidoMat: string,
        public riesgo: string,
        public transaccion: string,) {
            this.fecha1 = new Fecha();
            this.fecha2 = new Fecha();
        }
}

export class Fecha {

  date: Date;

  ngOnInit() {
      const today = new Date();
      const month = today.getMonth();
      const year = today.getFullYear();
      const prevMonth = (month === 0) ? 11 : month - 1;
      const prevYear = (prevMonth === 11) ? year - 1 : year;
      const nextMonth = (month === 11) ? 0 : month + 1;
      const nextYear = (nextMonth === 0) ? year + 1 : year;
  }
}
