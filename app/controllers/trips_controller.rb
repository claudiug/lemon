class TripsController < ApplicationController

  def index
    # Trip.create!(
    #   name: 'claudiu2',
    #   title: 'garba2',
    #   active: false,
    #   short_description: 'qqqwertyyrrrrrerereeeee',
    #   long_description: 'qqqwertyyrrrrrerereeeee',
    #   seo_description: ['ana', 'are', 'mere'],
    #   internal_status: 'nu tiu exact',
    #   rating: 3,
    #   owner: 'claudiu garba')
    @trips = Trip.all
    render json: @trips
  end
end
