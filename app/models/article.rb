class Article < ActiveRecord::Base
  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings

  def tag_list
    tags.join(", ")
  end #this is where the rails magic ended, there are active record methods that rails can use for title, and body, but not 'tag list', so in the article.rb model (this file), you have to define the method so rails knows what to do with it(what is it)

  #^the rails form tag helper calls an attribute by the same name on the model. active record creates methods to read attributes, but 'tag list' is not a column/attribute on model


end
