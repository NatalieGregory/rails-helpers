class PeopleController < ApplicationController

  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new

  end

  def create
    @person = Person.new
    @person.first_name = params[:person][:first_name]
    @person.last_name = params[:person][:last_name]
    @person.date_of_birth = params[:person][:date_of_birth]
    @person.save
    redirect_to '/people'
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    @person.first_name = params[:person][:first_name]
    @person.last_name = params[:person][:last_name]
    @person.date_of_birth = params[:person][:date_of_birth]
    @person.save
    redirect_to "/people/#{@person.id}"
  end

end