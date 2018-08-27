  class TopMovies
  # Making it public
  attr_accessor(:id, :title, :release_year, :rating, :images, :background_img)
  # Method to connect to the database
  def self.open_connection
    # Variable that runs the method 'connect' to get data from databse
    conn = PG.connect(dbname: "movies")
  end
  # Mario's instructions of what to do when looking for data
  # The method to save a new movie or update an existing movie
  def save
    # connect the data to database
    conn = TopMovies.open_connection
    # Check if its a new movie or an existing movie to be added or updated
    if(!self.id)
      sql = "INSERT INTO topmovies (title, release_year, rating, images, background_img) VALUES ('#{self.title}', '#{self.release_year}', '#{self.rating}', '#{self.images}', '#{self.background_img}')"
      conn.exec(sql)
    else
      sql = "UPDATE topmovies SET title='#{self.title}', release_year='#{self.release_year}', rating='#{self.rating}', images='#{self.images}', background_img='#{self.background_img}' WHERE id=#{self.id}"
      conn.exec(sql)
    end

  end
  # The method to show all the avaible movies to view
  def self.all
    # connect the data to database
    conn = self.open_connection
    # Order the data by rating, because my website is about which are the top rated movies
    sql = "SELECT id, title, release_year, rating, images, background_img FROM topmovies ORDER BY rating DESC"
    results = conn.exec(sql)
    # find all the avaiable movies and then show it using the hydrate method
    movies = results.map do |result|
      self.hydrate(result)
    end
    # return movies
    movies
  end
  # the method to find a specific movie by id
  def self.find(id)
    # connect the data to database
    conn = self.open_connection
    # search in the database for the id passed, only limit it to one line of data
    sql = "SELECT * FROM topmovies WHERE id=#{id} LIMIT 1"
    # set that data to a variable
    movies_result = conn.exec(sql)
    # return movie with the information found with the id
    movie = self.hydrate(movies_result[0])
  end
  # the method to delete a movie by id
  def self.destroy(id)
    # connect the data to database
    conn = self.open_connection
    # look for the data linked to id passed, and then delete it from database
    sql = "DELETE FROM topmovies WHERE id = #{id}"
    conn.exec(sql)
  end
  # the method to make the data availabe for use
  def self.hydrate(movie_data)
    # connect the data to database
    movie=TopMovies.new
    # set a variable for each part of the data
    movie.id = movie_data['id']
    movie.title = movie_data['title']
    movie.release_year = movie_data['release_year']
    movie.rating = movie_data['rating']
    movie.images = movie_data['images']
    movie.background_img = movie_data['background_img']
    # return movie
    movie
  end
end
