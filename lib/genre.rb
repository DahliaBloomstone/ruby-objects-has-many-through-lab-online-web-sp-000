#like the waiter method
class Genre
attr_accessor :name, :song, :artist

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


end
