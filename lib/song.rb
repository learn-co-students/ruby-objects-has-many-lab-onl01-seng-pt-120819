class Song 
  
  attr_accessor :artist, :name, :genre
  
  def initialize(name)
    @name = name
    save
  end
  
  @@all = []
  
  def save 
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
  def artist_name 
    if @artist == nil 
      return nil
    else
      self.artist.name
    end
  end
  
end