
# Stripe.api_key = Rails.application.credentials.dig(:stripe, :secret_key)

Rails.configuration.stripe = {
:stripe_public_key => ENV['STRIPE_PUBLIC_KEY'],
:stripe_api_key => ENV['STRIPE_API_KEY']
}

Stripe.api_key = Rails.configuration.stripe[:stripe_api_key]