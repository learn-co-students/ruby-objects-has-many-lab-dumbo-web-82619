class Song
  attr_accessor :name
  attr_reader :artist
  
  @@all = []
 
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def artist=(art_obj)
    art_obj.songs << self 
    @artist = art_obj
  end 
  
  def self.number 
    @@all.length 
  end 
  
  def self.all 
    @@all
  end 
  
  def artist_name 
    if @artist 
    @artist.name
    else 
    nil 
    end
  end
  
    
end