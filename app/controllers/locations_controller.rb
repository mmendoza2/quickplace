class LocationsController < ApplicationController
  before_action :admin_user,     only: :destroy


  # GET /locations
  # GET /locations.json
  def index
    @locations = Location.all
  end

  # GET /locations/1
  # GET /locations/1.json
  def show
    @location = Location.friendly.find(params[:id])
    @micrositios = Micrositio.all
    @actividades = Actividad.all

  end

  # GET /locations/new
  def new
    @location = Location.new
  end

  # GET /locations/1/edit
  def edit
    @location = Location.friendly.find(params[:id])
  end

  # POST /locations
  # POST /locations.json
  def create
    @location = Location.find_or_create_by(location_params)
    respond_to do |format|
      if @location.save
        format.html { redirect_to @location, notice: 'location was successfully created.' }
        format.json { render action: 'show', status: :created, location: @location }
      else
        format.html { render action: 'new' }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /locations/1
  # PATCH/PUT /locations/1.json
  def update
    @location = Location.friendly.find(params[:id])
    respond_to do |format|
      if   @location.update_attributes!(location_params)
        format.html { redirect_to @location, notice: 'location was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locations/1
  # DELETE /locations/1.json
  def destroy
    @location.destroy
    respond_to do |format|
      format.html { redirect_to locations_url }
      format.json { head :no_content }
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_params
      params[:location].permit(:name, :actividad_id)
    end


end
