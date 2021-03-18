
const animMenu = () => {
  const menu = document.querySelector('.menu')
  const hamburger = document.querySelector(".barres")
  if(hamburger){
    const openMenuTimeline = anime.timeline({
      autoplay: false
    });
    openMenuTimeline.add({
      targets: menu,
      easing: "linear",
      right: 0,
      duration: 1000
    });

    hamburger.addEventListener("click", ()=>{
      hamburger.classList.toggle("open");
      if(hamburger.classList.contains("open")){
        if (hamburger.classList.contains("reverse")) {
          openMenuTimeline.reverse();
          openMenuTimeline.play();
          hamburger.classList.remove("reverse")
        }
        openMenuTimeline.play();
      } else if ( !hamburger.classList.contains("open")) {
        openMenuTimeline.reverse();
        openMenuTimeline.play();
        hamburger.classList.add("reverse")
      }
    });
  }
}

export { animMenu }