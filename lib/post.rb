class Post
    @@all =[]
    attr_accessor :title, :author
    def initialize(title)
    @title=title    
    @@all<<self
    #@all<<self
    end
    def self.all
        @@all
    end

    def author_name
        #binding.pry
if @author==nil
    nil
else
    @author.name
end
#binding.pry
    end

    
    
    









    
end
    
    
    