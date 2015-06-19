
Rails.configuration.stripe = {




:publishable_key => "sk_test_I3yDqbJPBgxiCUMbm3GChoAm",

  :secret_key => "pk_test_5mMd6hkvrsTaLvAUj3KnUKkQ" 

}




  Stripe.api_key = Rails.configuration.stripe[:secret_key]