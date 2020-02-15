class Author
  attr_accessor :name
  @@all=[]
  def initialize(name)
    @name = name
    save
  end
  
  def posts
    Post.all.select {|post| post.author == self}
  end
  
  def save
    @@all << self
  end
 
  def self.all
    @@all
  end
end