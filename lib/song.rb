class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def self.all 
    @@all
  end 

  def add_song(song)
    song.artist = self
  end 
    
  def artist_name 
    artist == nil ? nil : artist.name 
  end 

end