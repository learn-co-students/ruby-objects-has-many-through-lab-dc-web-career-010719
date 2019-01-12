require 'pry'

class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
    @genres = []
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
    self.songs << new_song
    self.genres << genre unless self.genres.include?(genre)
    new_song
  end

  def songs
    @songs
  end

  def genres
    @genres
  end

end
