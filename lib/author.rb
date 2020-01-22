class Author
  attr_accessor :name
@@all = []
 
  def initialize(name)
         @name = name
         @@all << self
  end
  
  def posts
  # binding.pry
  Post.all.select{|each_post| each_post.author == self} 
  end
  
 def add_post(name)
   # binding.pry
       name.author = self
 end
 
 def add_post_by_title(title)
   name = Post.new(title)
   add_post(name)
   
   
 end
# def add_song_by_name(name, artist)

def self.post_count
  Song.all.count
end
 
 
 
 
 
 
 
 
 
end