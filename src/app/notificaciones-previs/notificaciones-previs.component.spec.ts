import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { NotificacionesPrevisComponent } from './notificaciones-previs.component';

describe('NotificacionesPrevisComponent', () => {
  let component: NotificacionesPrevisComponent;
  let fixture: ComponentFixture<NotificacionesPrevisComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ NotificacionesPrevisComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(NotificacionesPrevisComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
