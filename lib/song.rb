require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

  def artist_name
    artist != nil ? artist.name : nil
  end

   def self.all
    @@all
   end
end
