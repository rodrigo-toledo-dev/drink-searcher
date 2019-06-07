$ ->
  $('input[type=radio][name=searchRadio]').change ->
    if @value == 'simple'
      $('.simple-form').show()
      $('.advanced-form').hide()
    else if @value == 'advanced'
      $('.simple-form').hide()
      $('.advanced-form').show()
    return
  return
