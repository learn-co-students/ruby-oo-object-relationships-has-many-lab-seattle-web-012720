require 'pry'

class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << name
    end

    def songs
        Song.all
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song_name)
        song_title = Song.new(song_name)
        song_title.artist = self
        # binding.pry
    end

    def self.all
        @@all
    end

    def self.song_count
        Song.all.length
    end

end