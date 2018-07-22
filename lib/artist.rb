require 'pry'
class Artist

  @@all = []


  def initialize(name)
    @name = name
    Artist.all << self
  end

  attr_accessor :name



  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select{|song| song.artist == self}
  end

  def genres
    self.songs.collect {|song| song.genre}
  end


end

pablo = Artist.new("Pablo")
