class Artist
    attr_accessor :name, :song
    #@@all = []

    def initialize(name)
        @name = name
    end

    def add_song(song)
        @songs << song
    end
     
    def songs
        Song.all.filter do |song_obj|
            song_obj.artist == self
        end.uniq
    end

    def add_song(song_obj)
        #self.songs << song_obj
        song_obj.artist = self
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self
    end

    def self.song_count
        Song.all.length
    end
    
end
