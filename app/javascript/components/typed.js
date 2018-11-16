import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#typed', {
    strings: ["Refreshing", "Don't drink ^1000 and drive"],
    typeSpeed: 40,
    loop: true
  });
}

export { loadDynamicBannerText };
