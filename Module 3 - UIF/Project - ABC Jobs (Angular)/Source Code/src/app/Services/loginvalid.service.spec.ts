import { TestBed } from '@angular/core/testing';

import { LoginvalidService } from './loginvalid.service';

describe('LoginvalidService', () => {
  let service: LoginvalidService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(LoginvalidService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
