require "pry"
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    song_array = Dir.glob("#{self.path}/*.mp3")
    song_array.map {|song| normalize(song)}
  end


  def import
    files.map {|song| Song.new_by_filename(song)}

  end

  private
  def normalize(filename)
    filename.split("/").last
  end
end
