import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { OperacionesDetenidasComponent } from './operaciones-detenidas.component';

describe('OperacionesDetenidasComponent', () => {
  let component: OperacionesDetenidasComponent;
  let fixture: ComponentFixture<OperacionesDetenidasComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ OperacionesDetenidasComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(OperacionesDetenidasComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
