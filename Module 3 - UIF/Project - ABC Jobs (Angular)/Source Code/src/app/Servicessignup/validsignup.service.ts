import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class ValidsignupService {

  constructor() { }
  signup(password: String, cpassword: string) {
    if (password === cpassword) {
      return 300;
    } else {
      return 403;
    }

}
}