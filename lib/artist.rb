class Artist

  attr_accessor :name

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    Song.all.select {|song| self} #FALSE POSITIVE!!!!!

  end

  def add_song(song)
    @songs << song
    song.artist = self
      @@song_count += 1
  end

  def add_song_by_name(name)
    s = Song.new(name)
    add_song(s)
  end

  def song_count
    self.songs.size
  end

  def self.song_count
    @@song_count
  end
end
