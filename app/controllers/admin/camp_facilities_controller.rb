class Admin::CampFacilitiesController < ApplicationController
  def edit
    @camp_facility = CampFacility.find(params[:id])
  end

  def show
    @camp_facility = CampFacility.find(params[:id])
  end

  def index

  end

  def create
    @camp_facility = CampFacility.new(camp_facility_params)
    @camp_facility.save
    redirect_to admin_camp_facility_path(@camp_facility)
  end

  def update
    @camp_facility = CampFacility.find(params[:id])
    @camp_facility.update(camp_facility_params)
    redirect_to admin_camp_facility_path(@camp_facility)
  end

  private
  # ストロングパラメータ
  def camp_facility_params
    params.require(:camp_facility).permit(:spot, :manners, :notes, :it_was_fun, :image, :genre_id)
  end
end