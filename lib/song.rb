class Song
  attr_accessor :artist, :name, :genre
 
  @@all = []
 
  def initialize(name)
    @name = name
    @@all << self
  end
 
  def save
    @@all << self
  end
 
  def self.all
    @@all
  end
  
  def artist_name
    if self.artist.name == nil 
      nil
    else
      self.artist.name
    end
  end
  
  
end