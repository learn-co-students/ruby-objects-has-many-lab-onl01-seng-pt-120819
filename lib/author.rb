require 'pry'
class Author 
attr_accessor :name, :posts 

  @@post_count =0 
  
  def initialize(name)
    @name = name 
    @posts = []
    
  end 
  
  def posts 
    Post.all.select do |pts|
      pts.author == self 
    end 
  end 

  def add_post(new_post)
      self.posts << new_post
      new_post.author = self 
      @@post_count += 1
  end 
  
  def add_post_by_title(post_title)
      post = Post.new(post_title)
      post.author = self 
      @@post_count += 1
      
  end 
  
  def self.post_count
      @@post_count += 1
  end 
end 





