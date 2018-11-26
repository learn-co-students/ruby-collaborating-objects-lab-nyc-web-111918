class Artist
  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def add_song(song_name)
    song_name.artist = self
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end

  def self.find_or_create_by_name(artist_name)
    if @@all.find { |artist| artist.name == artist_name }
      @@all.find { |artist| artist.name == artist_name }
    else
      Artist.new(artist_name)
    end
  end

  def print_songs
    puts Song.all.select { |song| song.artist == self }.map { |song| song.name}
  end

end
