import { Application } from "@hotwired/stimulus"


const application = Application.start()



// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

// Connects to data-controller="popup"
document.addEventListener('DOMContentLoaded', (event) => {
  const levels = document.querySelectorAll('.level');
  levels.forEach(level => {
    const card = level.querySelector('.card');
    level.addEventListener('mouseover', () => {
      card.classList.add('flipped');
    });
    level.addEventListener('mouseout', () => {
      card.classList.remove('flipped');
    });
  });
});
