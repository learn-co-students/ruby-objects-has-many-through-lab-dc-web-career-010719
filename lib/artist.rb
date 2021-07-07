class Artist

  attr_accessor :name


  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    return @@all
  end

  def songs
    Song.all.select{ |x| x.artist == self}

  end

  def genres
    self.songs.collect{|song| song.genre}
  end

  def new_song(name, genre)
      return Song.new(name,self, genre)
  end

end
