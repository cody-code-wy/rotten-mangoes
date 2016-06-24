class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end
  def show
    @movie = Movie.find(params[:id])
  end
  # new
  def edit
    @movie = Movie.find(params[:id])
  end
  # create
  def update
    @movie = Movie.find(params[:id])
    if @movie.update_attributes(movie_params)
      redirect_to @movie
    else
      render :edit
    end
  end
  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_path
  end

  protected

  def movie_params
    params.require(:movie).permit(
      :title, :director, :runtime_in_minutes, :poster_image_url, :description, :release_date
    )
  end
end
