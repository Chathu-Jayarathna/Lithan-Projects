import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ForgetpasswordconComponent } from './forgetpasswordcon.component';

describe('ForgetpasswordconComponent', () => {
  let component: ForgetpasswordconComponent;
  let fixture: ComponentFixture<ForgetpasswordconComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ForgetpasswordconComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ForgetpasswordconComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
