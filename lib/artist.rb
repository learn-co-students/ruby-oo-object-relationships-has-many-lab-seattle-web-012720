class Artist

    attr_accessor :name

    def initialize(name)
        @name = name
        @songs = []
    end

    def my_songs
        Songs.all.select { |song| song.name == self }
    end

end