class PropertiesController < ApplicationController

  def index

    # @properties = Property.paginate(page: params[:page], per_page: 10)

    @commercial_properties = ["Cafes & Restaurants", "Dance Studios", "Hotels" ]

    @props = ["Commercial", "External", "Industrial","Public Buildings", "Residential", "Sports facilities",
              "Studios", "Vehicles"]


    if params[:category].blank?
      @properties = Property.order("id ASC").all
    else
      @properties = Property.where(category:params["category"]).order("id ASC").all
    end

  end

  def show
    @properties = Property.find(params[:id])
  end

end
