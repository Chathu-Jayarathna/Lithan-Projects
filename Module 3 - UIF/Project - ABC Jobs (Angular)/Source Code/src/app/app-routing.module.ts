import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { AboutComponent } from './about/about.component';
import { CourseComponent } from './course/course.component';
import { HomeComponent } from './home/home.component';
import { JoinnowComponent } from './joinnow/joinnow.component';
import { RegistrationComponent } from './registration/registration.component';
import { ForgetpasswordComponent } from './forgetpassword/forgetpassword.component';
import { SearchuserComponent } from './searchuser/searchuser.component';
import { ProfilepageComponent } from './profilepage/profilepage.component';
import { RegiconfirmComponent } from './regiconfirm/regiconfirm.component';
import { UpdateprofileComponent } from './updateprofile/updateprofile.component';
import { VerifymailComponent } from './verifymail/verifymail.component';
import { ForgetpasswordconComponent } from './forgetpasswordcon/forgetpasswordcon.component';



const routes: Routes = [
  {path:'',component:HomeComponent},
  {path:'course',component:CourseComponent},
  {path:'joinnow',component:JoinnowComponent},
  {path:'about',component:AboutComponent},
  {path:'registration',component:RegistrationComponent},
  {path:'forgetpassword',component:ForgetpasswordComponent},
  {path:'searchuser',component:SearchuserComponent},
  {path:'profilepage',component:ProfilepageComponent},
  {path:'regiconfirm',component:RegiconfirmComponent},
  {path:'updateprofile',component:UpdateprofileComponent},
  {path:'verifymail',component:VerifymailComponent},
  {path:'forgetpasswordcon',component:ForgetpasswordconComponent},



];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }