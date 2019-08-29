class Post 
  
  attr_accessor :title, :author
  
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
    # save  alternertive is def save method
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def author_name
    if self.author != nil 
      self.author.name 
    else 
      nil 
    end
  end 
  
end
