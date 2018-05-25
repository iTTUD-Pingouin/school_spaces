import "bootstrap";


import flatpickr from "flatpickr";
import 'flatpickr/dist/themes/material_blue.css'
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"



// flatpickr(".datepicker", {
//   mode: 'range',
// });
flatpickr("#range_start", {
  // altInput: true,
  plugins: [new rangePlugin({ input: "#range_end"})]
})
