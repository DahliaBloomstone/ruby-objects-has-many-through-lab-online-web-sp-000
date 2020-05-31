#like the waiter method
class Genre
attr_accessor :name

@@all = [ ]

def initialize(name)
  @name = name
  @@all << self
end

self.all
@@all
end 
