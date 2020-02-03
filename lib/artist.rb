require 'pry'
class Artist
    attr_accessor :name, :songs

        def initialize(name)
            @name = name
        end
    
        def songs
        Song.all.select do |song|
        song.artist == self
        end
        end

        def add_song (song)
         song.artist = self #this refers to the artist instance? 
        end

        def add_song_by_name(song_name)
          cantor = Song.new(song_name)
          add_song(cantor) #why I had to call this argument?
        end

        def song_count
            binding.pry
        end

        def self.song_count
            Song.all.count
        end


    

end











