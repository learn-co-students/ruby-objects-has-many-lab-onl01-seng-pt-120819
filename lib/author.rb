class Author  
  attr_accessor :name 
  Post= self  
  @@post_count= 0 
  
  def initialize (name)
    @name= name 
    @posts= []
  end 
  
  def add_post_by_name (name)
    post= Post.new(name)
    self.posts<< post
    post.author = self 
    @@post_count += 1 
  end 
  
  def add_post(post)
    @posts << post 
    post.author = self 
    
  end 
  
  def posts 
    @posts 
  end 
  

  
  def self.post_count
    @@post_count
  end 
end 