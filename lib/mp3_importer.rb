class MP3Importer
    attr_reader :path

    @@all = []
    def initialize(path)
      @path = path
      @@all << self
    end

    def self.all
      @@all
    end

    def files
      Dir["#{@path}/*"].select { |e| File.file? e }.map{ |f| File.basename f }
    end

    def import
      files.each do |song|
        Song.new_by_filename(song)
      end
    end
end
