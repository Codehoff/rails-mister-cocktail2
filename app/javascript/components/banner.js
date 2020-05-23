import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-text-typedjs', {
    strings: ["Welcome to Ennos cocktails!", "Have fun creating and browsing"],
    typeSpeed: 0.1,
    loop: true
  });
}

export { loadDynamicBannerText };