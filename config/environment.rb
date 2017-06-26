# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ENV['yelp_key'] = "CiLsDo8czZbEH3kCEEbNJm8vOas8l4b1rs7ZM7GVMGR-3cWYE9yjwPRyH3ltwVH_qeFj6-P52GGjbV70aMJOtvdVzMYHwWJpn3nJdNExd6muEi6VhlBuEQ7iNdBOWXYx"
ENV['yelp_url'] = "https://api.yelp.com/v3/businesses/search"
