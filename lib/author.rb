require 'pry'

class Author

    attr_accessor(:name)

    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select { |post| post.author == self}
    end
    
    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        Post.new(title).author = self
    end

    def Author.post_count
        total = Post.all.each { |post| post.author == self}
        total.size
    end

end