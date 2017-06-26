class Yelp::Client
  def self.get(zip_code) #Self creates a class method instead of an instance method.
    results_string = Faraday.get(ENV['yelp_url'], {location: zip_code, term: 'winery'}, {'Authorization' => "Bearer #{ENV['yelp_key']}"}).body
    json = JSON.parse(results_string)
    self.parse(json)
  end

  def self.parse(json)
    businesses = []
    json['businesses'].each do |biz|
      businesses.push(Yelp::  Business.new(biz))
    end
    businesses
  end

end

# Yelp.get(12345)
