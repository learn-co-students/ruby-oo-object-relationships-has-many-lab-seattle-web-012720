class Song
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        @artist = nil
    end

    def self.all
        @@all
    end

    def artist
        @artist
    end

    def artist=(artist)
        @artist = artist
    end

    def artist_name
        if self.artist
            return self.artist.name
        else
            return nil
        end
    end
end

# hello = Song.new("hello")