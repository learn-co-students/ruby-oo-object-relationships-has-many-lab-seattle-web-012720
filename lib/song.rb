require 'pry'

class Song

    attr_accessor :artist, :title

    @@all = []

    def initialize(title)
        @@all << self
        @artist = artist
        @title = title
    end

    def self.all
        @@all
    end

    def name
        @title
    end

    def artist_name
        # binding.pry
        if self.artist 
            self.artist.name
        else
            return nil
        end

    end
end