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
      menu.removeAttribute("hidden");
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
      if (hamburger.classList.contains("reverse")) {
        setTimeout(() => {
          menu.hidden = true;
        }, 1000);
      } else {
        menu.removeAttribute("hidden");
      }
    });
  }
}

export { animMenu }