import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { LoginvalidService } from '../Services/loginvalid.service';

@Component({
  selector: 'app-joinnow',
  templateUrl: './joinnow.component.html',
  styleUrls: ['./joinnow.component.css']
})
export class JoinnowComponent implements OnInit {
email="";
password="";
errorMsg1="";
errorMsg2="";

  constructor(private loginvalid: LoginvalidService,private router: Router) { }

  ngOnInit(): void {
  }
  login(){
    if (this.email.trim().length === 0) {
      this.errorMsg1 = "Email is required"
      this.errorMsg2 = "";
    } else if (this.password.trim().length === 0) {
      this.errorMsg2 = "Password is required";
      this.errorMsg1 = "";
    } else {
      this.errorMsg1 = "";
      this.errorMsg2 = "";
      let res = this.loginvalid.login(this.email, this.password);
      if (res === 200) {
        this.router.navigate(['profilepage'])
      }
      if (res === 403) {
        this.errorMsg1 = "Invalid Email"
        this.errorMsg2 = "invalid password"
  }
 
  

}
  }
}