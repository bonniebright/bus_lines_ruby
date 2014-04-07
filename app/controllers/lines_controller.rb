class LinesController < ApplicationController

   def index
    @lines = Line.all
    # render('lines/index.html.erb')
  end

  def new
    @line = Line.new
  end

  def show
    @line = Line.find(params[:id])
  end

  def edit
    @line = Line.find(params[:id])
  end

  def destroy
    @line = Line.find(params[:id])
    @line.destroy
    redirect_to('/lines')
  end

  def create
    @line = Line.new(line_params)
    if @line.save
      flash[:notice] = "Line created."
      redirect_to('/lines')
    else
      render 'new'
    end
  end

  def update
    @line = Line.find(params[:id])
      if @line.update(line_params)
        flash[:notice] =  "Line Updated."
        redirect_to line_path(@line)
      else
        render 'edit'
      end
    end


private
  def line_params
    params.require(:line).permit(:color)
  end

end

