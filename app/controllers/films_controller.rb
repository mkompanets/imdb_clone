class FilmsController < ApplicationController
  # GET /films
  # GET /films.json
  def index
    @films = Film.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @films }
    end
  end

  # GET /films/1
  # GET /films/1.json
  def show
    @film = Film.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @film }
    end
  end

  def add_occupation
    @occupation_type = params[:occupation_type]
    @film = Film.find(params[:id])
  end

  def set_occupation
    @occupation_type = params[:occupation_type]
    @film = Film.find(params[:id])
    @person = Person.find(params[:person_id])
    ## @occupation will be of :occupation_type class
    @occupation = @occupation_type.constantize.find_or_create_by_person_id(@person.id)
    @occupation.films << @film unless @occupation.films.include?(@film)
    redirect_to film_path(@film)
  end

  def add_characters_and_actors
    @film = Film.find(params[:id])
  end

  def set_characters_and_actors
    @film = Film.find(params[:id])
    params[:characters].keys.each do |n|
      h = params[:characters][n]
      person = Person.find(h[:person_id])
      character = Character.find_or_initialize_by_name_and_film_id(h[:name], @film.id)
      if character.valid?
        actor = Actor.find_or_create_by_person_id(person.id)
        actor.films << @film unless actor.films.include?(@film)
        character.actor_id = actor.id
        character.biography = h[:biography]
        character.save
      end
    end
    redirect_to film_path(@film)
  end

  # GET /films/new
  # GET /films/new.json
  def new
    @film = Film.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @film }
    end
  end

  # GET /films/1/edit
  def edit
    @film = Film.find(params[:id])
  end

  # POST /films
  # POST /films.json
  def create
    @film = Film.new(params[:film])

    respond_to do |format|
      if @film.save
        format.html { redirect_to @film, notice: 'Film was successfully created.' }
        format.json { render json: @film, status: :created, location: @film }
      else
        format.html { render action: "new" }
        format.json { render json: @film.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /films/1
  # PUT /films/1.json
  def update
    @film = Film.find(params[:id])

    respond_to do |format|
      if @film.update_attributes(params[:film])
        format.html { redirect_to @film, notice: 'Film was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @film.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /films/1
  # DELETE /films/1.json
  def destroy
    @film = Film.find(params[:id])
    @film.destroy

    respond_to do |format|
      format.html { redirect_to films_url }
      format.json { head :no_content }
    end
  end
end
