class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def create
    @movie = Movie.find(params[:id])
    
    if params[:user_answer].downcase.split.join == @movie.answer.downcase.split.join
      @result = "Bravo ! Effectivement c'était bien :"
    else
      @result = "Faux, retente ta chance !"
    end
    
  end
end
