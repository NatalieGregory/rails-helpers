class TreesController < ApplicationController

  def index
    @trees = Tree.all
  end

  def show
    @tree = Tree.find(params[:id])
  end

  def new
    @tree = Tree.new
  end

  def create
    @tree = Tree.new
    @tree.species = params[:tree][:species]
    @tree.planted_on = params[:tree][:planted_on]
    if @tree.save
      redirect_to '/trees'
    else
      render :new
    end
  end

  def edit
    @tree = Tree.find(params[:id])
  end

  def update
    @tree = Tree.find(params[:id])
    @tree.species = params[:tree][:species]
    @tree.planted_on = params[:tree][:planted_on]
    if @tree.save
      redirect_to "/trees/#{@tree.id}"
    else
      render :edit
    end
  end

  def destroy
    @tree = Tree.find(params[:id])
    @tree.destroy
    redirect_to '/trees'
  end

end