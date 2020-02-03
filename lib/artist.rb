require 'pry'

class Artist

    attr_accessor :name 

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select do |songs| 
            songs.artist == self
        end
    end

    def self.all
        @@all
    end

    def add_song(song)
        song.artist=self
    end

    def add_song_by_name(title)
        Song.new(title).artist=self
    end

    def self.song_count
        # binding.pry
        Song.all.count
    end
end



