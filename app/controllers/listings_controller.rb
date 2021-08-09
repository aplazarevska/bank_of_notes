class ListingsController < ApplicationController
  before_action :set_listing, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only: %i[ new edit update destroy ]

  # GET /listings or /listings.json
  def index
    @listings = Listing.all
  end

  # GET /listings/1 or /listings/1.json
  def show
    if params[:checkout] == "success"
      @listing.buyer_id = current_user.profile.id
      @listing.save
    end
  end

  # GET /listings/new
  def new
    @listing = Listing.new
    # @year = Year.all
    # @issuing_country = Issuing_country.all
  end

  # GET /listings/1/edit
  def edit
  end

  # POST /listings or /listings.json
  def create
    @listing = Listing.new(listing_params)
    @listing.seller_id = current_user.profile.id

    respond_to do |format|
      if @listing.save
        format.html { redirect_to @listing, notice: "Listing was successfully created." }
        format.json { render :show, status: :created, location: @listing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listings/1 or /listings/1.json
  def update
    respond_to do |format|
      if @listing.update(listing_params)
        format.html { redirect_to @listing, notice: "Listing was successfully updated." }
        format.json { render :show, status: :ok, location: @listing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listings/1 or /listings/1.json
  def destroy
    @listing.destroy
    respond_to do |format|
      format.html { redirect_to listings_url, notice: "Listing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @listing = Listing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def listing_params
      params.require(:listing).permit(:title, :denomination, :condition, :description, :price, :buyer_id, :seller_id, :profile_id, images: [])
    end

   # include this here nad not in application_controller so it only applies to the listings and not to take me to new_listing when i just log in
   def after_sign_in_path_for(profile)
    if(current_user.profile)
      if(params[:user][:user_type] == "buyer")
        root_path
      else
        new_listing_path
      end
    elsif(params[:user][:user_type] == "returning_user")
        root_path
    else
      new_profile_path(user_type: params[:user][:user_type]) || root_path
    end
  end
end
