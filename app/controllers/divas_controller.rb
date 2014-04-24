class DivasController < ApplicationController

  def index
    @divas = Diva.order('lower(high_note)')
  end

  def show
    @diva = Diva.find(params[:id])
  end

  def new
    @diva = Diva.new
  end

  def create
    @diva = Diva.new(allowed_parameters)
    if @diva.save
      redirect_to Diva
    else
      render :new
    end
  end

  def edit
    @diva = Diva.find(params[:id])
  end

  def update
    @diva = Diva.find(params[:id])
    if @diva.update_attributes(allowed_parameters)
      redirect_to @diva
    else
      render :edit
    end
  end

  def destroy
    Diva.destroy(params[:id])
    redirect_to Diva
  end

  private

  def allowed_parameters
    params.require(:diva).permit(:stage_name, :still_singing, :high_note)
  end

end