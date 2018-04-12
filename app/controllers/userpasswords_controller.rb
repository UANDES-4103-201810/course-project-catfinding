class UserpasswordsController < ApplicationController
  before_action :set_userpassword, only: [:show, :edit, :update, :destroy]

  # GET /userpasswords
  # GET /userpasswords.json
  def index
    @userpasswords = Userpassword.all
  end

  # GET /userpasswords/1
  # GET /userpasswords/1.json
  def show
    @pUserpassword = Userpassword.find(params[:id])
    respond_to do |format|
      format.json { render json: @user.to_json}
    end
  end

  # GET /userpasswords/new
  def new
    @userpassword = Userpassword.new
  end

  # GET /userpasswords/1/edit
  def edit
  end

  # POST /userpasswords
  # POST /userpasswords.json
  def create
    @userpassword = Userpassword.new(userpassword_params)

    respond_to do |format|
      if @userpassword.save
        format.html { redirect_to @userpassword, notice: 'Userpassword was successfully created.' }
        format.json { render :show, status: :created, location: @userpassword }
      else
        format.html { render :new }
        format.json { render json: @userpassword.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userpasswords/1
  # PATCH/PUT /userpasswords/1.json
  def update
    respond_to do |format|
      if @userpassword.update(userpassword_params)
        format.html { redirect_to @userpassword, notice: 'Userpassword was successfully updated.' }
        format.json { render :show, status: :ok, location: @userpassword }
      else
        format.html { render :edit }
        format.json { render json: @userpassword.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userpasswords/1
  # DELETE /userpasswords/1.json
  def destroy
    @userpassword.destroy
    respond_to do |format|
      format.html { redirect_to userpasswords_url, notice: 'Userpassword was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userpassword
      @userpassword = Userpassword.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userpassword_params
      params.require(:userpassword).permit(:password, :user_id)
    end
end
