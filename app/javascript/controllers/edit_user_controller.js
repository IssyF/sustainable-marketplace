import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["address", "form", "icon"]

  // connect() {
  //   console.log("Conencted edit user controller!")
  // }

  displayForm() {
    console.log("form target pressed")
    this.addressTarget.classList.add("d-none");
    this.iconTarget.classList.add("d-none");
    this.formTarget.classList.remove("d-none");
  }

  update(event) {
    console.log("update event clicked")
    // event.preventDefault()
    const url = this.formTarget.action
    fetch(url, {
      method: "PATCH",
      headers: { "Accept": "text/plain" },
      body: new FormData(this.formTarget)
    })
      .then(response => response.text())
      .then((data) => {
        console.log(data);
      })
  }
}
