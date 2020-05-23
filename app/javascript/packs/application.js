require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import 'bootstrap';
import { loadDynamicBannerText } from '../components/banner';
import { scrollCocktails } from '../components/scrollrevealc';


document.addEventListener('turbolinks:load', () => {
    // Call your JS functions here
    // [...]
    loadDynamicBannerText();
    scrollCocktails();
  });
