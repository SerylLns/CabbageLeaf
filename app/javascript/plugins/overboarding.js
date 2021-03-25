import Shepherd from 'shepherd.js';

let isFinish = false;
const overboarding = () => {
  const button = document.querySelectorAll(".buttonChou");
  const starting = document.querySelector(".startpop");
  
  const tour = new Shepherd.Tour({
    defaultStepOptions: {
      cancelIcon: {
        enabled: true
      },
      scrollTo: { behavior: 'smooth', block: 'center' }
    }
  });

  tour.addStep({
    id: 'example-step',
    text: 'Tu peux passer à un autre article',
    attachTo: {
      element: button[0],
      on: 'bottom',
    },
    buttons: [
      {
        text: 'Suivant',
        action: tour.next
      }
    ]
  });
  tour.addStep({
    id: 'example-step',
    text: 'Tu peux sauvegarder cet article dans tes favories ',
    attachTo: {
      element: button[1],
      on: 'bottom'
    },
    buttons: [
      {
        text: 'Suivant',
        action: tour.next
      }
    ]
  });
  tour.addStep({
    id: 'example-step',
    text: "Tu peux lire l'article immediatement ",
    attachTo: {
      element: button[2],
      on: 'bottom'
    },
    classes: 'shepherd-theme-custom',
    buttons: [
      {
        text: 'Ok!',
        action: tour.next
      }
    ]
  });
  if (starting && !isFinish) {
    console.log("start");
    starting.classList.remove("startpop");
    setTimeout(() => {
      tour.start();
    }, 500);
    isFinish = true;
  }
}

export { overboarding }