 class Song
   attr_accessor :artist, :name, :genre
   
   def initialize(name, genre)
     @name = name
     @genre = genre
   end
 end
 
def add_song(song)     
  @songs << song
  end
 end