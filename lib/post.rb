class Post
    attr_accessor :title, :author
    @@all = []

    def initialize (title)
        @title = title
        @@all << self
    end

    def author_name
        if self.author == nil
            return nil
        else
        self.author.name
        end
    end

    def post_title(post_title)
        self.title
        
    end


    def self.all
        @@all
    end
end
