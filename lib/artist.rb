class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def add_song(song_name)
    new_song = Song.new(song_name)
    self.songs << song_name
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(artist_name)
    found = @@all.find{ |artist| artist.name == artist_name}
    found.nil? ? Artist.new(artist_name) : found
  end

  def print_songs
    self.songs.each {|song|puts song.name}
  end

end
