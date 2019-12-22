class Post 
  attr_accessor :name, :author, :title 
  
  @@all = []
  
  def initialize(title)
    #@name = name 
    @title = title 
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
  def author_name 
    author.name if self.author  
  end
end