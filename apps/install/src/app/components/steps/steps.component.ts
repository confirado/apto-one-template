import { Component, OnInit, ViewChild } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import {
  DbCheckResult,
  InstallService,
  SystemCheckResult,
  MailDeliveryResult, UpdateConfigResult, FinishInstallationResult, Config, FinishInstallation, SuccessResult,
} from '../../services/install.service';
import { MatStepper } from '@angular/material/stepper';
import { MatSnackBar, MatSnackBarHorizontalPosition, MatSnackBarVerticalPosition } from '@angular/material/snack-bar';

interface HidePasswords {
  database: boolean
  mail: boolean
  admin: boolean
}

interface Spinners {
  database: boolean,
  finish: boolean
}

@Component({
  selector: 'apto-steps',
  templateUrl: './steps.component.html',
  styleUrls: ['./steps.component.scss']
})
export class StepsComponent implements OnInit {
  @ViewChild('stepper') stepper: MatStepper;

  databaseFormGroup = this._formBuilder.group({
    host: ['localhost', Validators.required],
    port: ['3306', Validators.required],
    user: [null, Validators.required],
    password: [null, Validators.required],
    dbname: [null, Validators.required]
  });

  mailFormGroup = this._formBuilder.group({
    host: [null, Validators.required],
    port: [null, Validators.required],
    user: [null, Validators.required],
    password: [null, Validators.required],
    fromName: [null, Validators.required],
    fromMail: [null, Validators.required]
  });

  aptoFormGroup = this._formBuilder.group({
    domain: [window.location.host, Validators.required],
    publicPath: [window.location.pathname.replace('/apto/install/', ''), Validators.required],
    name: [null, Validators.required],
    user: [null, Validators.required],
    password: [null, Validators.required]
  });

  systemChecks: SystemCheckResult | null = null;

  dbCheckResult: DbCheckResult = {
    success: false,
    message: ''
  }

  mailDeliveryResult: MailDeliveryResult = {
    success: false,
    message: ''
  }

  updateConfigResult: UpdateConfigResult = {
    success: false,
    message: ''
  }

  finishInstallationResult: FinishInstallationResult = {
    success: false,
    message: '',
    superadmin: ''
  }

  hidePasswords: HidePasswords = {
    database: true,
    mail: true,
    admin: true
  };

  spinners: Spinners = {
    database: false,
    finish: false
  }

  protocol: string = window.location.protocol + '//';

  constructor(private _formBuilder: FormBuilder, private _snackBar: MatSnackBar, private installService: InstallService) {
    this.databaseFormGroup.valueChanges.subscribe(() => {
      this.dbCheckResult = {
        success: false,
        message: ''
      }
    });

    this.mailFormGroup.valueChanges.subscribe(() => {
      this.mailDeliveryResult = {
        success: false,
        message: ''
      }
    });
  }

  ngOnInit(): void {
    this.installService.checkRequirements().subscribe((result) => {
      this.systemChecks = result;
    })
  }

  checkDbConnection() {
    this.installService.checkDbConnection(this.databaseFormGroup.value).subscribe((result) => {
      this.dbCheckResult = result;
      this.handleSuccessResult(result);
    });
  }

  checkMailDelivery() {
    this.installService.checkMailDelivery(this.mailFormGroup.value).subscribe((result) => {
      this.mailDeliveryResult = result;
      this.handleSuccessResult(result);
    });
  }

  updateConfigFile(mail: boolean = true) {
    if (this.updateConfigResult.success) {
      return;
    }

    let config: Config = {
      database: this.databaseFormGroup.value
    }

    if (mail) {
      config.mail = this.mailFormGroup.value;
    }

    this.spinners.database = true;
    this.installService.updateConfigFile(config).subscribe((result) => {
      this.updateConfigResult = result;
      this.spinners.database = false;
      this.handleSuccessResult(result);

      if (this.updateConfigResult.success) {
        this.nextStep();
      }
    });
  }

  finishInstallation() {
    if (this.finishInstallationResult.success) {
      return;
    }

    const finishInstallation: FinishInstallation = {
      ...this.aptoFormGroup.value,
      operatorMail: this.mailFormGroup.value.fromMail,
      operatorName: this.mailFormGroup.value.fromName
    }

    this.spinners.finish = true;
    this.installService.finishInstallation(finishInstallation).subscribe((result) => {
      this.finishInstallationResult = result;
      this.spinners.finish = false;
      this.handleSuccessResult(result);

      if (this.finishInstallationResult.success) {
        this.nextStep();
      }
    });
  }

  handleSuccessResult(result: SuccessResult) {
    if (result.message) {
      this.showInfo(result.message, result.success ? 2 : null);
    }
  }

  showInfo(message: string, duration: number|null = null) {
    let config: {
      horizontalPosition: MatSnackBarHorizontalPosition,
      verticalPosition: MatSnackBarVerticalPosition
      duration?: number
    } = {
      horizontalPosition: 'center',
      verticalPosition: 'top',
    };

    if (duration !== null) {
      config.duration = duration * 1000
    }

    this._snackBar.open(message, 'X', config);
  }

  nextStep() {
    if (this.stepper.selected) {
      this.stepper.selected.completed = true;
      this.stepper.next();
    }
  }
}
