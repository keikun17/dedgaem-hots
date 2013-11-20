class HeroesController < ApplicationController
  before_action :set_hero, only: [:show, :edit, :update, :destroy]

  def index
    @heroes = Hero.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def new
    @hero = Hero.new
  end

  def create
    @hero = Hero.new(hero_params)
    if @hero.save
      redirect_to @hero, success: 'Hero created'
    else
      render action: 'new'
    end
  end

  def destroy
  end

  private

  def set_hero
    @hero = Hero.find(params[:id])
  end

  def hero_params
    params.require(:hero).permit(:name,
                                 :universe,
                                 :base_life,
                                 :attack,
                                 :abilities,
                                 :speed)
  end
end
