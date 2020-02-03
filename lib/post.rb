require 'pry'

class Post

    attr_accessor :author, :title

    @@all = []

    def initialize(title)
        @@all << self
        @author = author
        @title = title
    end

    def self.all
        @@all
    end

    def author_name
        if self.author
            self.author.name
        else
            nil
        end
    end
end