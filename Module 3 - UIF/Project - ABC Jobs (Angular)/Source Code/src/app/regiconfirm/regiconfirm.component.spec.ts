import { ComponentFixture, TestBed } from '@angular/core/testing';

import { RegiconfirmComponent } from './regiconfirm.component';

describe('RegiconfirmComponent', () => {
  let component: RegiconfirmComponent;
  let fixture: ComponentFixture<RegiconfirmComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ RegiconfirmComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(RegiconfirmComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
