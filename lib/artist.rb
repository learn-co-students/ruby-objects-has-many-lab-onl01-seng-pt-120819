require_relative "../lib/artist.rb"

class Artist
  
  attr_accessor :name
 
  @@artist.songs = []
  
  def add_song(song)
    artist.songs.include(song)
    song.artist = artist
  end


  def add_song_by_name(name)
    song.artist = Song.new(name)
    add_song(song)
  end
  
 
  def initialize(name)
    @name = name
    save
  end
 
  def save
    @@artist.songs << self
  end
  
  def some_song.artist_name(name)
   if self.artist.name = name
  end
  
  def self.song_count
    @@artist.songs
  end
  
end


  
  