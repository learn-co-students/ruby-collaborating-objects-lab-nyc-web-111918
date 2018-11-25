require 'pry'

class Song

  attr_accessor :name, :artist
    # Song
  #   #initialize with #name
  #     accepts a name for the song (FAILED - 9)
  def initialize(name)
    @name = name
    # @artist = Artist.find_or_create_by_name(artist)
  end


# def artist=(artist_name)
#   @artist = artist_name
#   #I really don't get this... I feel like it should call on the Artist.find_or_create_by_name(name) method.
# end

  #   #artist=
  #     sets the artist object to belong to the song (FAILED - 11)

  #   .new_by_filename
  #     creates a new instance of a song from the file that's passed (FAILED - 12)
  #     associates new song instance with the artist from the filename (FAILED - 13)

  def self.new_by_filename(file_name)
    song_array = file_name.split(" - ")
    #instance           string
    new_song = self.new(song_array[1])
    new_or_existing_artist = Artist.find_or_create_by_name(song_array[0])
    new_or_existing_artist.add_song(new_song)
    new_song.artist=(new_or_existing_artist)
    new_song
  end

#   .new_by_filename
#    creates a new instance of a song from the file that's passed
#    associates new song instance with the artist from the filename (FAILED - 1)
#
# Failures:
#
#  1) Song .new_by_filename associates new song instance with the artist from the filename
#     Failure/Error: expect(new_instance.artist.name).to eq('Michael Jackson')
#     NoMethodError:
#       undefined method `name' for nil:NilClass
#     # ./spec/song_spec.rb:35:in `block (3 levels) in <top (required)>'
#
# Finished in 0.03262 seconds (files took 0.57981 seconds to load)
# 16 examples, 1 failure
#



end
#

#Last line
