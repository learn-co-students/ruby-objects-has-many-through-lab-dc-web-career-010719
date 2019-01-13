require 'pry'


class Artist

  attr_accessor :name, :songs, :genres

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(song_name, song_genre)
    song = Song.new(song_name, self, song_genre)
    # binding.pry
    @songs << song
    song
  end

  def genres
    Song.all.map {|s| s.genre}
  end




end
