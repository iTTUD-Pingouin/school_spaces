import "bootstrap";


import flatpickr from "flatpickr";
import 'flatpickr/dist/themes/material_blue.css'
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"


flatpickr("#range_start", {
  dateFormat: "d-m-Y"

  plugins: [new rangePlugin({ input: "#range_end"})]
})

