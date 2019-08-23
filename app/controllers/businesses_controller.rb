class BusinessesController < ApplicationController
  def index
    businesses = Business.all
    json_response(businesses)
  end

  def show
    business = Business.find(params[:id])
    json_response(business)
  end

end
