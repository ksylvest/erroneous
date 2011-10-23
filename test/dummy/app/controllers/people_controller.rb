class PeopleController < ApplicationController
  
  respond_to :html
  
  # GET /people
  def index
    @people = Person.all
    respond_with(@people)
  end

  # GET /people/:id
  def show
    @person = Person.find(params[:id])
    respond_with(@person)
  end

  # GET /people/new
  def new
    @person = Person.new
    respond_with(@person)
  end

  # GET /people/:id/edit
  def edit
    @person = Person.find(params[:id])
    respond_with(@person)
  end

  # POST /people
  def create
    @person = Person.create(params[:person])
    respond_with(@person)
  end

  # PUT /people/:id
  def update
    @person = Person.find(params[:id])
    @person.attributes = params[:person]
    @person.save
    respond_with(@person)
  end

  # DELETE /people/:id
  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    respond_with(@person)
  end
end
