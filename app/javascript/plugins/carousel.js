
const carousel = () => {
  const carrousel = document.querySelectorAll(".prod1 img");
  let oldNum = ""
  if (carrousel) {
    carrousel.forEach(image => {
      image.addEventListener("click", (e) => {
        // console.log(image.parentElement);
        if (oldNum != "") {
          oldNum.style.display = "none";
        }
        oldNum = image.parentElement.querySelector('.position-rank')
        oldNum.style.display = "block";
      });
    });
  }
};

export { carousel }