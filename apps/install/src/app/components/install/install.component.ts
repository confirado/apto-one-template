import { Component, OnInit } from '@angular/core';
import { environment } from '../../../environments/environment';

@Component({
  selector: 'apto-install',
  templateUrl: './install.component.html',
  styleUrls: ['./install.component.scss']
})
export class InstallComponent implements OnInit {
  style: object;
  constructor() {
    this.style = {
      'background-image': 'url(' + environment.api.client + '/' + 'assets/install-background.png' + ')'
    }
  }

  ngOnInit(): void {
  }

}
