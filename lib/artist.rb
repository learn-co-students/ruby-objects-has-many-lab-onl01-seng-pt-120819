class Artist
  attr_accessor :name

  @@songs = []

  def initialize(name)
    @name = name
    @songs = []
  end

  
  def songs
    @songs 
  end

  
end

class Song 
 attr_accessor :name, :artist 

  def initialize(name)
    @name = name
  
    @artist = artist 
    
  end 
  
end
