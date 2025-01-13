class VenuesController < ApplicationController
  before_action :load_amanities, only: :show
  def index
    @venues = Venue.all
  end

  def show
    @venue = Venue.includes(:courts).find(params[:id])
    @venue.set_date(params[:date])
    @venue.set_max_bookable_days(I18n.locale)
    VenueSlots.new(@venue)
  end

  private

  def load_amanities
    @amenities ||= Amenity.all
  end
end