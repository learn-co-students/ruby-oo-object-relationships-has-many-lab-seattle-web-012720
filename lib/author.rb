class Author
    attr_accessor :name
    def initialize (name)
        @name = name
    end

    def add_post(new_post)
        new_post.author = self
    end

    def add_post_by_title(post)
        new_post = Post.new(post)
        self.add_post(new_post)
    end
        

    def posts
        Post.all.select {|instance| instance.author == self}
    end

    def self.post_count
        Post.all.length
    end

end