class Artist
  attr_accessor :name

  @@songs = []

  def initialize(name)
    @name = name
    @songs = []
    @@songs << 
  end

def add_song(song)
    self.songs << song
    song.artist = self
  
  end
  
  def songs
    @@songs 
  end

  
end

# class Song 
# attr_accessor :name, :artist 

# @@all = []

#   def initialize(name)
#     @name = name
#     @artist = artist 
#     @@all << self 
#   end 
  
# end
