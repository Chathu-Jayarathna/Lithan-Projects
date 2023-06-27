import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HomeComponent } from './home/home.component';
import { CourseComponent } from './course/course.component';
import { JoinnowComponent } from './joinnow/joinnow.component';
import { AboutComponent } from './about/about.component';
import { ForgetpasswordComponent } from './forgetpassword/forgetpassword.component';
import { RegistrationComponent } from './registration/registration.component';
import { ForgotPasswordConfirmationComponent } from './forgot-password-confirmation/forgot-password-confirmation.component';
import { SearchuserComponent } from './searchuser/searchuser.component';
import { ProfilepageComponent } from './profilepage/profilepage.component';
import { UpdateprofileComponent } from './updateprofile/updateprofile.component';
import { VerifymailComponent } from './verifymail/verifymail.component';
import { RegiconfirmComponent } from './regiconfirm/regiconfirm.component';
import { ForgetpasswordconComponent } from './forgetpasswordcon/forgetpasswordcon.component';
import { FormsModule } from '@angular/forms';

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    CourseComponent,
    JoinnowComponent,
    AboutComponent,
    ForgetpasswordComponent,
    RegistrationComponent,
    ForgotPasswordConfirmationComponent,
    SearchuserComponent,
    ProfilepageComponent,
    UpdateprofileComponent,
    VerifymailComponent,
    RegiconfirmComponent,
    ForgetpasswordconComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule
    
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }