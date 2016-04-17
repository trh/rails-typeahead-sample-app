class Listing < ActiveRecord::Base

  def name_tokens
    return name.split(" ")
  end

  def self.name_search(query)
    return Listing.where("name like LOWER(?) ", "%#{query.downcase}%")
  end
end
