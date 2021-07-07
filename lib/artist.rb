require 'pry'
class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize (name)
    @name = name
    @songs = []
    save
  end

  def add_song (song)
    self.songs << song

  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name (name)

    @@all.find { |artist_instance| artist_instance.name == name}

  end




  def self.find_or_create_by_name (name)

    if self.find_by_name(name) == nil
      new_artist = Artist.new(name)

    else
      self.find_by_name(name)
    end

  end

  def print_songs

    self.songs.each do |song_instance|
      puts song_instance.name
    end

  end


end
#binding.pry
