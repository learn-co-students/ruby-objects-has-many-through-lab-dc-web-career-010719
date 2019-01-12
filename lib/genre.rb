require 'pry'

class Genre
  attr_accessor :name, :artists, :songs

  @@all = []

  def initialize(name)
  	@name = name
  	# binding.pry
  	@@all << self
  end

  def self.all
  	@@all
  end

  def songs
  	Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    Song.all.select do |song|
      song.genre == self
    end.collect do |song|
    	song.artist
    end
  end

end