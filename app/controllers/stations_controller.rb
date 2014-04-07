# class StationsController < ApplicationController
#    def index
#     @stations = Station.all
#   end

#   def new
#     @station = Station.new
#   end

#   def create
#     @station = Station.new(params[:station])
#     if @station.save
#       flash[:notice] = "Station created."
#       redirect_to('/stations')
#     else
#       render 'new'
#     end
#   end

#   def update
#     @station = Station.find(params[:id])
#       if @station.update(params[:station])
#         flash[:notice] =  "Station Updated."
#         redirect_to station_path(@station)
#       else
#         render 'edit'
#       end
#     end
# end
