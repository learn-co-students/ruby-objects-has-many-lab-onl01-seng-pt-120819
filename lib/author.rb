class Author
  attr_accessor :name, :title
  @@all=[]
  def initialize(name)
    @name = name
    save
  end
  
  def posts
    #Author.all.select {|post| posts.artist == self}
  end
  
  def save
    @@all << self
  end
 
  def self.all
    @@all
  end
  
end