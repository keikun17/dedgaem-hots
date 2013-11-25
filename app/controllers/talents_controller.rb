class TalentsController < ApplicationController
  before_action :set_talent, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @talent = Talent.new
  end

  private

  def set_talent
    @talent = Talent.find(params[:id])
  end

  def talent_params
    params.require(:talent).permit(:name)
  end

end
