class Song
  # attr_reader :name
  attr_accessor :name, :artist

  @@all = []
  def initialize(name, artist=nil, genre=nil)
    @name = name
    @artist = artist
    @genre = genre

    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name(artist)

  end

  def self.new_by_filename(file_name)
    song_name_data = file_name.split(".")[0].split(" - ")
    song_artist = Artist.find_or_create_by_name(song_name_data[0])
    puts song_artist
    Song.new(song_name_data[1], song_artist, song_name_data[2])
  end


end
