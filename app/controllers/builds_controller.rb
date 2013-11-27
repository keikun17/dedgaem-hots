class BuildsController < ApplicationController
  before_action :set_build, only: [:show, :edit, :update, :destroy]

  def new
    @build = Build.new
  end

  def show
  end

  def destroy
    @build.destroy
    redirect_to builds_path
  end

  def create
    @build = Build.new(build_params)
    if @build.save
      redirect_to @build, success: 'Build created'
    else
      render action: 'new'
    end
  end

  def index
    @builds = Build.all
  end

  private

  def set_build
    @build = Build.find(params[:id])
  end

  def build_params
    params.require(:build).permit(:title, :summary, :body, :hero_id)
  end
end
