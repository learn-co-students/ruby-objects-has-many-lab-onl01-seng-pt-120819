class Author
  
  attr_accessor :name
  
  @@posts = []
  
  def initialize(name)
    @name = name
  end
  
  def add_post_by_title(post_title)
    @@posts << self
  end
  
  def self.post_count
    @@posts
 end
    
end