require "pry"
class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    parsed = filename.split(" - ")
    new_song = Song.new(parsed[1])
    artist_set(new_song, parsed[0])
    new_song
  end

  private
  def self.artist_set(new_song, artist)
    new_song.artist = Artist.find_or_create_by_name(artist)
    new_song.artist.songs << self
  end
end
