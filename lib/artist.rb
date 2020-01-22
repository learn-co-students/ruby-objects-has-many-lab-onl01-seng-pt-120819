require 'pry'
class Artist
  attr_accessor :name
@@all = []
 
  def initialize(name)
         @name = name
        # @songs = []
         @@all << self
  end
  
  def songs
  # binding.pry
          # @songs << self 
        # @song.artist = self
      Song.all.select{|song| song.artist == self} 
  
  end
  
def add_song(song)
  # binding.pry
      song.artist = self
      # @songs << song
 end
 
# def add_song_by_name(name, artist)

 def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end
  
def self.song_count
  # @@all.each do |artist|
# artist
Song.all.count
# binding.pry



end
 
 
 
 
 
 
 
 
 
 
 
 
 
 
end