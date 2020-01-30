class Author

    @@all = []
    def self.all
        @@all
    end

    attr_accessor :name
    def initialize(name)
        @name = name
        self.class.all << self
    end

    def posts
        Post.all.select {|post| post.author == self}
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(post_title)
        post = Post.new(post_title)
        add_post(post)
    end

    def self.post_count
        self.all.sum {|author| author.posts.count}
    end
    



end