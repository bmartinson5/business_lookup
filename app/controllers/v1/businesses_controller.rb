class V1::BusinessesController < ApplicationController
  def index
    @businesses = Business.all
    json_response(@businesses)
  end

  def show
    business = Business.find(params[:id])
    json_response(business)
  end

  def create
    business = Business.create!(business_params)
    json_response(business)
  end

  def update
    business = Business.find(params[:id])
    business.update!
    json_response(business)
  end

  def destroy
    business = Business.find(params[:id])
    business.destroy!
    json_response(business)
  end

  def random
    business = Business.find(Business.pluck(:id).sample)
    json_response(business)
  end

  def most_branches
    businesses = Business.all.order("number_of_branches DESC").limit(3)
    json_response(businesses)
  end

  def least_branches
    businesses = Business.all.order("number_of_branches ASC").limit(3)
    json_response(businesses)
  end

  def oldest
    businesses = Business.all.order("founded ASC").limit(3)
    json_response(businesses)
  end

  def newest
    businesses = Business.all.order("founded DESC").limit(3)
    json_response(businesses)
  end

  def search_name
    business = Business.search(params[:name])
    json_response(business)
  end

  def search_location
    businesses = Business.search_location(params[:location])
    json_response(businesses)
  end

  private
    def business_params
      params.permit(:name, :founded, :type_of, :description, :number_of_branches, :location)
    end

end
