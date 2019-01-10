class Artist
  attr_accessor :name, :genre
  attr_reader :songs

  @@all = []

  def initialize(name)
    self.name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(song_name, genre)
    song = Song.new(song_name, self, genre)
    @songs << song
    return song
  end

  def genres
    self.songs.map do |song|
      song.genre
    end.uniq
  end
end