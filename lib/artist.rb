require 'pry'

class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    artist_instance = self.all.find do |artist|
      artist.name == name
    end
      if artist_instance == nil
        new_artist = self.new(name)
        new_artist.save
        new_artist
        # binding.pry
      else artist_instance
      end
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

end

# binding.pry
#last comment
