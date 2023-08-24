import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["content"];

  connect() {
    console.log("test")
  }

  toggleBookings() {
    this.contentTargets[0].style.display = "block";
    this.contentTargets[1].style.display = "none";
  }

  toggleOffers() {
    this.contentTargets[0].style.display = "none";
    this.contentTargets[1].style.display = "block";
  }

}
