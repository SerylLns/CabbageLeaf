const markAsRead = () => {
  
};



const animCard = () => {
  const buttonSupp = document.querySelectorAll("#delete-btn");
  // const cards = document.querySelectorAll(".my-card")
  if (buttonSupp) {
    buttonSupp.forEach(button => {
      button.addEventListener("click", (e)=>{
        const card = e.currentTarget.parentNode.parentNode.parentNode 
        setTimeout(() => {
          card.hidden = true;
        }, 700);
        anime({
          targets: card,
          opacity: 0,
          rotateZ: 35,
          rotateY: -35,
          translateX: -200,
          duration: 1000,
          complete: (anim) => {

          }
        })
      });      
    });

  }
};


export { animCard }