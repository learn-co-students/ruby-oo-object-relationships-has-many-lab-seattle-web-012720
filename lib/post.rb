class Post
    attr_accessor :title
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
        @author = nil
    end

    def self.all
        @@all
    end

    def author
        @author
    end

    def author=(author)
        @author = author
    end

    def author_name
        if self.author
            return self.author.name
        else
            return nil
        end
    end

    # def author
    #     self.author
    # end

    # def author=(author)
    #     @author = author
    # end

end