require 'pry'
class Song

  attr_accessor :name, :artist

  def initialize (name)
    @name = name
  end

  def self.new_by_filename (filename)
    split_mp3 = filename[0...-4].split(' - ')
    new_song = Song.new(split_mp3[1])

    artist_name = split_mp3[0]
    new_song.artist = Artist.find_or_create_by_name(artist_name)
    Artist.find_or_create_by_name(artist_name).add_song(new_song)
    new_song




  end

end
