
const animCard = () => {
  const buttonSupp = document.querySelector("#delete-btn");
  const cards = document.querySelectorAll(".my-card")
  let index = 0;
  if (buttonSupp) {
    buttonSupp.addEventListener("click", (e)=>{
      const cardsTimeline = anime.timeline({ autoplay: true });
      cardsTimeline.add({
        targets: cards[index],
        opacity: 0,
        duration: 1000,
        complete: (anim) => {
          cards[index].hidden = true;
          index++;
          console.log(index);
        }
      })
    });
  }
};


export { animCard }