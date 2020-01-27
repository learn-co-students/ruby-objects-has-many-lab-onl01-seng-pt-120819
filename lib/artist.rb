class Artist 
  attr_accessor :name, :song 
  
  def initialize(name)
    @name = name 
  end 
  
  def add_song(song)
    song.artist = self 
  end 
  
  def songs 
    Song.all 
  end
  
  def add_song_by_name(song_name)
    temp = Song.new(song_name)
    temp.artist = self 
  end 
    
  def self.song_count
    Song.all.length
  end 

end 