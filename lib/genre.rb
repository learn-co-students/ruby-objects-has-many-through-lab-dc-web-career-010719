require 'pry'

class Genre

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def new_song(name, artist)
    Song.new(name, artist, self)
  end

  def songs
    @songs = Song.all.select {|song| song.genre == self}
  end

  def artists
    self.songs.collect {|song| song.artist}
  end

end
