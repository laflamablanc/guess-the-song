class GamesController < ApplicationController
  def index
    games = Game.all.sort_by { |game| game.score }.reverse
    render json: games
  end

  def create
    game = Game.create(games_params)

    render json: game
  end

  def show
    game = Game.find(params[:id])
    render json: game
  end

  def update
    game = Game.find(params[:id])
    game.update(games_params)
    render json: game
  end

  private

  def games_params
    params.require(:game).permit(:score, :user_id)
  end

end
