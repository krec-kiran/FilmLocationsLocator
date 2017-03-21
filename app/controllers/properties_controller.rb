class PropertiesController < ApplicationController
  def index

    @properties = Property.paginate(page: params[:page], per_page: 10)


    @props = ["Commercial", "External", "Industrial","Public Buildings", "Residential", "Sports facilities",
              "Studios", "Vehicles"]

    if params[:category].blank?
      @properties = Property.all
    else
      @properties = Property.all.where(category:params["category"])
    end

        # @props = @properties.order(:name).page params[:page]



  end
end
