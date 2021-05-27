class MoviesController < ApplicationController
  def index
    @movies = 
      if params[:query]
        sql_query = <<-SQL
        movies.title @@ :q
        OR movies.synopsis @@ :q
        OR directors.first_name @@ :q
        OR directors.last_name @@ :q
        SQL

        Movie.joins(:director).where(sql_query, q: "%#{params[:query]}%")
      else
        Movie.all
      end
  end
end