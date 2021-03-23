const hasReadRequest = (element) => {
  const articleId = element.dataset.article;
    fetch(`${articleId}/read`)
      .then(response => {
        console.log(response);
      });
}


const hasRead = () => {
  const el = document.querySelector(".card-white");
  const screenHeight = window.innerHeight; /* taille de l'écran */
  const bodyHeight = document.body.clientHeight; /* Taille total de la page */
  let remove = false;
  if (el) {
    window.addEventListener("scroll", (e) => {
      const scroll = window.pageYOffset; /* scroll parcouru */
      const trigger = bodyHeight - screenHeight;
      const scrollTarget = scroll + (screenHeight / 3);
    
      if (scrollTarget > trigger && remove == false) {
        hasReadRequest(el);
        remove = true;
      }
    });
  }
};

export { hasRead }