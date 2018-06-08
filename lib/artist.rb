require 'pry'

class Artist

  @@all = []

  attr_accessor :name, :artist_songs

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
    Song.all << song
    song
  end

  def songs
    Song.all
  end

  def genres
    Song.all.collect do |song|
      song.genre
    end
  end

end
