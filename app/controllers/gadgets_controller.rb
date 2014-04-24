class GadgetsController < ApplicationController

  def index
    @gadgets = Gadget.order(:price)
  end

  def show
    @gadget = Gadget.find(params[:id])
  end

  def new
    @gadget = Gadget.new
  end

  def create
    @gadget = Gadget.new(allowed_parameters)
    if @gadget.save
      redirect_to gadgets_path
    else
      render :new
    end
  end

  def edit
    @gadget = Gadget.find(params[:id])
  end

  def update
    @gadget = Gadget.find(params[:id])
    if @gadget.update_attributes(allowed_parameters)
      redirect_to gadget_path(@gadget)
    else
      render :edit
    end
  end

  def destroy
    @gadget = Gadget.find(params[:id])
    @gadget.destroy
    redirect_to gadgets_path(@gadget)
  end

  private

  def allowed_parameters
    params.require(:gadget).permit(:model, :price)
  end

end