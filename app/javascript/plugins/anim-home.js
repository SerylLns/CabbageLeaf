

const animHome = () => {
  const homeFirstPart = document.querySelector(".home-first-part");
  const part2 = document.querySelector(".full-page");

  if (homeFirstPart) {
    const logoTimeline = anime.timeline({
      autoplay: true
    });
    const homeTimeline = anime.timeline({
      autoplay: false
    });
    logoTimeline
      .add({
        targets: homeFirstPart,
        duration: 2700,
        easing: "linear",
        scale: {
          value: 0,
          duration: 2000,
          offset:0,
          easing: 'linear',
        },
        delay: 1500,
        complete: (anim) => {
          part2.removeAttribute("hidden");
          homeTimeline.play();
        },
      })
      homeTimeline
        .add({
          targets:".color-top",
          top: 0,
          duration: 1500
        })
        .add({
          targets:".color-bottom ",
          bottom: 0,
          duration: 1500
        })
        .add({
          targets: ".home-border",
          opacity:{
            value: 1,
            duration: 1000,
            easing: 'easeInOutQuart'
          } 
        })
    }
}

export { animHome }