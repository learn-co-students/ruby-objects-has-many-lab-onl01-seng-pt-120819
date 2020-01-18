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
    self.artist.name unless self.artist.nil?
  end
  
  
end