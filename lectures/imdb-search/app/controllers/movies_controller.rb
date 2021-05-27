class MoviesController < ApplicationController
  def index
    @movies = 
      if params[:query]
        ## PG SEARCH
        
        # Movie.search_by_title_and_synopsis(params[:query])
        # Movie.global_search(params[:query])
        PgSearch.multisearch(params[:query])

        ## ACTIVE RECORD

        # sql_query = <<-SQL
        # movies.title @@ :q
        # OR movies.synopsis @@ :q
        # OR directors.first_name @@ :q
        # OR directors.last_name @@ :q
        # SQL

        # Movie.joins(:director).where(sql_query, q: "%#{params[:query]}%")
      else
        Movie.all
      end
  end
end