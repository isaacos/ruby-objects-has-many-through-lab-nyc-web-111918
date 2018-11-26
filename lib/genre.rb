class Genre

attr_accessor :name

  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def songs
    song_list = Song.all.select do |song|
      song.genre == self
    end
    song_list
  end

  def artists

    self.songs.map do |song|
      song.artist
    end

  end

  def self.all
    @@all
  end
end
