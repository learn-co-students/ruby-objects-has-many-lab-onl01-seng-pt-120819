# class Artist
#
#   attr_accessor :name
#
#   def initiaize(name)
#     @name = name
#   end
#
#   def new(name)
#     self.name = name
#   end
#
# end


class Artist
  attr_accessor :name

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    @@song_count +=1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    song.artist = self
    @@song_count +=1
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
    # Song.all.count
  end

  def self.song_count
    # @@song_count
    Song.all.count
  end
end
