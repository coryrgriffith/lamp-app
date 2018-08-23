class LampsController < ApplicationController
  def index
    @lamps = Lamp.all
  end

  def new
  
  end

  def show
    @lamp = Lamp.find_by(id: params[:id])
  end

  def create
    lamp = Lamp.new(
      material: params[:material],
      color: params[:color],
      bulbs: params[:bulbs],
      manufacturer: params[:manufacturer]
    )
    lamp.save
    redirect_to '/lamps'
  end

  def edit
    @lamp = Lamp.find_by(id: params[:id])
  end

  def update
    lamp = Lamp.find_by(id: params[:id])
    lamp.material = params[:material], 
    lamp.color = params[:color],
    lamp.bulbs = params[:bulbs],
    lamp.manufacturer = params[:manufacturer]
    lamp.save
    redirect_to "/lamps/#{lamp.id}"
  end

  def destroy
    lamp = Lamp.find_by(id: params[:id])
    lamp.destroy
    redirect_to '/lamps'
  end
end
