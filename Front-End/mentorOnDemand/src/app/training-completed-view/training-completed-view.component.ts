import { Component, OnInit } from '@angular/core';
import { MentorService } from '../Services/mentor.service';
import { StatusService } from '../Services/status.service';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-training-completed-view',
  templateUrl: './training-completed-view.component.html',
  styleUrls: ['./training-completed-view.component.css']
})
export class TrainingCompletedViewComponent implements OnInit {

  size:number=0;
  trainees: any;
  empty:boolean = false;
  userApproved = false;
  error: String = '';
  
  constructor(private mentorservice:MentorService,private approvalService:StatusService,private route:ActivatedRoute) { }

  ngOnInit() {
    this.redirecting();
  }

  isEmpty(){
    if(this.size==0)
    return true;
    else
    return false;
   }



  redirecting() {
    console.log(this.approvalService.clickedStatus);
    this.approvalService.getAllCompletedTraineeList().subscribe(
      data => {
        console.log(data);
        this.trainees =data;

        for (var index in this.trainees) {
          this.size++;
       }     
      }
        
        
    );
  }

}
