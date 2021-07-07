class Author
   
    def initialize(name)
        @name=name
        @posts=[]
    end
    attr_accessor :name
    @@post_count=0
   
    def posts
        Post.all
    end
    def add_post(post)
        @posts << post
        @@post_count+=1
        post.author=self
    end

   
    def add_post_by_title(post_name)
        #binding.pry
        Post.new(post_name).author = self
        
      end
      def self.post_count
        #binding.pry
        Post.all.length
      end








    
end
    
    
    