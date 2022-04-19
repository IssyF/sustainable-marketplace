import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["form"];

  // connect() {
  //   console.log("connecting from newsletter form controller")
  // }

  unhide() {
    this.formTarget.classList.remove("d-none");
    window.scrollTo(0, document.body.scrollHeight);
  }

  close() {
    this.formTarget.classList.add("d-none");
    window.scrollTo(0, document.body.scrollHeight);
  }
}
