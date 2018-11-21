require 'pry'
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name=name
  end

  def self.new_by_filename(filename)
    filearray=filename.chomp(".mp3").split(" - ")
    song=Song.new(filearray[1])
    song.artist=Artist.new(filearray[0])
    song.artist.songs << song
    song
  end

end
