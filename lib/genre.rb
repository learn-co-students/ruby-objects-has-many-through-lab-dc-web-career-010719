require 'pry'

class Genre

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
    @artists = []
  end

  def self.all
    @@all
  end

  def add_song_to_genre(song)
    if song.genre == self
      self.songs << song
      self.artists << song.artist
    end
  end

  def songs
    @songs
  end

  def artists
    @artists
  end

end
