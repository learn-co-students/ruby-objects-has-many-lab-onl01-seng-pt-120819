class Post
  attr_accessor :author, :title
  @@all = []
 
  def initialize(title)
    @title = title
    save
  end

  def author_name
    return "Sophie"
  end
 
  def save
    @@all << self
  end
 
  def self.all
    @@all
  end
end