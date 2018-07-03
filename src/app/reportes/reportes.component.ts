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
    this.selectorTiempo = { hoy: true, ayer: false, antier: false, tresDias: false, semana: false, mes: false, anterior: false };
    this.reportesDatos = {
      hoy: [{
        texto: 'Se detectó un retiro de la cuenta que termina ' +
          'en xxxxxxxx2321 a nombre de Sergio Franco en una ubicación diferente a lo normal en un establecimiento diferente.',
        transaccion: 'Retiro', riesgo: 'Alto', fecha: '13:32:32 UTC 17/6/2018'
      },
      {
        texto: 'Se detectó un retiro de la cuenta que termina ' +
          'en xxxxxxxx2321 a nombre de Sergio Franco en una ubicación diferente a lo normal en un establecimiento diferente.',
        transaccion: 'Retiro', riesgo: 'Alto', fecha: '13:32:32 UTC 17/6/2018'
      }],

      ayer: [{
        texto: 'Se detectó un retiro de la cuenta que termina ' +
          'en xxxxxxxx2321 a nombre de Sergio Franco en una ubicación diferente a lo normal en un establecimiento diferente.',
        transaccion: 'Retiro', riesgo: 'Alto', fecha: '13:32:32 UTC 17/6/2018'
      },
      {
        texto: 'Se detectó un retiro de la cuenta que termina ' +
          'en xxxxxxxx2321 a nombre de Sergio Franco en una ubicación diferente a lo normal en un establecimiento diferente.',
        transaccion: 'Retiro', riesgo: 'Alto', fecha: '13:32:32 UTC 17/6/2018'
      },
      {
        texto: 'Se detectó un retiro de la cuenta que termina ' +
          'en xxxxxxxx2321 a nombre de Sergio Franco en una ubicación diferente a lo normal en un establecimiento diferente.',
        transaccion: 'Retiro', riesgo: 'Alto', fecha: '13:32:32 UTC 17/6/2018'
      },
      {
        texto: 'Se detectó un retiro de la cuenta que termina ' +
          'en xxxxxxxx2321 a nombre de Sergio Franco en una ubicación diferente a lo normal en un establecimiento diferente.',
        transaccion: 'Retiro', riesgo: 'Alto', fecha: '13:32:32 UTC 17/6/2018'
      }],

      antier: [{
        texto: 'Se detectó un retiro de la cuenta que termina ' +
          'en xxxxxxxx2321 a nombre de Sergio Franco en una ubicación diferente a lo normal en un establecimiento diferente.',
        transaccion: 'Retiro', riesgo: 'Alto', fecha: '13:32:32 UTC 17/6/2018'
      }],

      tresDias: [{
        texto: 'Se detectó un retiro de la cuenta que termina ' +
          'en xxxxxxxx2321 a nombre de Sergio Franco en una ubicación diferente a lo normal en un establecimiento diferente.',
        transaccion: 'Retiro', riesgo: 'Alto', fecha: '13:32:32 UTC 17/6/2018'
      }],

      semana: [{
        texto: 'Se detectó un retiro de la cuenta que termina ' +
          'en xxxxxxxx2321 a nombre de Sergio Franco en una ubicación diferente a lo normal en un establecimiento diferente.',
        transaccion: 'Retiro', riesgo: 'Alto', fecha: '13:32:32 UTC 17/6/2018'
      }],

      mes: [{
        texto: 'Se detectó un retiro de la cuenta que termina ' +
          'en xxxxxxxx2321 a nombre de Sergio Franco en una ubicación diferente a lo normal en un establecimiento diferente.',
        transaccion: 'Retiro', riesgo: 'Alto', fecha: '13:32:32 UTC 17/6/2018'
      }],

      anterior: [{
        texto: 'Se detectó un retiro de la cuenta que termina ' +
          'en xxxxxxxx2321 a nombre de Sergio Franco en una ubicación diferente a lo normal en un establecimiento diferente.',
        transaccion: 'Retiro', riesgo: 'Alto', fecha: '13:32:32 UTC 17/6/2018'
      }]
    };
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
