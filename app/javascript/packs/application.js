import "bootstrap";
import "flatpickr/dist/themes/airbnb.css";
import AOS from 'aos';
import 'aos/dist/aos.css';
import { initFlatPickr } from 'plugins/init_flatpickr.js';
import { navColor } from 'plugins/nav_color.js';

if (document.querySelector('.datepicker')) {
  initFlatPickr();
};

if (document.querySelector('.navbar')) {
  navColor();
};

AOS.init();
