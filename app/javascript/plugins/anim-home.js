

const animHome = () => {
  const homeFirstPart = document.querySelector(".home-first-part");
  const part2 = document.querySelector(".full-page");
  const buttonMood = document.querySelector(".btn-mood");
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
        easing: "linear",
        opacity: {
          value: 0,
          duration: 2000,
          easing: 'linear',
        },
        delay: 1000,
        complete: (anim) => {
          part2.removeAttribute("hidden");
          homeTimeline.play();
        },
      })
      homeTimeline
        .add({
          targets:".color-top",
          top: 0,
          duration: 1000,
          easing: 'linear'
        })
        .add({
          targets:".color-bottom ",
          bottom: 0,
          duration: 1000,
          easing: 'linear'
        })
        .add({
          targets: ".home-border",
          opacity:{
            value: 1,
            duration: 1000,
            easing: 'easeInOutQuart'
          }
        })
        .add({
          targets: ".home-border",
          opacity:{
            value: 0,
            duration: 2000
          },
          delay: 1500
        })
          .add({
            targets:".color-top",
            opacity: 1,
            duration: 1000,
            easing: 'linear'
          })
          .add({
            targets:".color-bottom ",
            opacity: 1,
            duration: 1000,
            easing: 'linear'
          })
          .add({
            targets: buttonMood,
            opacity: 1,
            duration: 1000,
            easing: 'linear'
            
          })
          complete: (anim) => {
            const borderHome = document.querySelector('.home-border');
            borderHome.hidden = true;
          }
    };
}

export { animHome }