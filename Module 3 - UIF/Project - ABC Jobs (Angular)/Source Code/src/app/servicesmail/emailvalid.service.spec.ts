import { TestBed } from '@angular/core/testing';

import { EmailvalidService } from './emailvalid.service';

describe('EmailvalidService', () => {
  let service: EmailvalidService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(EmailvalidService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
