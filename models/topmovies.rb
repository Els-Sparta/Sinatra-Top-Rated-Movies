  class TopMovies
  # Making it public
  attr_accessor(:id, :title, :release_year, :rating, :images, :background_img)
  # Method to connect to the database
  def self.open_connection
    # Variable that runs the method 'connect' to get data from databse
    conn = PG.connect(dbname: "movies")
  end

  # Mario's instructions of what to do when looking for data
  def save
    conn = TopMovies.open_connection
    if(!self.id)
      sql = "INSERT INTO topmovies (title, release_year, rating, images) VALUES ('#{self.title}', '#{self.release_year}', '#{self.rating}', '#{self.images}', '#{self.background_img}')"

      conn.exec(sql)
    else
      sql = "UPDATE topmovies SET title='#{self.title}', release_year='#{self.release_year}', rating='#{self.rating}', images='#{self.images}', background_img='#{self.background_img}' WHERE id=#{self.id}"

      conn.exec(sql)
    end

  end

  def self.all

    conn = self.open_connection

    sql = "SELECT id, title, release_year, rating, images, background_img FROM topmovies ORDER BY rating DESC"
    results = conn.exec(sql)
    movies = results.map do |result|
      self.hydrate(result)
    end

    movies
  end

  def self.find(id)
    conn = self.open_connection

    sql = "SELECT * FROM topmovies WHERE id=#{id} LIMIT 1"

    movies_result = conn.exec(sql)

    movie = self.hydrate(movies_result[0])
  end

  def self.destroy(id)
    conn = self.open_connection

    sql = "DELETE FROM topmovies WHERE id = #{id}"

    conn.exec(sql)
  end

  def self.hydrate(movie_data)
    movie=TopMovies.new

    movie.id = movie_data['id']
    movie.title = movie_data['title']
    movie.release_year = movie_data['release_year']
    movie.rating = movie_data['rating']
    movie.images = movie_data['images']
    movie.background_img = movie_data['background_img']

    movie
  end
end
