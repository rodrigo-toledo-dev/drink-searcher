$(document).on('turbolinks:load', function() {
  $('input[type=radio][name=searchRadio]').change(function() {
    if (this.value === 'simple') {
      $('.simple-form').show();
      $('.advanced-form').hide();
    }
    else if (this.value === 'advanced') {
      $('.simple-form').hide();
      $('.advanced-form').show();
    }
  });
})
