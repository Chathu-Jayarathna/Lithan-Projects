import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class EmailvalidService {

  constructor() { }
  resetpword(email: String) {
    if (email === 'chathushi77@gmail.com') {
      return 300;
    } else {
      return 403;
    }

}
}
