class WineriesController < ApplicationController
  def index
    zip_code = params[:zip]

    if zip_code.blank?
      raise "No zip code present!"
    end

    @businesses = Yelp::Client.get(zip_code)

    respond_to do |format|
      format.html
      format.json { render json: @businesses.map(&:to_json) }
    end
  end
end
