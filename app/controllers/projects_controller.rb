class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
    if params[:search]
      @projects = Project.search(params[:search])
    else
      @projects = Project.all
      flash[:alert] = "There are no projects that matches your search"
    end
  end

  def projectsbyuser
    @user = User.find(params[:id])
    @projects = Project.where(user_id:@user)
  end

  # GET /projects/category/1
  # GET /projects/category/1.json
  def index_by_cat
    @category = Category.find(params[:category_id])
    @projects_by_c = @category.projects
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @promises = Promise.where(project_id: params[:id])
    @categories = @project.categories
  end

  # GET /projects/new
  def new
    if user_signed_in?
      @project = Project.new
    else
      render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    end
  end

  # GET /projects/1/edit
  def edit
    @user = current_user
    if not user_signed_in?
      render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    end
    if user_signed_in?
      if not @user.is_admin
         if @project.user != @user
           render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
         end
      end
      end
    end


  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to "/users/%s/projects/%s" % [current_user.id,@project.id], notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:title, :description, :goalamount, :currentamount, :approved, :deadline, :category_id, :avatar, :user, :outstanding)
    end
end
