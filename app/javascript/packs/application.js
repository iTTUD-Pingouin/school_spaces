import "bootstrap";
import flatpickr from "flatpickr";
import 'flatpickr/dist/themes/material_blue.css'
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

flatpickr("#reservation_start_date", {
  plugins: [new rangePlugin({ input: "#reservation_end_date"})]
})

