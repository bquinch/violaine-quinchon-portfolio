import flatpickr from "flatpickr";
import { French } from 'flatpickr/dist/l10n/fr.js';

const initFlatPickr = () => {
  const dates = document.querySelectorAll('.datepicker');
  dates.forEach((date) => {
    flatpickr(date, {
      locale: French,
      altFormat: 'M Y',
      altInput: true,
    });
  });
};

export { initFlatPickr };
