class PromisesController < ApplicationController
  before_action :set_promise, only: [:show, :edit, :update, :destroy]

  # GET /promises
  # GET /promises.json
  def index
    @promises = Promise.all
  end

  def by_project
    @promises_by_project = Promise.where(project_id: params[:id])
  end

  # GET /promises/1
  # GET /promises/1.json
  def show
    @project = Project.find(@promise.project_id)
  end

  # GET /promises/new
  def new
    if not user_signed_in?
      render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    end
    @promise = Promise.new
  end

  # GET /promises/1/edit
  def edit
    if not user_signed_in?
      render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    end
  end

  # POST /promises
  # POST /promises.json
  def create
    @promise = Promise.new(promise_params)

    respond_to do |format|
      if @promise.save
        format.html { redirect_to @promise, notice: 'Promise was successfully created.' }
        format.json { render :show, status: :created, location: @promise }
      else
        format.html { render :new }
        format.json { render json: @promise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /promises/1
  # PATCH/PUT /promises/1.json
  def update
    respond_to do |format|
      if @promise.update(promise_params)
        format.html { redirect_to @promise, notice: 'Promise was successfully updated.' }
        format.json { render :show, status: :ok, location: @promise }
      else
        format.html { render :edit }
        format.json { render json: @promise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promises/1
  # DELETE /promises/1.json
  def destroy
    if not user_signed_in?
      render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    end
    @promise.destroy
    respond_to do |format|
      format.html { redirect_to promises_url, notice: 'Promise was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promise
      @promise = Promise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def promise_params
      params.require(:promise).permit(:name, :amount, :description, :etd, :project_id, :avatar)
    end
end
