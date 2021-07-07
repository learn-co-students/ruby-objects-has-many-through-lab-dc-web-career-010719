class Song

  attr_accessor :name, :artist


  @@all = []
  def initialize(name, artist, genre)
    @name , @artist, @genre = name, artist, genre
    @@all << self
  end

  def genre
    return @genre
  end

  def self.all
    @@all
  end
end
