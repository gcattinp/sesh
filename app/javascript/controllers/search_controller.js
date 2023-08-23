import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search"
export default class extends Controller {
  static targets = ["placeholder", "search", "city"]

  connect() {
    this.showPlaceholder();
  }

  showPlaceholder() {
    this.placeholderTarget.style.display = "block";
    this.searchTarget.style.display = "none";
    this.searchTarget.value = "";
  }

  showSearch() {
    this.placeholderTarget.style.display = "none";
    this.searchTarget.style.display = "block";
    this.searchTarget.focus();
  }

  filter() {
    let searchValue = this.searchTarget.value.toLowerCase();

    this.cityTargets.forEach((city) => {
      let cityName = city.textContent.trim().toLowerCase();
      if (cityName.includes(searchValue)) {
        city.style.display = "block";
      } else {
        city.style.display = "none";
      }
    });
  }
}
