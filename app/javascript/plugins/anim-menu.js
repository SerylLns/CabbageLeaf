const animMenu = () => {
  const menu = document.querySelector('.menu')
  const hamburger = document.querySelector(".barres")
  if(hamburger){
    hamburger.addEventListener(("click"), (event)=>{
    hamburger.classList.toggle("open");
    menu.classList.toggle("open");
    });
  }
}

export { animMenu }