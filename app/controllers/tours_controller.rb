class ToursController < ApplicationController
  def index
    @tours = Tour.order(id: :desc).paginate(page: params[:page], per_page: Settings.tours.per_page)
    return if @tours.count > 0
    flash.now[:danger] = t "controllers.tours_controller.no_tour"
  end

  def search
    if params[:search].present? && params[:p].present?
      search_all
    else
      search_part
    end
  end

  def search_part
    if params[:search].present?
      search_name
    elsif params[:p].present?
      search_cat_tour
    else
      flash.now[:danger] = t "controllers.tours_controller.must_choose_a_cat"
      @tours = []
    end
  end

  def search_all
    @tours = Tour.search_all(params[:search], params[:p])
      .paginate(page: params[:page], per_page: Settings.tours.per_page)
    return if @tours.count > 0
    flash.now[:danger] = t "controllers.tours_controller.not_found_tour"
  end

  def search_name
    @tours = Tour.search_name_tour(params[:search]).paginate(page: params[:page], per_page: Settings.tours.per_page)
    return if @tours.count > 0
    flash.now[:danger] = t "controllers.tours_controller.not_found_tour"
  end

  def search_cat_tour
    @tours = Tour.search_by_cat_tour(params[:p]).paginate(page: params[:page], per_page: Settings.tours.per_page)
    return if @tours.count > 0
    flash.now[:danger] = t "controllers.tours_controller.not_found_tour"
  end
end
