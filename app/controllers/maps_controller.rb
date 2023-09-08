class MapsController < ApplicationController
  def index; end

  private
    def map_params
      params.require(:map).permit(:airport_name)
    end
end
