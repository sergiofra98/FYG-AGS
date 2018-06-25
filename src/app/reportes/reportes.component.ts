import { Component, OnInit } from '@angular/core';
import { trigger, state, style, animate, transition } from '@angular/animations';
import { SelectorListContext } from '@angular/compiler';

@Component({
  selector: 'app-reportes',
  templateUrl: './reportes.component.html',
  styleUrls: ['./reportes.component.css']
})
export class ReportesComponent implements OnInit {

  public selectorTiempo: any;

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
  }

  ngOnInit() {
    console.log(this.reportesDatos);
  }

  eliminarReporte() {
    console.log(3);
  }

}
