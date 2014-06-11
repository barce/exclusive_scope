class Post < ActiveRecord::Base

  def self.default_scope
    raise "Must use .secure_* methods"
  end

  def self.secure_by_letter(letter)
    with_exclusive_scope{Post.where("title like '%#{letter}%'")}
  end
end
