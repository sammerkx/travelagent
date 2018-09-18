class TravelagentController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :redirect_if_not_found
  def index
     @cruises = Cruise.all
    @cruise_names = []
    @cabins_available = []
    @cruises.each do |cruise|
      @cruise_names << cruise.name
    end
    @cabins = Cabin.group(:ship_id).count
    @cabins.each do |group|
     @cabins_available << group[1]
     @cabins_available << group[1]
   end

      puts @cabins_available
      puts @cruise_names
   
    @cruises = Cruise.all
    @cruise_names = []
@cruises.each do |cruise|
      @cruise_names << cruise.name
    end
  end
end
