require 'pry'

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end


  def self.new_by_filename(file_name)
    song_array = file_name.split(" - ")
    #instance           string
    new_song = self.new(song_array[1])
    new_or_existing_artist = Artist.find_or_create_by_name(song_array[0])
    new_or_existing_artist.add_song(new_song)
    new_song.artist = new_or_existing_artist
    new_song
  end

end
#

#Last line
