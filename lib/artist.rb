require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

  @@all = []
  # @songs ||= []

  def initialize(name)
  	@name = name
  	@@all << self
  end

  def self.all
  	@@all
  end

  def new_song(name, genre)
  	# binding.pry
  	#VERY important to take self as a parameter here. This lables the song upon initalization with the artist instance
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    Song.all.select do |song|
      song.artist == self
    end.collect do |song|
    	song.genre
    end
  end
end