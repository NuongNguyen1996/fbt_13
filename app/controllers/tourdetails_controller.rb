class TourdetailsController < ApplicationController
  def new
    if @current_user.present?
      find_tour
      @tourdetail = Tourdetail.new
    else
      flash[:danger] = t "controllers.tourdetails_controller.please_sign_up"
      redirect_to signup_path
    end
  end

  def create
    @tourdetail = Tourdetail.new tour_detail_params
    if @tourdetail.save
      flash[:success] = t "controllers.tourdetails_controller.booking_success"
      redirect_to @tourdetail
    else
      flash[:danger] = t "controllers.tourdetails_controller.booking_fail"
      redirect_to booking_request_path(id: @tourdetail.tour_id)
    end
  end

  def show
    find_tour_detail
  end

  private

  def tour_detail_params
    params.require(:tourdetail).permit(:user_id, :tour_id, :num_of_pass, :total_price)
  end

  def find_tour
    @tour = Tour.find(params[:id])
  end

  def find_tour_detail
    @tourdetail = Tourdetail.find(params[:id])
  end

  def add_pass
    @num_of_pass = 0;

  end
end
