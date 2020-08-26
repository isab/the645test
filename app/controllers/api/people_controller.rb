class Api::PeopleController < ApplicationController
  def index
    render json: { people: Person.all }
  end
end