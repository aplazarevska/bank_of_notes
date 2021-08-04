class IssuingCountriesController < ApplicationController
  before_action :set_issuing_country, only: %i[ show edit update destroy ]

  # GET /issuing_countries or /issuing_countries.json
  def index
    @issuing_countries = IssuingCountry.all
  end

  # GET /issuing_countries/1 or /issuing_countries/1.json
  def show
  end

  # GET /issuing_countries/new
  def new
    @issuing_country = IssuingCountry.new
  end

  # GET /issuing_countries/1/edit
  def edit
  end

  # POST /issuing_countries or /issuing_countries.json
  def create
    @issuing_country = IssuingCountry.new(issuing_country_params)

    respond_to do |format|
      if @issuing_country.save
        format.html { redirect_to @issuing_country, notice: "Issuing country was successfully created." }
        format.json { render :show, status: :created, location: @issuing_country }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @issuing_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /issuing_countries/1 or /issuing_countries/1.json
  def update
    respond_to do |format|
      if @issuing_country.update(issuing_country_params)
        format.html { redirect_to @issuing_country, notice: "Issuing country was successfully updated." }
        format.json { render :show, status: :ok, location: @issuing_country }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @issuing_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /issuing_countries/1 or /issuing_countries/1.json
  def destroy
    @issuing_country.destroy
    respond_to do |format|
      format.html { redirect_to issuing_countries_url, notice: "Issuing country was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_issuing_country
      @issuing_country = IssuingCountry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def issuing_country_params
      params.require(:issuing_country).permit(:current_country_name, :old_country_name, :listing_id)
    end
end
