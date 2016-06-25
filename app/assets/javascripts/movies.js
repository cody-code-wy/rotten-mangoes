var ready;
ready = function() {

  Materialize.updateTextFields(); //Force materialize to check for pre-filled form elements.

  $('.datepicker').pickadate({
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 35 // Creates a dropdown of 35 years to control year
  });

};

$(document).ready(ready);
$(document).on('page:load', ready);
