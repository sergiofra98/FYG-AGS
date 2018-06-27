import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { map } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class TablasHomeService {

  public graficaDetenidas: any;
  public graficaExitosas: any;
  public historialTransacciones: any;

  constructor(private _http: HttpClient) {

    this.graficaDetenidas = {
      type: 'doughnut',
      data: {
        labels: ['Retiros', 'Depositos', 'Crédito'],
        datasets: [{
          label: '# of Votes',
          data: [1, 2, 3],
          backgroundColor: [
            '#ff0000',
            '#b20000',
            '#660000'
          ],
          borderWidth: 1
        }]
      },
      options: {
        responsive: true,
        display: false,
        legend: {
          display: false,
        }
      }
    };

    this.graficaExitosas = {
      type: 'doughnut',
      data: {
        labels: ['Retiros', 'Depositos', 'Crédito'],
        datasets: [{
          label: '# of Votes',
          data: [43, 34, 13],
          backgroundColor: [
            '#00ff00',
            '#009900',
            '#004c00'
          ],
          borderWidth: 1
        }]
      },
      options: {
        responsive: true,
        display: false,
        legend: {
          display: false,
        }
      }
    };

    this.historialTransacciones = {
      type: 'line',
      data: {
        labels: ['New', 'In Progress', 'On Hold'],
        datasets: [{
          label: '# of Votes',
          data: [1, 2, 3],
          backgroundColor: [
            '#9b9b9b'
          ],
          borderWidth: 1
        }]
      },
      options: {
        responsive: true,
        display: true
      }
    };
  }

  bienvenidaPagina() {
    return this._http.get('http://samples.openweathermap.org/data/2.5/history/city?q=Warren,OH&appid=b6907d289e10d714a6e88b30761fae22')
      .pipe(map(result => result));
  }
}
