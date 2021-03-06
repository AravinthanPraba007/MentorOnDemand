import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Training } from '../Model/Training';
import { environment } from 'src/environments/environment';
import { AuthServiceService } from './auth-service.service';

@Injectable({
  providedIn: 'root'
})
export class StatusService {

  clickedStatus: boolean = false;

  completed(traineeId: number) {

    let headers = new HttpHeaders();
    headers = headers.set('Authorization', 'Bearer ' + this.authService.getToken());


    return this.http.put(environment.trainingUrl + "/proposal/completed/" + traineeId, null, { headers });
  }



  constructor(private http: HttpClient, private authService: AuthServiceService) { }

  getPendingList() {
    let headers = new HttpHeaders();
    headers = headers.set('Authorization', 'Bearer ' + this.authService.getToken());

    return this.http.get<Training>(environment.trainingUrl + "/proposal/pending/" + this.authService.username, { headers });

  }

  getAllList() {
    let headers = new HttpHeaders();
    headers = headers.set('Authorization', 'Bearer ' + this.authService.getToken());

    return this.http.get<Training>(environment.trainingUrl + "/proposal/all/" + this.authService.username, { headers });

  }

  getAllInprogressTraineeList() {
    let headers = new HttpHeaders();
    headers = headers.set('Authorization', 'Bearer ' + this.authService.getToken());

    return this.http.get<Training>(environment.trainingUrl + "/proposal/trainee/incomplete/" + this.authService.username, { headers });
  }

  getAllCompletedTraineeList() {
    let headers = new HttpHeaders();
    headers = headers.set('Authorization', 'Bearer ' + this.authService.getToken());


    return this.http.get<Training>(environment.trainingUrl + "/proposal/trainee/complete/" + this.authService.username, { headers });
  }

  getAllInprogressMentorList() {
    let headers = new HttpHeaders();
    headers = headers.set('Authorization', 'Bearer ' + this.authService.getToken());

    return this.http.get<Training>(environment.trainingUrl + "/proposal/mentor/incomplete/" + this.authService.username, { headers });
  }

  getAllCompletedMentorList() {
    let headers = new HttpHeaders();
    headers = headers.set('Authorization', 'Bearer ' + this.authService.getToken());

    return this.http.get<Training>(environment.trainingUrl + "/proposal/mentor/complete/" + this.authService.username, { headers });
  }

  giveApproval(traineeId: number) {

    let headers = new HttpHeaders();
    headers = headers.set('Authorization', 'Bearer ' + this.authService.getToken());

    return this.http.put(environment.trainingUrl + "/proposal/accept/" + traineeId, null, { headers });


  }
  payNow(traineeId: number) {

    let headers = new HttpHeaders();
    headers = headers.set('Authorization', 'Bearer ' + this.authService.getToken());

    return this.http.put(environment.trainingUrl + "/proposal/pay/" + traineeId, null, { headers });
  }


  declineApproval(traineeId: number) {

    let headers = new HttpHeaders();
    headers = headers.set('Authorization', 'Bearer ' + this.authService.getToken());

    return this.http.delete(environment.trainingUrl + "/proposal/decline/" + traineeId, { headers });


  }

}
