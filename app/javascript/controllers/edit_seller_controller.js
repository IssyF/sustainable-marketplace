import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["name", "desc", "nameForm", "descForm", "nameIcon", "descIcon"]

  connect() {
    console.log("Connected from edit seller controller!")
  }

  displayNameForm() {
    console.log("name form target pressed")
    this.nameTarget.classList.add("d-none");
    this.nameIconTarget.classList.add("d-none");
    this.nameFormTarget.classList.remove("d-none");
  }

  displayDescForm() {
    console.log("description form target pressed")
    this.descTarget.classList.add("d-none");
    this.descIconTarget.classList.add("d-none");
    this.descFormTarget.classList.remove("d-none");
  }
}
