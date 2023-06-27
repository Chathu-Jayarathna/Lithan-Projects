import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class LoginvalidService {

  constructor() { }
  login(email: String, pword: string) {
    if (email === 'chathushi77@gmail.com' && pword === '1234') {
      return 200;
    } else {
      return 403;
    }


  }
}
