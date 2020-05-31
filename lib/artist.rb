#like the customer method
class Artist
  attr_accessor :name, :artist, :genre
@@all = [ ]

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def songs
  Song.all.select do |song|
    song.artist == self
  end
end

def new_song(name, genre)
  song = Song.new(self, name, genre)
  self.songs.last
end

def genres
  songs.map do |song|
    song.genre
  end
end


end
