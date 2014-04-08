class BusesController < ApplicationController
  def new
    @bus = Bus.new
    @lines = Line.all
    @line_options = Line.all.map{|l| [l.color, l.id ] }
  end

  def show
    @bus = Bus.find(params[:id])
  end

  def edit
    @bus = Bus.find(params[:id])
  end

  def destroy
    @bus = Bus.find(params[:id])
    @bus.destroy
    redirect_to('/lines')
  end

  def create
    @bus = Bus.new(bus_params)
    if @bus.save
      flash[:notice] = "Bus created"
      redirect_to('/lines')
    else
      render 'new'
    end
  end

  def update
    @bus = Bus.find(params[:id])
    if @bus.update_attributes(bus_params)
      flash[:notice] = "Bus Updated"
      redirect_to bus_path(@bus)
    else
      render 'edit'
    end
  end

private
  def bus_params
    params.require(:bus).permit(:line_id)
  end
end
