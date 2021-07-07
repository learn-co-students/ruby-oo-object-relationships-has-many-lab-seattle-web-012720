require "pry"
class Artist
    #@array=[]
   @@song_count=0
    attr_accessor :name
    def initialize(name)
        @name=name
        @songs=[]
        
       
    end
    #binding.pry
    def add_song(song)
        #binding.pry
       # @song=song
        @songs << song
        @@song_count+=1
        song.artist=self
        #binding.pry
      end
      def songs
        Song.all
      end

      def add_song_by_name(song_name)
        #binding.pry
        Song.new(song_name).artist = self
        
      end
      def self.song_count
        #binding.pry
        Song.all.length
      end







     

end



     
 

   