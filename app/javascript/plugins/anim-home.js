

const animHome = () => {
  const homeFirstPart = document.querySelector(".home-first-part");
  const part2 = document.querySelector(".full-page");
  const mood = document.querySelector(".color-top .mood");
  const mood2 = document.querySelector(".color-bottom .mood");
  const buttonMood = document.querySelector(".btn-mood");
  const lastPageHome = document.querySelector('.last-part');
  const btnZen = document.querySelector('.zen-mood');
  const btnPeps = document.querySelector('.peps-mood');
  if (homeFirstPart) {
    const logoTimeline = anime.timeline({
      autoplay: false
    });
    const homeTimeline = anime.timeline({
      autoplay: false
    });
    const lastPartTimeline = anime.timeline({
      autoplay: false
    });
    lastPageHome.addEventListener('click', (e) => {
      logoTimeline.play();
    });
    lastPartTimeline.add({
      targets:".color-bottom ",
      bottom: 0,
      duration: 1000,
      easing: 'linear'
    })

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
          lastPartTimeline.play();
        },
      })
      homeTimeline
        .add({
          targets:".color-top",
          top: 0,
          duration: 1000,
          easing: 'linear'
        })
        // .add({
        //   targets:".color-bottom ",
        //   bottom: 0,
        //   duration: 1000,
        //   easing: 'linear'
        // })
        .add({
          targets: ".home-border",
          opacity:{
            value: 2,
            easing: 'easeInOutQuart'
          },
          duration: 500,
        })
        .add({
          targets: ".home-border",
          opacity:{
            value: 0.3,
          },
          duration: 1000,
          delay: 3500
        })
        .add({
          targets: ".last-part",
          opacity: 1,
          duration: 2000,
          complete: (anim) => {
            mood.removeAttribute("hidden");
            mood2.removeAttribute("hidden");
          },
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
            easing: 'linear',
            complete: function (homeTimeline) {
              const borderHome = document.querySelector('.home-border');
              borderHome.hidden = true;

              lastPageHome.hidden = true
            }
          })
          btnZen.addEventListener("click", (e)=> {
            mood2.parentNode.classList.add('scroll-up');
          });
          btnPeps.addEventListener("click", (e)=> {
            mood.parentNode.classList.add('scroll-down');
          });
          
    };
}

export { animHome }
