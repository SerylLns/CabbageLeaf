/* ZEN MOOD */
  const lightLavander = "#A9A6FF";
  const veryLightLavander = "#EBF4FF";
  const lightBlue = "#A6CCFF";
  const darkBlue = "#021E73";
  const lavander = "#635FD9";
  const blueLight = "#8EBFFF";

/* PEPS MOOD */
const blue = "#8EBFFF";
const beige = "#F2ECCE";
const sun = "#F2CD13";
const orange = "#F29F05";
const canary = "#F2B90F";
const brown = "#2E1B00";
const ciel = "#C9E0FF";

const toggleColor = () => {
  const toggleBtn = document.querySelector(".switch");
  toggleBtn.addEventListener(("click"), (e) => {
    console.log('click')
    document.documentElement.style.setProperty("--light-blue", canary);
    document.documentElement.style.setProperty("--light-lavander", orange);
    // document.documentElement.style.setProperty("--light-blue", canary);
  });
};

export { toggleColor }
