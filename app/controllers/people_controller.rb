class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_something)

    if @person.save
      redirect_to people_path
    else
      render :new
    end
  end


  private
    def person_something
      params.require(:person).permit(:name, :age, :hair_color, :eye_color, :gender, :friend_level)
    end
end