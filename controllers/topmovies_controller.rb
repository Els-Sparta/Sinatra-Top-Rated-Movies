# Inherit code from an exisiting class
class TopMoviesController < Sinatra::Base
  # Set the root as the parent-directory
  set :root, File.join(File.dirname(__FILE__), '..')
  # Set the view directory
  set :views, Proc.new { File.join(root, 'views')}

configure :development do
  # Any changes made in the code will be seen in browser without the need to restart the server
  register Sinatra::Reloader
end
  # Root

  get "/" do
    @title = "Top Rated Movies"
    @movies = TopMovies.all
    erb :'posts/index'
  end

  get "/new" do
    @title = "New Movie"
    @movies = TopMovies.new
    erb :'posts/new'
  end

  post "/" do
    movies = TopMovies.new

    movies.title = params[:title]
    movies.release_year = params[:release_year]
    movies.rating = params[:rating]
    movies.images = params[:images]
    movies.background_img = params[:background_img]

    movies.save

    redirect "/"
  end

  get "/:id" do
    id = params[:id].to_i

    @movie = TopMovies.find(id)
    erb :'posts/show'
  end

  get "/:id/edit" do
    title = params[:title]
    id = params[:id].to_i
    @title = "Edit #{title}"

    @movies = TopMovies.find(id)

    erb :'posts/edit'
  end

  put "/:id" do
    id = params[:id].to_i

    movie = TopMovies.find(id)

    movie.title = params[:title]
    movie.release_year = params[:release_year]
    movie.rating = params[:rating]
    movie.images = params[:images]
    movie.background_img = params[:background_img]

    movie.save

    redirect "/"
  end

  delete "/:id" do
    id = params[:id].to_i

    TopMovies.destroy(id)

    redirect '/'
  end
end
