import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

document.addEventListener('DOMContentLoaded', (event) => {
  const stones = document.querySelectorAll('.stone');
  stones.forEach(stone => {
    stone.addEventListener('click', (event) => {
      const currentStone = event.currentTarget;
      console.log(currentStone); // Exibe o elemento clicado no console
      currentStone.style.backgroundColor = currentStone.style.backgroundColor === 'blue' ? '#ccc' : 'blue';
    });
  });
});
