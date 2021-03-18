
const animCard = () => {
  const buttonSupp = document.querySelectorAll("#delete-btn");
  const cards = document.querySelectorAll(".index-card")
  let index = 0;
  if (buttonSupp) {
    buttonSupp.forEach(button => {
      button.addEventListener("click", (e)=>{
        anime({
          targets: e.path[3],
          opacity: 0,
          duration: 1000,
          complete: (anim) => {
            e.path[3].hidden = true;
          }
        })
      });      
    });

  }
};


export { animCard }