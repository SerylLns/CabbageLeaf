// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import { animHome } from '../plugins/anim-home'
import { animMenu } from '../plugins/anim-menu'
import { animCard } from '../plugins/animate-indexcard'
import { carousel } from '../plugins/carousel'
import { hasRead } from '../plugins/has_read'

// import { toggleColor } from '../plugins/color-mood'

document.addEventListener('turbolinks:load', () => {
  animMenu();
  animHome();
  animCard();
  // toggleColor();
  carousel();
  hasRead();
  // animRank();
  // document.documentElement.style.setProperty("--lightblue","#4CAF50");
});
