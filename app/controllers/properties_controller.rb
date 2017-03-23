class PropertiesController < ApplicationController

  def index

    # @properties = Property.paginate(page: params[:page], per_page: 10)

    @commercial_properties = ["Cafes & Restaurants", "Dance Studios", "Hotels" ]

    @props = ["Commercial", "External", "Industrial","Public Buildings", "Residential", "Sports facilities",
              "Studios", "Vehicles"]

    if params[:category].blank?
      @properties = Property.all
    else
      @properties = Property.all.where(category:params["category"])
    end

  end

  def show
    @properties = Property.find(params[:id])
  end

end
