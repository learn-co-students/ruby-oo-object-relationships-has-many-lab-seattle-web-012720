class Author
    attr_accessor :name, :post

    def initialize(name)
        @name = name
    end

    def posts
        Post.all.filter do |post_obj|
            post_obj.author == self
        end.uniq
    end

    def add_post(post_obj)
        post_obj.author = self
    end

    def add_post_by_title(post_title)
        post = Post.new(post_title)
        post.author = self
    end

    def self.post_count
        Post.all.length
    end

end