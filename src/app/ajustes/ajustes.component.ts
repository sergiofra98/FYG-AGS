import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-ajustes',
  templateUrl: './ajustes.component.html',
  styleUrls: ['./ajustes.component.css']
})
export class AjustesComponent implements OnInit {

  public selectorAjustes: number;

  constructor() { 
    this.selectorAjustes = 1;
  }

  ngOnInit() {
  }

}
