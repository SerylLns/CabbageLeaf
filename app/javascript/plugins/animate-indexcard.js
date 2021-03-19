
const animCard = () => {
  const buttonSupp = document.querySelectorAll("#delete-btn");
  const cards = document.querySelectorAll(".index-card")
  if (buttonSupp) {
    buttonSupp.forEach(button => {
      button.addEventListener("click", (e)=>{
        // console.log();
        const card = e.currentTarget.parentNode.parentNode 
        anime({
          targets: card,
          opacity: 0,
          rotateZ: 35,
          rotateY: -45,
          translateX: -200,
          duration: 1000,
          complete: (anim) => {
            card.hidden = true;
          }
        })
      });      
    });

  }
};


export { animCard }