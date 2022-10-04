import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["search", "prueba"];

  connect() {

  }

  busqueda() {
    const search = this.searchTarget;
    // const elem = document.getElementById('busq').value;
    // const dosel = document.getElementById('botons');
  }

  setUrl() {
    window.location.href = 'videogames?query=' + document.getElementById('busq').value;

};

  change(){
    this.pruebaTarget.innerHTML = "xd";

  }

}
