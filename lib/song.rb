class Song
    attr_accessor :name, :genre, :artist

    @@all = []

    def initialize(name, genre)
        @name = name
        @genre = genre
        @@all << self
    end

    def self.all
        @@all
    end

end


class Artist

    attr_accessor :name, :songs

    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song_by_name(name, genre)
        song = Song.new(name, genre)
        song.artist = self
    end

    def find_my_songs
        Songs.all.select { |song| song.artist == self }
    end

end


artist1 = Artist.new("first_artist")
artist1.add_song_by_name("first_song", "first_genre")
puts artist1.find_my_songs


