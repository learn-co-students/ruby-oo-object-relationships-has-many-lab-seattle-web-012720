class Post

    @@all = []
    def self.all
        @@all
    end

    attr_accessor :title, :author
    def initialize(title)
        @title = title
        self.class.all << self
    end

    def author_name
        if self.author
            self.author.name
        else self.author
        end
    end

end