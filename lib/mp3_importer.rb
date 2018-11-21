require 'pry'
class MP3Importer
  attr_accessor :path


  def initialize(filepath)
    @path=filepath
  end

  def files
    files=Dir[@path+'/*']
    files.each {|file| file.slice!(@path+"/")}
    files
  end

  def import
    self.files.each {|file| Song.new_by_filename(file)}
  end
end
