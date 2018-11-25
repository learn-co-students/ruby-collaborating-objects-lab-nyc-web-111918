class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    file = filename.split(/\-|\./)
    song = Song.new(file[1].lstrip.rstrip)
    song.artist = Artist.new(file[0].rstrip)
    song.artist.songs << song
    song
  end
end
