import { TestBed, inject } from '@angular/core/testing';

import { TablasHomeService } from './tablas-home.service';

describe('TablasHomeService', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [TablasHomeService]
    });
  });

  it('should be created', inject([TablasHomeService], (service: TablasHomeService) => {
    expect(service).toBeTruthy();
  }));
});
