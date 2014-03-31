jQuery ->
  Stripe.setPublishableKey($('meta[name="stripe-key"]').attr('content'))
  subscription.setupForm()

  $("#phone_input").formatter(
    pattern: "({{999}}) {{999}}-{{9999}}"
  )

subscription =
  setupForm: ->
    $('#subscription_form').submit ->
      $('input[type=submit]').attr('disabled', true)
      if $('#card_number').length
        subscription.processCard()
        false
      else
        true

  processCard: ->
    card =
      number: $('#card_number').val()
      expMonth: $('#card_month').val()
      expYear: $('#card_year').val()
    Stripe.createToken(card, subscription.handleStripeResponse)

  handleStripeResponse: (status, response) ->
    if status == 200
      $('#stripe_card_token').val(response.id)
      $('#subscription_form')[0].submit()
    else
      $('#stripe_error').show()
      $('#stripe_error').text(response.error.message)

      $('input[type=submit]').attr('disabled', false)
