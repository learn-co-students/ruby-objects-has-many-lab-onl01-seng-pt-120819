class Post

  attr_accessor :author, :title
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def self.title
    @title
  end

  # def author_name
  #
  # end
end
