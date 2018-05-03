class WishlisttoprojectsController < ApplicationController
  before_action :set_wishlisttoproject, only: [:show, :edit, :update, :destroy]

  # GET /wishlisttoprojects
  # GET /wishlisttoprojects.json
  def index
    @wishlisttoprojects = Wishlisttoproject.all
  end

  # GET /wishlisttoprojects/1
  # GET /wishlisttoprojects/1.json
  def show
  end

  # GET /wishlisttoprojects/new
  def new
    @wishlisttoproject = Wishlisttoproject.new
  end

  # GET /wishlisttoprojects/1/edit
  def edit
  end

  # POST /wishlisttoprojects
  # POST /wishlisttoprojects.json
  def create
    @wishlisttoproject = Wishlisttoproject.new(wishlisttoproject_params)

    respond_to do |format|
      if @wishlisttoproject.save
        format.html { redirect_to @wishlisttoproject, notice: 'Wishlisttoproject was successfully created.' }
        format.json { render :show, status: :created, location: @wishlisttoproject }
      else
        format.html { render :new }
        format.json { render json: @wishlisttoproject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wishlisttoprojects/1
  # PATCH/PUT /wishlisttoprojects/1.json
  def update
    respond_to do |format|
      if @wishlisttoproject.update(wishlisttoproject_params)
        format.html { redirect_to @wishlisttoproject, notice: 'Wishlisttoproject was successfully updated.' }
        format.json { render :show, status: :ok, location: @wishlisttoproject }
      else
        format.html { render :edit }
        format.json { render json: @wishlisttoproject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wishlisttoprojects/1
  # DELETE /wishlisttoprojects/1.json
  def destroy
    @wishlisttoproject.destroy
    respond_to do |format|
      format.html { redirect_to wishlisttoprojects_url, notice: 'Wishlisttoproject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wishlisttoproject
      @wishlisttoproject = Wishlisttoproject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wishlisttoproject_params
      params.require(:wishlisttoproject).permit(:rails, :generate, :model, :project_to_wishlist)
    end
end
