require 'pry'
class MP3Importer
  attr_accessor :path, :filenames

  def initialize (path)

    @path = path

  end

  def files

    @filenames = Dir.chdir(@path) do | path |

            Dir.glob("*.mp3")

        end

        @filenames

  end

  def import
    #binding.pry


    files.each do |file|

      Song.new_by_filename(file)
    end

  end

end
