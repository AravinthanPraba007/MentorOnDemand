import { Component, OnInit } from '@angular/core';
import { Trainee } from '../Model/Trainee';
import { MentorService } from '../Services/mentor.service';
import { AuthServiceService } from '../Services/auth-service.service';
import { StatusService } from '../Services/status.service';
import { Training } from '../Model/Training';

@Component({
  selector: 'app-mentor-view',
  templateUrl: './mentor-view.component.html',
  styleUrls: ['./mentor-view.component.css']
})
export class MentorViewComponent implements OnInit {
  trainees: any;
  empty: boolean = false;
  userApproved = false;
  error: String = '';
  size: number = 0;
  constructor(private mentorservice: MentorService, private approvalService: StatusService) { }

  ngOnInit() {
    this.redirecting();
  }

  isEmpty() {
    if (this.size == 0)
      return true;
    else
      return false;
  }


  redirecting() {
    this.approvalService.getAllInprogressMentorList().subscribe(
      (data) => {

        this.trainees = data;
        for (var index in this.trainees) {
          this.size++;
        }

      }



    );
  }

  accept(traineeId: number) {

    this.approvalService.giveApproval(traineeId).subscribe(
      (data) => {
        this.redirecting();
        alert(" Request Accepted !! ");
      }
    );

  }

  completed(traineeId: number) {

    this.approvalService.completed(traineeId).subscribe(
      (data) => {
        this.redirecting();
        alert(" Request Accepted !! ");
      }
    );

  }

  decline(traineeId: number) {

    this.approvalService.declineApproval(traineeId).subscribe(
      (data) => {
        this.redirecting();
        alert(" Request Declined !! ");
      }
    );

  }



}
