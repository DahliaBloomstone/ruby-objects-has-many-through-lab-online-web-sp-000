#like the customer method
class Artist
  attr_accessor :name
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

def new_song(artist, genre)
  Song.new(artist, genre)
end 


end
