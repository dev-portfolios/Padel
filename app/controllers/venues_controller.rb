class VenuesController < ApplicationController
  def index
    @venues = Venue.all
  end

  def show
    @venue = Venue.find(params[:id])
    @venue.set_max_bookable_days(I18n.locale)
  end
end