class MP3Importer

  attr_accessor :path

  # MP3Importer
  # #initialize
  #   accepts a file path to parse mp3 files from (FAILED - 8)
    def initialize(file_path)
      @path = file_path
      @files = Dir[file_path + "/*.mp3"].collect {|file| file.gsub(file_path + "/","") }
    end
  # #files
  #   loads all the mp3 files in the path directory (FAILED - 9)
  #   normalizes the filename to just the mp3 filename with no path (FAILED - 10]
    def files
      @files
    end

  # #import
  #   imports the files into the library by creating songs from a filename (FAILED - 11)
  def import
    files.each do |file_name|
      Song.new_by_filename(file_name)
    end
  end

end
