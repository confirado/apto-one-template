import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { environment } from '../../environments/environment';

export interface SystemCheckResult {
  requirements: Array<Requirement>,
  recommendations: Array<Requirement>
}

export interface Requirement {
  fulfilled: boolean
  helpHtml: string
  helpText: string
  optional: boolean
  testMessage: string
}

export interface SuccessResult {
  success: boolean
  message: string
}

export interface DbCheckResult extends SuccessResult {}

export interface MailDeliveryResult extends SuccessResult {}

export interface UpdateConfigResult  extends SuccessResult {}

export interface FinishInstallationResult extends SuccessResult {
  superadmin: string
}

export interface DbConnection {
  host?: string | null
  port?: string | null
  user?: string | null
  password?: string | null
  dbname?: string | null
}

export interface MailConnection {
  host?: string | null
  port?: string | null
  user?: string | null
  password?: string | null
  fromName?: string | null
  fromMail?: string | null
}

export interface Config {
  database: DbConnection
  mail?: MailConnection
}

export interface FinishInstallation {
  domain?: string | null
  publicPath?: string | null
  name?: string | null
  user?: string | null
  password?: string | null
  operatorMail?: string | null
  operatorName?: string | null
}

@Injectable()
export class InstallService {
  private readonly api = environment.api;

  public constructor(private http: HttpClient) {}

  checkRequirements(): Observable<SystemCheckResult> {
    return this.http.get<SystemCheckResult>(this.api.root + '/apto/install/check-requirements');
  }

  checkDbConnection(connection: DbConnection): Observable<DbCheckResult> {
    return this.http.post<DbCheckResult>(this.api.root + '/apto/install/check-db-connection', connection);
  }

  checkMailDelivery(connection: MailConnection): Observable<MailDeliveryResult> {
    return this.http.post<MailDeliveryResult>(this.api.root + '/apto/install/check-mail-delivery', connection);
  }

  updateConfigFile(config: Config): Observable<UpdateConfigResult> {
    return this.http.post<UpdateConfigResult>(this.api.root + '/apto/install/update-config-file', config);
  }

  finishInstallation(finishInstallation: FinishInstallation): Observable<FinishInstallationResult> {
    return this.http.post<FinishInstallationResult>(this.api.root + '/apto/install/finish-installation', finishInstallation);
  }
}
