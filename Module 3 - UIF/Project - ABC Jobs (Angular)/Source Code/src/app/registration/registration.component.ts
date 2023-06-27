import { Component, OnInit } from '@angular/core';
import { Router, RouterModule, Routes } from '@angular/router';
import { ValidsignupService } from '../Servicessignup/validsignup.service';

@Component({
  selector: 'app-registration',
  templateUrl: './registration.component.html',
  styleUrls: ['./registration.component.css']
})
export class RegistrationComponent implements OnInit {

  name="";
  email="";
  number="";
  password="";
  cpassword="";
  errorMsg1="";
  errorMsg2="";
  errorMsg3="";
  errorMsg4="";
  errorMsg5="";


  constructor(private router:Router, private validsignup:ValidsignupService) { }

  ngOnInit(): void {
  }

  signup() {
    if (this.name.trim().length === 0) {
      this.errorMsg1 = "Name is required";
      this.errorMsg2 = "";
      this.errorMsg3 = "";
      this.errorMsg4 = "";
      this.errorMsg5 = "";

    }else if (this.email.trim().length === 0) {
        this.errorMsg2 = "Email is required";
        this.errorMsg1= "";
        this.errorMsg3 = "";
        this.errorMsg4 = "";
        this.errorMsg5 = "";

    } else if (this.number.trim().length === 0) {
          this.errorMsg3 = "Phone Number is required";
          this.errorMsg2 = "";
          this.errorMsg1 = "";
          this.errorMsg4 = "";
          this.errorMsg5 = "";

    }else if (this.password.trim().length === 0) {
            this.errorMsg4 = "Password is required"; 
            this.errorMsg2 = "";
            this.errorMsg3 = "";
            this.errorMsg1 = "";
            this.errorMsg5 = ""; 

    }else if (this.cpassword.trim().length === 0) {
              this.errorMsg5 = "Repeat Password is required"; 
              this.errorMsg2 = "";
              this.errorMsg3 = "";
              this.errorMsg4 = "";
              this.errorMsg1 = "";
    }else {
      this.errorMsg1 = "";
      this.errorMsg2 = "";
      this.errorMsg3 = "";
      this.errorMsg4 = "";
      this.errorMsg5 = "";


      let res = this.validsignup.signup(this.password, this.cpassword);
      if (res === 300) {
        this.router.navigate(['regiconfirm'])
      }
      if (res === 403) {
        this.errorMsg5 = "Password not match"
     
            }
          }
        }
      
      }