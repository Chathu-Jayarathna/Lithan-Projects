import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-course',
  templateUrl: './course.component.html',
  styleUrls: ['./course.component.css']
})
export class CourseComponent implements OnInit {

  constructor() { }

  ngOnInit(): void {
  }
  course= [
    {'id':1,'name':'Leo Mevin','description':'Wordpress Designer | UX Designer','image':'../../assets/2.png'},
    {'id':2,'name':'Rayn Noah','description':'Software QA Enginner at CludPermits','image':'../../assets/3.png'},
    {'id':3,'name':'Ashley Fernando','description':'Associate Lead - Account Management','image':'../../assets/5.png'},
    {'id':4,'name':'Calton Carter','description':'Software Architect | Engineering Manager','image':'../../assets/6.png'},
  ]
}