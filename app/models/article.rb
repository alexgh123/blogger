class Article < ActiveRecord::Base
  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings

  def tag_list
    self.tags.collect do |tag|
      tag.name
    end.join(", ")
  end

  def tag_list=(tags_string)
    tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq
    new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
    self.tags = new_or_found_tags
  end

  #(tag_list method)this is where the rails magic ended, there are active record methods that rails can use for title, and body, but not 'tag list', so in the article.rb model (this file), you have to define the method so rails knows what to do with it(what is it)

  #^the rails form tag helper calls an attribute by the same name on the model. active record creates methods to read attributes, but 'tag list' is not a column/attribute on model


end
