
<div class="logincontainer">
    <div class="logo">
        <a>
            <img [src]="LoginLogo" alt="" title="">
        </a>
    </div>
    <div class="loginblock">
        <div class="logincontent">
            <form name="form" (ngSubmit)="f.form.valid" #f="ngForm" class="formblock" novalidate>
                <div class="row">
                    <div class="fieldgroup">
                        <md-input-container>
                            <input type="text" mdInput placeholder="{{'placeholder.Username' | translate}}" name="username" [(ngModel)]="model.username" #username="ngModel" required maxlength="50">
                            <md-error style="font-size: 12px">{{'validationMessage.Usernameisrequired' | translate}}</md-error>
                        </md-input-container>
                    </div>
                </div>
                <div class="row" style="margin-top: 10px;">
                    <div class="fieldgroup">
                        <md-input-container>
                            <input type="password" mdInput placeholder="{{'placeholder.Password' | translate}}" name="password" [(ngModel)]="model.password" #password="ngModel" required maxlength="30">
                            <md-error style="font-size: 12px">{{'validationMessage.Passwordisrequired' | translate}}</md-error>
                        </md-input-container>
                    </div>
                </div>
                <div class="row">
                    <div class="fieldgroup forgot">
                        <div class="btnlinks" (click)="openDialog()">{{'controlLabel.ForgotPassword' | translate}}</div> |
                        <div class="btnlinks" [routerLink]="['/contactus']">{{'controlLabel.Contact' | translate}}</div>
                    </div>
                </div>
                <div class="row">
                    <div class="fieldgroup actionrow">
                        <button (click)="onLogin(alertdialog)" type="submit" md-raised-button>{{'controlLabel.LOGIN' | translate}}</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<md2-dialog #alertdialog>
    <md2-dialog-title>{{ClientName}}</md2-dialog-title>
    <h6 [innerHTML]="requiredvalidatormsg"></h6>
    <md2-dialog-footer>
        <div class="actionbtn textcenter marginnone">
            <a class="btn submit" (click)="closemd2dialog(alertdialog)">{{'Comman.Ok' | translate}}</a>
        </div>
    </md2-dialog-footer>
</md2-dialog>
