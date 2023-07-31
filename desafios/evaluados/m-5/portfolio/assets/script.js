import { CustomButton } from "../../../../../assets/components/CustomButton.js";

customElements.define('enidev-button', CustomButton)

document.querySelectorAll(".hljs").forEach(element => {
  element.textContent = element.textContent.trim();
});