import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { EmailvalidService } from '../servicesmail/emailvalid.service';

@Component({
  selector: 'app-forgetpassword',
  templateUrl: './forgetpassword.component.html',
  styleUrls: ['./forgetpassword.component.css']
})
export class ForgetpasswordComponent implements OnInit {

  constructor(private router:Router, private emailvalid:EmailvalidService) { }
  email="";
  errorMsg1="";

  ngOnInit(): void {
  }
  resetpword() {
    if (this.email.trim().length === 0) {
      this.errorMsg1 = "Please input your email address"

    } else {
      this.errorMsg1 = "";


      let res = this.emailvalid.resetpword(this.email);
      if (res === 300) {
        this.router.navigate(['forgetpasswordcon'])
      }
      if (res === 403) {
        this.errorMsg1 = "Invalid Email"

      }
    }
  }

}
