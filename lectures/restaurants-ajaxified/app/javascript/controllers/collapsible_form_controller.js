import { Controller } from "stimulus";

export default class extends Controller {
  // Declare your targets:
  static targets = [ "dropdown" ]

  connect() {
    // Initialize the component here:
    this.dropdownTarget.style.height = 0
    this.dropdownTarget.style.overflow = 'hidden'
    this.dropdownTarget.style.transition = 'height .5s ease-out'
  }

  expandDropdown(event) {
    this.dropdownTarget.style.height = '150px'
    // You can still select the clicked element using the event:
    event.currentTarget.style.display = 'none'
  }
}