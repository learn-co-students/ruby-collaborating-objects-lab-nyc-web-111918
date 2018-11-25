class Artist
  attr_accessor :name

  @@all = [] #contains all instances of the Artist class

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song

  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name) #uses find/create methods to detect or create methods
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end

  def self.find(name) #detects instances of name from @@all
    self.all.detect { |artist| artist.name == name }
  end

  def self.create(name) #creates & stores instaces w/o initializing
    artist = Artist.new(name)
    artist.save
    artist
  end

  def print_songs #iterates through @songs of an instance of Artist class
    self.songs.each { |song| puts "#{song.name}" }
  end



end  #end of Artist class
