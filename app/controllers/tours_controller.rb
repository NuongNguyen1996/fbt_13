class ToursController < ApplicationController
  def index
    @tours = Tour.order(id: :desc).paginate(page: params[:page], per_page: Settings.tours.per_page)
    return if @tours.count > 0
    flash.now[:danger] = t "controllers.tours_controller.no_tour"
  end
end
