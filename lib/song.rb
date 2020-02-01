class Song
    @@all = []
    attr_accessor :name, :artist
    def initialize(name, artist=nil)
        @name=name
    @@all<<self
    #binding.pry
    end
    def self.all
@@all
    end

    def artist_name
if @artist == nil
    nil
else
    @artist.name
end
#binding.pry
    end

    
    








end
    
    
    