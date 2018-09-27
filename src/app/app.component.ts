import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'itzelproyecto-angular';
}
@Component({
  selector: 'app-click-me',
  template: `
    <button (click)="onClickMe()">Enviar</button>
    {{clickMessage}}`
})
export class ClickMeComponent {
  clickMessage = '';

  onClickMe() {
    this.clickMessage = 'registrando';
  }
}